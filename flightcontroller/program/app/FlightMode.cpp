#include "FlightMode.h"

CFlightMode *flightMode;


void flightMode_Init()
{
  static CFlightMode flightMode_0;
  flightMode = &flightMode_0;
}

void CFlightMode::update()
{
  if(EVB.LeftKnob > 0 && currentState == 0 && _initLock) //滞回状态切换
  {
    newState = 1;
  }
  else if(EVB.LeftKnob < -200 && currentState)
  {
    newState = 0;
  }
  else if(!currentState && EVB.LeftKnob < -200)
  {
    _initLock = 1;
  }
 

//  if(EVB.LeftKnob > 450 && currentState_PositionMode == 0 && _initLock) //滞回状态切换
//  {
//    newState_PositionMode = 1;
//  }
//  else if(EVB.LeftKnob < 200 && currentState_PositionMode)
//  {
//    newState_PositionMode = 0; /////////////要改
//  }
  
   if(SBus->Rightknob > 0 && currentState_PositionMode == 0 && _initLock) //滞回状态切换
  {
    newState_PositionMode = 1;
  }
  else if(SBus->Rightknob < 0 && currentState_PositionMode)
  {
    newState_PositionMode = 0; /////////////要改
  }
  
  
//  if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 10010)
//  {
//    newState_PositionMode = 1;
//  }
//  if(RemoteHub->valid)
//  {
//    newState = 0;
//    newState_PositionMode = 0;
//  }
  
   if(newState && !currentState)
  {
    takeOff.state = CTakeOff::waitting;
    takeOff.altitudeHold_gravity = 0;
  }
  currentState = newState;
  
  
  if(newState_PositionMode && !currentState_PositionMode)
  {
    positionX.reset();
    positionY.reset();
    t0_PositionMode = t;
   // command->position.x = 0;
   // command->position.y = 0;
    
  //  command->position.x = GPS->position.x;
  //  command->position.y = GPS->position.y;
   // mission.state = CMission::lockTarget;
  }
  currentState_PositionMode = newState_PositionMode;

  
  if(currentState)
  {
    angleZ.referance = 0;
    takeOff.update();
  }
  else
  {
    ControlOutput_ZChannel = EVB.ConstSpd;
  }
 ////////在调定高，先关上X,Y ////////
  
  if(currentState_PositionMode)
  {
    angleZ.referance = 0;
    int deltaX = EVB.Pitch;
    if(deltaX > 600) deltaX = 600;
    if(deltaX <-600) deltaX =-600;
    
    if(deltaX > 100)                  //50死区
    {
      deltaX -= 100;
    }
    else if(deltaX < -100)
    {
      deltaX += 100;
    }
    else
    {
      deltaX = 0;
    }
    
    int deltaY = EVB.Roll;
    if(deltaY > 600) deltaY = 600;
    if(deltaY <-600) deltaY =-600;
    
    if(deltaY > 100)                  //50死区
    {
      deltaY -= 100;
    }
    else if(deltaY < -100)
    {
      deltaY += 100;
    }
    else
    {
      deltaY = 0;
    }
    command->position.x += deltaX * 0.002 * 0.001;
    command->position.y += deltaY * 0.002 * 0.001;
    mission.update();
  }
}



