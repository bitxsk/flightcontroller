#include "Navigation.h"

CNavigation *Navigation;


void Navigation_Init()
{
  static CNavigation Navigation_0;
  Navigation = &Navigation_0;
  Navigation->DesiredDistanceToScreen = 1.5f;
  Navigation->angleFilter.setParameter(2, 200);
}

void CNavigation::update()
{
  if(UltrasoundUART->distance2 < 4 && UltrasoundUART->distance3 < 4 && 
     abs(UltrasoundUART->distance2 - UltrasoundUART->distance3) < 0.15 &&  //0.15是距屏幕1.5m时的差值阈值
     t - UltrasoundUART->lastValidTime2 < 200 &&  t - UltrasoundUART->lastValidTime3 < 200 &&
     UltrasoundUART->distanceFilter2.valid && UltrasoundUART->distanceFilter3.valid)
  {
    angleToScreenValidTmp = true;
  }
  else
  {
    angleToScreenValidTmp  = false;
    angleToScreenValid = false;
  }
  
  if(!angleToScreenValidTmp && angleToScreenValidTmpLast)
  {
  }
  if(angleToScreenValidTmp && !angleToScreenValidTmpLast)
  {
    angleToScreenValidTime = t;
  }
  angleToScreenValidTmpLast = angleToScreenValidTmp;
  
  if(t - angleToScreenValidTime == 10)
  {
    angleToScreen_CF = angleToScreen;
  }
  
  if(angleToScreenValidTmp && t - angleToScreenValidTime > 100)
  {
    angleToScreenValid = true;
  }
  
  if(!angleToScreenValid && angleToScreenValidLast)
  {
  //  angleZ.referance = yaw1;
    angleZ.Kp0 = angleZ.Kp0 * 0.95 + 1800 * 0.05;
    angleZ.Kd0 = angleZ.Kd0 * 0.95 + 200 * 0.05;
  }
  if(angleToScreenValid && !angleToScreenValidLast)
  {
    angleZ.Kp0 = angleZ.Kp0 * 0.95 + 5000 * 0.05;
    angleZ.Kd0 = angleZ.Kd0 * 0.95 + 400 * 0.05;
  }
  angleToScreenValidLast = angleToScreenValid;
  
  if(angleToScreenValidTmp)
  {
    angleToScreen = atan((UltrasoundUART->distance2 - UltrasoundUART->distance3) / 0.48f) * 57.296f;
    angleFilter.setParameter((abs(MPU6000.gyro_z) * 90 + 800), 80);
    angleToScreenJumpF = angleFilter.newData1(angleToScreen, t);
    angleToScreen_CF = (angleToScreen_CF + MPU6000.gyro_z * 0.002) * 0.995f + angleToScreenJumpF * 0.005;
  }
  if(angleToScreenValid)
  {
    yawCompensation = angleToScreen_CF - yaw2;
  }
  yaw1 = yaw2 + yawCompensation;
}
