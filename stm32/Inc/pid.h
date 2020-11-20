#ifndef PID_H
#define PID_H

#include "main.h"

class TPid
{
public:
  TPid( int32_t const Kp, int32_t const Ki, int32_t const Kd );
  int32_t ReqPower( int16_t const TempSet, int16_t const TempCurr );

private:
  int16_t TempH0;        // previously measured temperatures
  int16_t TempH1;
  int16_t denominator_p; // The common coefficient denominator power of 2 (11 means 2048)
  int32_t Kp;            // The PID coefficients multiplied by denominator.
  int32_t Ki;
  int32_t Kd;
  int32_t power;         // The power iterative multiplied by denominator
  int32_t i_summ;        // Ki summary multiplied by denominator
};

#endif
