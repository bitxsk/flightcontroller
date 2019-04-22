#include "ADXRS453.h"
#include "common.h"

int  ADXRS453_CS_z = 2;
int  ADXRS453_CS_y = 3;
int  ADXRS453_CS_x = 4;
unsigned int ADXRS453S_Z_raw,ADXRS453S_Y_raw,ADXRS453S_X_raw;
float ADXRS453S_Z,ADXRS453S_Y,ADXRS453S_X;
unsigned int ADXRS453S_scale[3];
data_output ADXRS453;
/*******************************************************************
  @brief int ADXRS453Command(unsigned char Address, unsigned int SendValue, unsigned char OperateType)
         send SPI command to ADXRS453
  @param
         unsigned char Address:       Register address
         unsigned int SendValue:      Data
         unsigned char OperateType:   The command is read or write
  @return   
         unsigned int  ReceiveValue:  SPI response from ADXRS453
*******************************************************************/
int ADXRS453Command(unsigned char Address, unsigned int SendValue, unsigned char OperateType,int direction)
{
    unsigned int  SendCommand = 0;
    unsigned char SendTemp[4];
    unsigned char ReceiveTemp[4];
    unsigned int  ReceiveValue;
  
    SendCommand = Address;
    SendCommand = SendCommand<<17;
    SendCommand = SendCommand + (SendValue<<1);
  
    if (OperateType == 0)
    {
        SendCommand = SendCommand|0x40000000;          //write command
    }
    else
    {
        SendCommand = SendCommand|0x80000000;          //read command
    }
    
    SendTemp[0] = SendCommand>>24;
    SendTemp[1] = SendCommand>>16;
    SendTemp[2] = SendCommand>>8;
    SendTemp[3] = SendCommand;
    
    SpiFunction(SendTemp, ReceiveTemp, 4,direction);           
    
    ReceiveValue = ReceiveTemp[0];
    ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[1];
    ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[2];
    ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[3];
    
    return(ReceiveValue);
}



/*******************************************************************
  @brief int  ADXRS453SensorData(void)
         SPI sensor data command 
  @param
         none
  @return   
         unsigned int  ReceiveValue: sensor data  
*******************************************************************/
data_output ADXRS453SensorData(void)
{
    unsigned char SendTemp[4];
    unsigned char ReceiveTemp[4];
    
  
    SendTemp[0] = 0x20;
    SendTemp[1] = 0x00;  
    SendTemp[2] = 0x00;
    SendTemp[3] = 0x00;
  
    SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_z);
    ADXRS453S_Z_raw = ReceiveTemp[0];
    ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[1];
    ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[2];
    ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[3]; 
    ADXRS453S_Z_raw =  (ADXRS453S_Z_raw>>10)&0x0000FFFF;
    ADXRS453S_Z = (int16)ADXRS453S_Z_raw/80.0f;
    
    SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_y);
    ADXRS453S_Y_raw = ReceiveTemp[0];
    ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[1];
    ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[2];
    ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[3]; 
    ADXRS453S_Y_raw =  (ADXRS453S_Y_raw>>10)&0x0000FFFF;
    ADXRS453S_Y = (int16)ADXRS453S_Y_raw/80.0f;
    
    SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_x);
    ADXRS453S_X_raw = ReceiveTemp[0];
    ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[1];
    ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[2];
    ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[3]; 
    ADXRS453S_X_raw =  (ADXRS453S_X_raw>>10)&0x0000FFFF;
    ADXRS453S_X = (int16)ADXRS453S_X_raw/80.0f;
    ADXRS453.x=ADXRS453S_X+0.3;
    ADXRS453.y=ADXRS453S_Y;
    ADXRS453.z=ADXRS453S_Z-0.7;
    return ADXRS453;
}


/*******************************************************************
  @brief void ADXRS453StartUp(void)
         recommended start-up sequence
  @param
         none
  @return   
         none
*******************************************************************/
void ADXRS453StartUp(int direction)
{
    unsigned char SendTemp[4];
    unsigned char ReceiveTemp[4];
    unsigned char byteH,byteL;/////////////////////
    
    SendTemp[0] = 0x20;
    SendTemp[1] = 0x00;  
    SendTemp[2] = 0x00;
    SendTemp[3] = 0x03;
    SpiFunction(SendTemp, ReceiveTemp, 4,direction);       //0x20000003
  
    SendTemp[0] = 0x20;
    SendTemp[1] = 0x00;  
    SendTemp[2] = 0x00;
    SendTemp[3] = 0x00; 
    SpiFunction(SendTemp, ReceiveTemp, 4,direction);   
    
    byteH=SPI_Master_WriteRead(ADXRS453_SPIx, RATE1, direction, SPI_PCS_ASSERTED);
    byteL=SPI_Master_WriteRead(ADXRS453_SPIx, RATE0, direction, SPI_PCS_INACTIVE);
   
    ADXRS453S_scale[direction-2] = ((unsigned int)byteH<<8) | (byteL);
}

void ADXRS453StartUp_XYZ()
{
  int j;
  for (j=2;j<5;j++)
  {
   ADXRS453StartUp(j); 
  }
}
/////////////////////////////////////////添加了一个参数
void SpiFunction(unsigned char OutputBuff[],unsigned char InputBuff[], unsigned int NoOfBytes,int direction)
{	
   int i;
    
   for(i=0;i<(NoOfBytes);i++)
   {
     if(i<(NoOfBytes)-1)
     {
       SPI_Master_WriteRead(ADXRS453_SPIx, OutputBuff[i], direction, SPI_PCS_ASSERTED);  
     }
     else if(i=(NoOfBytes)-1)
     {
       SPI_Master_WriteRead(ADXRS453_SPIx, OutputBuff[i], direction, SPI_PCS_INACTIVE); 
     }
   }
   
   for(i=0;i<(NoOfBytes);i++)
   {
    // while((ADXRS453_SPIx->SR & 0x00010000) == 0x00000000){}
     if(i<(NoOfBytes)-1)
     {
       InputBuff[i] = SPI_Master_WriteRead(ADXRS453_SPIx, Dummy_Byte3, direction, SPI_PCS_ASSERTED);
     }
     else if(i=(NoOfBytes)-1)
     {
       InputBuff[i] = SPI_Master_WriteRead(ADXRS453_SPIx, Dummy_Byte3, direction, SPI_PCS_INACTIVE); 
     }										
   }
   /**/
}