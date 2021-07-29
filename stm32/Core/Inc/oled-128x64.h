#ifndef TOLED128X64_H__
#define TOLED128X64_H__

#include "i2c.h"


class TOled128x64
{
  static uint8_t const I2C_ADDR           = 0x78;

  static uint8_t const SETLOWCOLUMN       = 0x00;
  static uint8_t const SETHIGHCOLUMN      = 0x10;
  static uint8_t const SETPUMPVOLTAGE     = 0x30;
  static uint8_t const SETSTARTLINE       = 0x40;
  static uint8_t const SETCONTRAST        = 0x81;
  static uint8_t const SEGREMAP           = 0xa0;
  static uint8_t const DISPLAYALLOFF      = 0xa4;
  static uint8_t const DISPLAYALLON       = 0xa5;
  static uint8_t const INVERSEOFF         = 0xa6;
  static uint8_t const INVERSEON          = 0xa7;
  static uint8_t const SETMULTIPLEX       = 0xa8;

  static uint8_t const DCDCCONTROL        = 0xad;
  static uint8_t const DCDCOFF            = 0x8a;
  static uint8_t const DCDCON             = 0x8b;

  static uint8_t const DISPLAYOFF         = 0xae;
  static uint8_t const DISPLAYON          = 0xaf;
  static uint8_t const PAGESTART          = 0xb0;
  static uint8_t const COMSCANINC         = 0xc0;
  static uint8_t const COMSCANDEC         = 0xc8;
  static uint8_t const SETDISPLAYOFFSET   = 0xd3;
  static uint8_t const SETDISPLAYCLOCKDIV = 0xd5;
  static uint8_t const SETPRECHARGE       = 0xd9;
  static uint8_t const SETCOMPINS         = 0xda;
  static uint8_t const SETVCOMDETECT      = 0xdb;

  static uint8_t const RMWSTART           = 0xe0;
  static uint8_t const RMWEND             = 0xee;
  static uint8_t const NOP                = 0xe3;

  static uint8_t const MEMORYMODE         = 0x20;
  static uint8_t const COLUMNADDR         = 0x21;
  static uint8_t const PAGEADDR           = 0x22;
  static uint8_t const CHARGEPUMP         = 0x8d;

  static uint32_t const DefaultKickInterval = 1U;

public:
  TOled128x64( TI2c &I2c, uint8_t const I2cAddr = I2C_ADDR );

  void Init( void );
  bool Kick( uint32_t const Interval = DefaultKickInterval );
  void Test( bool const Mode );
  void Sleep( bool const Mode );
  void GotoXY( uint8_t const Xpos, uint8_t const Ypos );
  void Inverse( bool const Mode );
  void Contrast( uint8_t const Level );

  void Clear( void );
  void Print( char const Char );
  void Print( uint8_t const Xpos, uint8_t const Ypos, char const *const Text );
  void Printf( uint8_t const Xpos, uint8_t const Ypos, char const *const Format, ... );

private:
  void Delay( void );
  void Command( uint8_t const Command );
  void Command( uint8_t const Command, uint8_t const Data1 );
  void Command( uint8_t const Command, uint8_t const Data1, uint8_t const Data2 );
  void TimeoutHandler( void );

private:
  TI2c         &I2c;
  bool          Present;
//  TTimer        Timer;
  uint8_t const I2cAddr;
};
extern TOled128x64 Display;

#endif // TOLED128X64_H__


