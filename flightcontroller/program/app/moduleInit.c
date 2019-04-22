#include "moduleInit.h"
#include "isr.h"

  FTM_InitTypeDef     ftm_init_struct, ftm_init_struct1;
  PIT_InitTypeDef     pit_init_struct;
  
  UART_InitTypeDef    uart0_init_struct, uart1_init_struct, 
                      uart2_init_struct, uart3_init_struct, uart4_init_struct,
                      uart5_init_struct;
  
  DMA_InitTypeDef     DMA0_, DMA1_, DMA2_, DMA3_, DMA4_, 
                      DMA5_, DMA6_, DMA7_, DMA8_, DMA9_,
                      DMA10_;
  
  I2C_InitTypeDef     I2C0_;
  
  GPIO_InitTypeDef    ce_io_param;
  GPIO_InitTypeDef    GPIO_init_struct, GPIO_init_struct1, GPIO_init_struct2, GPIO_init_struct3;
  
  SPI_InitTypeDef     SPI1_init_struct;
  __EVB_InitTypeDef   EVBInitUserStruct;
  ADC_InitTypeDef     ADC1_init_struct;
  LPTMR_InitTypeDef   LPTMR_init_struct;
     
  int voidVar;
  Command *command;
  bool mpuinitflag=0;

void EVBInitUser()
{
  EVBInitUserStruct.AngleMax = &voidVar;
  EVBInitUserStruct.AngleMid = &voidVar;
  EVBInitUserStruct.AngleMin = &voidVar;
//  EVBInitUserStruct.SpdKd    = &gyroX.Kd;
//  EVBInitUserStruct.SpdKi    = &gyroX.Ki;
//  EVBInitUserStruct.SpdKp    = &gyroX.Kp;
  EVBInitUserStruct.uartSend = SCI_TXD; //函数指针 不要加括号 该函数只接受一个参数（char）
  EVBInitUserStruct.SupplyVoltage    = &powerVoltage_5;
  EVBInitUserStruct.TransmitInterval = 20.0f;//20
  EVBInitUserStruct.SystemPeriod     = 2.0;
  EVBInitUserStruct.KpTable     = &gyroX.KpStrategy[0][0];
  EVBInitUserStruct.KdTable     = &gyroX.KdStrategy[0][0];
  EVBInitUserStruct.SpdTable    = &gyroX.KiStrategy[0][0];
  //EVBInitUserStruct.Parameter[0]        = SendParameter1; //不用二维数组以节省空间 因为第二维维度固定，不同变量数将浪费
  //EVBInitUserStruct.ParameterNum[0]     = sizeof(SendParameter1) / sizeof(__EVB_Parameter);
  EVB_Init(EVBInitUserStruct);
}


