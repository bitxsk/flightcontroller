#ifndef __NAVIGATION_H
#define __NAVIGATION_H
#include "includes.h"

class CNavigation
{
public:
  COutlierFilter angleFilter;
  Coordinate position_origin;
  float angleToScreen, angleToScreenJumpF, angleToScreen_CF;
  bool angleToScreenValidTmp, angleToScreenValidTmpLast;
  bool angleToScreenValid, angleToScreenValidLast;
  float angleToScreenValidTime;
  float yawLast;
  float yawCompensation;
  float DesiredDistanceToScreen;
  
  void update();
};
extern CNavigation *Navigation;


void Navigation_Init();

#endif