void CFlightMode::CTakeOff::update()
{
  if(state == waitting)
  {
    if(EKF_AHRS->fusion.position.z > 0.1f)
    {
      altitudeHold_gravity = EVB.ConstSpd;
      state = onTheAir;
    }
    
    if(EVB.ConstSpd > 200 && EVB.ConstSpd < 500)
    {
      if(!waittingFlag)
      {
        waittingFlag = true;
        takeOffTime1 = t;
      }
    }
    else
    {
      waittingFlag = false;
      takeOffTime1 = t;
    }
    
    if(t - takeOffTime1 > 1000)
    {
      onTheGroundHight = EKF_AHRS->fusion.position.z;
      state = takeOffPrepare;
    }
  }
  else if(state == takeOffPrepare)
  {
    if(EKF_AHRS->fusion.position.z - onTheGroundHight > 0.05f ||
       EKF_AHRS->fusion.vel.z > 0.08f)
    {
      dis_set_hight = EKF_AHRS->fusion.position.z;
      positionZ.reset();
      positionZ_vel.reset();    
      takeOffTime1 = t;
      state = onTheAir;
      //flightMode->mission.state = CMission::lockTarget;
    }
    
//    if(altitudeHold_gravity < 500)
//    {
//      altitudeHold_gravity += 1;
//    }
//    else if(altitudeHold_gravity < 750)
//    {
//      altitudeHold_gravity += 0.5;
//    }
//    
     if(altitudeHold_gravity < 500)
    {
      altitudeHold_gravity += 1;
    }
    else if(altitudeHold_gravity < 750)
    {
      altitudeHold_gravity += 0.5;
    }
    ControlOutput_ZChannel = altitudeHold_gravity;
  }
  else if(state == onTheAir)
  {
    int deltaHight = 180;
    int deltaHight_usr = 0;
    if(t - takeOffTime1 > 2000)
    {
      deltaHight_usr = EVB.ConstSpd - 350; //减中位
      if(deltaHight_usr > 120)                      //50死区
      {
        deltaHight_usr -= 120;
      }
      else if(deltaHight_usr < -120)
      {
        deltaHight_usr += 120;
      }
      else
      {
        deltaHight_usr = 0;
      }
      deltaHight_usr *= 1.5f;
    }
    
//    if(t - takeOffTime1 > 60000)
//    {
//      dis_set_hight -= 1/1000.0f;
//    }
    
    if(t - takeOffTime1 > 100)
    {
      if(t - takeOffTime1 < 2000)
      {
        dis_set_hight += deltaHight * 0.002 / 500 * (t - takeOffTime1 - 100) / 2000;
        positionZ_vel.output = 0;
      }
      else
      {
        dis_set_hight += deltaHight_usr * 0.002 / 800;
      }
    }
    
    if(dis_set_hight < -2) 
    {
      dis_set_hight = -2;
    }
    else if(dis_set_hight > 2) 
    {
      dis_set_hight = 2;
    }
    
    if(EKF_AHRS->fusion.position.z < 0.12 && t - takeOffTime1 > 2000)
    {
      state = landing;
    }
    ControlOutput_ZChannel = altitudeHold_gravity + positionZ_vel.output;
  }
  else if(state == landing)
  {
    if(EKF_AHRS->fusion.position.z > 0.2)
    {
      state = onTheAir;
    }
    if(altitudeHold_gravity > 0)
    {
      altitudeHold_gravity -=2;
    }
    else if(altitudeHold_gravity <= 0)
    {
      altitudeHold_gravity = 0;
      state = waitting;
    }
    ControlOutput_ZChannel = altitudeHold_gravity;
  }
}


void CFlightMode::CMission::update()
{
  if(state == waitting)
  {
    
  }
  else if(state == lockScreen)
  {
    if(command->position.y > 0.02)
    {
      command->position.y -= 1 / 1000.0f;
    }
    else if(command->position.y < -0.02)
    {
      command->position.y += 1 / 1000.0f;
    }
    
    if(command->position.x > 0.02)
    {
      command->position.y -= 1 / 1000.0f;
    }
    else if(command->position.y < -0.02)
    {
      command->position.y += 1 / 1000.0f;
    }
    
    if(videoStation->myState == CVideoStation::idel && abs(command->position.y) < 0.2)
    {
      videoStation->myState = CVideoStation::searchScreen;
    }
    
    
    if(videoStation->remoteState == CVideoStation::searchTarget)
    {
      videoStation->myState = CVideoStation::searchTarget;
      state = roam;
      roamState = roamRight;
    }
  }
  else if(state == roam)
  {
    if(roamState == roamLeft)
    {
      if(command->position.y > 2) //2是墙纸左侧
      {
        command->position.y -= 0.5 / 1000.0f;
      }
      else
      {
        roamState = roamRight;
      }
    }
    else
    {
      if(command->position.y < 10) //10是墙纸右侧
      {
        command->position.y += 0.5 / 1000.0f;
      }
      else
      {
        roamState = roamLeft;
      }
    }
    
    if(videoStation->valid)
    {
      state = lockTarget;
      lockTime = t;
    }
  }
  else if(state == lockTarget)
  {
    if(videoStation->valid)
    {
 //     dis_set_hight -= videoStation->position.z / 5000.0f;
 //     command->position.y -= videoStation->position.y / 5000.0f;
    }
    
    if(t - videoStation->invalidTime > 300)
    {
  //    state = roam;
    }
    
//    if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 20000)
//    {
//      command->position.x = 0;
//      command->position.y = 10;
//    }
//    
//    if(t - flightMode->takeOff.takeOffTime1 > 20000 && t - flightMode->takeOff.takeOffTime1 < 60000)
//    {
//      command->position.x = 0;
//      command->position.y = 0;
//    }
//    
//    if(t - flightMode->takeOff.takeOffTime1 > 60000 && t - flightMode->takeOff.takeOffTime1 < 100000)
//    {
//      command->position.x = -3;
//      command->position.y = 2;
//    }
    
    if(waterGun->done)
    {
//      state = lockScreen;
//      waterGun->done = false;
//      videoStation->myState = CVideoStation::idel;
//      videoStation->idelTime = t;
    }
  }
  
  
  if(command->position.x > Navigation->DesiredDistanceToScreen - 0.5) 
  {
 //---   command->position.x = Navigation->DesiredDistanceToScreen - 0.5;
  }
  else if(command->position.x < -(Navigation->DesiredDistanceToScreen + 0.5)) //最远两米
  {
 //---   command->position.x = -(Navigation->DesiredDistanceToScreen + 0.5);
  }
  
  if(command->position.y > 15) 
  {
  //---  command->position.y = 15;
  }
  else if(command->position.y < -1) 
  {
  //---  command->position.y = -1;
  }
    
}