void Init()
{
  static Command command_def;
  command = &command_def;
  command->position.x = 1;
  command->position.z.D_upperLimit = 100;
  command->position.z.D_lowerLimit = -100;
  flightMode_Init();
  Navigation_Init();
  
  PWM_init();    
  PIT_init(2);//2
  ADC1_Init();
  
#if SENSOR_NVIDIATX1 == SENSOR_USED
  NvidiaTX1_Init(); //一定要在DMA初始化之前
#else
  VideoStation_Init();
#endif

  SBus_Init();
#if SENSOR_ODOM == SENSOR_USED
  Odom_Init();
#endif  
  
#if SENSOR_UWB == SENSOR_USED
  UWB_Init();
#endif
  
#if SENSOR_GPS == SENSOR_USED
  GPS_Init();
#endif
  WaterGun_Init();

  LPTMR_init();
  SPI1_Init();

//  I2C_inti();
  SPI1_transferAttributeRegistersSwitch(1);
  //SPI_Master_WriteRead(SPI1 ,0x80 ,0 ,SPI_PCS_INACTIVE);
  for(int i =0; i < 1000; i++);
  ADXL355_Init();
  //ADXRS453StartUp();
  ADXRS453StartUp_XYZ();
  SPI1_transferAttributeRegistersSwitch(0);
  //SPI_Master_WriteRead(SPI1 ,0x80 ,0 ,SPI_PCS_INACTIVE);
  for(int i =0; i < 1000; i++);
 
#if SENSOR_LIDARLITE == SENSOR_USED
  LPTMR_DelayMs(100);
  LidarLiteInit()
#endif
//  PIX4Flow_Init();;
    LPTMR_DelayMs(100);
 
  Beep_Init();
    LPTMR_DelayMs(100);
  hmc5983_init();
  LPTMR_DelayMs(100);
  int ii=0;
  InitMPU6000();
  LPTMR_DelayMs(100);
  MPU6000_DAQ();
  while(mpuinitflag==0)
  {
     //if(MPU6000_Raw.accel_x == 0 && MPU6000_Raw.accel_y == 0 && MPU6000_Raw.accel_z == 0)
    if(MPU6000_Raw.BUF[0] == 0 && MPU6000_Raw.BUF[1] == 0 && MPU6000_Raw.BUF[2] == 0)
    {
      LPTMR_DelayMs(100);
      InitMPU6000();
      LPTMR_DelayMs(50);
      MPU6000_DAQ();
      mpuinitflag = 0;
      ii++;
    }
    else 
    {
      mpuinitflag = 1;
    }
    if(ii>100)
    {
      break;
    }
  }
 
  AHRS_init();

  EKF_AHRS_init();
  
  //EKF_AHRS.Init();
  MS5611_init();
//  MS5611_RESET();
//  LPTMR_DelayMs(200);
//  MS5611_PROM_READ();        //读取存储器(128-bit PROM)
  EVBInitUser();  
  //RemoteHub_Init();
  AirPressure_Init();

#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
  Ultrasound_Init();
#endif

#if SENSOR_ULTRASOUND_UART == SENSOR_USED
  UltrasoundUART_Init();
#endif
  GPIO_init();
  
#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
  //IC_init();
#endif
  
  UART_init();
  DMA_init(); //放在开启中断之前 以免溢出
  PIT_EnableIrq(pit_init_struct);    
}

void PWM_init(void)
{
  ftm_init_struct.FTM_Ftmx = FTM3;	
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	
  ftm_init_struct.FTM_PwmFreq = 400;
  FTM_Init(ftm_init_struct);
  
  FTM_PWM_Enable( FTM3, FTM_Ch0, 000, PTD0, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch1, 000, PTD1, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch2, 000, PTE7, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch3, 000, PTE8, ALIGN_LEFT);
  
  FTM_PWM_Enable( FTM3, FTM_Ch4, 000, PTC8, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch5, 000, PTC9, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch6, 000, PTC10, ALIGN_LEFT);
  FTM_PWM_Enable( FTM3, FTM_Ch7, 000, PTC11, ALIGN_LEFT);
  
  
//  ftm_init_struct1.FTM_Ftmx = FTM0;	
//  ftm_init_struct1.FTM_Mode = FTM_MODE_PWM;	
//  ftm_init_struct1.FTM_PwmFreq = 50;
//  FTM_Init(ftm_init_struct1);
//  
//  FTM_PWM_Enable( FTM0, FTM_Ch0, 000, PTC1, ALIGN_LEFT);
//  FTM_PWM_Enable( FTM0, FTM_Ch1, 000, PTC2, ALIGN_LEFT);
}

void PIT_init(int time)
{
    pit_init_struct.PIT_Pitx        =   PIT0;
    pit_init_struct.PIT_PeriodMs    =   time;   
    pit_init_struct.PIT_Isr         =   pit_isr;
    PIT_Init( pit_init_struct );
}

