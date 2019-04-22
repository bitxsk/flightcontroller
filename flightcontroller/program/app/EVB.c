/*
* @EVB_car.c
* @version 1.00
* @date 2016-5
* @brief EverythingViaBluetooth的配套代码，版本号与labview程序对应
*
** @Revision History
*    version 0.99
*      --第一版库文件
*      --刘导 QQ:875978009
*
**    version 1.00
*      --刘导 QQ:875978009
*/

#include "common.h"
#include "EVB.h"
#include "includes.h"

int TT1, TT1_max, TT1_min;
CEVB EVB;


void EVB_Init(__EVB_InitTypeDef EVB_InitStruct)
{
  EVB.RXD_PackageLength[EVB_Servo]                  = 18;
  EVB.RXD_PackageLength[EVB_Spd]                    = 20;
  EVB.RXD_PackageLength[EVB_KpTable]                = 149;
  EVB.RXD_PackageLength[EVB_KdTable]                = 149;
  EVB.RXD_PackageLength[EVB_SpdTable]               = 149;
  EVB.RXD_PackageLength[EVB_OffsetBoundTable]       = 86;
  EVB.RXD_PackageLength[EVB_Sensor]                 = 2;
  EVB.RXD_PackageLength[EVB_Battle]                 = 4;
  EVB.RXD_PackageLength[EVB_RemoteControl]          = 22;
  EVB.RXD_PackageLength[EVB_Command]                = 2;
  EVB.RXD_PackageLength[EVB_FullBrake]              = 2;
  
  EVB.SystemPeriod     = (int)(EVB_InitStruct.SystemPeriod * 1000); //小数变为整数     
  EVB.TransmitInterval = (int)(EVB_InitStruct.TransmitInterval * 1000); 
  
  EVB.AngleMax         = EVB_InitStruct.AngleMax;
  EVB.AngleMid         = EVB_InitStruct.AngleMid;
  EVB.AngleMin         = EVB_InitStruct.AngleMin;
  EVB.SpdKd            = EVB_InitStruct.SpdKd;
  EVB.SpdKi            = EVB_InitStruct.SpdKi;
  EVB.SpdKp            = EVB_InitStruct.SpdKp;
  EVB.SupplyVoltage    = EVB_InitStruct.SupplyVoltage;
  EVB.uartSend         = EVB_InitStruct.uartSend;
  EVB.KpTable          = EVB_InitStruct.KpTable;
  EVB.KdTable          = EVB_InitStruct.KdTable;
  EVB.SpdTable         = EVB_InitStruct.SpdTable;
//  int i;
//  for(i = 0; EVB_InitStruct.Parameter[i] != NULL; i++)
//  {
//    EVB.Parameter[i]        = EVB_InitStruct.Parameter[i];
//    EVB.ParameterNum[i]     = EVB_InitStruct.ParameterNum[i];
//  }
//  EVB.functionNum = i;
//  
  EVB.FunctionMode     = EVB_Spd;
  EVB.InitFlag         = true;

}

void EVB_TimerUpdate()
{
  EVB.SysTime += EVB.SystemPeriod;
  
  int n;
  n=DMA0->TCD[DMA_CH1].DADDR-(uint32)&(EVB.RXD[0]);
  if(n>sizeof(EVB.RXD)-100||n<0)
  {
    EVB.error_evb++;
    DMA0->TCD[DMA_CH1].DADDR=(uint32)&(EVB.RXD[0]);
  }
}

