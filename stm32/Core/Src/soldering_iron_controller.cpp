#include "soldering_iron_controller.h"
#include "oled-128x64.h"

// handle switch       - PC14
// pwm heater          - PA15
// Temparature ambiant - PA0/IN0
// Temperature heat    - PA1/IN1
// ain                 - PA4/IN4
// vin                 - PB0/IN8

extern "C" osThreadId myTask02Handle;
extern "C" osThreadId defaultTaskHandle;

extern "C" ADC_HandleTypeDef hadc;
extern "C" TIM_HandleTypeDef htim2;
extern "C" I2C_HandleTypeDef hi2c1;
extern "C" IWDG_HandleTypeDef hiwdg;

static uint32_t adc_point[] = { 1000, 1500, 2000, 2500, 3000, 3500 };
static uint32_t temp_point[] = { 170,  220,  290,  360,  400,  440 };
static TSolderingIronController SolderingIronController;

TI2c I2c( hi2c1 );
TOled128x64 Display( I2c );


void TSolderingIronController::UpdateConfig()
{
  auto Status = HAL_FLASH_Unlock();
  assert_param( Status == HAL_OK );

  uint32_t PageError;
  FLASH_EraseInitTypeDef EraseInit = { FLASH_TYPEERASE_PAGES, BASE_CONFIG, 1 };
  Status =  HAL_FLASHEx_Erase( &EraseInit, &PageError );
  assert_param( Status == HAL_OK );

  uint32_t const *Data = &Config.Flag;
  uint32_t const EndAddress = BASE_CONFIG + sizeof( Config );
  for( uint32_t Address = BASE_CONFIG; Address < EndAddress; Address += sizeof( uint32_t ))
  {
    Status = HAL_FLASH_Program( FLASH_TYPEPROGRAM_WORD, Address, *Data++ );
    assert_param( Status == HAL_OK );
  }

  Status = HAL_FLASH_Lock();
  assert_param( Status == HAL_OK );
}

int32_t TSolderingIronController::Map(int32_t const value, int32_t const v_min, int32_t const v_max, int32_t const r_min, int32_t const r_max)
{
  if( v_min == v_max )
  {
    return r_min;
  }

  int32_t const round = ( v_max - v_min ) >> 1;
  return (( value - v_min ) * ( r_max - r_min ) + round ) / ( v_max - v_min ) + r_min;
}

int32_t TSolderingIronController::Adc2Temp( uint32_t const adc )
{
  if( adc < adc_point[0] )
  {
    return Map( adc, 0, adc_point[0], 0, temp_point[0] );
  }

  for( int Index = 1; Index < 5; Index++ )
  {
    if( adc < adc_point[ Index ] )
    {
      return Map( adc, adc_point[Index-1], adc_point[Index], temp_point[Index-1], temp_point[Index] );
    }
  }

  return 0;
}

int32_t TSolderingIronController::Temp2Adc( uint32_t const temp )
{
  if( temp < temp_point[0] )
  {
    return Map( temp, 0, adc_point[0], 0, temp_point[0] );
  }

  for( int Index = 1; Index < 5; Index++ )
  {
    if( temp < temp_point[ Index ] )
    {
      return Map( temp, temp_point[Index-1], temp_point[Index], adc_point[Index-1], adc_point[Index] );
    }
  }

  return 0;
}

void TSolderingIronController::Init()
{
  UartPrintf( "Arlene v1.0\n" );
  SetPin( LED1_GREEN_GPIO_Port, LED1_GREEN_Pin );
  SetPin( LED2_GREEN_GPIO_Port, LED2_GREEN_Pin );

  HAL_StatusTypeDef const Status0 = HAL_ADCEx_Calibration_Start( &hadc );
  assert_param( Status0 == HAL_OK );

  HAL_TIM_PWM_Start( &htim2, TIM_CHANNEL_1 );
  HAL_TIM_OC_Start_IT( &htim2, TIM_CHANNEL_2 );
  HAL_TIM_OC_Start_IT( &htim2, TIM_CHANNEL_3 );
}

void TSolderingIronController::DisplayInit()
{
  Display.Init();
  Display.Kick();
  Display.Print( 0, 0, "Arlene v1.0" );
  Display.Print( 0, 3, "Kp: 0.00" );
  Display.Print( 0, 4, "Ki: 0.00" );
  Display.Print( 0, 5, "Kd: 0.00" );
}