void UART_init(void)
{
    //超声波hub
    uart0_init_struct.UART_Uartx    =   UART0;
    uart0_init_struct.UART_BaudRate =   9600;//115200
    uart0_init_struct.UART_RxPin    =   PTA15; 
    uart0_init_struct.UART_TxPin    =   PTA14;  
    uart0_init_struct.UART_RxIntEnable = TRUE;
    uart0_init_struct.UART_TxIntEnable = TRUE;
    uart0_init_struct.UART_RxDMAEnable = TRUE;
    uart0_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart0_init_struct );
    
    //TX1 或 地面站视觉
    uart1_init_struct.UART_Uartx    =   UART1;
    uart1_init_struct.UART_BaudRate =   115200;
    uart1_init_struct.UART_RxPin    =   PTE1;  
    uart1_init_struct.UART_TxPin    =   PTC4;  
    uart1_init_struct.UART_RxIntEnable = TRUE;  
    uart1_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart1_init_struct.UART_RxDMAEnable = TRUE;
    uart1_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init(uart1_init_struct);

    //Remote Hub
//    uart2_init_struct.UART_Uartx    =   UART2;
//    uart2_init_struct.UART_BaudRate =   921600;
//    uart2_init_struct.UART_RxPin    =   PTD2;  
//    uart2_init_struct.UART_TxPin    =   PTD3;  
//    uart2_init_struct.UART_RxIntEnable = TRUE;  
//    uart2_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
//    uart2_init_struct.UART_RxDMAEnable = TRUE;
//    uart2_init_struct.UART_TxDMAEnable = TRUE;
//    UART_Init( uart2_init_struct );

    //odom
    uart2_init_struct.UART_Uartx    =   UART2;
    uart2_init_struct.UART_BaudRate =   921600;
    uart2_init_struct.UART_RxPin    =   PTD2;  
    uart2_init_struct.UART_TxPin    =   PTD3;  
    uart2_init_struct.UART_RxIntEnable = TRUE;  
    uart2_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart2_init_struct.UART_RxDMAEnable = TRUE;
    uart2_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart2_init_struct );
    
    //地面站
    uart3_init_struct.UART_Uartx    =   UART3;
    uart3_init_struct.UART_BaudRate =   921600;
    uart3_init_struct.UART_RxPin    =   PTC16;  
    uart3_init_struct.UART_TxPin    =   PTC17;  
    uart3_init_struct.UART_RxIntEnable = TRUE;  
    uart3_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart3_init_struct.UART_RxDMAEnable = TRUE;
    uart3_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart3_init_struct );
    
    
    
    
    //GPS 或 超宽带 INF_I-UWB
#if SENSOR_UWB == SENSOR_USED
    uart4_init_struct.UART_Uartx    =   UART4;
    uart4_init_struct.UART_BaudRate =   460800;
    uart4_init_struct.UART_RxPin    =   PTE25;  
    uart4_init_struct.UART_TxPin    =   PTE24;  
    uart4_init_struct.UART_RxIntEnable = TRUE;  
    uart4_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart4_init_struct.UART_RxDMAEnable = TRUE;
    uart4_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart4_init_struct );
#endif    
#if SENSOR_GPS == SENSOR_USED
    uart4_init_struct.UART_Uartx    =   UART4;
    uart4_init_struct.UART_BaudRate =   115200;
    uart4_init_struct.UART_RxPin    =   PTE25;  
    uart4_init_struct.UART_TxPin    =   PTE24;  
    uart4_init_struct.UART_RxIntEnable = TRUE;  
    uart4_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart4_init_struct.UART_RxDMAEnable = TRUE;
    uart4_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart4_init_struct );
#endif   
    
    //SBus
    uart5_init_struct.UART_Uartx    =   UART5;
    uart5_init_struct.UART_BaudRate =   100000;
    uart5_init_struct.UART_RxPin    =   PTD8;  
    uart5_init_struct.UART_TxPin    =   PTD9;  
    uart5_init_struct.UART_RxIntEnable = TRUE;  
  //  uart5_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
    uart5_init_struct.UART_RxDMAEnable = TRUE;
  //  uart5_init_struct.UART_TxDMAEnable = TRUE;
    UART_Init( uart5_init_struct );
    
}

