/*
* @EVB_car.h
* @version 1.00 
* @date 2016-2-29
* @brief EverythingViaBluetooth的配套代码，版本号与labview程序对应
*
* @Revision History
*    version 0.99
*      --首版库文件
*      --刘导 QQ:875978009
*
*/

#ifndef __EVB_H__
#define __EVB_H__
#include "includes.h"
//#include <string>
//using namespace std;

#define EVB_VERSION             100

#define EVB_END                 101     //包尾标志
#define FUNCTION_NUM_MAX        20      //最大功能数


#define true                    1       //bool、true和false不是C关键字（是C++关键字）
#define false                   0
//typedef unsigned char         bool;
typedef unsigned int          uint;


typedef enum __FunctionMode
        {
          EVB_Servo             = 1,
          EVB_Spd               = 2,
          EVB_KpTable           = 3,
          EVB_KdTable           = 4,
          EVB_SpdTable          = 5,
          EVB_OffsetBoundTable  = 6,
          EVB_Sensor            = 7,
          EVB_Battle            = 8,
          EVB_RemoteControl     = 9,
          EVB_Command           = 10,
          EVB_FullBrake         = 11
        }__FunctionMode;

typedef enum __SendMode
        {
          EVB_SendMode_Normal   = 0,
          EVB_SendMode_KpTable  = 1,
          EVB_SendMode_KdTable  = 2,
          EVB_SendMode_SpdTable = 3,
          EVB_SendMode_VERSION  = 4,
          EVB_SendMode_FnINIT   = 5
        }__SendMode;

typedef enum __EVB_ParameterType
        {
          EVB_int   = 0,
          EVB_Uint  = 1
        }__EVB_ParameterType;

typedef struct
{
  int                   *var; //认为无符号数不会大于2^31 -1 如超过需注意修改
  char                  DispName[15];
  u8                    Bytes;
  __EVB_ParameterType   Type;
}__EVB_Parameter;
//extern __EVB_Parameter EVB_Parameter[];

class CEVB
{
public:
  int   error_evb;
  int   InitFlag;
  int   TransmitInterval;
  int   TransmitTimestamp;
  int   LastPackageTime;
  uint  SysTime;                        //单位：微秒 将在一小时后溢出！但每次发送和reset都会归零。
  int   SystemPeriod;                   //选择微秒作单位可以避免程序中断周期不同的问题
  __SendMode       SendMode;
  __FunctionMode   FunctionMode;
  void (*uartSend)(u8);                //uart发送函数 函数指针
  
  char  RXD[1500];
  int   RXD_Iterator;
  int   RXD_PackageLength[FUNCTION_NUM_MAX+1];
  int   RxError;

  class TX_
  {
  public:
    char data[100];
    int  index;
    int  sendPackageCnt;
    
    inline void add(char tmp)
    {
      data[index++] = tmp;
    }
    
    inline void clear()
    {
      memset(data, 0, 100 * sizeof(char));
      index = 0;
    }
    
    void startDMA_Transmit();
  };
  TX_   TX;
  
  class EventTrigger_
  {
  public:
    float wx0, wy0, wz0, roll0, pitch0, yaw0;
    int gamma;
    int cnt;
    int dropPackage;
  };
  EventTrigger_   EventTrigger;
  
  int   ConstSpd;
  int   AngleDirectControl;
  int   Yaw, Roll, Pitch, LeftKnob;
  int   MotorSwitch;
  int   MotorSwitchLast;
  int   Row_FuzzyTable;
  int   Column_FuzzyTable;

  
  int   *SpdKp;
  int   *SpdKi; 
  int   *SpdKd; 
  int   *AngleMin;
  int   *AngleMid;
  int   *AngleMax;
  int   *SupplyVoltage;
  int16   *KpTable, *KdTable, *SpdTable;
  
  int   functionNum;
  __EVB_Parameter *Parameter[FUNCTION_NUM_MAX];
  int   ParameterNum[FUNCTION_NUM_MAX];  
  
  void  send();
  void  MotorMonitor();
  void  ResetTrigger();
private:
  void  makeOnePackge();

};
extern CEVB EVB;


typedef struct
{
  float   TransmitInterval;
  float   SystemPeriod;                //单位：毫秒 小数
  void (*uartSend)(u8);                //uart发送函数 函数指针
  
  int   *SpdKp;
  int   *SpdKi; 
  int   *SpdKd; 
  int16   *KpTable, *KdTable, *SpdTable;
  
  int   *AngleMin;
  int   *AngleMid;
  int   *AngleMax;
  int   *SupplyVoltage;
  
  __EVB_Parameter *Parameter[FUNCTION_NUM_MAX];
  int   ParameterNum[FUNCTION_NUM_MAX];
}__EVB_InitTypeDef;


void EVB_Init(__EVB_InitTypeDef);
void EVB_TimerUpdate();
void EVB_ReceiveOneByte(char);
void EVB_DMA_Receive();
bool EVB_RX_Check(int start);
void EVB_Unpack(int start);

void EVB_SetRow_FuzzyTable(int);
void EVB_SetColumn_FuzzyTable(int);

int  EVB_SetSpd(int);
int  EVB_SpdPWM(int);
int  EVB_AnglePWM(int);
bool EVB_FullBrakeStatus();

void EVB_SendUNum_3(int);
void EVB_SendUNum_2(int);
void EVB_SendUNum_1(int);
void EVB_SendSNum_3(int);
void EVB_SendStr(u8*);
void EVB_SendTable(int16* , __SendMode);

int EVB_atoi(char* data, int length);
//int pow(int a, int b);

#endif // __EVB_H__