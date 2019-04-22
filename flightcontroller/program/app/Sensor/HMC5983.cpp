#include "HMC5983.h"

Compass_TypeDef Compass;
  int  hmc5983_CS;
void hmc5983_init(void)
{
  u8 CheckID[3];
  u8 HMC5983_ID[]="H43"; //hmc5983内部固定ID为H43
hmc5983_CS = 5;
  hmc5983_ReadByte(HMC5983_Status_REG); //这一步很关键 否则读数错误。可能由于单片机初始化问题导致？
  hmc5983_ReadBuf(HMC5983_IDA_REG, CheckID, 3); //读芯片ID
  if(strncmp((char*)CheckID, (char*)HMC5983_ID ,3)!=0&&0)
  {
    #ifdef MY_DEBUG
      printf("Didn't check to HMC5983! ReadID:%s\n",CheckID);
    #endif
  }
  else
  {
    #ifdef MY_DEBUG
      printf("The HMC5983 is ready!\n");
    #endif
      hmc5983_WriteByte(HMC5983_CONF_REG_A, 0x94);       //正常测量，1次平均 30HZ 开启温度测量0x94
      hmc5983_WriteByte(HMC5983_CONF_REG_B, 0x30);       //±2.5Ga 0x30
      hmc5983_WriteByte(HMC5983_MODE_REG,   0x00);       //4线SPI 单次测量   测量完成自动空闲
    #ifdef MY_DEBUG
      CheckID[0] = hmc5983_ReadByte(HMC5983_CONF_REG_A);
      printf("HMC5983_CONF_REG_A:  0x%.2X\n",CheckID[0]);
      CheckID[0] = hmc5983_ReadByte(HMC5983_CONF_REG_B);
      printf("HMC5983_CONF_REG_B:  0x%.2X\n",CheckID[0]);
      CheckID[0] = hmc5983_ReadByte(HMC5983_MODE_REG);
      printf("HMC5983_MODE_REG:    0x%.2X\n",CheckID[0]);
    #endif
  }
}

//开启一次测量
void hmc5983_StartMea(void)
{
  hmc5983_WriteByte(HMC5983_MODE_REG,  0x01);
}


void hmc5983_WriteByte(u8 Address,u8 byte)
{
  SPI_Master_WriteRead(hmc5983_SPIx, Address&0X7F, hmc5983_CS, SPI_PCS_ASSERTED);    //&0X7F将第一位变为0
  //SPI_Master_WriteRead(hmc5983_SPIx, Address<<1, hmc5983_CS, SPI_PCS_ASSERTED);    
  SPI_Master_WriteRead(hmc5983_SPIx, byte, hmc5983_CS, SPI_PCS_INACTIVE);
}

u8 hmc5983_ReadByte(u8 Address)
{
  u8 temp=0;
  SPI_Master_WriteRead(hmc5983_SPIx, Address|0x80, hmc5983_CS, SPI_PCS_ASSERTED);
  //SPI_Master_WriteRead(hmc5983_SPIx, (Address<<1)|0x01, hmc5983_CS, SPI_PCS_ASSERTED);
  temp = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_INACTIVE);
  return temp;
}

void hmc5983_ReadBuf(u8 Address, u8 *Buf, u8 len)
{
  uint8 i;
  
  SPI_Master_WriteRead(hmc5983_SPIx, Address|0x80|0x40, hmc5983_CS, SPI_PCS_ASSERTED);
  //SPI_Master_WriteRead(hmc5983_SPIx, (Address<<1)|0x01, hmc5983_CS, SPI_PCS_ASSERTED);
  for(i = 0 ;i < len ;i++)
  {
    if( i == (len-1) )
    {
      Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte|0x40, hmc5983_CS, SPI_PCS_INACTIVE);
    //  Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_INACTIVE);
    }
    else
    {
      Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte|0x40, hmc5983_CS, SPI_PCS_ASSERTED);
    //  Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_ASSERTED);
    }
  }
}

void hmc5983_DAQ()
{
  //查询状态寄存器以判断转换完成？
  //启用单次工作模式而非连续工作模式？
  //需要温度？
  u8 BUF[6];
  hmc5983_ReadBuf(HMC5983_X_axis_MSB_REG, BUF, 6);
  Compass.X = (int16)(BUF[0] << 8 | BUF[1]);
  Compass.Z = (int16)(BUF[2] << 8 | BUF[3]);
  Compass.Y = (int16)(BUF[4] << 8 | BUF[5]);
}