void LPTMR_init()
{
  LPTMR_init_struct.LPTMR_Mode = LPTMR_MODE_TIMER;
  LPTMR_init_struct.LPTMR_PeriodMs = 1000;
  LPTMR_Init(LPTMR_init_struct);
}

//char dmaTranTest[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\r\n";

void DMA_init()
{ 
  //地面站 接收
  DMA1_.DMA_CHx = DMA_CH1;
  DMA1_.DMA_Req = UART3_REV_DMAREQ;
  DMA1_.DMA_MajorLoopCnt = 1;
  DMA1_.DMA_MinorByteCnt = 1;
  DMA1_.DMA_SourceAddr = (uint32)&(UART3->D); 
  DMA1_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA1_.DMA_DestAddr = (uint32)&(EVB.RXD[0]);
  DMA1_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA1_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA1_);
  DMA_EnableReq(DMA_CH1);
  
  //地面站 发送
  DMA2_.DMA_CHx = DMA_CH2;
  DMA2_.DMA_Req = UART3_TRAN_DMAREQ;
  DMA2_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA2_.DMA_MinorByteCnt = 1;
  DMA2_.DMA_SourceAddr = (uint32)&(EVB.TX.data); 
  DMA2_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA2_.DMA_SourceAddrOffset = 1;
  DMA2_.DMA_DestAddr = (uint32)&(UART3->D);
  DMA2_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA2_.DMA_DestAddrOffset = 0;
  DMA2_.DMA_LastSourceAddrAdj = 0;
  DMA2_.DMA_AutoDisableReq=true;
  DMA_Init(DMA2_);
  //DMA_EnableReq(DMA_CH2);
  
  
  //超声波hub 接收
  DMA0_.DMA_CHx = DMA_CH0;
  DMA0_.DMA_Req = UART0_REV_DMAREQ;
  DMA0_.DMA_MajorLoopCnt = 1;
  DMA0_.DMA_MinorByteCnt = 1;
  DMA0_.DMA_SourceAddr = (uint32)&(UART0->D); 
  DMA0_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA0_.DMA_DestAddr = (uint32)&(UltrasoundUART->uartData[0]);//NvidiaTX1->uartData[0]);
  DMA0_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA0_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA0_);
  DMA_EnableReq(DMA_CH0);
  
  //超声波hub 发送
  DMA3_.DMA_CHx = DMA_CH3;
  DMA3_.DMA_Req = UART0_TRAN_DMAREQ;
  DMA3_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA3_.DMA_MinorByteCnt = 1;
  DMA3_.DMA_SourceAddr = (uint32)&(UltrasoundUART->TX.data); 
  DMA3_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA3_.DMA_SourceAddrOffset = 1;
  DMA3_.DMA_DestAddr = (uint32)&(UART0->D);
  DMA3_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA3_.DMA_DestAddrOffset = 0;
  DMA3_.DMA_LastSourceAddrAdj = 0;
  DMA3_.DMA_AutoDisableReq=true;
  DMA_Init(DMA3_);
  
  
  //GPS 或 超宽带INF_I-UWB 接收
#if SENSOR_GPS == SENSOR_USED
  DMA4_.DMA_CHx = DMA_CH4;
  DMA4_.DMA_Req = UART4_REV_DMAREQ;
  DMA4_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA4_.DMA_MinorByteCnt = 1;
  DMA4_.DMA_SourceAddr = (uint32)&(UART4->D); 
  DMA4_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA4_.DMA_DestAddr = (uint32)&(GPS->GPS_BUF[0]);
  DMA4_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA4_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA4_);
  DMA_EnableReq(DMA_CH4);
#endif  
#if SENSOR_UWB == SENSOR_USED  
  DMA4_.DMA_CHx = DMA_CH4;
  DMA4_.DMA_Req = UART4_REV_DMAREQ;
  DMA4_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA4_.DMA_MinorByteCnt = 1;
  DMA4_.DMA_SourceAddr = (uint32)&(UART4->D); 
  DMA4_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA4_.DMA_DestAddr = (uint32)&(UWB->Data[0]);
  DMA4_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA4_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA4_);
  DMA_EnableReq(DMA_CH4);
