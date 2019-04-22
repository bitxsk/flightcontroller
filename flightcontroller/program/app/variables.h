#ifndef _VARIABLES_H_
#define _VARIABLES_H_
#include "common.h"

#define NUM 7
#define NUM 7
#define GRAVITATIONAL_ACC 9.80151
#define QAV250  0
#define F450    1
#define QAV220  2
#define THIS_PLANE F450


extern int t, tTrans;
extern float temp_111;
extern float dis_set_hight;
extern float ControlOutput_ZChannel;
//extern Command command;

class PID_Controller
{
public:
  float   referance, feedback;
  float   output, outputP, outputI, outputD, smoother;
  float   integralLimit, outputDLimit, outputLimit;
  float   Kp0, Ki0, Kd0;
  float   Kp,  Ki,  Kd;
  float   P,I,D, D_smoother;
  float   P_old[10];
  void  reset();
  u8    fuzzy;
  u8    row;
  u8    column;
  int OffsetMembership[NUM];
  int OffsetDMembership[NUM];
  int OffsetBound[NUM];
  int OffsetDBound[NUM];
  int16 KpStrategy[NUM][NUM];
  int16 KiStrategy[NUM][NUM];
  int16 KdStrategy[NUM][NUM];
}; 
extern PID_Controller gyroX, gyroY, gyroZ, angleX, angleY, angleZ, positionX_vel, positionY_vel, positionZ_vel, positionZ, positionX, positionY;

class Rotor
{
public:
  float r1, r2, r3, r4;
  float H1[20], H2[20], H3[20], H4[20];
  float m1, m2 ,m3, m4;
  float M1, M2 ,M3, M4;
  float D1, D2 ,D3, D4;
}; 
extern Rotor controlOutput;

class findDifference
{
public:
  float H[50];
  float min, max, diff;

  void getresult(float data, float min, float max, int num);
}; 
extern findDifference Diffa;


extern float roll, pitch, yaw;
extern float roll1, pitch1, yaw1, yaw2;
extern float roll3, pitch3, yaw3, yaw4;

class Time
{
public:
  long t;
}; 
extern Time sysTime;



extern int powerVoltage_5_Device1, powerVoltage_5_Device2, powerVoltage_5_Device3, powerVoltage_5, powerVoltage_3v3;
extern int updateErrorCnt;


extern int fanIniSpd;

extern int rotor1, rotor2, rotor3, rotor4;

#endif