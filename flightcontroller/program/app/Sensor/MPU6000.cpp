#include "MPU6000.h"


MPU6000_Type MPU6000, MPU6000_Raw;
u8 MPU6000_CS = 7;

void MPU6000_WriteByte(u8 Address,u8 byte)
{
  SPI_Master_WriteRead(MPU6000_SPIx, Address&0X7F, MPU6000_CS, SPI_PCS_ASSERTED);    //&0X7F将第一位变为0
  SPI_Master_WriteRead(MPU6000_SPIx, byte, MPU6000_CS, SPI_PCS_INACTIVE);
}

u8 MPU6000_ReadByte(u8 Address)
{
  u8 temp=0;
  SPI_Master_WriteRead(MPU6000_SPIx, Address|0x80, MPU6000_CS, SPI_PCS_ASSERTED);
  temp = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_INACTIVE);
  return temp;
}

void MPU6000_ReadBuf(u8 Address, u8 *Buf, u8 len)
{
  uint8 i;
  
  SPI_Master_WriteRead(MPU6000_SPIx, Address|0x80, MPU6000_CS, SPI_PCS_ASSERTED);
  
  for(i = 0 ;i < len ;i++)
  {
    if( i == (len-1) )
    {
      Buf[i] = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_INACTIVE);
    }
    else
    {
      Buf[i] = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_ASSERTED);
    }
  }
}

//MPU6000_Type::MPU6000_Type():accelRange(2.0f), gyroRange(2000.0f)
//{
//  
//}

//MPU6000_Type(float a, float g, float t)
//{
//  accel_x = a;
//  accel_y = a;
//  accel_z = a;
//  gyro_x = g;
//  gyro_y = g;
//  gyro_z = g;
//  temperature = t;
//}

void MPU6000_Type::operator= (MPU6000_Type& other)
{
  this->accel_x = other.accel_x;
  this->accel_y = other.accel_y;
  this->accel_z = other.accel_z;
  this->gyro_x = other.gyro_x;
  this->gyro_y = other.gyro_y;
  this->gyro_z = other.gyro_z;
  this->temperature = other.temperature;
}

bool MPU6000_Type::operator== (MPU6000_Type& other)
{
  if(this->accel_x == other.accel_x
      && this->accel_y == other.accel_y
      && this->accel_z == other.accel_z
      && this->gyro_x == other.gyro_x
      && this->gyro_y == other.gyro_y
      && this->gyro_z == other.gyro_z
      && this->temperature == other.temperature
     )
  {
    return true;
  }
  else
  {
    return false;
  } 
}


MPU6000_Type MPU6000_Type::operator- (MPU6000_Type& other)
{
  MPU6000_Type tmp;
  tmp.accel_x   = accel_x - other.accel_x;
  tmp.accel_y   = accel_y - other.accel_y;
  tmp.accel_z   = accel_z - other.accel_z;
  tmp.gyro_x    = gyro_x - other.gyro_x;
  tmp.gyro_y    = gyro_y - other.gyro_y;
  tmp.gyro_z    = gyro_z - other.gyro_z;
  tmp.temperature = temperature - other.temperature;
  return tmp;
}

bool MPU6000_Type::isInRange(float aRange, float gRange, float tRange)
{
  if(abs(accel_x) <= aRange && abs(accel_y) <= aRange && abs(accel_z) <= aRange 
     && abs(gyro_x) <= gRange &&abs(gyro_y) <= gRange && abs(gyro_z) <= gRange
       && abs(temperature) <= tRange)
  {
    return true;
  }
  else
  {
    return false;
  }
}


bool MPU6000_Type::isNormal()
{
  if(isInRange(accelRange, gyroRange, TempRange))
  {
    return true;
  }
  else
  {
    return false;
  }
}

void MPU6000_Type::error()
{
  this->errorCnt++;
  continuousError++;
}

