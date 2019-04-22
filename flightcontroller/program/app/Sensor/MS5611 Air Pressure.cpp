
/*����������MS5611����ѹǿģ�����ݲɼ����� V1.0*/
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

static uint16 setup,C1,C2,C3,C4,C5,C6,CRC_1;  //���ڴ��PROM�е�8������
static unsigned long D1_Pres,D2_Temp,D2_Temp_f,D1_Pres_f;      //���ڴ���¶Ⱥ�ѹ�� 
static double OFF,SENS;                    //ʵ���¶ȵ�����ʵ���¶�������
static float dT,Temperature,Pressure,Pressure_f;      //ʵ�ʺͲο��¶�֮��Ĳ��졢�¶�ֵ��ѹ��ֵ
static float TEMP2=0,Aux,OFF2=0,SENS2=0;         //�¶ȼ���ֵ
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
  SPI1 ��дһ���ֽ�
  �������ƣ�MS5611_ReadWriteByte
  ���������TxData
  �����������ȡ�����ֽ�
*******************************************************************************/
u8 MS5611_ReadWriteByte(u8 TxData, u8 s)
{            
  return SPI_Master_WriteRead(MS5611_SPIx, TxData, MS5611_CS, s);//SPI_PCS_ASSERTED  SPI_PCS_INACTIVE
}


/*******************************************************************************
  SPI1 ��д�����ֽ�
  �������ƣ�MS5611_ReadWrite_16bits
  ���������addr
  �����������ȡ����16λ����
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
  SPI1д�Ĵ���  
  �������ƣ�MS5611_Write_Reg
  ���������SlaveAddress(�ӻ���ַ)��REG_Address��ָ���ļĴ�����ַ��
  �������������״ֵ̬
*******************************************************************************/
u8 MS5611_Write_Reg(u8 REG_Address,u8 REG_data)
{
  u8 status;
  
  status=MS5611_ReadWriteByte(REG_Address, SPI_PCS_ASSERTED);   //����д����+�Ĵ�����
  MS5611_ReadWriteByte(REG_data, SPI_PCS_INACTIVE);             //д��Ĵ���ֵ

  return(status);                           //����״ֵ̬
}


void MS5611_RESET(void)
{    
   MS5611_ReadWriteByte(CMD_MS5611_RESET,SPI_PCS_INACTIVE);
}

/*******************************************************************************
  ��PROM��ȡ����У׼����
  �������ƣ�MS5611_PROM_READ
  ���������void
  ���������void
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
  ��ȡADC���
  �������ƣ�MS5611_SPI_read_ADC
  ���������void
  �������������24λ����ѹ/�¶�ֵ
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
  ͨ��MS5611ģ��õ���ѹֵ
  �������ƣ�MS5611_getPressure
  �����������ѹ�ֱ���ϵ��
  ���������void
*******************************************************************************/
void MS5611_getPressure(unsigned char OSR_Pres)
{
  u8 temp;
  char count,i;
  unsigned long sum=0;   
                                     
//  temp = MS5611_ReadWriteByte(CMD_CONVERT_D1_OSR4096, SPI_PCS_INACTIVE);
  temp = MS5611_ReadWriteByte(OSR_Pres, SPI_PCS_INACTIVE);
                                
  LPTMR_DelayMs(20);                                      //�����
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
  ͨ��MS5611ģ��õ��¶�ֵ
  �������ƣ�MS5611_getTemperature
  ����������¶ȷֱ���ϵ��
  ���������void
*******************************************************************************/
void MS5611_getTemperature(unsigned char OSR_Temp)    
{
  u8 temp = 0;
  char count,i;
  unsigned long sum=0;   
  
//  temp = MS5611_ReadWriteByte(CMD_CONVERT_D2_OSR4096, SPI_PCS_INACTIVE);
  temp = MS5611_ReadWriteByte(OSR_Temp, SPI_PCS_INACTIVE);                               
  LPTMR_DelayMs(20);                                       //�˴���ʱ�����
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
  ���ݴ���ѹ������θ߶� 
  �������ƣ�get_altitude
  ���������void
  ������������θ߶�
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