void CEVB::send()
{
  if(EVB.InitFlag == false)
  {
  }
  if(0)
  {
    if(EVB.SysTime >= EVB.TransmitTimestamp + 2 && t >= 5000)
    //if(EVB.SysTime > EVB.TransmitTimestamp  && t >= 5000)
    {
      if(!DMA_isOccupying(DMA_CH2))
      {
        EVB.TX.clear();
        
        int16 timeS = t/2;

        EVB.TX.add(MPU6000_Raw.BUF[0]);
        EVB.TX.add(MPU6000_Raw.BUF[1]);
        EVB.TX.add(MPU6000_Raw.BUF[2]);
        EVB.TX.add(MPU6000_Raw.BUF[3]);
        EVB.TX.add(MPU6000_Raw.BUF[4]);
        EVB.TX.add(MPU6000_Raw.BUF[5]);
            
        EVB.TX.add(MPU6000_Raw.BUF[8]);
        EVB.TX.add(MPU6000_Raw.BUF[9]);
        EVB.TX.add(MPU6000_Raw.BUF[10]);
        EVB.TX.add(MPU6000_Raw.BUF[11]);
        EVB.TX.add(MPU6000_Raw.BUF[12]);
        EVB.TX.add(MPU6000_Raw.BUF[13]);
//        EVB.TX.add(MPU6000_Raw.accel_x);
//        EVB.TX.add(MPU6000_Raw.accel_y);
//        EVB.TX.add(MPU6000_Raw.accel_z);
//        EVB.TX.add(MPU6000_Raw.gyro_x);
//        EVB.TX.add(MPU6000_Raw.gyro_y);
//        EVB.TX.add(MPU6000_Raw.gyro_z);
        
        EVB.TX.add((int16)(roll1 * 100) >> 8);
        EVB.TX.add((int16)(roll1 * 100));
        EVB.TX.add((int16)(pitch1 * 100) >> 8);
        EVB.TX.add((int16)(pitch1 * 100));
        EVB.TX.add((int16)(yaw1 * 100) >> 8);
        EVB.TX.add((int16)(yaw1 * 100));
//        float tmp = Odom->positionX;
//        if(tmp > 10000) tmp = 10000;
//        if(tmp <-10000) tmp = -10000;
//        EVB.TX.add((int16)(tmp)*100 >> 8);
//        EVB.TX.add((int16)(tmp)*100);
        
//        EVB.TX.add((int16)Compass.X >> 8);
//        EVB.TX.add((int16)Compass.X);
//        EVB.TX.add((int16)Compass.Y >> 8);
//        EVB.TX.add((int16)Compass.Y);
//        EVB.TX.add((int16)Compass.Z >> 8);
//        EVB.TX.add((int16)Compass.Z);
        

        float delta_gyro = 150, delta_angle = 10;
        if(
            (abs(MPU6000.gyro_x - EVB.EventTrigger.wx0) > delta_gyro ||abs(MPU6000.gyro_y - EVB.EventTrigger.wy0) > delta_gyro || abs(MPU6000.gyro_z - EVB.EventTrigger.wz0) > delta_gyro) &&
            (abs(roll1 - EVB.EventTrigger.roll0) > delta_angle || abs(pitch1 - EVB.EventTrigger.pitch0) > delta_angle ||abs(yaw1 - EVB.EventTrigger.yaw0) > delta_angle)
           )
        {
          EVB.EventTrigger.gamma = 3; //均满足
        }
        else if(abs(MPU6000.gyro_x - EVB.EventTrigger.wx0) > delta_gyro ||abs(MPU6000.gyro_y - EVB.EventTrigger.wy0) > delta_gyro || abs(MPU6000.gyro_z - EVB.EventTrigger.wz0) > delta_gyro)
        {
          EVB.EventTrigger.gamma = 2; //角速度满足
        }
        else if(abs(roll1 - EVB.EventTrigger.roll0) > delta_angle || abs(pitch1 - EVB.EventTrigger.pitch0) > delta_angle || abs(yaw1 - EVB.EventTrigger.yaw0) > delta_angle)
        {
          EVB.EventTrigger.gamma = 1; //角度满足
        }
        else
        {
          EVB.EventTrigger.gamma = 0;
        }

        if(EVB.EventTrigger.gamma != 0)
        {
          EVB.EventTrigger.wx0 = MPU6000.gyro_x;
          EVB.EventTrigger.wy0 = MPU6000.gyro_y;
          EVB.EventTrigger.wz0 = MPU6000.gyro_z;
          EVB.EventTrigger.roll0 = roll1;
          EVB.EventTrigger.pitch0 = pitch1;
          EVB.EventTrigger.yaw0 = yaw1;
        }
        
       // EVB.TX.add((int16)EVB.EventTrigger.gamma >> 8);
       // EVB.TX.add((int16)EVB.EventTrigger.gamma);
       
      //  EVB.TX.add((int16)(roll * 100) >> 8);
      //  EVB.TX.add((int16)(roll * 100));
      //  EVB.TX.add((int16)(pitch * 100) >> 8);
      //  EVB.TX.add((int16)(pitch * 100));
      //  EVB.TX.add((int16)(yaw * 100) >> 8);
      //  EVB.TX.add((int16)(yaw * 100));
        
//#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//        EVB.TX.add((int16)(Ultrasound->dis * 10000) >> 8);
//        EVB.TX.add((int16)(Ultrasound->dis * 10000));
//#else   
//        EVB.TX.add((int16)(0) >> 8);
//        EVB.TX.add((int16)(0));
//#endif        
//
//#if SENSOR_NVIDIATX1 == SENSOR_USED
//        EVB.TX.add((int16)(NvidiaTX1->velX_raw) >> 8);
//        EVB.TX.add((int16)(NvidiaTX1->velX_raw));
//      
//        EVB.TX.add((int16)(NvidiaTX1->velY_raw) >> 8);
//        EVB.TX.add((int16)(NvidiaTX1->velY_raw));
//#else
//        EVB.TX.add((int16)(0) >> 8);
//        EVB.TX.add((int16)(0));
//        EVB.TX.add((int16)(0) >> 8);
//        EVB.TX.add((int16)(0));
//#endif     
        /*****************************************/
    
        
        EVB.TX.add((int16)timeS >> 8);
        EVB.TX.add((int16)timeS);
         

        
        
        //  EVB.TX.add((int16)(15098) >> 8);
        //  EVB.TX.add((int16)(15098));
        EVB.TransmitTimestamp = EVB.SysTime;
        EVB.TX.startDMA_Transmit();
        EVB.TX.sendPackageCnt++;
          
      }
      else
      {
        EVB.EventTrigger.dropPackage++;
      }
    }
  }
  else
  {
    if(EVB.SysTime > EVB.TransmitInterval + EVB.TransmitTimestamp &&
    !DMA_isOccupying(DMA_CH2))
    {
      EVB.makeOnePackge();
      EVB.TransmitTimestamp = EVB.SysTime;
      EVB.TX.startDMA_Transmit();
      EVB.TX.sendPackageCnt++;
    }
  }
}