void MPU6000_DAQ()
{
  MPU6000_ReadBuf(MPUREG_ACCEL_XOUT_H, MPU6000_Raw.BUF, 14);
//  MPU6000_Raw.accel_x =     ((int16)(MPU6000_Raw.BUF[0] << 8 | MPU6000_Raw.BUF[1])) / 32768.0 * 2;
//  MPU6000_Raw.accel_y =     ((int16)(MPU6000_Raw.BUF[2] << 8 | MPU6000_Raw.BUF[3])) / 32768.0 * 2;
//  MPU6000_Raw.accel_z =     ((int16)(MPU6000_Raw.BUF[4] << 8 | MPU6000_Raw.BUF[5])) / 32768.0 * 2;
//  MPU6000_Raw.temperature = ((int16)(MPU6000_Raw.BUF[6] << 8 | MPU6000_Raw.BUF[7])) / 340.0 + 36.25;//+ 36.25;//MPU6500 21
//  MPU6000_Raw.gyro_x =      ((int16)(MPU6000_Raw.BUF[8] << 8 | MPU6000_Raw.BUF[9])) / 32768.0 * 2000;
//  MPU6000_Raw.gyro_y =      ((int16)(MPU6000_Raw.BUF[10]<< 8 | MPU6000_Raw.BUF[11])) / 32768.0 * 2000;
//  MPU6000_Raw.gyro_z =      ((int16)(MPU6000_Raw.BUF[12]<< 8 | MPU6000_Raw.BUF[13])) / 32768.0 * 2000 ;
  MPU6000_Raw.accel_y =     -((int16)(MPU6000_Raw.BUF[0] << 8 | MPU6000_Raw.BUF[1])) / 32768.0 * 2;
  MPU6000_Raw.accel_x =     ((int16)(MPU6000_Raw.BUF[2] << 8 | MPU6000_Raw.BUF[3])) / 32768.0 * 2;
  MPU6000_Raw.accel_z =     ((int16)(MPU6000_Raw.BUF[4] << 8 | MPU6000_Raw.BUF[5])) / 32768.0 * 2;
  MPU6000_Raw.temperature = ((int16)(MPU6000_Raw.BUF[6] << 8 | MPU6000_Raw.BUF[7])) / 340.0 + 36.25;//+ 36.25;//MPU6500 21
  MPU6000_Raw.gyro_y =      -((int16)(MPU6000_Raw.BUF[8] << 8 | MPU6000_Raw.BUF[9])) / 32768.0 * 2000;
  MPU6000_Raw.gyro_x =      ((int16)(MPU6000_Raw.BUF[10]<< 8 | MPU6000_Raw.BUF[11])) / 32768.0 * 2000;
  MPU6000_Raw.gyro_z =      ((int16)(MPU6000_Raw.BUF[12]<< 8 | MPU6000_Raw.BUF[13])) / 32768.0 * 2000 ;
  
//  MPU6000_Raw.accel_x += -0.012;
//  MPU6000_Raw.accel_y += 0.0475;
//  MPU6000_Raw.accel_z += 0.1164;
//    
//  MPU6000_Raw.accel_x *= 0.9910;
//  MPU6000_Raw.accel_y *= 1.0038;
//  MPU6000_Raw.accel_z *= 0.9787;
  
//  MPU6000_Raw.accel_x += -0.0155;//新
//  MPU6000_Raw.accel_y += 0.0067;
//  MPU6000_Raw.accel_z += 0.1312;
//    
//  MPU6000_Raw.accel_x *= 0.9906;
//  MPU6000_Raw.accel_y *= 0.9938;
//  MPU6000_Raw.accel_z *= 0.9822;
  
  MPU6000_Raw.accel_x += -0.0253;//旧IMU
  MPU6000_Raw.accel_y += -0.0116;
  MPU6000_Raw.accel_z += 0.1963;
    
  MPU6000_Raw.accel_x *= 0.9919;
  MPU6000_Raw.accel_y *= 0.9939;
  MPU6000_Raw.accel_z *= 0.9841;
  
  MPU6000_Raw.updateTime = t;
  
#if THIS_PLANE == QAV250
#else
  MPU6000_Raw.gyro_x += -0.3;
  MPU6000_Raw.gyro_y += -2.8;
  MPU6000_Raw.gyro_z += 1.4;
#endif
  
#if defined USE_OLD_DATA
#else
    if(t > 3000 && t < 3000 + H_NUM * 2)
    {
      H_hmc_x[(t-3000)/2] = Compass.X;
      H_hmc_y[(t-3000)/2] = Compass.Y;
      H_hmc_z[(t-3000)/2] = Compass.Z;
      H_accel_x[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[0] << 8 | MPU6000_Raw.BUF[1]);
      H_accel_y[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[2] << 8 | MPU6000_Raw.BUF[3]);
      H_accel_z[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[4] << 8 | MPU6000_Raw.BUF[5]);
      H_gyro_x[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[8] << 8 | MPU6000_Raw.BUF[9]);
      H_gyro_y[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[10] << 8 | MPU6000_Raw.BUF[11]);
      H_gyro_z[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[12] << 8 | MPU6000_Raw.BUF[13]);
    //  H_roll[(t-3000)/2]   = (int16)(roll*10);
    //  H_pitch[(t-3000)/2]  = (int16)(pitch*10);
    //  H_yaw[(t-3000)/2]    = (int16)(yaw*10);
    }
#endif
    
}

void InitMPU6000(void)
{     
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_USER_CTRL,   0x10);
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_PWR_MGMT_1,  0x80);//解除休眠状态0x00
  LPTMR_DelayMs(150);
  MPU6000_WriteByte(MPUREG_USER_CTRL,   0x10);//0x30
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_PWR_MGMT_1,  0x00);//解除休眠状态0x00
  LPTMR_DelayMs(20);
  
  
  MPU6000_WriteByte(MPUREG_SMPLRT_DIV,  0x01); //原来 0x07 对应125Hz 0x01对应500Hz
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_CONFIG,      0x05); //0x06陀螺滤波5Hz  0x04=20Hz
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_GYRO_CONFIG, 0x18);
  LPTMR_DelayMs(20);
  MPU6000_WriteByte(MPUREG_ACCEL_CONFIG,0x00);
  LPTMR_DelayMs(20);
        
        
//  LPTMR_DelayMs(20);
//  SPI_MPU_WriteReg(MPUREG_SMPLRT_DIV,0x07);
//  LPTMR_DelayMs(20);
//  //低通滤波频率，典型值0x06(5Hz)
//  SPI_MPU_WriteReg(MPUREG_CONFIG,0x06);
//  LPTMR_DelayMs(20);
//  //陀螺仪量程+/-500 
//  SPI_MPU_WriteReg(MPUREG_GYRO_CONFIG,0x08);
//  LPTMR_DelayMs(20);
//  //加速度量程+/-4g
//  SPI_MPU_WriteReg(MPUREG_ACCEL_CONFIG,0x08);
//  LPTMR_DelayMs(20);
  
//配置中断模式，高电平有效。
//  SPI_MPU_WriteReg(MPUREG_INT_PIN_CFG,0x30);
//  LPTMR_DelayMs(20);
//  //允许中断
//  SPI_MPU_WriteReg(MPUREG_INT_ENABLE,0x01);
//  LPTMR_DelayMs(20);
}






