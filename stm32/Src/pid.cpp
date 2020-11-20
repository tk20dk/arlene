#include "pid.h"
#include <cstdlib>


TPid::TPid( int32_t const Kp, int32_t const Ki, int32_t const Kd ) :
  TempH0( 0 ),
  TempH1( 0 ),
  denominator_p( 11 ),
  Kp( Kp ),
  Ki( Ki ),
  Kd( Kd ),
  power( 0 ),
  i_summ( 0 )
{
}

int32_t TPid::ReqPower( int16_t const TempSet, int16_t const TempCurr )
{
#if 1
  return TempSet > TempCurr ? 10000 : 0;
#endif

#if 0
  int32_t kp = 0;
  int32_t ki = 0;
  int32_t kd = 0;
  int32_t delta_p = 0;

  if( TempH0 == 0 ) // Use direct formulae because do not know previous temperature
  {
    power = 0;
    i_summ = 0;
    i_summ += TempSet - TempCurr;
    power = Kp * ( TempSet - TempCurr ) + Ki * i_summ;
  }
  else
  {
    kp = Kp * ( TempH1 - TempCurr);
    ki = abs(TempSet - TempCurr) > 500 ? 0 : Ki * ( TempSet - TempCurr);
    kd = Kd * ( TempH0 + TempCurr - 2 * TempH1);
    delta_p = kp + ki + kd;

    power += delta_p;
  }

  TempH0 = TempH1;
  TempH1 = TempCurr;

  int32_t pwr = power + ( 1 << ( denominator_p - 1 )); // round result
  pwr >>= denominator_p;

  return pwr;
#endif
}
