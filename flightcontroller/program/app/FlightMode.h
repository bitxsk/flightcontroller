#ifndef __FLIGHTMODE_H
#define __FLIGHTMODE_H
#include "includes.h"

class CFlightMode
{
public:
  Coordinate position_origin;
  void update();
  int currentState, newState, t0_altitudeMode, _initLock, 
      currentState_PositionMode, newState_PositionMode, t0_PositionMode;
  
  class CScheduleManager
  {
    enum State_{waitting, takeOff};
    State_ state;
    void update();
  };
  CScheduleManager scheduleManager;
  
  
  class CTakeOff
  {
  public:
    enum State_{waitting, takeOffPrepare, onTheAir, landing};
    State_ state;
    float onTheGroundHight;
    bool waittingFlag;
    int takeOffTime1;
    float altitudeHold_gravity;
    void update();
  };
  CTakeOff takeOff;
  
  class CMission
  {
  public:
    enum State_{roam, lockTarget, lockScreen, waitting};
    enum roamState_{roamLeft, roamRight};
    int roamState;
    int waittingTime, lockTime, roamTime;
    State_ state;
    void update();
  };
  CMission mission;
  
};


extern CFlightMode *flightMode;
void flightMode_Init();

#endif