#include "fuzzyPID.h"

void fuzzyPID(PID_Controller* obj)
{
  int i,j;
  obj->column   = CalcMembership((int)obj->P, obj->OffsetMembership,  obj->OffsetBound);
  obj->row      = CalcMembership((int)obj->D, obj->OffsetDMembership, obj->OffsetDBound);

  for (i = 0; i < NUM; i++)       //Offset为列,OffsetD为行
  {
    if(obj->OffsetMembership[i] != 0)
    {
      for(j = 0; j < NUM; j++)
      {
        if(obj->OffsetDMembership[j] != 0)
        {
          obj->Kp +=  obj->KpStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
          obj->Ki +=  obj->KiStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
          obj->Kd +=  obj->KdStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
        }
      }
    }
  }
}

int CalcMembership(int value,int membership[],int bound[])
{
  u8 i;
  for (i = 0; i <= NUM - 1; i++)
  {
    membership[i] = 0;
  }

  if (value < bound[0])
  {
    membership[0] = 100;
    return 0;
  }
  else if(value >= bound[NUM - 1])
  {
    membership[NUM - 1] = 100;
    return 7;
  }
  else
  {
    for (i = 1; i <= NUM - 1; i++)
    {
      if (value < bound[i])
      {
        membership[i-1] = (bound[i] - value) * 100 / (bound[i] - bound[i - 1]);
        membership[i]   = 100 - membership[i-1];
        return i;
      }
    }
  }
  return 0;
}

void calculateD_partial(PID_Controller* obj)
{
  for(int i=0; i<9; i++)
   {
       obj->P_old[i] = obj->P_old[i+1];
   }
    
   obj->P_old[9] = obj->feedback;  
   obj->D = obj->D * obj->D_smoother + (obj->feedback - obj->P_old[0]) * (1 - obj->D_smoother); 
   
   if(obj->D > 2000) 
   {
     obj->D = 2000;
   }
   else if(obj->D < -2000) 
   {
     obj->D = -2000;
   }
}

void calculateD_full(PID_Controller* obj)
{
  int differentialPeriod = 1;
  for(int i = 0; i < differentialPeriod; i++)
  {
    obj->P_old[i] = obj->P_old[i+1];
  }
    
   obj->P_old[differentialPeriod] = obj->P;  
   obj->D = obj->D * obj->D_smoother + (obj->P - obj->P_old[0]) * (1 - obj->D_smoother); 
   
   if(obj->D > 2000) 
   {
     obj->D = 2000;
   }
   else if(obj->D < -2000) 
   {
     obj->D = -2000;
   }
}

void calculateI(PID_Controller* obj)
{
  obj->I += obj->P;
  if(obj->I > obj->integralLimit) 
  {
    obj->I = obj->integralLimit;
  }
  else if(obj->I < -obj->integralLimit) 
  {
    obj->I = -obj->integralLimit;
  }
}

void useConstantKpKiKd(PID_Controller* obj)
{
  if(!obj->fuzzy)
  {
    obj->Kp = obj->Kp0;
    obj->Ki = obj->Ki0;
    obj->Kd = obj->Kd0;
  }
}

void PID_controler(PID_Controller* obj)
{
  obj->outputP = obj->Kp * obj->P /500;//500
  obj->outputI = obj->Ki * obj->I /10000;
  obj->outputD = obj->Kd * obj->D /8000;//500
  
//  if(obj->outputD > obj->outputDLimit)  obj->outputD = obj->outputDLimit;
//  if(obj->outputD < -obj->outputDLimit) obj->outputD = -obj->outputDLimit;
  
  obj->output = obj->output * obj->smoother + (obj->outputP + obj->outputI + obj->outputD) * (1 - obj->smoother);
  
  if(obj->output > obj->outputLimit)  obj->output = obj->outputLimit;
  if(obj->output < -obj->outputLimit) obj->output = -obj->outputLimit;

}

void PID_Controller::reset()
{
  this->I = 0;
}
