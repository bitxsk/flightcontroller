#ifndef __ATMOSPHERE_H
#define __ATMOSPHERE_H
#include "includes.h"

#define MS5611_SPIx    (SPI1)
#define MS5611_CS      (6)
#define MS5611_INITSAMPLETIME      (25)
extern float tmp_float;
extern int BaroInitSampleTime;
extern float Baro_hight,AirPrevel_z,APdistance, AirPrevel_z_1;
extern double BaroInitSampleValue[MS5611_INITSAMPLETIME];
extern COutlierFilter BarodistanceFilter;
void MS5611_init();
void AirPressure_Init();

/*MS5611模块传感器地址定义*/
#define MS5611_ADC              0x00
#define CMD_MS5611_RESET        0x1E
#define CMD_MS5611_PROM_Setup   0xA0
#define CMD_MS5611_PROM_C1      0xA2
#define CMD_MS5611_PROM_C2      0xA4
#define CMD_MS5611_PROM_C3      0xA6
#define CMD_MS5611_PROM_C4      0xA8
#define CMD_MS5611_PROM_C5      0xAA
#define CMD_MS5611_PROM_C6      0xAC
#define CMD_MS5611_PROM_CRC     0xAE
#define CMD_CONVERT_D1_OSR4096  0x48   // Maximun resolution
#define CMD_CONVERT_D2_OSR4096  0x58   // Maximun resolution

#define N_P 5
/*相关函数声明*/
  u8 MS5611_ReadWriteByte(u8 TxData, u8 s);
  u8 MS5611_Write_Reg(u8 REG_Address,u8 REG_data);
  u8 ATMOSPHERE_Read_Reg(u8 REG_Address);
  void MS5611_RESET(void);
  uint16 MS5611_ReadWrite_16bits(unsigned char addr);
  void MS5611_PROM_READ(void);
  long MS5611_SPI_read_ADC(void);
  void MS5611_getPressure(unsigned char OSR_Pres);
  void MS5611_getTemperature(unsigned char OSR_Temp);
  float get_altitude(void);
  //float getAirPreDistance(void) ;
class AirPressure__
{
public:

  //CoordinateElement AirPredistance;
  void getAirPreDistance() ;
  float getVelocity() ;
  Coordinate position, vel, accel;
  double vel_z_CF;
  
};
extern AirPressure__* AirPressure;

#endif