void EVB_SendUNum_3(int num)
{
  EVB.TX.add(num/1000000);
  EVB.TX.add(num/10000%100);
  EVB.TX.add(num/100%100);
}

void EVB_SendUNum_2(int num)
{
  EVB.TX.add(num/100);
  EVB.TX.add(num%100);
}

void EVB_SendUNum_1(int num)
{
  EVB.TX.add(num);
}

void EVB_SendSNum_3(int num)
{
  if(num < -9999) num = -9999;
  else if(num > 9999) num = 9999;
  if(num<0)
  {
    num = -num;
    EVB.TX.add('-');
  }
  else
  {
    EVB.TX.add('+');
  }
  EVB.TX.add(num/100);
  EVB.TX.add(num%100);
}

void EVB_SendTable(int16* Table, __SendMode mode)
{
  char TmpString[4];
  EVB_SendUNum_1(EVB_Command);
  EVB_SendUNum_1(mode);
  for(int i = 0; i < NUM * NUM; i++)
  {
  //  sprintf (TmpString, "%03d", *(Table + i));
    EVB_SendStr((u8 *)TmpString);
    if(i % NUM == NUM - 1)
    {
      EVB_SendUNum_1(13);//回车
    }
    else
    {
      EVB_SendUNum_1(32);//空格
    }
  }
}


void EVB_SendStr(u8 *str)
{
    while(*str)
    {
       EVB.TX.add(*str++);
    }
}

