#ifndef __WATERGUN_H
#define __WATERGUN_H
#include "includes.h"

class CWaterGun
{
public:
  int servoMiddle1, servoMiddle2;
  int servoMax1, servoMax2;
  int servoMin1, servoMin2;

  
  int horizontalSpeed, verticalSpeed;
  int horizontalAngleP, horizontalAngleM;
  int verticalAngleP, verticalAngleM;
  int horizontalSprayTime;
  
  int sprayingStartTime;
  double servoControl1, servoControl2;
  bool switch_Valve, switch_Pump;
  bool working;
  bool done;
  
  void update();
  void startSpraying();
  void stopSpraying();
};
extern CWaterGun *waterGun;

template<typename T>
T limiter(T ,T ,T);

void WaterGun_Init();

#endif
