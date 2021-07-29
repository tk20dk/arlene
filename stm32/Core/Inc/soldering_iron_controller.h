#ifndef SOLDERING_IRON_CONTROLLER_H_
#define SOLDERING_IRON_CONTROLLER_H_

#include "system.h"
#include "FastPID.h"


class TSolderingIronController
{
  static uint32_t const ADC_IRON    = 0;
  static uint32_t const ADC_AIN     = 1;
  static uint32_t const ADC_VIN     = 2;
  static uint32_t const ADC_AMBIANT = 3;
  static uint32_t const ADC_VREF    = 4;

  static uint32_t const FLAG_CONFIG = 0x00000001U;
  static uint32_t const BASE_CONFIG = 0x0801F000U;

  static int32_t const PowerMin       = 5;
  static int32_t const PowerMax       = 1995;

  static uint32_t const EventLoad     = 0x0001;
  static uint32_t const EventNoLoad   = 0x0002;
  static uint32_t const EventAdcDone  = 0x0004;

  static uint32_t const EventPrint        = 0x0001;
  static uint32_t const EventEncA         = 0x0002;
  static uint32_t const EventEncB         = 0x0004;
  static uint32_t const EventEncEnter     = 0x0008;
  static uint32_t const EventHandleSwitch = 0x0010;

  enum EState
  {
    WaitIdle,
    WaitAdcLoad,
    WaitAdcNoLoad
  };

  struct TConfig
  {
    TConfig() :
      Flag( FLAG_CONFIG ),
      SetPoint( 220 )
    {
    }

    uint32_t Flag;
    uint32_t SetPoint;
  };

public:
  TSolderingIronController();

  void Init();
  void Loop();
  void DisplayInit();
  void DisplayLoop();
  void UpdateConfig();

  void ApplicationIdleHook();
  void HAL_ADC_ErrorCallback();
  void HAL_ADC_ConvCpltCallback();
  void HAL_TIM_PeriodElapsedCallback();
  void HAL_TIM_OC_DelayElapsedCallback();
  void HAL_GPIO_EXTI_Callback( uint16_t const GPIO_Pin );

  void NotifyHeater( uint32_t const Event );
  void NotifyDisplay( uint32_t const Event );

  static int32_t Map(int32_t const value, int32_t const v_min, int32_t const v_max, int32_t const r_min, int32_t const r_max);
  static int32_t Adc2Temp( uint32_t const adc );
  static int32_t Temp2Adc( uint32_t const temp );
  static int32_t Constrain( int32_t const x, int32_t const a, int32_t const b )
  {
    return x < a ? a : x > b ? b : x;
  }

private:
  TConfig Config;
  FastPID Pid;
  EState State;
  int32_t SetPoint;
  uint16_t AdcData[ 5 ];
  uint32_t Vin0;
  uint32_t Vin1;
  uint32_t Ain1;
  uint32_t Heat;
  uint32_t Power;
  uint32_t Ambiant;
  uint32_t DeadtimeEncA;
  uint32_t DeadtimeEncB;
  uint32_t DeadtimeEncEnter;
  uint32_t DeadtimeHandleSwitch;
};

#endif // SOLDERING_IRON_CONTROLLER_H_
