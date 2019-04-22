#include "waterGun.h"

CWaterGun *waterGun;


void WaterGun_Init()
{
  static CWaterGun waterGun_0;
  waterGun = &waterGun_0;
  
  waterGun->servoMiddle1 = 3000;
  waterGun->servoMiddle2 = 3000;
  waterGun->servoMax1 = 6000; //机械结构限制范围最大值
  waterGun->servoMax2 = 6000;
  waterGun->servoMin1 = 2000;
  waterGun->servoMin2 = 2000;
  
  waterGun->horizontalSpeed = 800; //占空比变化每秒
//  waterGun->verticalSpeed = 800; //根据横向速度与次数计算得出
  waterGun->horizontalAngleP = 300; //实际喷洒边界偏移量
  waterGun->horizontalAngleM = -300;
  waterGun->verticalAngleP = 300;
  waterGun->verticalAngleM = -300;
  
  waterGun->horizontalSprayTime = 5;
}

void CWaterGun::update()
{
  if(working)
  {
    int horizontalRange = horizontalAngleP - horizontalAngleM;
    double horizontalPeriod = (double)horizontalRange / (double)horizontalSpeed;
    double time = (t - sprayingStartTime) / 1000.0f;
    
    if((int)(time / horizontalPeriod ) % 2 == 0)
    {
      servoControl1 = horizontalAngleM + 
        (time / horizontalPeriod - (int)(time / horizontalPeriod)) * horizontalRange;
    }
    else
    {
       servoControl1 = horizontalAngleP - 
        (time / horizontalPeriod - (int)(time / horizontalPeriod)) * horizontalRange;
    }
    
    int verticalRange = verticalAngleP - verticalAngleM;
    double verticalPeriod = horizontalPeriod * horizontalSprayTime;
    
    servoControl2 = verticalAngleP - 
        (time / verticalPeriod) * verticalRange;
    
    if((int)(time / horizontalPeriod) >= horizontalSprayTime)
    {
      stopSpraying();
    }
  }
  else
  {
    servoControl1 = horizontalAngleM;
    servoControl2 = verticalAngleP;
  }
 
//  FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, limiter(servoMin1, servoMax1, servoMiddle1 + (int)servoControl1));
 // FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, limiter(servoMin2, servoMax2, servoMiddle2 + (int)servoControl2));  
}

void CWaterGun::startSpraying()
{
  sprayingStartTime = t;
  working = true;
  GPIO_Output_b(PTB, 22, 1);
}

void CWaterGun::stopSpraying()
{
  working = false;
  done = true;
  GPIO_Output_b(PTB, 22, 0);
}

template<typename T>
T limiter(T lowerLimit, T upperLimit, T data)
{
  if(data > upperLimit)
  {
    data = upperLimit;
  }
  else if(data < lowerLimit)
  {
    data = lowerLimit;
  }
  return data;
}