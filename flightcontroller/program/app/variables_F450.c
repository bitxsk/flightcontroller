#include "variables.h"

#if THIS_PLANE == F450
int t = 0, tTrans = 0;
float temp_111;

float dis_set_hight;
float roll, pitch, yaw;
float ControlOutput_ZChannel;


/*****************************************************************************/
/*****************************************************************************/
PID_Controller 
gyroX = 
{
  .Kp0  = 16,//16 
  .Ki0  = 3,//3
  .Kd0  = 700,//600 
  .fuzzy = 0,
  .D_smoother = 0.2,
  .smoother = 0,
  .integralLimit = 200000,
  .outputLimit  = 500
}, 


gyroY = 
{
  .Kp0  = 16,//16
  .Ki0  = 3,//3
  .Kd0  = 700,//600
  .fuzzy = 0,
  .D_smoother = 0.2,
  .smoother = 0,
  .integralLimit = 200000,
  .outputLimit  = 500
},


gyroZ = 
{
  .Kp0  = 500,//210 
  .Ki0  = 0,
  .Kd0  = 300, //110
  .fuzzy = 0,
  .D_smoother = 0.2,
  .smoother = 0,
  .integralLimit = 200000,
  .outputLimit  = 200
},

/*****************************************************************************/
/*****************************************************************************/

angleX = 
{
  .Kp0  = 3900,//3900
  .Ki0  = 0,
  .Kd0  = 2200,//2200
  .fuzzy = 0,
  .smoother = 0,
  .integralLimit = 4000,
  .outputLimit  = 1500
},



angleY = 
{
  .Kp0  = 3900,//3900
  .Ki0  = 0,
  .Kd0  = 2200,//2200
  .fuzzy = 0,
  .smoother = 0,
  .integralLimit = 4000,
  .outputLimit  = 1500
},

angleZ = 
{
  .Kp0  = 2000,//2000
  .Ki0  = 0,
  .Kd0  = 230,//230
  .fuzzy = 0,
  .smoother = 0,
  .integralLimit = 4000,
  .outputLimit  = 150
},

/*****************************************************************************/
/*****************************************************************************/

positionX_vel = 
{
  .Kp0  = 3000, //1700
  .Ki0  = 0,//0
  .Kd0  = 3000, //130
  .fuzzy = 0,
  .D_smoother = 0.96,
  .smoother = 0,
  .integralLimit = 100,
  .outputLimit  = 2//6

},
positionY_vel = 
{
  .Kp0  = 3000, //1700
  .Ki0  = 0,//0
  .Kd0  = 3000, //130
  .fuzzy = 0,
  .D_smoother = 0.96,
  .smoother = 0,
  .integralLimit = 100,
  .outputLimit  = 4//6
},

positionZ_vel = 
{
  .Kp0  = 40000, //40000 
  .Ki0  = 100,   //340
  .Kd0  = 10000,  //10000
  .fuzzy = 0,
  .D_smoother = 0.993,
  .smoother = 0,
  .integralLimit = 5000,
  .outputLimit  = 150//100
},

/*****************************************************************************/
/*****************************************************************************/

positionZ = 
{
  .Kp0  = 150000,
  .Ki0  = 200,
  .Kd0  = 500000,
  .fuzzy = 0,
  .D_smoother = 0.99,
  .smoother = 0,
  .integralLimit = 400000,
  .outputLimit  = 500
},
positionX = 
{
  .Kp0  = 150000,
  .Ki0  = 200,
  .Kd0  = 500000,
  .fuzzy = 0,
  .D_smoother = 0.99,
  .smoother = 0,
  .integralLimit = 400000,
  .outputLimit  = 500
},
positionY = 
{
  .Kp0  = 150000,
  .Ki0  = 200,
  .Kd0  = 500000,
  .fuzzy = 0,
  .D_smoother = 0.99,
  .smoother = 0,
  .integralLimit = 400000,
  .outputLimit  = 500
}
;

/*****************************************************************************/
/*****************************************************************************/

Rotor controlOutput;

void findDifference::getresult(float data, float min, float max, int num)
{
  this->min = max;
  this->max = min;
  
  for(int i=0; i<num; i++)
  {
    this->H[i] = this->H[i+1];
    
    if(this->H[i] < this->min) this->min = this->H[i];
    if(this->H[i] > this->max) this->max = this->H[i];
  }
  this->diff = this->max - this->min;
  this->H[num] = data;
}

findDifference Diffa;


//float roll, pitch, yaw;
float roll1, pitch1, yaw1, yaw2;
float roll3, pitch3, yaw3, yaw4;


int powerVoltage_5_Device1, powerVoltage_5_Device2, powerVoltage_5_Device3, powerVoltage_5, powerVoltage_3v3;
int updateErrorCnt = 0;

int OffsetMembership_X[NUM]={0};
int OffsetDMembership_X[NUM]={0};

int OffsetMembership_Y[NUM]={0};
int OffsetDMembership_Y[NUM]={0};


int   rowTX_X = 0;
int   columnTX_X = 0;
int   Kp_X = 80,  Ki_X = 80,  Kd_X = 80;
int   Kp_X0 = 20, Ki_X0 = 50, Kd_X0 = 5;


int   rowTX_Y = 0;
int   columnTX_Y = 0;
int   Kp_Y = 80,  Ki_Y = 80,  Kd_Y = 80;
int   Kp_Y0 = 20, Ki_Y0 = 50, Kd_Y0 = 5;

int fanIniSpd = 4150;

int rotor1, rotor2, rotor3, rotor4;
#endif