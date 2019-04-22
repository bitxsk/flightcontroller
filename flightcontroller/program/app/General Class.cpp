#include "General Class.h"

float COutlierFilter::newData(float newData, float dataDerivate, int t)
{
  //static float lastData;
  if(init)
  {
    if(abs(newData - lastData) > maxRate + abs(dataDerivate) * (t - oldDataTime) * 0.001)
    {
      if(valid)
      {
        valid = false;
        invalidTime = t;
      }
    }
    else
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(t - invalidTime > maxInvalidTime)
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(!valid)
    {
      lastData += dataDerivate * (t - oldDataTime) * 0.001;
    }
    else
    {
      lastData = newData;
    }
  }
  else
  {
    lastData = newData;
    init = true;
  }
  oldDataTime = t;
  return lastData;
}

float COutlierFilter::newData(float newData, int t)
{
  //static float lastData;
  if(init)
  {
    if(abs(newData - lastData) > maxRate + abs(intervalIntegral) * integralThresholdGain)
    {
      if(valid)
      {
        valid = false;
        invalidTime = t;
      }
    }
    else
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(t - invalidTime > maxInvalidTime)
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(!valid)
    {
      lastData += intervalIntegral;
    }
    else
    {
      lastData = newData;
    }
  }
  else
  {
    lastData = newData;
    init = true;
  }
  oldDataTime = t;
  intervalIntegral = 0;
  return lastData;
}

float COutlierFilter::newData1(float newData, int t)
{
  //static float lastData;
  if(init)
  {
    if(abs(newData - lastData) / ((t - lastDataTime) / 1000.0f) > abs(maxRate))
    {
      if(valid)
      {
        valid = false;
        invalidTime = t;
      }
    }
    else
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    lastDataTime = t;
    
    if(t - invalidTime > maxInvalidTime)
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(!valid)
    {
      lastData += intervalIntegral;
    }
    else
    {
      lastData = newData;
    }
  }
  else
  {
    lastData = newData;
    init = true;
  }
  oldDataTime = t;
  intervalIntegral = 0;
  return lastData;
}


float COutlierFilter::newData3(float newData, int t) 
{
  //static float lastData;
  if(init)
  {
    if(abs(newData - lastData) > maxRate || newData > maxValue || newData < minValue)
    {
      if(valid)
      {
        valid = false;
        invalidTime = t;
      }
    }
    else
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(t - invalidTime > maxInvalidTime && newData < maxValue && newData > minValue)
    {
      if(!valid)
      {
        valid = true;
        validTime = t;
      }
    }
    
    if(!valid)
    {
      lastData += intervalIntegral;
    }
    else
    {
      lastData = newData;
    }
  }
  else
  {
    lastData = newData;
    init = true;
  }
  oldDataTime = t;
  intervalIntegral = 0;
  return lastData;
}

void COutlierFilter::accumulate(float tmp)
{
  intervalIntegral += tmp;
}

void COutlierFilter::setParameter(float maxRate, int maxInvalidTime, float integralThresholdGain)
{
  this->maxRate = maxRate;
  this->maxInvalidTime = maxInvalidTime;
  this->integralThresholdGain = integralThresholdGain;
}

void COutlierFilter::setParameter(float maxRate, int maxInvalidTime)
{
  this->maxRate = maxRate;
  this->maxInvalidTime = maxInvalidTime;
}

bool COutlierFilter::isValid()
{
  return valid;
}

void COutlierFilter::setNewDataTime(int t)
{
  newDataTime = t;
}

int COutlierFilter::getNewDataTime()
{
  return newDataTime;
}

void COutlierFilter::checkIsNewData(int t)
{
    if(t - oldDataTime > 300)
    {
      valid = false;
    }
}

void COutlierFilter::setValid(bool temp)
{
  valid = temp;
}


void CoordinateElement::operator= (float newData)
{
  this->data = newData;
}

void CoordinateElement::operator+= (float newData)
{
  this->data += newData;
}

void CoordinateElement::operator+= (CoordinateElement newData)
{
  this->data += newData.data;
}

void CoordinateElement::operator-= (float newData)
{
  this->data -= newData;
}

void CoordinateElement::operator-= (CoordinateElement newData)
{
  this->data -= newData.data;
}

void CoordinateElement::operator*= (float newData)
{
  this->data *= newData;
}

void CoordinateElement::operator*= (CoordinateElement newData)
{
  this->data *= newData.data;
}

void CoordinateElement::operator/= (float newData)
{
  this->data /= newData;
}

void CoordinateElement::operator/= (CoordinateElement newData)
{
  this->data /= newData.data;
}


CoordinateElement::operator float()
{
  return this->data;
}

CoordinateElement::CoordinateElement(float D_upperLimit, float D_lowerLimit, float D_smoother)
{
  this->D_upperLimit = D_upperLimit;
  this->D_lowerLimit = D_lowerLimit;
  this->D_smoother   = D_smoother;
}

void CoordinateElement::calculateD(int t)
{
   if(t != oldDataTime)
   {
    D = D * D_smoother + (data - oldData) / (t - oldDataTime) * 1000 * (1 - D_smoother); 
   }
   oldData = data;
   oldDataTime = t;
   if(D > D_upperLimit) 
   {
     D = D_upperLimit;
   }
   else if(D < D_lowerLimit) 
   {
     D = D_lowerLimit;
   }
}

void timeWindowIntegral::update(float newData)
{
  newData *= 0.002;
  sum -= data[index];
  sum += newData;
  data[index] = newData;
  index++;
  if(index > timeWindow/2) //2是控制周期
  {
    index = 0;
  }
}