void TSolderingIronController::DisplayLoop()
{
  uint32_t NotificationValue;
  auto const Res = xTaskNotifyWait( 0, 0xffffffff, &NotificationValue, pdMS_TO_TICKS( 50000 ));
  assert_param( Res == pdTRUE );

  if( NotificationValue & EventPrint )
  {
    Display.Printf( 0, 1, "%3u", Heat );
    bool const HandleSwitch = ReadPin( HANDLE_SWITCH_GPIO_Port, HANDLE_SWITCH_Pin );
    uint32_t const PowerPct = ( Power * 100 ) / PowerMax;
    uint32_t const PowerWatt = ( Vin1 * Ain1 ) / 10000;

	UartPrintf( "%6u %6d°C %u.%03uA %2u.%uV %2u.%uV %u%% %uW %d\n", Ambiant, Heat, Ain1 / 1000, Ain1 % 1000, Vin1 / 10, Vin1 % 10, Vin0 / 10, Vin0 % 10, PowerPct, PowerWatt, HandleSwitch );
  }

  if( NotificationValue & EventEncA )
  {
    if( ReadPin( ENC_B_GPIO_Port, ENC_B_Pin ))
    {
      if( SetPoint > 0 )
      {
        SetPoint--;
        Display.Printf( 0, 2, "%3u", SetPoint );
      }
    }
    else
    {
      if( SetPoint < 400 )
      {
        SetPoint++;
        Display.Printf( 0, 2, "%3u", SetPoint );
      }
    }
  }

  if( NotificationValue & EventEncB )
  {
  }

  if( NotificationValue & EventEncEnter )
  {
    UartPrintf( "ENC-ENTER\n" );
  }

  if( NotificationValue & EventHandleSwitch )
  {
    UartPrintf( "EventHandleSwitch\n" );
  }
}

void TSolderingIronController::Loop()
{
  uint32_t NotificationValue;
  auto const Res = xTaskNotifyWait( 0, 0xffffffff, &NotificationValue, pdMS_TO_TICKS( 50 ));
  assert_param( Res == pdTRUE );

  if( NotificationValue & EventLoad )
  {
    assert_param( State == WaitIdle );
    State = WaitAdcLoad;
    HAL_StatusTypeDef const Status = HAL_ADC_Start_DMA( &hadc, (uint32_t*)AdcData, 5 );
    assert_param( Status == HAL_OK );
  }

  if( NotificationValue & EventNoLoad )
  {
    assert_param( State == WaitIdle );
    State = WaitAdcNoLoad;
    HAL_StatusTypeDef const Status = HAL_ADC_Start_DMA( &hadc, (uint32_t*)AdcData, 5 );
    assert_param( Status == HAL_OK );
  }

  if( NotificationValue & EventAdcDone )
  {
    assert_param( State != WaitIdle );
    HAL_StatusTypeDef const Status = HAL_ADC_Stop_DMA( &hadc );
    assert_param( Status == HAL_OK );

    uint32_t const VREFINT_CAL = *((uint16_t const*)0x1FFFF7BA);

    if( State == WaitAdcLoad )
    {
      uint32_t const Vdda = 3300 * VREFINT_CAL / AdcData[ ADC_VREF ];
      Ain1 = ( AdcData[ ADC_AIN ] * Vdda * 10 ) / (4095 * 11);
      Vin1 = ( AdcData[ ADC_VIN ] * Vdda * 78 ) / 4095000;
    }
    else if( State == WaitAdcNoLoad )
    {
      uint32_t const Vdda = 3300 * VREFINT_CAL / AdcData[ ADC_VREF ];
      Vin0 = ( AdcData[ ADC_VIN ] * Vdda * 78 ) / 4095000;
      Heat = Adc2Temp( AdcData[ ADC_IRON ] );
      Ambiant = AdcData[ ADC_AMBIANT ];

      auto const AdcSetPoint = Temp2Adc( SetPoint );
      auto const Power0 = Pid.step( AdcSetPoint, AdcData[ ADC_IRON ] );

      TIM2->CCR1 = Power = Constrain( Power0, PowerMin, PowerMax );
//      NotifyDisplay( EventPrint );
    }
    else
    {
      assert_param( false );
    }

    State = WaitIdle;
  }
}

void TSolderingIronController::NotifyHeater( uint32_t const Event )
{
  BaseType_t HigherPriorityTaskWoken;
  auto const Res = xTaskNotifyFromISR(
    defaultTaskHandle, Event, eSetBits, &HigherPriorityTaskWoken );
  assert_param( Res == pdPASS );
  portYIELD_FROM_ISR( HigherPriorityTaskWoken );
}

void TSolderingIronController::NotifyDisplay( uint32_t const Event )
{
  BaseType_t HigherPriorityTaskWoken;
  auto const Res = xTaskNotifyFromISR(
    myTask02Handle, Event, eSetBits, &HigherPriorityTaskWoken );
  assert_param( Res == pdPASS );
  portYIELD_FROM_ISR( HigherPriorityTaskWoken );
}

