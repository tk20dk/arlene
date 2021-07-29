#include "system.h"

extern UART_HandleTypeDef huart1;


void UsbPrintf( char const *const Format, ... )
{
  static int Length;
  static char Buffer[ 256 ];
  va_list Args;

  va_start( Args, Format );
  Length += vsnprintf( &Buffer[ Length ], sizeof( Buffer ) - Length, Format, Args );
  va_end( Args );

  if( Length > 0 )
  {
    auto Status = CDC_Transmit_FS( reinterpret_cast<uint8_t*>( Buffer ), static_cast<uint16_t>( Length ));
    if( Status != USBD_BUSY )
    {
      Length = 0;
    }
  }
}

void UartPrintf( char const *const Format, ... )
{
  static char Buffer[ 256 ];
  va_list Args;
  va_start( Args, Format );
  int const Result = vsnprintf( Buffer, sizeof( Buffer ), Format, Args );
  va_end( Args );

  if( Result > 0 )
  {
    auto const Status = HAL_UART_Transmit( &huart1, (uint8_t*)Buffer, Result, 500 );
    assert_param( Status == HAL_OK );
  }
}
