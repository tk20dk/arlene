#ifndef I2C_H__
#define I2C_H__

#include "system.h"


class TI2c
{
  static uint32_t const I2cTimeout = 100U;

public:
  TI2c( I2C_HandleTypeDef &hi2c );

  void Read( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count );
  void Write( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count );
  bool ReadCheck( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count );
  bool WriteCheck( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count );

  void WriteRead( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count );
  void WriteWrite( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count );
  bool WriteReadCheck( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count );
  bool WriteWriteCheck( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count );

  uint8_t ReadReg( uint8_t const Addr, uint8_t const Reg );
  void WriteReg( uint8_t const Addr, uint8_t const Reg, uint8_t const Data );

private:
  I2C_HandleTypeDef &hi2c;
};
extern TI2c I2c;

#endif // I2C_H__

