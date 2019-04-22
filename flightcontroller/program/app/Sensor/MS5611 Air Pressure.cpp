
/*功能描述：MS5611大气压强模块数据采集计算 V1.0*/
/********************************************************************************    
  * @file    MS5611.c
  * @author  pei4566
  * @version V1.0.2
  * @date    04-October-2015
  * @brief   pressure sensor SPI interface program source code, 
  *          the realization of temperature, pressure, collecting calculate positionZ.
  *           
*********************************************************************************/

#include "MS5611 Air Pressure.h"

AirPressure__* AirPressure;

void AirPressure_Init()
{
  static AirPressure__ AirPressure0;
  AirPressure = &AirPressure0;
  
}

COutlierFilter BarodistanceFilter;

static uint16 setup,C1,C2,C3,C4,C5,C6,CRC_1;  //用于存放PROM中的8组数据
static unsigned long D1_Pres,D2_Temp,D2_Temp_f,D1_Pres_f;      //用于存放温度和压力 
static double OFF,SENS;                    //实际温度抵消、实际温度灵敏度
static float dT,Temperature,Pressure,Pressure_f;      //实际和参考温度之间的差异、温度值、压力值
static float TEMP2=0,Aux,OFF2=0,SENS2=0;         //温度检验值
float Baro_hight = 0,AirPrevel_z=0,APdistance, AirPrevel_z_1;
int BaroInitSampleTime;
double BaroInitSampleValue[MS5611_INITSAMPLETIME];
bool BaroInitFlag = false;
//double BaroHightInit = 0;

float tmp_float;   
 
unsigned long value_buf1[N_P]={0},value_buf2[N_P]={0}; 



void MS5611_init()
{
//  if(BaroInitSampleTime == MS5611_INITSAMPLETIME - 1)
//  {
//    double mean = 0;
//    for(int i = 0; i < BaroInitSampleTime; i++)
//    {
//      mean += BaroInitSampleValue[i];
//    }
//    mean /= MS5611_INITSAMPLETIME;
//    
//
//    int k = 0;
//    for(int i = 0; i < BaroInitSampleTime; i++)
//    {
//      if(abs(BaroInitSampleValue[i] - mean) < 5)
//      {
//        BaroHightInit += BaroInitSampleValue[i];
//        k++;
//      }
//    }
//    BaroHightInit /= k;
//    
//    
//    BarodistanceFilter.setParameter(0.1, 800);
//    BarodistanceFilter.maxValue = BaroHightInit + 5.0f;
//    BarodistanceFilter.minValue = BaroHightInit - 5.0f;
//    BaroInitFlag = true;
//  }
  MS5611_RESET();
  LPTMR_DelayMs(10);   
  MS5611_PROM_READ();
  LPTMR_DelayMs(10);   
}
/*******************************************************************************
  SPI1 读写一个字节
  函数名称：MS5611_ReadWriteByte
  输入参数：TxData
  输出参数：读取到的字节
*******************************************************************************/
u8 MS5611_ReadWriteByte(u8 TxData, u8 s)
{            
  return SPI_Master_WriteRead(MS5611_SPIx, TxData, MS5611_CS, s);//SPI_PCS_ASSERTED  SPI_PCS_INACTIVE
}


/*******************************************************************************
  SPI1 读写两个字节
  函数名称：MS5611_ReadWrite_16bits
  输入参数：addr
  输出参数：读取到的16位数据
*******************************************************************************/
uint16 MS5611_ReadWrite_16bits(unsigned char addr)
{
  unsigned char byteH,byteL;
  unsigned int return_value;
    
  MS5611_ReadWriteByte(addr, SPI_PCS_ASSERTED);
  byteH = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
  byteL = MS5611_ReadWriteByte(0, SPI_PCS_INACTIVE);
  
  return_value = ((unsigned int)byteH<<8) | (byteL);
  return(return_value);    
}


/*******************************************************************************
  SPI1写寄存器  
  函数名称：MS5611_Write_Reg
  输入参数：SlaveAddress(从机地址)、REG_Address（指定的寄存器地址）
  输出参数：返回状态值
*******************************************************************************/
u8 MS5611_Write_Reg(u8 REG_Address,u8 REG_data)
{
  u8 status;
  
  status=MS5611_ReadWriteByte(REG_Address, SPI_PCS_ASSERTED);   //发送写命令+寄存器号
  MS5611_ReadWriteByte(REG_data, SPI_PCS_INACTIVE);             //写入寄存器值

  return(status);                           //返回状态值
}


void MS5611_RESET(void)
{    
   MS5611_ReadWriteByte(CMD_MS5611_RESET,SPI_PCS_INACTIVE);
}

/*******************************************************************************
  从PROM读取出厂校准数据
  函数名称：MS5611_PROM_READ
  输入参数：void
  输出参数：void
*******************************************************************************/
void MS5611_PROM_READ(void)
{
  C1 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C1);
  C2 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C2);
  C3 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C3);
  C4 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C4);
  C5 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C5);
  C6 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C6);
  setup = MS5611_ReadWrite_16bits(CMD_MS5611_RESET);
  CRC_1 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_CRC); 
}