void CEVB::makeOnePackge()
{
  EVB.TX.clear();
  if(EVB.SendMode == EVB_SendMode_Normal)
  {
    switch(EVB.FunctionMode)
    {
      case EVB_Servo:           EVB_SendUNum_1(1);  break;
      case EVB_Spd:             EVB_SendUNum_1(2);  break;
      case EVB_KpTable:
      case EVB_KdTable:         EVB_SendUNum_1(3);  break;
      case EVB_SpdTable:        EVB_SendUNum_1(5);  break;
      case EVB_OffsetBoundTable:EVB_SendUNum_1(6);  break;
      case EVB_Sensor:          EVB_SendUNum_1(7);  break;
      case EVB_Battle:          EVB_SendUNum_1(8);  break;
      case EVB_RemoteControl:   EVB_SendUNum_1(9);  break;
      default:                  EVB_SendUNum_1(0);
    }

    
  ///////////////////////变量需要修改///////////////////////
    extern int myYaw, myYaw1, myYaw2;

//  EVB_SendSNum_3((int)(MPU6000.gyro_z*10));
//  EVB_SendSNum_3(angleY.output);
//  EVB_SendSNum_3(gyroY.output * 10);
//  EVB_SendSNum_3(MPU6000.accel_z);
//  EVB_SendSNum_3(rotor4);
extern float compensation;


//    EVB_SendSNum_3(Navigation->angleToScreenJumpF * 100);
//    EVB_SendSNum_3(UltrasoundUART->distance1 * 1000);
 //     EVB_SendSNum_3(videoStation->positionX_raw);
 //     EVB_SendSNum_3(videoStation->positionY_raw);
  //  EVB_SendSNum_3(UltrasoundUART->position.z * 100);
  //  EVB_SendSNum_3(UltrasoundUART->vel.z * 100);
//    EVB_SendSNum_3(UltrasoundUART->distance1 * 1000);
//    EVB_SendSNum_3(UltrasoundUART->distance2 * 1000);
////    EVB_SendSNum_3(flightMode->takeOff.state * 100);
//    EVB_SendSNum_3(UltrasoundUART->distance3 * 1000);
 //   EVB_SendSNum_3(UltrasoundUART->distanceRaw1 * 1000);
 //   EVB_SendSNum_3(UWB->dis[0] * 100);
   // EVB_SendSNum_3(UWB->position.y * 100);
   // EVB_SendSNum_3(UWB->vel.y * 100);
   // EVB_SendSNum_3(UWB->positionF.y * 100);
    //EVB_SendSNum_3(t - UWB->byte_lastTime);
//   EVB_SendSNum_3(UltrasoundUART->distanceRaw2 * 1000);
 //  EVB_SendSNum_3(UltrasoundUART->distanceRaw3 * 1000);
//    EVB_SendSNum_3(videoStation->valid * 1000);
 //   EVB_SendSNum_3(videoStation->positionX_A * 1000);
 //   EVB_SendSNum_3(videoStation->positionY_A * 1000);
 //   EVB_SendSNum_3(videoStation->position.y * 1000);
  //  EVB_SendSNum_3(videoStation->position.z * 1000);
  //  EVB_SendSNum_3(dis_set_hight * 100);

//    EVB_SendSNum_3(GPS->position.x * 100);
//    EVB_SendSNum_3(GPS->position.y * 100);
//    EVB_SendSNum_3(EKF_AHRS1->fusion.position.z * 100);
//    EVB_SendSNum_3(EKF_AHRS1->fusion.vel.x * 100);
//    EVB_SendSNum_3(EKF_AHRS1->fusion.vel.y * 100);
//    EVB_SendSNum_3(positionX.referance * 100);
//    EVB_SendSNum_3(positionY.referance * 100);
  //  EVB_SendSNum_3(positionX_vel.referance * 100);
  //  EVB_SendSNum_3(positionY_vel.referance * 100);
//    EVB_SendSNum_3(GPS->vel.x * 100);
  //  EVB_SendSNum_3(GPS->vel.y * 100);
//    EVB_SendSNum_3(angleX.referance * 10);
//    EVB_SendSNum_3(angleY.referance * 10);

//////////// sbus ////////////////
//     EVB_SendSNum_3(SBus->Roll*5);
//     EVB_SendSNum_3(SBus->CSwitch*5);
//     EVB_SendSNum_3(SBus->Yaw*5);
//     EVB_SendSNum_3(SBus->Pitch*5);
//     EVB_SendSNum_3(SBus->Leftknob);
//     EVB_SendSNum_3(SBus->failsafe_status*1000);

//     EVB_SendSNum_3(gyroZ.output);
//     EVB_SendSNum_3(angleX.output);
//     EVB_SendSNum_3(angleY.output);
//     EVB_SendSNum_3(angleZ.output);
//     EVB_SendSNum_3(angleZ.P);
//     EVB_SendSNum_3(angleZ.D);
//    EVB_SendSNum_3((GPS->status - '0') * 100);
//    EVB_SendSNum_3((GPS->positionFilterX.valid + GPS->positionFilterY.valid) * 100);
    
//    EVB_SendSNum_3(roll1 * 100);
//   EVB_SendSNum_3(roll3 * 10);
//    EVB_SendSNum_3(pitch1 * 100);
//    EVB_SendSNum_3(pitch1 * 10);
//       EVB_SendSNum_3(yaw2 * 10);
//     EVB_SendSNum_3(yaw1 * 100);

//     EVB_SendSNum_3(rotor1 );
//     EVB_SendSNum_3(rotor2 );
//     EVB_SendSNum_3(rotor3 );
//     EVB_SendSNum_3(rotor4 );
//     EVB_SendSNum_3(EVB.Yaw* 10);
//     EVB_SendSNum_3(EVB.Pitch* 10);

//    EVB_SendSNum_3(yaw3 * 10);
//    EVB_SendSNum_3(yaw4 * 10);
//   EVB_SendSNum_3(gyroY.referance * 10);
//    EVB_SendSNum_3(AirPrevel_z_1*100*30);
//    EVB_SendSNum_3(AirPrevel_z*100*30);
//    EVB_SendSNum_3(MPU6000.gyro_x * 100);
//    EVB_SendSNum_3(MPU6000.gyro_y * 100);
//    EVB_SendSNum_3(MPU6000.gyro_x_f * 100);
 //   EVB_SendSNum_3(gyroY.outputI * 100);
   // EVB_SendSNum_3(gyroY.outputD * 100);
//    EVB_SendSNum_3(GPS->vel.y * 1000);
//    EVB_SendSNum_3(Navigation->angleToScreen * 100);
//    EVB_SendSNum_3(Navigation->angleToScreen_CF * 100);
  //    EVB_SendSNum_3(UltrasoundUART->distanceFilter2.valid * 100);
  //    EVB_SendSNum_3(UltrasoundUART->distanceFilter3.valid * 100);
     //EVB_SendSNum_3(positionX.output * 100);

   //   EVB_SendSNum_3(positionX.outputP * 100);
   //   EVB_SendSNum_3(positionX.outputD * 100);
//    EVB_SendSNum_3(IMU_acc_E.y * 100);
//    EVB_SendSNum_3(waterGun->servoControl2);
//    EVB_SendSNum_3(accel_E_H_y.sum * 100);
//    EVB_SendSNum_3(UltrasoundUART->byteInterval);
 //   EVB_SendSNum_3(t - UltrasoundUART->lastValidTime1);
//    EVB_SendSNum_3(t - UltrasoundUART->lastValidTime2);
//    EVB_SendSNum_3(t - UltrasoundUART->lastValidTime3);
    
//  EVB_SendSNum_3(pitch1 * 100);
//  EVB_SendSNum_3(roll1 * 100);
  //EVB_SendSNum_3(positionX_vel.output * 100);
  //EVB_SendSNum_3(positionY_vel.output * 100);
 // EVB_SendSNum_3(positionZ_vel.output * 100);
//  EVB_SendSNum_3(yaw1 * 10);

//  //////超声波定高/////
    EVB_SendSNum_3(roll1*10);
    EVB_SendSNum_3(pitch1*10);
    EVB_SendSNum_3(yaw2*10);
    EVB_SendSNum_3(AHRS->R_gyrox*10);
    EVB_SendSNum_3(MPU6000.gyro_x_f*10);
    EVB_SendSNum_3(MPU6000.accel_x*GRAVITATIONAL_ACC*100);
//  EVB_SendSNum_3(positionZ_vel.output * 50);
//  EVB_SendSNum_3(rotor1);
//  EVB_SendSNum_3(UltrasoundUART->distance1 * 5000);
//  EVB_SendSNum_3(UltrasoundUART->distanceRaw1 * 5000);
//  EVB_SendSNum_3(UltrasoundUART->position.z*5000);
//  EVB_SendSNum_3(UltrasoundUART->vel.z*5000);
  
//    EVB_SendSNum_3(angleX.output );
//    EVB_SendSNum_3(angleY.output );
//    EVB_SendSNum_3(MPU6000.gyro_x_f *10);
//    EVB_SendSNum_3(accel_E_z*100);
//    EVB_SendSNum_3(AirPrevel_z*1000);
//    EVB_SendSNum_3(AirPrevel_z_1*1000);
//     EVB_SendSNum_3(MPU6000.gyro_x_f);
//     EVB_SendSNum_3(MPU6000.gyro_y_f);
//     EVB_SendSNum_3(gyroX.I);
//     EVB_SendSNum_3(gyroY.I);



    //////视觉里程计////////
//    EVB_SendSNum_3(roll1*10);
//    EVB_SendSNum_3(pitch1*10);
//    EVB_SendSNum_3(yaw2*10);
   // EVB_SendSNum_3(AHRS->R_gyrox*10);
   // EVB_SendSNum_3(MPU6000.gyro_x_f*10);
    //EVB_SendSNum_3(AHRS->R_gyrox*10);
    //EVB_SendSNum_3(AHRS->R_gyroy*10);
    //EVB_SendSNum_3(AHRS->R_gyroz*10);

//    EVB_SendSNum_3(GPS->position.x*100);
//    EVB_SendSNum_3(GPS->position.y*100);
//    EVB_SendSNum_3(positionX_vel.output);
//    EVB_SendSNum_3(positionX_vel.P*100);
//    EVB_SendSNum_3(positionY_vel.output);
//    EVB_SendSNum_3(positionY_vel.P*100);
    
//    EVB_SendSNum_3(accel_E_y*100);
//    EVB_SendSNum_3(positionX_vel.referance*100);
//    EVB_SendSNum_3(positionY_vel.referance*100);
//    EVB_SendSNum_3(positionZ_vel.referance*100);
//    EVB_SendSNum_3(Odom->vel_fusion.x*100);
//    EVB_SendSNum_3(Odom->vel_fusion.y*100);
//    EVB_SendSNum_3(Odom->vel_fusion.z*100);
//    EVB_SendSNum_3(positionX_vel.referance*100);
//    EVB_SendSNum_3(Odom->vel_fusion.x*100);
//    EVB_SendSNum_3(positionX_vel.output*10);
//    EVB_SendSNum_3(pitch1 * 10);
//    EVB_SendSNum_3(angleY.referance * 10);
//    EVB_SendSNum_3(yaw2 * 10);
//    EVB_SendSNum_3(Odom->position_fusion.x*100);
//    EVB_SendSNum_3(Odom->position_fusion.y*100);
//    EVB_SendSNum_3(Odom->position_fusion.z*100);
//    EVB_SendSNum_3(Odom->position_fusion.y*100);
//    EVB_SendSNum_3(Odom->positionY*100);
 


//    for(int i = 0; i < 10; i++)
//    {
//    //  EVB_SendSNum_3(-10000 + t * 5 + i);
//    }
//  EVB_SendSNum_3(MPU6000.gyro_x * 10);
//  EVB_SendSNum_3(pitch * 10);
//  EVB_SendSNum_3(yaw * 10);

//  EVB_SendSNum_3(angleX.output);
 // EVB_SendSNum_3(EKF_AHRS->fusion.vel.z*1000);

//  EVB_SendSNum_3(gyroX.outputD);
//  EVB_SendSNum_3(gyroX.outputP);

  
 // EVB_SendSNum_3(positionZ.P * 1000);
 // EVB_SendSNum_3(positionZ_vel.P * 1000);
  
//  EVB_SendSNum_3(controlOutput.D1);
//  EVB_SendSNum_3(controlOutput.D2);
//  EVB_SendSNum_3(controlOutput.D3);
//  EVB_SendSNum_3(Diffa.diff);
  
//  EVB_SendSNum_3(EVB.Pitch);
//  EVB_SendSNum_3(angleY.output);

//  EVB_SendSNum_3(gyroY.D);
  
  
  
  EVB_SendUNum_1(0);
  EVB_SendUNum_1(EVB.Row_FuzzyTable);
  EVB_SendUNum_1(EVB.Column_FuzzyTable);
  EVB_SendUNum_1(0); //忽略两位!!
  EVB_SendUNum_1(0);

  
  if(EVB.FunctionMode==7)
  {
     EVB_SendUNum_2(0);
     EVB_SendUNum_2(0);
     EVB_SendUNum_2(0);
     EVB_SendUNum_2(0);
     EVB_SendUNum_2(0); 
  }  
  ///////////////////////--------///////////////////////
  
  EVB_SendUNum_2(*EVB.SupplyVoltage);
  }
  else if(EVB.SendMode == EVB_SendMode_KpTable)
  {
    EVB_SendTable(EVB.KpTable, EVB_SendMode_KpTable);
    EVB.SendMode = EVB_SendMode_Normal;
  }
  else if(EVB.SendMode == EVB_SendMode_KdTable)
  {
    EVB_SendTable(EVB.KdTable, EVB_SendMode_KdTable);
    EVB.SendMode = EVB_SendMode_Normal;
  }
  else if(EVB.SendMode == EVB_SendMode_SpdTable)
  {
    EVB_SendTable(EVB.SpdTable, EVB_SendMode_SpdTable);
    EVB.SendMode =EVB_SendMode_Normal;
  }
  else if(EVB.SendMode == EVB_SendMode_VERSION)
  {
    EVB_SendUNum_1(EVB_VERSION);
  }
  else if(EVB.SendMode == EVB_SendMode_FnINIT)
  {
    
  }
  EVB_SendUNum_1(EVB_END);

}

