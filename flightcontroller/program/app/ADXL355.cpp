#include "common.h"

#include "ADXL355.h"

int  ADXL355_CS = 1;
CADXL355 ADXL355;
float g = 9.80151; 
void ADXL355_Init(void)
{
#if ADXL_RANGE == 2
   ADXL355_WriteByte(RANGE, 0x81);          /* Set sensor range within RANGE register */
   ADXL355.adxl355Scale = 256000.0f;
#endif

#if ADXL_RANGE == 4
   ADXL355_WriteByte(RANGE, 0x82);          /* Set sensor range within RANGE register */
   ADXL355.adxl355Scale = 128000.0f;
#endif

#if ADXL_RANGE == 8
   ADXL355_WriteByte(RANGE, 0x83);          /* Set sensor range within RANGE register */
   ADXL355.adxl355Scale = 64000.0f;
#endif
  
    ADXL355_Start_Sensor();

   /* Quick verification test for boards */
     ADXL355.ui32test = ADXL355_ReadByte(DEVID_AD);                  /* Read the ID register */
     ADXL355.ui32test2 = ADXL355_ReadByte(DEVID_MST);                  /* Read the ID register */
     ADXL355.ui32test3 = ADXL355_ReadByte(PARTID);                  /* Read the ID register */
     ADXL355.ui32test4 = ADXL355_ReadByte(REVID);                 /* Read the ID register */
     ADXL355.status355 = ADXL355_ReadByte(STATUS);
}

/**
   @brief Turns on accelerometer measurement mode.

   @return none

**/
void ADXL355_Start_Sensor(void)
{
   u8 temp;
   temp = (u8)ADXL355_ReadByte(POWER_CTL);       /* Read POWER_CTL register, before modifying it */
   temp = temp & 0xFE;                                          /* Set measurement bit in POWER_CTL register */
   ADXL355_WriteByte(POWER_CTL, temp);                    /* Write the new value to POWER_CTL register */
}

/**
   @brief Puts the accelerometer into standby mode.

   @return none

**/
void ADXL355_Stop_Sensor(void)
{
   u8 temp;
   temp = (u8)ADXL355_ReadByte(POWER_CTL);        /*Read POWER_CTL register, before modifying it */
   temp = temp | 0x01;                                      /* Clear measurement bit in POWER_CTL register */
   ADXL355_WriteByte(POWER_CTL, temp);                 /* Write the new value to POWER_CTL register */
}

/**
   @brief Reads the accelerometer data.

   @return none

**/
void ADXL355_Data_Scan(void)
{
  ADXL355.SensorX_raw = ADXL355_ReadWrite_32bits(XDATA3);
  ADXL355.SensorY_raw = ADXL355_ReadWrite_32bits(YDATA3);
  ADXL355.SensorZ_raw = ADXL355_ReadWrite_32bits(ZDATA3);
        
  ADXL355.SensorT = ADXL355_ReadWrite_16bits(TEMPURE2);
  ADXL355.SensorX = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorX_raw)/ADXL355.adxl355Scale*g;
  ADXL355.SensorY = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorY_raw)/ADXL355.adxl355Scale*g;
  ADXL355.SensorZ = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorZ_raw)/ADXL355.adxl355Scale*g;
}


/**
   @brief Convert the two's complement data in X,Y,Z registers to signed integers

   @param ui32SensorData - raw data from register

   @return int32_t - signed integer data

**/
int32_t ADXL355_Acceleration_Data_Conversion (int32 SensorData)
{
   int32 volatile Conversion = 0;

   SensorData = (SensorData  >> 4);
   SensorData = (SensorData & 0x000FFFFF);

   if((SensorData & 0x00080000)  == 0x00080000)
   {
         Conversion = (SensorData | 0xFFF00000);
   }
   else
   {
         Conversion = SensorData;
   }
   return Conversion;
}

void ADXL355_WriteByte(u8 Address,u8 byte)
{
  SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0X00, ADXL355_CS, SPI_PCS_ASSERTED);    //&0X7F将第一位变为0
  SPI_Master_WriteRead(ADXL355_SPIx, byte, ADXL355_CS, SPI_PCS_INACTIVE);
}

u8 ADXL355_ReadByte(u8 Address)
{
  u8 temp=0;
  SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0x01, ADXL355_CS, SPI_PCS_ASSERTED);
  temp = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_INACTIVE);
  return temp;
}

uint16 ADXL355_ReadWrite_16bits(unsigned char addr)
{
  unsigned char byteH,byteL;
  unsigned int return_value;
    
  SPI_Master_WriteRead(ADXL355_SPIx,(addr<<1)|0x01,ADXL355_CS,SPI_PCS_ASSERTED);
  byteH = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
  byteL = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_INACTIVE);
  
  return_value = ((unsigned int)byteH<<8) | (byteL);
  return(return_value);    
}

uint32 ADXL355_ReadWrite_32bits(unsigned char addr)
{
  unsigned char byteH,byteM,byteL;
  unsigned int return_value;
    
  SPI_Master_WriteRead(ADXL355_SPIx,(addr<<1)|0x01,ADXL355_CS,SPI_PCS_ASSERTED);
  byteH = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
  byteM = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
  byteL = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_INACTIVE);
  
  return_value = ((unsigned int)byteH << 16)|((unsigned int)byteM<<8)| (byteL);
  return(return_value);    
}


void ADXL355_ReadBuf(u8 Address, u8 *Buf, u8 len)
{
  uint8 i;
  
  SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0x01, ADXL355_CS, SPI_PCS_ASSERTED);
  
  for(i = 0 ;i < len ;i++)
  {
    if( i == (len-1) )
    {
      Buf[i] = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_INACTIVE);
    }
    else
    {
      Buf[i] = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_ASSERTED);
    }
  }
}
