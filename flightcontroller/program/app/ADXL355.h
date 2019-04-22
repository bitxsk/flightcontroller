#ifndef ADXL355_H_ 
#define ADXL355_H_ 

#include "includes.h"
 /********************************* Definitions ********************************/ 
 #define ADXL355_SPIx    (SPI1)
 #define Dummy_Byte2                     0x80    //Ðé¼ÙÊý¾Ý

/* ADXL355 registers addresses */ 
 #define DEVID_AD                 0x00 
 #define DEVID_MST                0x01 
 #define PARTID                   0x02 
 #define REVID                    0x03 
 #define STATUS                   0x04 
 #define FIFO_ENTRIES             0x05 
 #define TEMPURE2                 0x06 
 #define TEMPURE1                 0x07 
 #define XDATA3                   0x08 
 #define XDATA2                   0x09 
 #define XDATA1                   0x0A 
 #define YDATA3                   0x0B 
 #define YDATA2                   0x0C 
 #define YDATA1                   0x0D 
 #define ZDATA3                   0x0E 
 #define ZDATA2                   0x0F 
 #define ZDATA1                   0x10 
 #define FIFO_DATA                0x11 
 #define OFFSET_X_H               0x1E 
 #define OFFSET_X_L               0x1F 
 #define OFFSET_Y_H               0x20 
 #define OFFSET_Y_L               0x21 
 #define OFFSET_Z_H               0x22 
 #define OFFSET_Z_L               0x23 
 #define ACT_EN                   0x24 
 #define ACT_THRESH_H             0x25 
 #define ACT_THRESH_L             0x26 
 #define ACT_COUNT                0x27 
 #define FILTER                   0x28 
 #define FIFO_SAMPLES             0x29 
 #define INT_MAP                  0x2A 
 #define SYNC                     0x2B 
 #define RANGE                    0x2C 
 #define POWER_CTL                0x2D 
 #define SELF_TEST                0x2E 
 #define RESET                    0x2F 
 /**************************** Configuration parameters **********************/ 
 /* Temperature parameters */ 
 #define ADXL355_TEMP_BIAS       (float)1852.0      /* Accelerometer temperature bias(in ADC codes) at 25 Deg C */ 
 #define ADXL355_TEMP_SLOPE      (float)-9.05       /* Accelerometer temperature change from datasheet (LSB/degC) */ 
 
 /* Accelerometer parameters */ 
 #define ADXL_RANGE     4     /* ADXL362 sensitivity: 2, 4, 8 [g] */ 
 #define ACT_VALUE          50     /* Activity threshold value */ 
 #define INACT_VALUE        50     /* Inactivity threshold value */ 
 #define ACT_TIMER          100    /* Activity timer value in ms */ 
 #define INACT_TIMER        10     /* Inactivity timer value in seconds */ 
 /****************************** Global Data ***********************************/ 

class CADXL355
 {
 public:
   CADXL355():test1(10)
   {
     test1 = 11l;
   }
   volatile float SensorX; 
   volatile float SensorY; 
   volatile float SensorZ; 
   volatile float SensorT; 
   float adxl355Scale;
   
   volatile uint32 SensorX_raw; 
   volatile uint32 SensorY_raw; 
   volatile uint32 SensorZ_raw; 
   volatile uint32 SensorT_raw; 

   volatile int32 timer_counter; 
   uint32  ui32test;
   uint32  ui32test2;
   uint32  ui32test3;
   uint32  ui32test4;
   uint32  status355;
   int     test1=20;

 };
extern CADXL355 ADXL355;
   
   void ADXL355_Init(void); 
   void ADXL355_Start_Sensor(void); 
   void ADXL355_Stop_Sensor(void); 
   void ADXL355_Data_Scan(void); 
   int32_t ADXL355_Acceleration_Data_Conversion (int32 SensorData);
   void ADXL355_WriteByte(u8 Address,u8 byte);
   u8 ADXL355_ReadByte(u8 Address);
   uint16 ADXL355_ReadWrite_16bits(unsigned char addr);
   uint32 ADXL355_ReadWrite_32bits(unsigned char addr);
   void ADXL355_ReadBuf(u8 Address, u8 *Buf, u8 len);
 
#endif /* ADXL355_H_ */ 
   