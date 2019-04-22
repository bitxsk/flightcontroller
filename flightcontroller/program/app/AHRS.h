#ifndef _AHRS_H_
#define _AHRS_H_
#include "includes.h"
void AHRS_init();
class CAHRS
{
public:
  void  Sensordata();
  float  R_acclx, R_accly, R_acclz;
  float  R_gyrox, R_gyroy, R_gyroz;
  float gyro_choose(float gyro1,float threshold,float gyro2);
  float accle_choose(float accle1,float threshold2,float accle2);
  int test;
  CAHRS()
  {
    this->test = 10;
  }
};
extern int iii;
 extern CAHRS *AHRS;




#endif