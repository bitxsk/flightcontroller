#ifndef __GENERALCLASS_H
#define __GENERALCLASS_H
//#include "includes.h"
#include <math.h>

class COutlierFilter
{
public:
  float newData(float newData, float dataDerivate, int t);
  float newData(float newData, int t);
  float newData1(float newData, int t);
  float newData3(float newData, int t);
  void setParameter(float maxRate, int maxInvalidTime);
  void setParameter(float maxRate, int maxInvalidTime, float integralThresholdGain);
  bool isValid();
  void setNewDataTime(int t);
  int  getNewDataTime();
  void checkIsNewData(int t);
  void setValid(bool);
  void accumulate(float);
  
  COutlierFilter():maxRate(100), maxInvalidTime(50), integralThresholdGain(1)
  {
  }
  
//private:
  float lastData, filterData, maxRate, maxValue, minValue;
  int invalidTime, validTime, oldDataTime, newDataTime, lastDataTime, maxInvalidTime;
  float integralThresholdGain, intervalIntegral;
  bool  valid, init;   
};

class CoordinateElement
{
public:
  float data;
  float oldData, oldDataTime;
  float D, D_smoother, D_upperLimit, D_lowerLimit;
  void calculateD(int t);
  
  CoordinateElement():D_upperLimit(10000), D_lowerLimit(-10000), D_smoother(0.8) //0.65
  {
  }
  
  CoordinateElement(float D_upperLimit, float D_lowerLimit, float D_smoother);

  
  void operator=  (float);
  void operator+= (float);
  void operator+= (CoordinateElement);
  void operator-= (float);
  void operator-= (CoordinateElement);
  void operator*= (float);
  void operator*= (CoordinateElement);
  void operator/= (float);
  void operator/= (CoordinateElement);
  operator float();
};

/****This operator overloads can be replaced by the type conversion overload****/
//  extern float operator+ (float, CoordinateElement);
//  extern float operator+ (CoordinateElement, float);
//  extern float operator- (float, CoordinateElement);
//  extern float operator- (CoordinateElement, float);
//  extern float operator* (float, CoordinateElement);
//  extern float operator* (CoordinateElement, float);
//  extern float operator/ (float, CoordinateElement);
//  extern float operator/ (CoordinateElement, float);

class Coordinate
{
public:
  CoordinateElement x,y,z;
};



class Command
{
public:
  Coordinate position;
};

class timeWindowIntegral
{
public:
  float data[500];
  int index;
  float sum;
  int timeWindow;
  
  timeWindowIntegral():timeWindow(100), sum(0)
  {
  }
  
  void update(float newData);
};


#endif