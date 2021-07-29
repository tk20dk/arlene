#include "i2c.h"


TI2c::TI2c( I2C_HandleTypeDef &hi2c ) :
  hi2c( hi2c )
{
}

void TI2c::Read( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count )
{
  bool const Status = ReadCheck( Addr, Buffer, Count );
  assert_param( Status == true );
}

void TI2c::Write( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count )
{
  bool const Status = WriteCheck( Addr, Buffer, Count );
  assert_param( Status == true );
}

bool TI2c::ReadCheck( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count )
{
  auto const Status = HAL_I2C_Master_Receive( &hi2c, Addr, Buffer, Count, I2cTimeout );
  return ( Status == HAL_OK );
}

bool TI2c::WriteCheck( uint8_t const Addr, uint8_t *const Buffer, uint32_t const Count )
{
  auto const Status = HAL_I2C_Master_Transmit( &hi2c, Addr, Buffer, Count, I2cTimeout );
  return ( Status == HAL_OK );
}

void TI2c::WriteRead( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count )
{
  auto const Status = WriteReadCheck( Addr, Command, Data, Count );
  assert_param( Status == true );
}

void TI2c::WriteWrite( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count )
{
  auto const Status = WriteWriteCheck( Addr, Command, Data, Count );
  assert_param( Status == true );
}

bool TI2c::WriteReadCheck( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count )
{
  auto const Status = HAL_I2C_Mem_Read( &hi2c, Addr, Command, I2C_MEMADD_SIZE_8BIT, Data, Count, I2cTimeout );
  return ( Status == HAL_OK );
}

bool TI2c::WriteWriteCheck( uint8_t const Addr, uint8_t const Command, uint8_t *const Data, uint32_t const Count )
{
  auto const Status = HAL_I2C_Mem_Write( &hi2c, Addr, Command, I2C_MEMADD_SIZE_8BIT, Data, Count, I2cTimeout );
  return ( Status == HAL_OK );
}

uint8_t TI2c::ReadReg( uint8_t const Addr, uint8_t const Reg )
{
  uint8_t Data;
  WriteRead( Addr, Reg, &Data, 1 );
  return Data;
}

void TI2c::WriteReg( uint8_t const Addr, uint8_t const Reg, uint8_t const Data )
{
  uint8_t Buffer[ 2 ];
  Buffer[ 0 ] = Reg;
  Buffer[ 1 ] = Data;
  Write( Addr, Buffer, sizeof( Buffer ));
}