#endif
  
  //GPS 或 超宽带INF_I-UWB 发送
#if SENSOR_UWB == SENSOR_USED
  DMA5_.DMA_CHx = DMA_CH5;
  DMA5_.DMA_Req = UART4_TRAN_DMAREQ;
  DMA5_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA5_.DMA_MinorByteCnt = 1;
  DMA5_.DMA_SourceAddr = (uint32)&(UWB->TX.data); 
  DMA5_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA5_.DMA_SourceAddrOffset = 1;
  DMA5_.DMA_DestAddr = (uint32)&(UART4->D);
  DMA5_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA5_.DMA_DestAddrOffset = 0;
  DMA5_.DMA_LastSourceAddrAdj = 0;
  DMA5_.DMA_AutoDisableReq=true;
  DMA_Init(DMA5_);
#endif  
#if SENSOR_GPS == SENSOR_USED
  DMA5_.DMA_CHx = DMA_CH5;
  DMA5_.DMA_Req = UART4_TRAN_DMAREQ;
  DMA5_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA5_.DMA_MinorByteCnt = 1;
  DMA5_.DMA_SourceAddr = (uint32)&(GPS->TX.data); 
  DMA5_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA5_.DMA_SourceAddrOffset = 1;
  DMA5_.DMA_DestAddr = (uint32)&(UART4->D);
  DMA5_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA5_.DMA_DestAddrOffset = 0;
  DMA5_.DMA_LastSourceAddrAdj = 0;
  DMA5_.DMA_AutoDisableReq=true;
  DMA_Init(DMA5_);
#endif 
  
  //TX1 或 地面站视觉 接收
  DMA6_.DMA_CHx = DMA_CH6;
  DMA6_.DMA_Req = UART1_REV_DMAREQ;
  DMA6_.DMA_MajorLoopCnt = 1;
  DMA6_.DMA_MinorByteCnt = 1;
  DMA6_.DMA_SourceAddr = (uint32)&(UART1->D); 
  DMA6_.DMA_SourceDataSize = DMA_SRC_8BIT;
#if SENSOR_NVIDIATX1 == SENSOR_USED
  DMA6_.DMA_DestAddr = (uint32)&(NvidiaTX1->uartData[0]);
#else
  DMA6_.DMA_DestAddr = (uint32)&(videoStation->uartData[0]);
#endif
  DMA6_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA6_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA6_);
  DMA_EnableReq(DMA_CH6);
  
  //TX1 或 地面站视觉 发送
  DMA7_.DMA_CHx = DMA_CH7;
  DMA7_.DMA_Req = UART1_TRAN_DMAREQ;
  DMA7_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA7_.DMA_MinorByteCnt = 1;
#if SENSOR_NVIDIATX1 == SENSOR_USED
  DMA7_.DMA_SourceAddr = (uint32)&(NvidiaTX1->TX.data); 
#else
  DMA7_.DMA_SourceAddr = (uint32)&(videoStation->TX.data); 
#endif
  DMA7_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA7_.DMA_SourceAddrOffset = 1;
  DMA7_.DMA_DestAddr = (uint32)&(UART1->D);
  DMA7_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA7_.DMA_DestAddrOffset = 0;
  DMA7_.DMA_LastSourceAddrAdj = 0;
  DMA7_.DMA_AutoDisableReq=true;
  DMA_Init(DMA7_);
  
  
