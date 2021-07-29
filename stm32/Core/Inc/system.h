#ifndef SYSTEM_H_
#define SYSTEM_H_

#include <cstdint>
#include <cstdarg>
#include "main.h"
#include "cmsis_os.h"
#include "usbd_cdc_if.h"

void UsbPrintf( char const *const Format, ... );
void UartPrintf( char const *const Format, ... );

inline void SetPin( GPIO_TypeDef *const Port, uint32_t const Pin )
{
  Port->BSRR = Pin;
}
inline void ResetPin( GPIO_TypeDef *const Port, uint32_t const Pin )
{
  Port->BSRR = ( Pin << 16U );
}
inline bool ReadPin( GPIO_TypeDef *const Port, uint32_t const Pin )
{
  return (( Port->IDR & Pin ) != 0U );
}
inline void TogglePin( GPIO_TypeDef *const Port, uint32_t const Pin )
{
  ReadPin( Port, Pin) ? ResetPin( Port, Pin ) : SetPin( Port, Pin );
}

class TSystem
{
public:
  TSystem();

};
#endif // SYSTEM_H_
