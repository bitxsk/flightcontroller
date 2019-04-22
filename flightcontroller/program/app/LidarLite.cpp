#include "LidarLite.h"
// Interface for Lidar-Lite V2 (Blue Label) with NVIDIA Jetson TK1

LidarLite__* LidarLite;
void LidarLiteInit()
{
  static LidarLite__ LidarLite_0;
  LidarLite = &LidarLite_0;

  //LidarLite->writeLidarLite(0x08,0x28);
  LidarLite->writeLidarLite(0x08,0x28);
  LidarLite->vel.z.D_smoother = 0.993;
  LidarLite->velFilter.setParameter(0.8,500);
}


LidarLite__::LidarLite__()
{
    error = 0 ;
}

LidarLite__::~LidarLite__()
{
    closeLidarLite() ;
}

// Returns true if device file descriptor opens correctly, false otherwise

bool LidarLite__::openLidarLite()
{
    return true ;
}

void LidarLite__::closeLidarLite()
{
//    if (kI2CFileDescriptor > 0) {
//        close(kI2CFileDescriptor);
//        // WARNING - This is not quite right, need to check for error first
//        kI2CFileDescriptor = -1 ;
//    }
}

// Read the given register on the Lidar-Lite
int LidarLite__::readLidarLite(int readRegister)
{
//    // Do not use i2c_smbus_read_byte_data here ; LidarLite__ V2 needs STOP between write and read
//    int toReturn ;
//    //toReturn = i2c_smbus_write_byte(kI2CFileDescriptor, readRegister) ;
//    toReturn = I2C_WriteByte(I2C0, readRegister) ;
//    if (toReturn < 0) {
//  //      error = errno ;
//        toReturn = -1 ;
//    }
//    toReturn = i2c_smbus_read_byte(kI2CFileDescriptor) ;
//    toReturn = I2C_ReadByte(I2C0) ;
//    if (toReturn < 0) {
//   //     error = errno ;
//        toReturn = -1 ;
//    }
//    return toReturn ;
    
    
  uint8 result;

  //发送从机地址
//  I2C_StartTrans(I2C0, kLidarLiteI2CAddress << 1, I2C_MWSR);
  I2C_Start(I2C0);
  //将从机地址和主机读写位合成一个字节写入
  I2C_WriteByte(I2C0, kLidarLiteI2CAddress << 1 );
  I2C_WaitAck(I2C0, I2C_ACK_ON);

  //写寄存器地址
  I2C_WriteByte(I2C0, readRegister);
  I2C_WaitAck(I2C0, I2C_ACK_ON);

  //再次产生开始信号
 // I2C_ReStart(I2C0); //////////////////// K60 硬件ReStart时间太短！ 读数根本就是错的！（但是如果先用长ReStart间隔时间，则可以正确读数）
  I2C_Stop(I2C0);
  for(int i = 0; i < 500; i++)
  {
    i+=1;
  }
  I2C_Start(I2C0);


//  //发送从机地址和读取位
  I2C_WriteByte(I2C0, kLidarLiteI2CAddress << 1| 0x01);
  I2C_WaitAck(I2C0, I2C_ACK_ON);
//
  //转换主机模式为读
  I2C_SetMasterWR(I2C0, I2C_MRSW);

  //关闭应答ACK
  I2C_WaitAck(I2C0, I2C_ACK_OFF);//关闭ACK

  //读IIC数据
  result =I2C_ReadByte(I2C0);
  I2C_WaitAck(I2C0, I2C_ACK_ON);

  //发送停止信号
  I2C_Stop(I2C0);

   //读IIC数据
  result = I2C_ReadByte(I2C0);
  
  for(int i = 0; i < 500; i++)
  {
    i+=1;
  }
  return result;
}