//  //Remote Hub 接收
//  DMA8_.DMA_CHx = DMA_CH8;
//  DMA8_.DMA_Req = UART2_REV_DMAREQ;
//  DMA8_.DMA_MajorLoopCnt = 1;
//  DMA8_.DMA_MinorByteCnt = 1;
//  DMA8_.DMA_SourceAddr = (uint32)&(UART2->D); 
//  DMA8_.DMA_SourceDataSize = DMA_SRC_8BIT;
//  DMA8_.DMA_DestAddr = (uint32)&(RemoteHub->uartData);
//  DMA8_.DMA_DestDataSize = DMA_DST_8BIT;
//  DMA8_.DMA_DestAddrOffset = 1;
//  DMA_Init(DMA8_);
//  DMA_EnableReq(DMA_CH8);
  
    //odom接收
  DMA8_.DMA_CHx = DMA_CH8;
  DMA8_.DMA_Req = UART2_REV_DMAREQ;
  DMA8_.DMA_MajorLoopCnt = 1;
  DMA8_.DMA_MinorByteCnt = 1;
  DMA8_.DMA_SourceAddr = (uint32)&(UART2->D); 
  DMA8_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA8_.DMA_DestAddr = (uint32)&(Odom->uartData[0]);
  DMA8_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA8_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA8_);
  DMA_EnableReq(DMA_CH8);
  
  //odom发送
  DMA9_.DMA_CHx = DMA_CH9;
  DMA9_.DMA_Req = UART2_TRAN_DMAREQ;
  DMA9_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
  DMA9_.DMA_MinorByteCnt = 1;
  DMA9_.DMA_SourceAddr = (uint32)&(Odom->TX.data); 
  DMA9_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA9_.DMA_SourceAddrOffset = 1;
  DMA9_.DMA_DestAddr = (uint32)&(UART2->D);
  DMA9_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA9_.DMA_DestAddrOffset = 0;
  DMA9_.DMA_LastSourceAddrAdj = 0;
  DMA9_.DMA_AutoDisableReq=true;
  DMA_Init(DMA9_);
  DMA_EnableReq(DMA_CH9);
  
    //sbus 接收
  DMA10_.DMA_CHx = DMA_CH10;
  DMA10_.DMA_Req = UART5_REV_DMAREQ;
  DMA10_.DMA_MajorLoopCnt = 1;
  DMA10_.DMA_MinorByteCnt = 1;
  DMA10_.DMA_SourceAddr = (uint32)&(UART5->D); 
  DMA10_.DMA_SourceDataSize = DMA_SRC_8BIT;
  DMA10_.DMA_DestAddr = (uint32)&(SBus->uartData[0]);
  DMA10_.DMA_DestDataSize = DMA_DST_8BIT;
  DMA10_.DMA_DestAddrOffset = 1;
  DMA_Init(DMA10_);
  DMA_EnableReq(DMA_CH10);
}

void SPI1_Init()
{
  SPI1_init_struct.SPI_SPIx             = SPI1;
  SPI1_init_struct.SPI_ModeSelect       = SPI_MODE_MASTER;
  SPI1_init_struct.SPI_SckDivider       = SPI_SCK_DIV_64;//////注意 SPI_SCK_DIV_512
  
  SPI1_init_struct.SPI_Pcs0Pin          = PTE4;
  SPI1_init_struct.SPI_Pcs1Pin          = PTE0;
  SPI1_init_struct.SPI_Pcs2Pin          = PTE5;
  
  SPI1_init_struct.SPI_SckPin           = PTB11;
  SPI1_init_struct.SPI_MosiPin          = PTB16;
  SPI1_init_struct.SPI_MisoPin          = PTB17;
  
  SPI1_init_struct.SPI_TxCompleteIntIsr = NULL;
  SPI1_init_struct.SPI_QueueEndIntIsr   = NULL;
  SPI1_init_struct.SPI_TxFIFO_FillIntIsr        = NULL;
  SPI1_init_struct.SPI_TxFIFO_UnderflowIntIsr   = NULL;
  SPI1_init_struct.SPI_RxFIFO_DrainIntIsr       = NULL;
  SPI1_init_struct.SPI_RxFIFO_OverflowIntIsr    = NULL;
  
  ce_io_param.GPIO_PTx  = PTB;
  ce_io_param.GPIO_Pins = GPIO_Pin0;
  ce_io_param.GPIO_Dir  = DIR_OUTPUT;
  ce_io_param.GPIO_Output = OUTPUT_L;

  GPIO_Init(ce_io_param);
  SPI_Init(SPI1_init_struct);
}