void CEVB::TX_::startDMA_Transmit()
{
  //DMA_changeLength(DMA_CH2, EVB.TX.index);
  
  //主的计数次数（major iteration count）达到后，重新调整源地址
  //DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(-length);
  
  //调整源地址
  DMA0->TCD[DMA_CH2].SADDR = DMA_SADDR_SADDR(EVB.TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH2].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(EVB.TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH2].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(EVB.TX.index);
  
  DMA_EnableReq(DMA_CH2);
}


void EVB_ReceiveOneByte(char dataTmp)
{
  EVB.RXD[EVB.RXD_Iterator] = dataTmp;
  if(EVB.RXD[EVB.RXD_Iterator] == EVB_END)
  {
    if(EVB_RX_Check(0) == true)
    {
      EVB_Unpack(0);
    }
    else
    {
      EVB.RxError++;
      EVB.RXD_Iterator = 0;
    }
  }
  else
  {
    EVB.RXD_Iterator++;
  }
}

void EVB_DMA_Receive()
{
  int i0 = 0;
  int i = 0;
  int address0 = (DMA0->TCD[DMA_CH1].DADDR) - (uint32)&(EVB.RXD[0]);
  int moveLength = 0;
  static int address00;
  if(address0 - address00 > 0)
  {
    address00 = address0;
    EVB.LastPackageTime = t;
  }
  for(; i < address0 ;i++)
  {
    for(; EVB.RXD[i] != EVB_END && i < address0; i++)
    {
    }
    if( EVB.RXD[i] == EVB_END )
    {
      EVB.LastPackageTime = t;
      EVB.RXD_Iterator = i;
      if(EVB_RX_Check(i0) == true)
      {
        EVB_Unpack(i0);
      }
      i0 = i + 1;
    }
  }
  moveLength = (DMA0->TCD[DMA_CH1].DADDR - (uint32)&(EVB.RXD[0])) - i0;

  if(moveLength < 0) moveLength = 0;
  DMA_LoadDstAddr(DMA_CH1, (uint32)(&(EVB.RXD[0]) + moveLength) );
  for(i = 0; i < moveLength; i++)
  {
    EVB.RXD[i] = EVB.RXD[i0 + i];
  }
  for(i = DMA0->TCD[DMA_CH1].DADDR - (uint32)&(EVB.RXD[0]); i < address0; i++) //1、地址4字节 但是uart本身是单字节接收 每次接收+1     2、换成 memset(uartData + moveLength, 0, 150 * sizeof(char));
  {
    EVB.RXD[i] = 0;
  }
}


