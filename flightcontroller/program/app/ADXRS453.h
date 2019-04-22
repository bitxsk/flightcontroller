#ifndef _ADXRS453_H_
#define _ADXRS453_H_  


#include "common.h"
#include "includes.h"


#define ADXRS453_SPIx    (SPI1)
#define Dummy_Byte3                     0xAA    //Ðé¼ÙÊý¾Ý


#define   RATE1   0x00
#define   RATE0   0x01
#define   TEM1    0x02
#define   TEM0    0x03
#define   LOSCT1  0x04
#define   LOSCT0  0x05
#define   HICST1  0x06
#define   HICST0  0x07
#define   QUAD1   0x08
#define   QUAD0   0x09
#define   FAULT1  0x0A
#define   FAULT0  0x0B
#define   PID1    0x0C
#define   PID0    0x0D
#define   SN3     0x0E
#define   SN2     0x0F
#define   SN1     0x10
#define   SN0     0x11

extern float ADXRS453S_Z,ADXRS453S_Y,ADXRS453S_X;
extern unsigned int ADXRS453S_Z_raw,ADXRS453S_Y_raw,ADXRS453S_X_raw;
extern unsigned int ADXRS453S_scale[];
extern int data_xyz[];
typedef struct data_output{
float x;
float y;
float z;

} xyz;
void SpiFunction(unsigned char OutputBuff[],unsigned char InputBuff[], unsigned int NoOfBytes, int direction);
int  ADXRS453Command(unsigned char Address, unsigned int SendValue, unsigned char OperateType);
int  ADXRS453SingleRead(unsigned char Address);
data_output ADXRS453SensorData(void);
void ADXRS453StartUp(void);
void ADXRS453StartUp_XYZ(void);
extern data_output ADXRS453;
#endif
