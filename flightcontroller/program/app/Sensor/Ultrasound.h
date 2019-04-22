#ifndef __ULTRASOUND_H
#define __ULTRASOUND_H
#include "includes.h"


class Ultrasound__
{
public:

////////////////////////////////////////////
static int send,rece,PIT_Period;
static int flag,count;
static float test;
static float time,dis, dis0; 
static bool error;
////////////////////////////////////////////

//private:

  float vel_CF;
  float P_old[10], D, D_smoother;
  
  static COutlierFilter filter;
    
  Ultrasound__()
 {
    D_smoother = 0.3;
    filter.setParameter(0.8,500);
 }
 
  void newData();
  void calculateD_partial(float newValue);
  static void IC_isr();
  void PIT_isr();
};
extern Ultrasound__ *Ultrasound;




void Ultrasound_Init();

#endif