bool EVB_RX_Check(int start)
{
  if(EVB.RXD[0] > FUNCTION_NUM_MAX)
  {
    return false;
  }
  else
  {
    if(EVB.RXD_Iterator - start == EVB.RXD_PackageLength[EVB.RXD[0]])
    {
       return true;
    }
    else
    {
      return false;
    }
  }
}


void EVB_Unpack(int start)
{
    int row    = 0;
    int column = 0;
    int i1     = 0;
  //  int tmpNum = 0;
    
    if(EVB.RXD[start] == EVB_Servo)
    {
      EVB.FunctionMode       = EVB_Servo;

      EVB.AngleDirectControl = EVB_atoi(EVB.RXD + 1 + start, 4);
      *EVB.AngleMin          = EVB_atoi(EVB.RXD + 5 + start, 4);
      *EVB.AngleMid          = EVB_atoi(EVB.RXD + 9 + start, 4);
      *EVB.AngleMax          = EVB_atoi(EVB.RXD + 13 + start, 4);
    } 
    else if(EVB.RXD[start] == EVB_Spd)
    {
      EVB.FunctionMode = EVB_Spd;

      EVB.ConstSpd  = EVB_atoi(EVB.RXD + 1 + start, 4);
     *EVB.SpdKp     = EVB_atoi(EVB.RXD + 5 + start, 6);
     *EVB.SpdKi     = EVB_atoi(EVB.RXD + 11 + start, 5);
     *EVB.SpdKd     = EVB_atoi(EVB.RXD + 16 + start, 3);
    }
    else if(EVB.RXD[start] == EVB_KpTable)
    {
      EVB.FunctionMode  = EVB_KpTable;
      for(i1 = 0; i1 < 49; i1++)
      { 
        *(EVB.KpTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
      }
    }
    else if(EVB.RXD[start] == EVB_KdTable)
    {
      EVB.FunctionMode  = EVB_KdTable;
      for(i1 = 0; i1 < 49; i1++)
      { 
        *(EVB.KdTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
      }
    }
    else if(EVB.RXD[start] == EVB_SpdTable)
    {
      EVB.FunctionMode  = EVB_SpdTable;
      for(i1 = 0; i1 < 49; i1++)
      { 
        *(EVB.SpdTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
      }
    }
    else if(EVB.RXD[start] == EVB_OffsetBoundTable)
    {
      EVB.FunctionMode  = EVB_OffsetBoundTable;
      for(i1=1;i1<84;i1+=3)
      {
//        if(column<3) 
//          tmpNum = -((EVB.RXD[i1] - '0')*100 + (EVB.RXD[i1+1] - '0')*10 +(EVB.RXD[i1+2] - '0'));
//        else
//          tmpNum = ((EVB.RXD[i1] - '0')*100 + (EVB.RXD[i1+1] - '0')*10 +(EVB.RXD[i1+2] - '0'));
        
        if(row==0)
        {
        }
          //OffsetBound[column] = tmpNum;
        else if(row==1)
        {
        }
          //OffsetDBound[column] = tmpNum;
        
        column++;
        if(column==7)
        {
          column = 0;
          row++;
        }            
      }
    }
    else if(EVB.RXD[start] == EVB_Sensor)
    {
      EVB.FunctionMode  = EVB_Sensor;
    }
    else if(EVB.RXD[start] == EVB_Battle)
    {
      EVB.FunctionMode  = EVB_Battle;
      //t_delay = EVB.RXD[1]*1000;
      //t_test =  EVB.RXD[3]*1000; 
      //t_test = 35000;
      EVB.ResetTrigger();
    }
    else if(EVB.RXD[start] == EVB_RemoteControl)
    {
      EVB.FunctionMode  = EVB_RemoteControl;
      if(!SBus->valid)
      {
        EVB.Yaw       = EVB_atoi(EVB.RXD + 1 + start, 4); 
        EVB.Roll      = EVB_atoi(EVB.RXD + 5 + start, 4);
        EVB.Pitch     = EVB_atoi(EVB.RXD + 9 + start, 4);
        EVB.ConstSpd  = EVB_atoi(EVB.RXD + 13 + start, 4);
        EVB.LeftKnob  = EVB_atoi(EVB.RXD + 17 + start, 4); //用遥控器直接连接
      }
    }
    else if(EVB.RXD[start] == EVB_Command)
    {
      if(EVB.RXD[1 + start] == 0)
      {
        EVB.MotorSwitch = 0;
       // writeAllParameter();      //策略号要远程更新?
      }
      else if(EVB.RXD[1 + start] == 1)
        EVB.SendMode = EVB_SendMode_KpTable;
      else if(EVB.RXD[1 + start] == 2)
        EVB.SendMode = EVB_SendMode_KdTable;
      else if(EVB.RXD[1 + start] == 3)
        EVB.SendMode = EVB_SendMode_SpdTable;
    }
    else if(EVB.RXD[start] == EVB_FullBrake)
    {
    }
    EVB.MotorSwitch = EVB.RXD[EVB.RXD_Iterator - 1] - 48;
    //EVB.MotorSwitch = 1;
    //EVB.LastPackageTime = t;
    EVB.RXD_Iterator = 0;   
}

void CEVB::MotorMonitor()
{
  if(!EVB.MotorSwitchLast && EVB.MotorSwitch) 
  {
    EVB.ResetTrigger();
  }  
  EVB.MotorSwitchLast = EVB.MotorSwitch;
}

void CEVB::ResetTrigger()    //注意速度PID控制器的重置
{
  angleZ.referance = 0;
  *(EKF_AHRS->x.pData + 0) = EKF_AHRS->q0 = 1.0f;
  *(EKF_AHRS->x.pData + 1) = EKF_AHRS->q1 = 0.0f; 
  *(EKF_AHRS->x.pData + 2) = EKF_AHRS->q2 = 0.0f; 
  *(EKF_AHRS->x.pData + 3) = EKF_AHRS->q3 = 0.0f;
  yaw_init1 = 0;
  gyroX.I = 0;
  gyroY.I = 0;
  gyroZ.I = 0;
  angleX.I = angleY.I = angleZ.I = 0;
}

void EVB_SetRow_FuzzyTable(int Tmp)
{
  EVB.Row_FuzzyTable = Tmp;
}

void EVB_SetColumn_FuzzyTable(int Tmp)
{
  EVB.Column_FuzzyTable = Tmp;
}

int EVB_SetSpd(int tmp)
{
  if(EVB.MotorSwitch == 2)
  {
    return tmp;
  }
  else if(EVB.MotorSwitch == 1)
  {
    return EVB.ConstSpd;
  }
  else  //EVB.MotorSwitch == 0或3
  {
    return 0;
  }
}

int EVB_SpdPWM(int tmp)
{
  if(EVB.MotorSwitch == 2 || EVB.MotorSwitch == 1)
  {
    return tmp;
  }
  else  if(EVB.MotorSwitch == 0)
  {
    return 0;
  }
  else  //EVB.MotorSwitch == 3
  {
    return (int)(EVB.ConstSpd*8.333);//常数随便改
  }
}

int  EVB_AnglePWM(int tmp)
{
  if(EVB.MotorSwitch != 3)
  {
    return tmp;
  }
  else
  {
    return EVB.AngleDirectControl;
  }
}

bool EVB_FullBrakeStatus()
{
  if(EVB.FunctionMode == EVB_FullBrake)
    return true;
  else
    return false;
}

int EVB_atoi(char* data, int length)
{
  int result = 0, i;
  if(*data != '-')
  {
    for(i = 0; i < length; i++)
    {
      result += (*(data + i) - '0') * pow(10.0f, length - i - 1);
    }
  }
  else
  {
    for(i = 1; i < length; i++)
    {
      result -= (*(data + i) - '0') * pow(10.0f, length - i - 1);
    }
  }
  return result;
}

//int pow(int a, int b)
//{
//  int result = 1;
//  for(int i = 0; i < b; i++)
//  {
//    result *= a;
//  }
//  return result;
//}