void ADC1_Init()
{
  ADC1_init_struct.ADC_Adcx = ADC1;
  ADC1_init_struct.ADC_HwAvgSel = HW_16AVG; 
  ADC1_init_struct.ADC_CalEnable = TRUE;
  ADC_Init(ADC1_init_struct);
  ADC_Chn_Enable(ADC1, AD10); 
  ADC_Chn_Enable(ADC1, AD12); 
  ADC_Chn_Enable(ADC1, AD13); 
  ADC_Chn_Enable(ADC1, AD14); 
  ADC_Chn_Enable(ADC1, AD17); 
}

void GPIO_init()
{
  GPIO_init_struct.GPIO_PTx     = PTB;
  GPIO_init_struct.GPIO_Pins    = GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23;
  GPIO_init_struct.GPIO_Dir     = DIR_OUTPUT;
  GPIO_init_struct.GPIO_Output  = OUTPUT_H;
  GPIO_Init(GPIO_init_struct);
  
  GPIO_init_struct1.GPIO_PTx     = PTA;
  GPIO_init_struct1.GPIO_Pins    = GPIO_Pin16;
  GPIO_init_struct1.GPIO_Dir     = DIR_OUTPUT;
  GPIO_init_struct1.GPIO_Output  = OUTPUT_L;
  GPIO_Init(GPIO_init_struct1);

/*************************************/  
  GPIO_init_struct2.GPIO_PTx     = PTD;                 //D7输出高电平下降沿
  GPIO_init_struct2.GPIO_Pins    = GPIO_Pin7;
  GPIO_init_struct2.GPIO_Dir     = DIR_OUTPUT;
  GPIO_init_struct2.GPIO_Output  = OUTPUT_L;
  GPIO_Init(GPIO_init_struct2);
  
  
//  GPIO_init_struct3.GPIO_PTx = PTD;                       //D6接收超声波外部中断
//  GPIO_init_struct3.GPIO_Pins = GPIO_Pin6;       //引脚6
//  GPIO_init_struct3.GPIO_Dir = DIR_INPUT;        //输入
//  GPIO_init_struct3.GPIO_PinControl = INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
//  GPIO_init_struct3.GPIO_Isr = PortD_isr;        //中断函数
//  GPIO_Init(GPIO_init_struct3);
//  //使能中断
//  GPIO_EnableIrq(GPIO_init_struct3);
}

#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//void IC_init()
//{
//  ftm_init_struct1.FTM_Ftmx = FTM0;      //使能FTM0通道	
//  ftm_init_struct1.FTM_Mode = FTM_MODE_IC;       //使能输入捕获模式	
//  ftm_init_struct1.FTM_ClkDiv = FTM_CLK_DIV128;  //计数器频率为总线时钟的128分频
//  ftm_init_struct1.FTM_Isr = ic_isr;     
//  FTM_Init(ftm_init_struct1);
//    
//  FTM_IC_Enable(FTM0, FTM_Ch0, PTC1, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch1, PTC2, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch2, PTC3, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch3, PTC4, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch4, PTD4, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch5, PTD5, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch6, PTD6, CAPTURE_RIFA);
//  FTM_IC_Enable(FTM0, FTM_Ch7, PTD7, CAPTURE_RIFA);
//  FTM_EnableIrq(ftm_init_struct1);
//}
#endif

void I2C_inti()
{
  I2C0_.I2C_I2Cx = I2C0;
  I2C0_.I2C_ICR = 0x21; //0x21 0x23
  I2C0_.I2C_SclPin = PTB0;
  I2C0_.I2C_SdaPin = PTB1;
  I2C0_.I2C_OpenDrainEnable = false;
  I2C_Init(I2C0_);
}