// Write the the given value to the given register on the Lidar-Lite
int LidarLite__::writeLidarLite(int writeRegister, int writeValue)
{
//    //int toReturn = i2c_smbus_write_byte_data(kI2CFileDescriptor, writeRegister, writeValue);
//    int toReturn = I2C_WriteByte(I2C0, writeRegister, writeValue);
//    // Wait a little bit to make sure it settles
//    usleep(10000);
//    if (toReturn < 0) {
//        error = errno ;
//        toReturn = -1 ;
//    }
//    return toReturn ;

  //发送从机地址
  I2C_StartTrans(I2C0, kLidarLiteI2CAddress, I2C_MWSR);
  I2C_WaitAck(I2C0, I2C_ACK_ON);
  
  //写寄存器地址
  I2C_WriteByte(I2C0, writeRegister);
  I2C_WaitAck(I2C0, I2C_ACK_ON);
  
  //向寄存器中写具体数据
  I2C_WriteByte(I2C0, writeValue);
  I2C_WaitAck(I2C0, I2C_ACK_ON);

  I2C_Stop(I2C0);
  
  for(int i = 0; i < 500; i++)
  {
    i+=1;
  }
  return 0;
}

// Return the current calculated distance in centimeters
int LidarLite__::getDistance()
{
    int ioResult ;
    int msb, lsb ;
    
    extern int ti2;

    
    ioResult = readLidarLite(kLidarLiteCalculateDistanceMSB);
    if (ioResult < 0) {
        return ioResult ;
    } else {
        msb = ioResult ;
    }
    ioResult = readLidarLite(kLidarLiteCalculateDistanceLSB);
    if (ioResult < 0) {
        return ioResult ;
    } else {
        lsb = ioResult ;
    }

    int distance = (msb << 8) + lsb ;

    return distance ;
}

void LidarLite__::measure()
{
    writeLidarLite(kLidarLiteCommandControlRegister,kLidarLiteMeasure);
}

// Return the previous measurement in centimeters
int LidarLite__::getPreviousDistance() 
{
    int ioResult ;
    int msb, lsb ;
    ioResult = readLidarLite(kLidarLitePreviousMeasuredDistanceMSB);
    if (ioResult < 0) 
    {
        return ioResult ;
    } else {
        msb = ioResult ;
    }
    ioResult = readLidarLite(kLidarLitePreviousMeasuredDistanceLSB);
    if (ioResult < 0) 
    {
        return ioResult ;
    } else {
        lsb = ioResult ;
    }

    int distance = (msb << 8) + lsb ;

    return distance ;
}

// Return the velocity (rate of change) in centimeters; +/-
// Velocity is returned from the Lidar-Lite as an 8-bit 2's complement number
// The returned value is converted to a signed integer
int LidarLite__::getVelocity()
{
    int ioResult = readLidarLite(kLidarLiteVelocityMeasurementOutput);
    if (ioResult == 255) {
        return 0 ;
    }
    if (ioResult > 127) {

        return  ioResult - 256 ;
    }
    return ioResult ;
}

// Return the Lidar-Lite hardware version
int LidarLite__::getHardwareVersion()
{
    return readLidarLite(kLidarLiteHardwareVersion) ;
}

// Return the Lidar-Lite software version
int LidarLite__::getSoftwareVersion() 
{
    return readLidarLite(kLidarLiteSoftwareVersion) ;
}

// Return the last i/o error
int LidarLite__::getError()
{
    return error ;
}

void LidarLite__::update()
{
  float rawDistance = LidarLite->getDistance() / 100.0f;
 
  
  //f(x) = p0*x^3 + p1*x^2 + p2*x + p3
  
  double xPowered = 1;
  double p[4];
  p[0] =  -3.416e-07;
  p[1] =   0.0003616;
  p[2] =      0.9125;
  p[3] =      -3.989;
  
  double fitted = 0;
  for(int i = 3; i >= 0; i--)
  {
    fitted += p[i] * xPowered;
    xPowered *= rawDistance * 100.0f;
  }
  fitted /= 100.0f;
  
  float temp = velFilter.newData(fitted, vel_z_CF, t);
  temp_111 = rawDistance;
//    if(!(temp == temp)) //对于NaN temp == temp 返回false
//    {
//      while(1){}
//    }
  if(LidarLite->velFilter.isValid())
  {
    position.z = (0.92) * (position.z + vel_z_CF * 0.002) + (0.08)*(temp); 
  }
  else
  {
    //  position.z = (1) * (position.z + vel_z_CF * 0.002) + (0)*(temp);
  }
  position.z.calculateD(t);
}