void TSolderingIronController::HAL_ADC_ErrorCallback()
{
  assert_param( false );
}

void TSolderingIronController::HAL_ADC_ConvCpltCallback()
{
  if( __HAL_ADC_GET_FLAG( &hadc, ADC_FLAG_EOS ))
  {
    NotifyHeater( EventAdcDone );
  }
  else
  {
    assert_param( false );
  }
}

void TSolderingIronController::HAL_TIM_PeriodElapsedCallback()
{
  DeadtimeEncA >>= 1;
  DeadtimeEncB >>= 1;
  DeadtimeEncEnter >>= 1;
  DeadtimeHandleSwitch >>= 1;

  if(( HAL_GetTick() % 1000 ) == 0 )
  {
    NotifyDisplay( EventPrint );
  }
}

void TSolderingIronController::HAL_TIM_OC_DelayElapsedCallback()
{
  if( htim2.Channel == HAL_TIM_ACTIVE_CHANNEL_2 )
  {
    NotifyHeater( EventLoad );
  }
  else if( htim2.Channel == HAL_TIM_ACTIVE_CHANNEL_3 )
  {
    NotifyHeater( EventNoLoad );
  }
  else
  {
    assert_param( false );
  }
}

void TSolderingIronController::HAL_GPIO_EXTI_Callback( uint16_t const GPIO_Pin )
{
  if(( GPIO_Pin & ENC_A_Pin ) && ( DeadtimeEncA == 0 ))
  {
    DeadtimeEncA = 1 << 31;
    NotifyDisplay( EventEncA );
  }

  if(( GPIO_Pin & ENC_B_Pin ) && ( DeadtimeEncB == 0 ))
  {
    DeadtimeEncB = 1 << 31;
    NotifyDisplay( EventEncB );
  }

  if(( GPIO_Pin & ENC_SWITCH_Pin ) && ( DeadtimeEncEnter == 0 ))
  {
    DeadtimeEncEnter = 1 << 31;
    NotifyDisplay( EventEncEnter );
  }

//  if(( GPIO_Pin & HANDLE_SWITCH_Pin ) && ( DeadtimeHandleSwitch == 0 ))
//  {
//    DeadtimeHandleSwitch = 1 << 31;
//    NotifyDisplay( EventHandleSwitch );
//  }
}

void TSolderingIronController::ApplicationIdleHook()
{
  HAL_IWDG_Refresh( &hiwdg );
}

TSolderingIronController::TSolderingIronController() :
  Config(),
  Pid( 6.0f, 0.5f, 0.2f, 20 ),
  State( WaitIdle ),
  SetPoint( 220 ),
  AdcData(),
  Vin0( 0 ),
  Vin1( 0 ),
  Ain1( 0 ),
  Heat( 0 ),
  Power( 0 ),
  Ambiant( 0 ),
  DeadtimeEncA( 0 ),
  DeadtimeEncB( 0 ),
  DeadtimeEncEnter( 0 ),
  DeadtimeHandleSwitch( 0 )
{
  Config = *(TConfig*)BASE_CONFIG;
  if( Config.Flag != FLAG_CONFIG )
  {
    Config = TConfig();
    UpdateConfig();
  }
}

extern "C" void SolderingIronControllerInit()
{
  SolderingIronController.Init();
}

extern "C" void SolderingIronControllerLoop()
{
  SolderingIronController.Loop();
}

extern "C" void SolderingIronDisplayInit()
{
  SolderingIronController.DisplayInit();
}

extern "C" void SolderingIronDisplayLoop()
{
  SolderingIronController.DisplayLoop();
}

extern "C" void HAL_ADC_ErrorCallback( ADC_HandleTypeDef *const hadc )
{
  (void)hadc;
  SolderingIronController.HAL_ADC_ErrorCallback();
}

extern "C" void HAL_ADC_ConvCpltCallback( ADC_HandleTypeDef *const hadc )
{
  (void)hadc;
  SolderingIronController.HAL_ADC_ConvCpltCallback();
}

extern "C" void HAL_TIM_OC_DelayElapsedCallback( TIM_HandleTypeDef *htim )
{
  (void)htim;
  SolderingIronController.HAL_TIM_OC_DelayElapsedCallback();
}

extern "C" void HAL_GPIO_EXTI_Callback( uint16_t GPIO_Pin )
{
  SolderingIronController.HAL_GPIO_EXTI_Callback( GPIO_Pin );
}

extern "C" void vApplicationIdleHook( void )
{
  SolderingIronController.ApplicationIdleHook();
}

extern "C" void HAL__TIM_PeriodElapsedCallback( TIM_HandleTypeDef *htim )
{
  SolderingIronController.HAL_TIM_PeriodElapsedCallback();
}