/*******************************************************************************
  读取ADC结果
  函数名称：MS5611_SPI_read_ADC
  输入参数：void
  输出参数：返回24位的气压/温度值
*******************************************************************************/
long MS5611_SPI_read_ADC(void)
{
  unsigned char byteH,byteM,byteL;
  long return_value;
  
    
  MS5611_ReadWriteByte(MS5611_ADC, SPI_PCS_ASSERTED);
  byteH = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
  byteM = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
  byteL = MS5611_ReadWriteByte(0, SPI_PCS_INACTIVE);
    
  return_value = (((long)byteH)<<16) | (((long)byteM)<<8) | (byteL);
  return(return_value);
}
/*******************************************************************************
  通过MS5611模块得到气压值
  函数名称：MS5611_getPressure
  输入参数：气压分辨率系数
  输出参数：void
*******************************************************************************/
void MS5611_getPressure(unsigned char OSR_Pres)
{
  u8 temp;
  char count,i;
  unsigned long sum=0;   
                                     
//  temp = MS5611_ReadWriteByte(CMD_CONVERT_D1_OSR4096, SPI_PCS_INACTIVE);
  temp = MS5611_ReadWriteByte(OSR_Pres, SPI_PCS_INACTIVE);
                                
  LPTMR_DelayMs(20);                                      //必须加
//  D1_Pres = MS5611_SPI_read_ADC();
  value_buf1[0] = MS5611_SPI_read_ADC();
  for(i=0;i<N_P;i++)sum+=value_buf1[i];
  D1_Pres = sum/N_P;
  for(count=0;count<N_P-1;count++)
  {
    value_buf1[N_P - count - 1] = value_buf1[N_P - count - 2];
  }
  D1_Pres_f = 0.6 * D1_Pres + 0.4 * D1_Pres_f;
//  D1_Pres = 9362000;
  OFF=(unsigned long)C2*65536+((unsigned long)C4*dT)/128;
  SENS=(unsigned long)C1*32768+((unsigned long)C3*dT)/256;
  
  if(Temperature<2000)
  {
    // second order temperature compensation when under 20 degrees C
    TEMP2 = (dT*dT) / 0x80000000;
    Aux = (Temperature-2000)*(Temperature-2000);
    OFF2 = 2.5*Aux;
    SENS2 = 1.25*Aux;
    if(Temperature<-1500)
    {
      OFF2 += 7*(Temperature+1500)*(Temperature+1500);
      SENS2 += 5.5*(Temperature+1500)*(Temperature+1500);
    }
  }
  else
  {
     TEMP2 = 0;  
     OFF2 = 0;  
     SENS2 = 0;  
  }
  Temperature = Temperature - TEMP2;
  OFF = OFF - OFF2;
  SENS = SENS - SENS2;  
  Pressure=((D1_Pres_f*SENS)/2097152-OFF)/32768;
  Pressure_f = 0.6 * Pressure + 0.4 * Pressure_f;
}

/*******************************************************************************
  通过MS5611模块得到温度值
  函数名称：MS5611_getTemperature
  输入参数：温度分辨率系数
  输出参数：void
*******************************************************************************/
void MS5611_getTemperature(unsigned char OSR_Temp)    
{
  u8 temp = 0;
  char count,i;
  unsigned long sum=0;   
  
//  temp = MS5611_ReadWriteByte(CMD_CONVERT_D2_OSR4096, SPI_PCS_INACTIVE);
  temp = MS5611_ReadWriteByte(OSR_Temp, SPI_PCS_INACTIVE);                               
  LPTMR_DelayMs(20);                                       //此处延时必须加
//  D2_Temp = MS5611_SPI_read_ADC(); 
  value_buf2[0] = MS5611_SPI_read_ADC();
  for(i=0;i<N_P;i++)sum+=value_buf2[i];
  D2_Temp = sum/N_P;
  for(count=0;count<N_P-1;count++)
  {
    value_buf2[N_P - count - 1] = value_buf2[N_P - count - 2];
  }
  D2_Temp_f = 0.6 * D2_Temp + 0.4 * D2_Temp_f;
//  D2_Temp = 8181000;
  dT=D2_Temp_f - (((unsigned long)C5)<<8);
  Temperature = 2000+dT*((unsigned long)C6)/8388608;
}

/*******************************************************************************
  根据大气压算出海拔高度 
  函数名称：get_altitude
  输入参数：void
  输出参数：海拔高度
*******************************************************************************/
float get_altitude(void)                             
{
  float tmp_float1,Altitude,Altitude_f;     
  tmp_float = (Pressure_f / 101325.0f);
  tmp_float1 = pow(tmp_float, 0.190295f);               
  Altitude = 44330 * (1.0f - tmp_float1);
//  Altitude  = (44330.0f*(1.0f - pow((float)Pressure/101325.0f, 0.190295f))) ;
  Altitude_f = 0.6*Altitude + 0.4*Altitude_f;
//  if(!BaroInitFlag)
//  {
//    BaroInitSampleValue[BaroInitSampleTime++] = Altitude;
//  }
//  else
//  {
//    Altitude -= BaroHightInit;
//  }
  return (Altitude_f);
}

void AirPressure__::getAirPreDistance()
{
  AirPressure->position.z = Baro_hight - Baro_hight_init;
  //return AirPressure->position.z;
}

float AirPressure__::getVelocity()
{
  static float APHigh_old;
  float Altitude = get_altitude();
  AirPressure->vel.z = Altitude - APHigh_old;
  APHigh_old = Altitude;
  return AirPressure->vel.z*10;
}