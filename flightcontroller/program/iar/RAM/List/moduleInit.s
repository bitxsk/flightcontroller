///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:59
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\moduleInit.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW223A.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\moduleInit.c
//        -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1 -D
//        __FPU_USED=1 -lCN
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List
//        -lB
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List
//        -o
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        D:\iar\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\app\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\app\Sensor\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\CPU\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\common\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\HW\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\DEV\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\FatFs\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\FatFs\option\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\common\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\driver\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\descriptor\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\class\
//        -On --c++ -I D:\iar\arm\CMSIS\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\moduleInit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN ADC_Chn_Enable
        EXTERN ADC_Init
        EXTERN DMA_Init
        EXTERN EVB
        EXTERN FTM_Init
        EXTERN FTM_PWM_Enable
        EXTERN GPIO_Init
        EXTERN GPS
        EXTERN I2C_Init
        EXTERN LPTMR_DelayMs
        EXTERN LPTMR_Init
        EXTERN MPU6000_Raw
        EXTERN PIT_EnableIrq
        EXTERN PIT_Init
        EXTERN RemoteHub
        EXTERN SBus
        EXTERN SCI_TXD
        EXTERN SPI_Init
        EXTERN UART_Init
        EXTERN UltrasoundUART
        EXTERN _Z11InitMPU6000v
        EXTERN _Z11MPU6000_DAQv
        EXTERN _Z11MS5611_initv
        EXTERN _Z12hmc5983_initv
        EXTERN _Z13EKF_AHRS_initv
        EXTERN _Z13WaterGun_Initv
        EXTERN _Z14RemoteHub_Initv
        EXTERN _Z15Navigation_Initv
        EXTERN _Z15Ultrasound_Initv
        EXTERN _Z15flightMode_Initv
        EXTERN _Z17VideoStation_Initv
        EXTERN _Z19UltrasoundUART_Initv
        EXTERN _Z7pit_isrv
        EXTERN _Z8EVB_Init17__EVB_InitTypeDef
        EXTERN _Z8GPS_Initv
        EXTERN _Z9Beep_Initv
        EXTERN _Z9SBus_Initv
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN gyroX
        EXTERN powerVoltage_12
        EXTERN videoStation

        PUBLIC ADC1_init_struct
        PUBLIC DMA0_
        PUBLIC DMA10_
        PUBLIC DMA1_
        PUBLIC DMA2_
        PUBLIC DMA3_
        PUBLIC DMA4_
        PUBLIC DMA5_
        PUBLIC DMA6_
        PUBLIC DMA7_
        PUBLIC DMA8_
        PUBLIC DMA9_
        PUBLIC EVBInitUserStruct
        PUBLIC GPIO_init_struct
        PUBLIC GPIO_init_struct1
        PUBLIC GPIO_init_struct2
        PUBLIC GPIO_init_struct3
        PUBLIC I2C0_
        PUBLIC LPTMR_init_struct
        PUBLIC SPI1_init_struct
        PUBLIC _Z10LPTMR_initv
        PUBLIC _Z11EVBInitUserv
        PUBLIC _Z4Initv
        PUBLIC _Z8DMA_initv
        PUBLIC _Z8I2C_intiv
        PUBLIC _Z8PIT_initi
        PUBLIC _Z8PWM_initv
        PUBLIC _Z9ADC1_Initv
        PUBLIC _Z9GPIO_initv
        PUBLIC _Z9SPI1_Initv
        PUBLIC _Z9UART_initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC _ZN7CommandC1Ev
        PUBLIC ce_io_param
        PUBLIC command
        PUBLIC ftm_init_struct
        PUBLIC ftm_init_struct1
        PUBLIC pit_init_struct
        PUBLIC uart0_init_struct
        PUBLIC uart1_init_struct
        PUBLIC uart2_init_struct
        PUBLIC uart3_init_struct
        PUBLIC uart4_init_struct
        PUBLIC uart5_init_struct
        PUBLIC voidVar

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\moduleInit.c
//    1 #include "moduleInit.h"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN17CoordinateElementC1Ev
        THUMB
// __code __interwork __softfp CoordinateElement::CoordinateElement()
_ZN17CoordinateElementC1Ev:
        LDR.N    R1,??CoordinateElement_0  ;; 0x3f4ccccd
        STR      R1,[R0, #+16]
        LDR.N    R1,??CoordinateElement_0+0x4  ;; 0x461c4000
        STR      R1,[R0, #+20]
        LDR.N    R1,??CoordinateElement_0+0x8  ;; 0xc61c4000
        STR      R1,[R0, #+24]
        BX       LR               ;; return
        Nop      
        DATA
??CoordinateElement_0:
        DC32     0x3f4ccccd
        DC32     0x461c4000
        DC32     0xc61c4000

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10CoordinateC1Ev
        THUMB
// __code __interwork __softfp Coordinate::Coordinate()
_ZN10CoordinateC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+28
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+56
        BL       _ZN17CoordinateElementC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN7CommandC1Ev
        THUMB
// __code __interwork __softfp Command::Command()
_ZN7CommandC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//    2 #include "isr.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4   FTM_InitTypeDef     ftm_init_struct, ftm_init_struct1;
ftm_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ftm_init_struct1:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5   PIT_InitTypeDef     pit_init_struct;
pit_init_struct:
        DS8 20
//    6   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7   UART_InitTypeDef    uart0_init_struct, uart1_init_struct, 
uart0_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
uart1_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8                       uart2_init_struct, uart3_init_struct, uart4_init_struct,
uart2_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
uart3_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
uart4_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9                       uart5_init_struct;
uart5_init_struct:
        DS8 28
//   10   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11   DMA_InitTypeDef     DMA0_, DMA1_, DMA2_, DMA3_, DMA4_, 
DMA0_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA1_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA2_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA3_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA4_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12                       DMA5_, DMA6_, DMA7_, DMA8_, DMA9_,
DMA5_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA6_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA7_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA8_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
DMA9_:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13                       DMA10_;
DMA10_:
        DS8 44
//   14   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15   I2C_InitTypeDef     I2C0_;
I2C0_:
        DS8 16
//   16   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17   GPIO_InitTypeDef    ce_io_param;
ce_io_param:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18   GPIO_InitTypeDef    GPIO_init_struct, GPIO_init_struct1, GPIO_init_struct2, GPIO_init_struct3;
GPIO_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
GPIO_init_struct1:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
GPIO_init_struct2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
GPIO_init_struct3:
        DS8 20
//   19   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20   SPI_InitTypeDef     SPI1_init_struct;
SPI1_init_struct:
        DS8 52

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21   __EVB_InitTypeDef   EVBInitUserStruct;
EVBInitUserStruct:
        DS8 212

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22   ADC_InitTypeDef     ADC1_init_struct;
ADC1_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23   LPTMR_InitTypeDef   LPTMR_init_struct;
LPTMR_init_struct:
        DS8 12
//   24      

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25   int voidVar;
voidVar:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26   Command *command;
command:
        DS8 4
//   27   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void EVBInitUser()
//   29 {
_Z11EVBInitUserv:
        PUSH     {LR}
        SUB      SP,SP,#+196
//   30   EVBInitUserStruct.AngleMax = &voidVar;
        LDR.W    R0,??DataTable10
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+44]
//   31   EVBInitUserStruct.AngleMid = &voidVar;
        LDR.W    R0,??DataTable10
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+40]
//   32   EVBInitUserStruct.AngleMin = &voidVar;
        LDR.W    R0,??DataTable10
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+36]
//   33 //  EVBInitUserStruct.SpdKd    = &gyroX.Kd;
//   34 //  EVBInitUserStruct.SpdKi    = &gyroX.Ki;
//   35 //  EVBInitUserStruct.SpdKp    = &gyroX.Kp;
//   36   EVBInitUserStruct.uartSend = SCI_TXD; //函数指针 不要加括号 该函数只接受一个参数（char）
        LDR.W    R0,??DataTable10_2
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+8]
//   37   EVBInitUserStruct.SupplyVoltage    = &powerVoltage_12;
        LDR.W    R0,??DataTable10_3
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+48]
//   38   EVBInitUserStruct.TransmitInterval = 20.0f;//20
        LDR.W    R0,??DataTable10_1
        LDR.W    R1,??DataTable10_4  ;; 0x41a00000
        STR      R1,[R0, #+0]
//   39   EVBInitUserStruct.SystemPeriod     = 2.0;
        LDR.W    R0,??DataTable10_1
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+4]
//   40   EVBInitUserStruct.KpTable     = &gyroX.KpStrategy[0][0];
        LDR.W    R0,??DataTable10_5
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+24]
//   41   EVBInitUserStruct.KdTable     = &gyroX.KdStrategy[0][0];
        LDR.W    R0,??DataTable10_6
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+28]
//   42   EVBInitUserStruct.SpdTable    = &gyroX.KiStrategy[0][0];
        LDR.W    R0,??DataTable10_7
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+32]
//   43   //EVBInitUserStruct.Parameter[0]        = SendParameter1; //不用二维数组以节省空间 因为第二维维度固定，不同变量数将浪费
//   44   //EVBInitUserStruct.ParameterNum[0]     = sizeof(SendParameter1) / sizeof(__EVB_Parameter);
//   45   EVB_Init(EVBInitUserStruct);
        LDR.W    R1,??DataTable10_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+212
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       _Z8EVB_Init17__EVB_InitTypeDef
//   46 }
??EVBInitUser_0:
        ADD      SP,SP,#+196
        POP      {PC}             ;; return
//   47 
//   48 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void Init()
//   50 {
_Z4Initv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Init_0
//   51   static Command command_def;
        LDR.W    R0,??DataTable10_9
        BL       _ZN7CommandC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
//   52   command = &command_def;
??Init_0:
        LDR.W    R0,??DataTable10_9
        LDR.W    R1,??DataTable10_10
        STR      R0,[R1, #+0]
//   53   command->position.x = 1;
        VMOV.F32 S0,#1.0
        LDR.W    R0,??DataTable10_10
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementaSEf
//   54   command->position.z.D_upperLimit = 100;
        LDR.W    R0,??DataTable10_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_11  ;; 0x42c80000
        STR      R1,[R0, #+76]
//   55   command->position.z.D_lowerLimit = -100;
        LDR.W    R0,??DataTable10_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_12  ;; 0xc2c80000
        STR      R1,[R0, #+80]
//   56   flightMode_Init();
        BL       _Z15flightMode_Initv
//   57   Navigation_Init();
        BL       _Z15Navigation_Initv
//   58   PWM_init();    
        BL       _Z8PWM_initv
//   59   PIT_init(2);//2
        MOVS     R0,#+2
        BL       _Z8PIT_initi
//   60   ADC1_Init();
        BL       _Z9ADC1_Initv
//   61   
//   62 #if SENSOR_NVIDIATX1 == SENSOR_USED
//   63   NvidiaTX1_Init(); //一定要在DMA初始化之前
//   64 #else
//   65   VideoStation_Init();
        BL       _Z17VideoStation_Initv
//   66 #endif
//   67 
//   68   SBus_Init();
        BL       _Z9SBus_Initv
//   69   
//   70   
//   71 #if SENSOR_UWB == SENSOR_USED
//   72   UWB_Init();
//   73 #else
//   74   GPS_Init();
        BL       _Z8GPS_Initv
//   75 #endif
//   76   WaterGun_Init();
        BL       _Z13WaterGun_Initv
//   77 
//   78   LPTMR_init();
        BL       _Z10LPTMR_initv
//   79   SPI1_Init();
        BL       _Z9SPI1_Initv
//   80   I2C_inti();
        BL       _Z8I2C_intiv
//   81 #if SENSOR_LIDARLITE == SENSOR_USED
//   82   LPTMR_DelayMs(100);
//   83   LidarLiteInit()
//   84 #endif
//   85 //  PIX4Flow_Init();;
//   86   InitMPU6000();
        BL       _Z11InitMPU6000v
//   87   Beep_Init();
        BL       _Z9Beep_Initv
//   88   LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPTMR_DelayMs
//   89   MPU6000_DAQ();
        BL       _Z11MPU6000_DAQv
//   90   if(MPU6000_Raw.accel_x == 0 && MPU6000_Raw.accel_y == 0 && MPU6000_Raw.accel_z == 0)
        LDR.W    R0,??DataTable10_13
        VLDR     S0,[R0, #+48]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BNE.N    ??Init_1
        LDR.W    R0,??DataTable10_13
        VLDR     S0,[R0, #+52]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BNE.N    ??Init_1
        LDR.W    R0,??DataTable10_13
        VLDR     S0,[R0, #+56]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BNE.N    ??Init_1
//   91   {
//   92     LPTMR_DelayMs(200);
        MOVS     R0,#+200
        BL       LPTMR_DelayMs
//   93     InitMPU6000();
        BL       _Z11InitMPU6000v
//   94     LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPTMR_DelayMs
//   95   }
//   96   hmc5983_init();
??Init_1:
        BL       _Z12hmc5983_initv
//   97 
//   98   EKF_AHRS_init();
        BL       _Z13EKF_AHRS_initv
//   99   
//  100   //EKF_AHRS.Init();
//  101   MS5611_init();
        BL       _Z11MS5611_initv
//  102 //  MS5611_RESET();
//  103 //  LPTMR_DelayMs(200);
//  104 //  MS5611_PROM_READ();        //读取存储器(128-bit PROM)
//  105   EVBInitUser();  
        BL       _Z11EVBInitUserv
//  106   RemoteHub_Init();
        BL       _Z14RemoteHub_Initv
//  107   
//  108 
//  109 #if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//  110   Ultrasound_Init();
        BL       _Z15Ultrasound_Initv
//  111 #endif
//  112 
//  113 #if SENSOR_ULTRASOUND_UART == SENSOR_USED
//  114   UltrasoundUART_Init();
        BL       _Z19UltrasoundUART_Initv
//  115 #endif
//  116   GPIO_init();
        BL       _Z9GPIO_initv
//  117   
//  118 #if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//  119   //IC_init();
//  120 #endif
//  121   
//  122   UART_init();
        BL       _Z9UART_initv
//  123   DMA_init(); //放在开启中断之前 以免溢出
        BL       _Z8DMA_initv
//  124   PIT_EnableIrq(pit_init_struct);    
        LDR.W    R1,??DataTable10_14
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       PIT_EnableIrq
//  125 }
??Init_2:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char Init()::static guard for command_def
`Init()::static guard for command_def`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Init()::command_def`:
        DS8 84
//  126 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void PWM_init(void)
//  128 {
_Z8PWM_initv:
        PUSH     {R5-R7,LR}
//  129   ftm_init_struct.FTM_Ftmx = FTM3;	
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+0]
//  130   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_16
        STRB     R0,[R1, #+4]
//  131   ftm_init_struct.FTM_PwmFreq = 400;
        MOV      R0,#+400
        LDR.W    R1,??DataTable10_16
        STR      R0,[R1, #+8]
//  132   FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable10_16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       FTM_Init
//  133   
//  134   FTM_PWM_Enable( FTM3, FTM_Ch0, 000, PTD0, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+92
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  135   FTM_PWM_Enable( FTM3, FTM_Ch1, 000, PTD1, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+93
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  136   FTM_PWM_Enable( FTM3, FTM_Ch2, 000, PTE7, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+131
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  137   FTM_PWM_Enable( FTM3, FTM_Ch3, 000, PTE8, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+132
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  138   
//  139   FTM_PWM_Enable( FTM3, FTM_Ch4, 000, PTC8, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+68
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  140   FTM_PWM_Enable( FTM3, FTM_Ch5, 000, PTC9, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+69
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  141   FTM_PWM_Enable( FTM3, FTM_Ch6, 000, PTC10, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+70
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  142   FTM_PWM_Enable( FTM3, FTM_Ch7, 000, PTC11, ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+71
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable10_15  ;; 0x400b9000
        BL       FTM_PWM_Enable
//  143   
//  144   
//  145 //  ftm_init_struct1.FTM_Ftmx = FTM0;	
//  146 //  ftm_init_struct1.FTM_Mode = FTM_MODE_PWM;	
//  147 //  ftm_init_struct1.FTM_PwmFreq = 50;
//  148 //  FTM_Init(ftm_init_struct1);
//  149 //  
//  150 //  FTM_PWM_Enable( FTM0, FTM_Ch0, 000, PTC1, ALIGN_LEFT);
//  151 //  FTM_PWM_Enable( FTM0, FTM_Ch1, 000, PTC2, ALIGN_LEFT);
//  152 }
??PWM_init_0:
        POP      {R0-R2,PC}       ;; return
//  153 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void PIT_init(int time)
//  155 {
_Z8PIT_initi:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  156     pit_init_struct.PIT_Pitx        =   PIT0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_14
        STRB     R0,[R1, #+0]
//  157     pit_init_struct.PIT_PeriodMs    =   time;   
        LDR.W    R0,??DataTable10_14
        STR      R4,[R0, #+8]
//  158     pit_init_struct.PIT_Isr         =   pit_isr;
        LDR.W    R0,??DataTable10_17
        LDR.W    R1,??DataTable10_14
        STR      R0,[R1, #+16]
//  159     PIT_Init( pit_init_struct );
        LDR.W    R1,??DataTable10_14
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       PIT_Init
//  160 }
??PIT_init_0:
        POP      {R0,R1,R4,PC}    ;; return
//  161 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void UART_init(void)
//  163 {
_Z9UART_initv:
        PUSH     {R5-R7,LR}
//  164     //超声波hub
//  165     uart0_init_struct.UART_Uartx    =   UART0;
        LDR.W    R0,??DataTable10_18  ;; 0x4006a000
        LDR.W    R1,??DataTable10_19
        STR      R0,[R1, #+0]
//  166     uart0_init_struct.UART_BaudRate =   921600;//115200
        MOVS     R0,#+921600
        LDR.W    R1,??DataTable10_19
        STR      R0,[R1, #+4]
//  167     uart0_init_struct.UART_RxPin    =   PTA15; 
        MOVS     R0,#+15
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+9]
//  168     uart0_init_struct.UART_TxPin    =   PTA14;  
        MOVS     R0,#+14
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+8]
//  169     uart0_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+10]
//  170     uart0_init_struct.UART_TxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+11]
//  171     uart0_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+13]
//  172     uart0_init_struct.UART_TxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_19
        STRB     R0,[R1, #+12]
//  173     UART_Init( uart0_init_struct );
        LDR.W    R1,??DataTable10_19
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  174     
//  175     //TX1 或 地面站视觉
//  176     uart1_init_struct.UART_Uartx    =   UART1;
        LDR.W    R0,??DataTable10_20  ;; 0x4006b000
        LDR.W    R1,??DataTable10_21
        STR      R0,[R1, #+0]
//  177     uart1_init_struct.UART_BaudRate =   115200;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable10_21
        STR      R0,[R1, #+4]
//  178     uart1_init_struct.UART_RxPin    =   PTE1;  
        MOVS     R0,#+125
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+9]
//  179     uart1_init_struct.UART_TxPin    =   PTC4;  
        MOVS     R0,#+64
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+8]
//  180     uart1_init_struct.UART_RxIntEnable = TRUE;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+10]
//  181     uart1_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+11]
//  182     uart1_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+13]
//  183     uart1_init_struct.UART_TxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_21
        STRB     R0,[R1, #+12]
//  184     UART_Init(uart1_init_struct);
        LDR.W    R1,??DataTable10_21
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  185 
//  186     //Remote Hub
//  187     uart2_init_struct.UART_Uartx    =   UART2;
        LDR.W    R0,??DataTable10_22  ;; 0x4006c000
        LDR.W    R1,??DataTable10_23
        STR      R0,[R1, #+0]
//  188     uart2_init_struct.UART_BaudRate =   921600;
        MOVS     R0,#+921600
        LDR.W    R1,??DataTable10_23
        STR      R0,[R1, #+4]
//  189     uart2_init_struct.UART_RxPin    =   PTD2;  
        MOVS     R0,#+94
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+9]
//  190     uart2_init_struct.UART_TxPin    =   PTD3;  
        MOVS     R0,#+95
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+8]
//  191     uart2_init_struct.UART_RxIntEnable = TRUE;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+10]
//  192     uart2_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+11]
//  193     uart2_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+13]
//  194     uart2_init_struct.UART_TxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_23
        STRB     R0,[R1, #+12]
//  195     UART_Init( uart2_init_struct );
        LDR.W    R1,??DataTable10_23
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  196 //    
//  197     //地面站
//  198     uart3_init_struct.UART_Uartx    =   UART3;
        LDR.W    R0,??DataTable10_24  ;; 0x4006d000
        LDR.W    R1,??DataTable10_25
        STR      R0,[R1, #+0]
//  199     uart3_init_struct.UART_BaudRate =   921600;
        MOVS     R0,#+921600
        LDR.W    R1,??DataTable10_25
        STR      R0,[R1, #+4]
//  200     uart3_init_struct.UART_RxPin    =   PTC16;  
        MOVS     R0,#+76
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+9]
//  201     uart3_init_struct.UART_TxPin    =   PTC17;  
        MOVS     R0,#+77
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+8]
//  202     uart3_init_struct.UART_RxIntEnable = TRUE;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+10]
//  203     uart3_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+11]
//  204     uart3_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+13]
//  205     uart3_init_struct.UART_TxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_25
        STRB     R0,[R1, #+12]
//  206     UART_Init( uart3_init_struct );
        LDR.W    R1,??DataTable10_25
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  207     
//  208     //GPS 或 超宽带 INF_I-UWB
//  209     uart4_init_struct.UART_Uartx    =   UART4;
        LDR.W    R0,??DataTable10_26  ;; 0x400ea000
        LDR.W    R1,??DataTable10_27
        STR      R0,[R1, #+0]
//  210 #if SENSOR_UWB == SENSOR_USED
//  211     uart4_init_struct.UART_BaudRate =   460800;
//  212 #else
//  213     uart4_init_struct.UART_BaudRate =   115200;
        MOVS     R0,#+115200
        LDR.W    R1,??DataTable10_27
        STR      R0,[R1, #+4]
//  214 #endif
//  215     uart4_init_struct.UART_RxPin    =   PTE25;  
        MOVS     R0,#+149
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+9]
//  216     uart4_init_struct.UART_TxPin    =   PTE24;  
        MOVS     R0,#+148
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+8]
//  217     uart4_init_struct.UART_RxIntEnable = TRUE;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+10]
//  218     uart4_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+11]
//  219     uart4_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+13]
//  220     uart4_init_struct.UART_TxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_27
        STRB     R0,[R1, #+12]
//  221     UART_Init( uart4_init_struct );
        LDR.W    R1,??DataTable10_27
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  222     
//  223     //SBus
//  224     uart5_init_struct.UART_Uartx    =   UART5;
        LDR.W    R0,??DataTable10_28  ;; 0x400eb000
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+0]
//  225     uart5_init_struct.UART_BaudRate =   100000;
        LDR.W    R0,??DataTable10_30  ;; 0x186a0
        LDR.W    R1,??DataTable10_29
        STR      R0,[R1, #+4]
//  226     uart5_init_struct.UART_RxPin    =   PTD8;  
        MOVS     R0,#+100
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+9]
//  227     uart5_init_struct.UART_TxPin    =   PTD9;  
        MOVS     R0,#+101
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+8]
//  228     uart5_init_struct.UART_RxIntEnable = TRUE;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+10]
//  229     //uart5_init_struct.UART_TxIntEnable = TRUE;  //DMA信号
//  230     uart5_init_struct.UART_RxDMAEnable = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_29
        STRB     R0,[R1, #+13]
//  231     //uart5_init_struct.UART_TxDMAEnable = TRUE;
//  232     UART_Init( uart5_init_struct );
        LDR.W    R1,??DataTable10_29
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  233 }
??UART_init_0:
        POP      {R0-R2,PC}       ;; return
//  234 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void LPTMR_init()
//  236 {
_Z10LPTMR_initv:
        PUSH     {R7,LR}
//  237   LPTMR_init_struct.LPTMR_Mode = LPTMR_MODE_TIMER;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_31
        STRB     R0,[R1, #+0]
//  238   LPTMR_init_struct.LPTMR_PeriodMs = 1000;
        MOV      R0,#+1000
        LDR.W    R1,??DataTable10_31
        STRH     R0,[R1, #+2]
//  239   LPTMR_Init(LPTMR_init_struct);
        LDR.W    R0,??DataTable10_31
        LDM      R0,{R0-R2}
        BL       LPTMR_Init
//  240 }
??LPTMR_init_0:
        POP      {R0,PC}          ;; return
//  241 
//  242 //char dmaTranTest[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\r\n";
//  243 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void DMA_init()
//  245 { 
_Z8DMA_initv:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  246   //地面站 接收
//  247   DMA1_.DMA_CHx = DMA_CH1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+0]
//  248   DMA1_.DMA_Req = UART3_REV_DMAREQ;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+1]
//  249   DMA1_.DMA_MajorLoopCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_32
        STRH     R0,[R1, #+4]
//  250   DMA1_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_32
        STR      R0,[R1, #+8]
//  251   DMA1_.DMA_SourceAddr = (uint32)&(UART3->D); 
        LDR.W    R0,??DataTable10_33  ;; 0x4006d007
        LDR.W    R1,??DataTable10_32
        STR      R0,[R1, #+12]
//  252   DMA1_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+16]
//  253   DMA1_.DMA_DestAddr = (uint32)&(EVB.RXD[0]);
        LDR.W    R0,??DataTable10_34
        LDR.W    R1,??DataTable10_32
        STR      R0,[R1, #+24]
//  254   DMA1_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_32
        STRB     R0,[R1, #+28]
//  255   DMA1_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_32
        STRH     R0,[R1, #+30]
//  256   DMA_Init(DMA1_);
        LDR.W    R1,??DataTable10_32
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  257   DMA_EnableReq(DMA_CH1);
        LDR.W    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  258   
//  259   //地面站 发送
//  260   DMA2_.DMA_CHx = DMA_CH2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable10_36
        STRB     R0,[R1, #+0]
//  261   DMA2_.DMA_Req = UART3_TRAN_DMAREQ;
        MOVS     R0,#+9
        LDR.W    R1,??DataTable10_36
        STRB     R0,[R1, #+1]
//  262   DMA2_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_36
        STRH     R0,[R1, #+4]
//  263   DMA2_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_36
        STR      R0,[R1, #+8]
//  264   DMA2_.DMA_SourceAddr = (uint32)&(EVB.TX.data); 
        LDR.W    R0,??DataTable10_37
        LDR.W    R1,??DataTable10_36
        STR      R0,[R1, #+12]
//  265   DMA2_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_36
        STRB     R0,[R1, #+16]
//  266   DMA2_.DMA_SourceAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_36
        STRH     R0,[R1, #+18]
//  267   DMA2_.DMA_DestAddr = (uint32)&(UART3->D);
        LDR.W    R0,??DataTable10_33  ;; 0x4006d007
        LDR.W    R1,??DataTable10_36
        STR      R0,[R1, #+24]
//  268   DMA2_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_36
        STRB     R0,[R1, #+28]
//  269   DMA2_.DMA_DestAddrOffset = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_36
        STRH     R0,[R1, #+30]
//  270   DMA2_.DMA_LastSourceAddrAdj = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_36
        STR      R0,[R1, #+20]
//  271   DMA2_.DMA_AutoDisableReq=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_36
        STRB     R0,[R1, #+36]
//  272   DMA_Init(DMA2_);
        LDR.W    R1,??DataTable10_36
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  273   //DMA_EnableReq(DMA_CH2);
//  274   
//  275   
//  276   //超声波hub 接收
//  277   DMA0_.DMA_CHx = DMA_CH0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_38
        STRB     R0,[R1, #+0]
//  278   DMA0_.DMA_Req = UART0_REV_DMAREQ;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable10_38
        STRB     R0,[R1, #+1]
//  279   DMA0_.DMA_MajorLoopCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_38
        STRH     R0,[R1, #+4]
//  280   DMA0_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_38
        STR      R0,[R1, #+8]
//  281   DMA0_.DMA_SourceAddr = (uint32)&(UART0->D); 
        LDR.W    R0,??DataTable10_39  ;; 0x4006a007
        LDR.W    R1,??DataTable10_38
        STR      R0,[R1, #+12]
//  282   DMA0_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_38
        STRB     R0,[R1, #+16]
//  283   DMA0_.DMA_DestAddr = (uint32)&(UltrasoundUART->uartData[0]);//NvidiaTX1->uartData[0]);
        LDR.W    R0,??DataTable10_40
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable10_38
        STR      R0,[R1, #+24]
//  284   DMA0_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_38
        STRB     R0,[R1, #+28]
//  285   DMA0_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_38
        STRH     R0,[R1, #+30]
//  286   DMA_Init(DMA0_);
        LDR.W    R1,??DataTable10_38
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  287   DMA_EnableReq(DMA_CH0);
        LDR.W    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  288   
//  289   //超声波hub 发送
//  290   DMA3_.DMA_CHx = DMA_CH3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_41
        STRB     R0,[R1, #+0]
//  291   DMA3_.DMA_Req = UART0_TRAN_DMAREQ;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_41
        STRB     R0,[R1, #+1]
//  292   DMA3_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_41
        STRH     R0,[R1, #+4]
//  293   DMA3_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_41
        STR      R0,[R1, #+8]
//  294   DMA3_.DMA_SourceAddr = (uint32)&(UltrasoundUART->TX.data); 
        LDR.W    R0,??DataTable10_40
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3540
        LDR.W    R1,??DataTable10_41
        STR      R0,[R1, #+12]
//  295   DMA3_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_41
        STRB     R0,[R1, #+16]
//  296   DMA3_.DMA_SourceAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_41
        STRH     R0,[R1, #+18]
//  297   DMA3_.DMA_DestAddr = (uint32)&(UART0->D);
        LDR.W    R0,??DataTable10_39  ;; 0x4006a007
        LDR.W    R1,??DataTable10_41
        STR      R0,[R1, #+24]
//  298   DMA3_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_41
        STRB     R0,[R1, #+28]
//  299   DMA3_.DMA_DestAddrOffset = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_41
        STRH     R0,[R1, #+30]
//  300   DMA3_.DMA_LastSourceAddrAdj = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_41
        STR      R0,[R1, #+20]
//  301   DMA3_.DMA_AutoDisableReq=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_41
        STRB     R0,[R1, #+36]
//  302   DMA_Init(DMA3_);
        LDR.W    R1,??DataTable10_41
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  303   
//  304   
//  305   //GPS 或 超宽带INF_I-UWB 接收
//  306   DMA4_.DMA_CHx = DMA_CH4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable10_42
        STRB     R0,[R1, #+0]
//  307   DMA4_.DMA_Req = UART4_REV_DMAREQ;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable10_42
        STRB     R0,[R1, #+1]
//  308   DMA4_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_42
        STRH     R0,[R1, #+4]
//  309   DMA4_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_42
        STR      R0,[R1, #+8]
//  310   DMA4_.DMA_SourceAddr = (uint32)&(UART4->D); 
        LDR.W    R0,??DataTable10_43  ;; 0x400ea007
        LDR.W    R1,??DataTable10_42
        STR      R0,[R1, #+12]
//  311   DMA4_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_42
        STRB     R0,[R1, #+16]
//  312 #if SENSOR_UWB == SENSOR_USED
//  313   DMA4_.DMA_DestAddr = (uint32)&(UWB->Data[0]);
//  314 #else
//  315   DMA4_.DMA_DestAddr = (uint32)&(GPS->GPS_BUF[0]);
        LDR.W    R0,??DataTable10_44
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+33
        LDR.W    R1,??DataTable10_42
        STR      R0,[R1, #+24]
//  316 #endif
//  317   DMA4_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_42
        STRB     R0,[R1, #+28]
//  318   DMA4_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_42
        STRH     R0,[R1, #+30]
//  319   DMA_Init(DMA4_);
        LDR.W    R1,??DataTable10_42
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  320   DMA_EnableReq(DMA_CH4);
        LDR.W    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  321   
//  322   //GPS 或 超宽带INF_I-UWB 发送
//  323   DMA5_.DMA_CHx = DMA_CH5;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+0]
//  324   DMA5_.DMA_Req = UART4_TRAN_DMAREQ;
        MOVS     R0,#+11
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+1]
//  325   DMA5_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_45
        STRH     R0,[R1, #+4]
//  326   DMA5_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_45
        STR      R0,[R1, #+8]
//  327 #if SENSOR_UWB == SENSOR_USED
//  328   DMA5_.DMA_SourceAddr = (uint32)&(UWB->TX.data); 
//  329 #else
//  330   DMA5_.DMA_SourceAddr = (uint32)&(GPS->TX.data); 
        LDR.W    R0,??DataTable10_44
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1540
        LDR.W    R1,??DataTable10_45
        STR      R0,[R1, #+12]
//  331 #endif
//  332   DMA5_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+16]
//  333   DMA5_.DMA_SourceAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_45
        STRH     R0,[R1, #+18]
//  334   DMA5_.DMA_DestAddr = (uint32)&(UART4->D);
        LDR.W    R0,??DataTable10_43  ;; 0x400ea007
        LDR.W    R1,??DataTable10_45
        STR      R0,[R1, #+24]
//  335   DMA5_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+28]
//  336   DMA5_.DMA_DestAddrOffset = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_45
        STRH     R0,[R1, #+30]
//  337   DMA5_.DMA_LastSourceAddrAdj = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_45
        STR      R0,[R1, #+20]
//  338   DMA5_.DMA_AutoDisableReq=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_45
        STRB     R0,[R1, #+36]
//  339   DMA_Init(DMA5_);
        LDR.W    R1,??DataTable10_45
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  340   
//  341   //TX1 或 地面站视觉 接收
//  342   DMA6_.DMA_CHx = DMA_CH6;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+0]
//  343   DMA6_.DMA_Req = UART1_REV_DMAREQ;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+1]
//  344   DMA6_.DMA_MajorLoopCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_46
        STRH     R0,[R1, #+4]
//  345   DMA6_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_46
        STR      R0,[R1, #+8]
//  346   DMA6_.DMA_SourceAddr = (uint32)&(UART1->D); 
        LDR.W    R0,??DataTable10_47  ;; 0x4006b007
        LDR.W    R1,??DataTable10_46
        STR      R0,[R1, #+12]
//  347   DMA6_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+16]
//  348 #if SENSOR_NVIDIATX1 == SENSOR_USED
//  349   DMA6_.DMA_DestAddr = (uint32)&(NvidiaTX1->uartData[0]);
//  350 #else
//  351   DMA6_.DMA_DestAddr = (uint32)&(videoStation->uartData[0]);
        LDR.W    R0,??DataTable10_48
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable10_46
        STR      R0,[R1, #+24]
//  352 #endif
//  353   DMA6_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_46
        STRB     R0,[R1, #+28]
//  354   DMA6_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_46
        STRH     R0,[R1, #+30]
//  355   DMA_Init(DMA6_);
        LDR.W    R1,??DataTable10_46
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  356   DMA_EnableReq(DMA_CH6);
        LDR.W    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  357   
//  358   //TX1 或 地面站视觉 发送
//  359   DMA7_.DMA_CHx = DMA_CH7;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable10_49
        STRB     R0,[R1, #+0]
//  360   DMA7_.DMA_Req = UART1_TRAN_DMAREQ;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable10_49
        STRB     R0,[R1, #+1]
//  361   DMA7_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_49
        STRH     R0,[R1, #+4]
//  362   DMA7_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_49
        STR      R0,[R1, #+8]
//  363 #if SENSOR_NVIDIATX1 == SENSOR_USED
//  364   DMA7_.DMA_SourceAddr = (uint32)&(NvidiaTX1->TX.data); 
//  365 #else
//  366   DMA7_.DMA_SourceAddr = (uint32)&(videoStation->TX.data); 
        LDR.W    R0,??DataTable10_48
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+2548
        LDR.W    R1,??DataTable10_49
        STR      R0,[R1, #+12]
//  367 #endif
//  368   DMA7_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_49
        STRB     R0,[R1, #+16]
//  369   DMA7_.DMA_SourceAddrOffset = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_49
        STRH     R0,[R1, #+18]
//  370   DMA7_.DMA_DestAddr = (uint32)&(UART1->D);
        LDR.W    R0,??DataTable10_47  ;; 0x4006b007
        LDR.W    R1,??DataTable10_49
        STR      R0,[R1, #+24]
//  371   DMA7_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_49
        STRB     R0,[R1, #+28]
//  372   DMA7_.DMA_DestAddrOffset = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_49
        STRH     R0,[R1, #+30]
//  373   DMA7_.DMA_LastSourceAddrAdj = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_49
        STR      R0,[R1, #+20]
//  374   DMA7_.DMA_AutoDisableReq=true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_49
        STRB     R0,[R1, #+36]
//  375   DMA_Init(DMA7_);
        LDR.W    R1,??DataTable10_49
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  376   
//  377   
//  378   //Remote Hub 接收
//  379   DMA8_.DMA_CHx = DMA_CH8;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+0]
//  380   DMA8_.DMA_Req = UART2_REV_DMAREQ;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+1]
//  381   DMA8_.DMA_MajorLoopCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_50
        STRH     R0,[R1, #+4]
//  382   DMA8_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_50
        STR      R0,[R1, #+8]
//  383   DMA8_.DMA_SourceAddr = (uint32)&(UART2->D); 
        LDR.W    R0,??DataTable10_51  ;; 0x4006c007
        LDR.W    R1,??DataTable10_50
        STR      R0,[R1, #+12]
//  384   DMA8_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+16]
//  385   DMA8_.DMA_DestAddr = (uint32)&(RemoteHub->uartData);
        LDR.W    R0,??DataTable10_52
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable10_50
        STR      R0,[R1, #+24]
//  386   DMA8_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_50
        STRB     R0,[R1, #+28]
//  387   DMA8_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_50
        STRH     R0,[R1, #+30]
//  388   DMA_Init(DMA8_);
        LDR.N    R1,??DataTable10_50
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  389   DMA_EnableReq(DMA_CH8);
        LDR.N    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  390   
//  391   //Remote Hub 发送
//  392   DMA9_.DMA_CHx = DMA_CH9;
        MOVS     R0,#+9
        LDR.N    R1,??DataTable10_53
        STRB     R0,[R1, #+0]
//  393   DMA9_.DMA_Req = UART2_TRAN_DMAREQ;
        MOVS     R0,#+7
        LDR.N    R1,??DataTable10_53
        STRB     R0,[R1, #+1]
//  394   DMA9_.DMA_MajorLoopCnt = 1;//sizeof(dmaTranTest)      /*传送大小会在发送之前修改*/
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_53
        STRH     R0,[R1, #+4]
//  395   DMA9_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_53
        STR      R0,[R1, #+8]
//  396   DMA9_.DMA_SourceAddr = (uint32)&(RemoteHub->TX.data); 
        LDR.N    R0,??DataTable10_52
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2048
        LDR.N    R1,??DataTable10_53
        STR      R0,[R1, #+12]
//  397   DMA9_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_53
        STRB     R0,[R1, #+16]
//  398   DMA9_.DMA_SourceAddrOffset = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_53
        STRH     R0,[R1, #+18]
//  399   DMA9_.DMA_DestAddr = (uint32)&(UART2->D);
        LDR.N    R0,??DataTable10_51  ;; 0x4006c007
        LDR.N    R1,??DataTable10_53
        STR      R0,[R1, #+24]
//  400   DMA9_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_53
        STRB     R0,[R1, #+28]
//  401   DMA9_.DMA_DestAddrOffset = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_53
        STRH     R0,[R1, #+30]
//  402   DMA9_.DMA_LastSourceAddrAdj = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_53
        STR      R0,[R1, #+20]
//  403   DMA9_.DMA_AutoDisableReq=true;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_53
        STRB     R0,[R1, #+36]
//  404   DMA_Init(DMA9_);
        LDR.N    R1,??DataTable10_53
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  405   //DMA_EnableReq(DMA_CH9);
//  406   
//  407     //sbus 接收
//  408   DMA10_.DMA_CHx = DMA_CH10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable10_54
        STRB     R0,[R1, #+0]
//  409   DMA10_.DMA_Req = UART5_REV_DMAREQ;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable10_54
        STRB     R0,[R1, #+1]
//  410   DMA10_.DMA_MajorLoopCnt = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_54
        STRH     R0,[R1, #+4]
//  411   DMA10_.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_54
        STR      R0,[R1, #+8]
//  412   DMA10_.DMA_SourceAddr = (uint32)&(UART5->D); 
        LDR.N    R0,??DataTable10_55  ;; 0x400eb007
        LDR.N    R1,??DataTable10_54
        STR      R0,[R1, #+12]
//  413   DMA10_.DMA_SourceDataSize = DMA_SRC_8BIT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_54
        STRB     R0,[R1, #+16]
//  414   DMA10_.DMA_DestAddr = (uint32)&(SBus->uartData);
        LDR.N    R0,??DataTable10_56
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable10_54
        STR      R0,[R1, #+24]
//  415   DMA10_.DMA_DestDataSize = DMA_DST_8BIT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_54
        STRB     R0,[R1, #+28]
//  416   DMA10_.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_54
        STRH     R0,[R1, #+30]
//  417   DMA_Init(DMA10_);
        LDR.N    R1,??DataTable10_54
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       DMA_Init
//  418   DMA_EnableReq(DMA_CH10);
        LDR.N    R0,??DataTable10_35  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable10_35  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  419 }
??DMA_init_0:
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  420 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 void SPI1_Init()
//  422 {
_Z9SPI1_Initv:
        PUSH     {LR}
        SUB      SP,SP,#+36
//  423   SPI1_init_struct.SPI_SPIx             = SPI1;
        LDR.N    R0,??DataTable10_57  ;; 0x4002d000
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+0]
//  424   SPI1_init_struct.SPI_ModeSelect       = SPI_MODE_MASTER;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+4]
//  425   SPI1_init_struct.SPI_SckDivider       = SPI_SCK_DIV_16;//////注意 SPI_SCK_DIV_512
        MOVS     R0,#+4
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+5]
//  426   
//  427   SPI1_init_struct.SPI_Pcs0Pin          = PTE4;
        MOVS     R0,#+128
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+16]
//  428   SPI1_init_struct.SPI_Pcs1Pin          = PTE0;
        MOVS     R0,#+124
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+17]
//  429   SPI1_init_struct.SPI_Pcs2Pin          = PTE5;
        MOVS     R0,#+129
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+18]
//  430   
//  431   SPI1_init_struct.SPI_SckPin           = PTB11;
        MOVS     R0,#+43
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+22]
//  432   SPI1_init_struct.SPI_MosiPin          = PTB16;
        MOVS     R0,#+48
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+23]
//  433   SPI1_init_struct.SPI_MisoPin          = PTB17;
        MOVS     R0,#+49
        LDR.N    R1,??DataTable10_58
        STRB     R0,[R1, #+24]
//  434   
//  435   SPI1_init_struct.SPI_TxCompleteIntIsr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+28]
//  436   SPI1_init_struct.SPI_QueueEndIntIsr   = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+32]
//  437   SPI1_init_struct.SPI_TxFIFO_FillIntIsr        = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+44]
//  438   SPI1_init_struct.SPI_TxFIFO_UnderflowIntIsr   = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+36]
//  439   SPI1_init_struct.SPI_RxFIFO_DrainIntIsr       = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+48]
//  440   SPI1_init_struct.SPI_RxFIFO_OverflowIntIsr    = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_58
        STR      R0,[R1, #+40]
//  441   
//  442   ce_io_param.GPIO_PTx  = PTB;
        LDR.N    R0,??DataTable10_59  ;; 0x400ff040
        LDR.N    R1,??DataTable10_60
        STR      R0,[R1, #+0]
//  443   ce_io_param.GPIO_Pins = GPIO_Pin0;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_60
        STR      R0,[R1, #+4]
//  444   ce_io_param.GPIO_Dir  = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_60
        STRB     R0,[R1, #+12]
//  445   ce_io_param.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_60
        STRB     R0,[R1, #+13]
//  446 
//  447   GPIO_Init(ce_io_param);
        LDR.N    R1,??DataTable10_60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       GPIO_Init
//  448   SPI_Init(SPI1_init_struct);
        LDR.N    R1,??DataTable10_58
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       SPI_Init
//  449 }
??SPI1_Init_0:
        ADD      SP,SP,#+36
        POP      {PC}             ;; return
//  450 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  451 void ADC1_Init()
//  452 {
_Z9ADC1_Initv:
        PUSH     {R7,LR}
//  453   ADC1_init_struct.ADC_Adcx = ADC1;
        LDR.N    R0,??DataTable10_61  ;; 0x400bb000
        LDR.N    R1,??DataTable10_62
        STR      R0,[R1, #+0]
//  454   ADC1_init_struct.ADC_HwAvgSel = HW_16AVG; 
        MOVS     R0,#+6
        LDR.N    R1,??DataTable10_62
        STRB     R0,[R1, #+8]
//  455   ADC1_init_struct.ADC_CalEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_62
        STRB     R0,[R1, #+11]
//  456   ADC_Init(ADC1_init_struct);
        LDR.N    R1,??DataTable10_62
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       ADC_Init
//  457   ADC_Chn_Enable(ADC1, AD13); 
        MOVS     R1,#+13
        LDR.N    R0,??DataTable10_61  ;; 0x400bb000
        BL       ADC_Chn_Enable
//  458   ADC_Chn_Enable(ADC1, AD12); 
        MOVS     R1,#+12
        LDR.N    R0,??DataTable10_61  ;; 0x400bb000
        BL       ADC_Chn_Enable
//  459   ADC_Chn_Enable(ADC1, AD11); 
        MOVS     R1,#+11
        LDR.N    R0,??DataTable10_61  ;; 0x400bb000
        BL       ADC_Chn_Enable
//  460 }
??ADC1_Init_0:
        POP      {R0,PC}          ;; return
//  461 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  462 void GPIO_init()
//  463 {
_Z9GPIO_initv:
        PUSH     {R7,LR}
//  464   GPIO_init_struct.GPIO_PTx     = PTB;
        LDR.N    R0,??DataTable10_59  ;; 0x400ff040
        LDR.N    R1,??DataTable10_63
        STR      R0,[R1, #+0]
//  465   GPIO_init_struct.GPIO_Pins    = GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23;
        MOVS     R0,#+14680064
        LDR.N    R1,??DataTable10_63
        STR      R0,[R1, #+4]
//  466   GPIO_init_struct.GPIO_Dir     = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_63
        STRB     R0,[R1, #+12]
//  467   GPIO_init_struct.GPIO_Output  = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_63
        STRB     R0,[R1, #+13]
//  468   GPIO_Init(GPIO_init_struct);
        LDR.N    R1,??DataTable10_63
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       GPIO_Init
//  469   
//  470   GPIO_init_struct1.GPIO_PTx     = PTA;
        LDR.N    R0,??DataTable10_64  ;; 0x400ff000
        LDR.N    R1,??DataTable10_65
        STR      R0,[R1, #+0]
//  471   GPIO_init_struct1.GPIO_Pins    = GPIO_Pin16;
        MOVS     R0,#+65536
        LDR.N    R1,??DataTable10_65
        STR      R0,[R1, #+4]
//  472   GPIO_init_struct1.GPIO_Dir     = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_65
        STRB     R0,[R1, #+12]
//  473   GPIO_init_struct1.GPIO_Output  = OUTPUT_L;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_65
        STRB     R0,[R1, #+13]
//  474   GPIO_Init(GPIO_init_struct1);
        LDR.N    R1,??DataTable10_65
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       GPIO_Init
//  475 
//  476 /*************************************/  
//  477   GPIO_init_struct2.GPIO_PTx     = PTD;                 //D7输出高电平下降沿
        LDR.N    R0,??DataTable10_66  ;; 0x400ff0c0
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+0]
//  478   GPIO_init_struct2.GPIO_Pins    = GPIO_Pin7;
        MOVS     R0,#+128
        LDR.N    R1,??DataTable10_67
        STR      R0,[R1, #+4]
//  479   GPIO_init_struct2.GPIO_Dir     = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable10_67
        STRB     R0,[R1, #+12]
//  480   GPIO_init_struct2.GPIO_Output  = OUTPUT_L;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_67
        STRB     R0,[R1, #+13]
//  481   GPIO_Init(GPIO_init_struct2);
        LDR.N    R1,??DataTable10_67
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       GPIO_Init
//  482   
//  483   
//  484 //  GPIO_init_struct3.GPIO_PTx = PTD;                       //D6接收超声波外部中断
//  485 //  GPIO_init_struct3.GPIO_Pins = GPIO_Pin6;       //引脚6
//  486 //  GPIO_init_struct3.GPIO_Dir = DIR_INPUT;        //输入
//  487 //  GPIO_init_struct3.GPIO_PinControl = INPUT_PULL_UP|IRQC_FA;     //内部上拉|下降沿中断
//  488 //  GPIO_init_struct3.GPIO_Isr = PortD_isr;        //中断函数
//  489 //  GPIO_Init(GPIO_init_struct3);
//  490 //  //使能中断
//  491 //  GPIO_EnableIrq(GPIO_init_struct3);
//  492 }
??GPIO_init_0:
        POP      {R0,PC}          ;; return
//  493 
//  494 #if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//  495 //void IC_init()
//  496 //{
//  497 //  ftm_init_struct1.FTM_Ftmx = FTM0;      //使能FTM0通道	
//  498 //  ftm_init_struct1.FTM_Mode = FTM_MODE_IC;       //使能输入捕获模式	
//  499 //  ftm_init_struct1.FTM_ClkDiv = FTM_CLK_DIV128;  //计数器频率为总线时钟的128分频
//  500 //  ftm_init_struct1.FTM_Isr = ic_isr;     
//  501 //  FTM_Init(ftm_init_struct1);
//  502 //    
//  503 //  FTM_IC_Enable(FTM0, FTM_Ch0, PTC1, CAPTURE_RIFA);
//  504 //  FTM_IC_Enable(FTM0, FTM_Ch1, PTC2, CAPTURE_RIFA);
//  505 //  FTM_IC_Enable(FTM0, FTM_Ch2, PTC3, CAPTURE_RIFA);
//  506 //  FTM_IC_Enable(FTM0, FTM_Ch3, PTC4, CAPTURE_RIFA);
//  507 //  FTM_IC_Enable(FTM0, FTM_Ch4, PTD4, CAPTURE_RIFA);
//  508 //  FTM_IC_Enable(FTM0, FTM_Ch5, PTD5, CAPTURE_RIFA);
//  509 //  FTM_IC_Enable(FTM0, FTM_Ch6, PTD6, CAPTURE_RIFA);
//  510 //  FTM_IC_Enable(FTM0, FTM_Ch7, PTD7, CAPTURE_RIFA);
//  511 //  FTM_EnableIrq(ftm_init_struct1);
//  512 //}
//  513 #endif
//  514 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  515 void I2C_inti()
//  516 {
_Z8I2C_intiv:
        PUSH     {R7,LR}
//  517   I2C0_.I2C_I2Cx = I2C0;
        LDR.N    R0,??DataTable10_68  ;; 0x40066000
        LDR.N    R1,??DataTable10_69
        STR      R0,[R1, #+0]
//  518   I2C0_.I2C_ICR = 0x21; //0x21 0x23
        MOVS     R0,#+33
        LDR.N    R1,??DataTable10_69
        STRB     R0,[R1, #+4]
//  519   I2C0_.I2C_SclPin = PTB0;
        MOVS     R0,#+32
        LDR.N    R1,??DataTable10_69
        STRB     R0,[R1, #+6]
//  520   I2C0_.I2C_SdaPin = PTB1;
        MOVS     R0,#+33
        LDR.N    R1,??DataTable10_69
        STRB     R0,[R1, #+7]
//  521   I2C0_.I2C_OpenDrainEnable = false;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_69
        STRB     R0,[R1, #+8]
//  522   I2C_Init(I2C0_);
        LDR.N    R0,??DataTable10_69
        LDM      R0,{R0-R3}
        BL       I2C_Init
//  523 }
??I2C_inti_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     voidVar

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     EVBInitUserStruct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     SCI_TXD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     powerVoltage_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     gyroX+0xEC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     gyroX+0x1B0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     gyroX+0x14E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     `Init()::static guard for command_def`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     `Init()::command_def`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     command

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     0xc2c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     MPU6000_Raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     _Z7pit_isrv

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     uart1_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     uart2_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     uart3_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     uart4_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DC32     uart5_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DC32     LPTMR_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DC32     DMA1_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DC32     0x4006d007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DC32     EVB+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DC32     DMA2_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DC32     EVB+0x658

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_38:
        DC32     DMA0_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_39:
        DC32     0x4006a007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_40:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_41:
        DC32     DMA3_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_42:
        DC32     DMA4_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_43:
        DC32     0x400ea007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_44:
        DC32     GPS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_45:
        DC32     DMA5_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_46:
        DC32     DMA6_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_47:
        DC32     0x4006b007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_48:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_49:
        DC32     DMA7_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_50:
        DC32     DMA8_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_51:
        DC32     0x4006c007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_52:
        DC32     RemoteHub

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_53:
        DC32     DMA9_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_54:
        DC32     DMA10_

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_55:
        DC32     0x400eb007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_56:
        DC32     SBus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_57:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_58:
        DC32     SPI1_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_59:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_60:
        DC32     ce_io_param

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_61:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_62:
        DC32     ADC1_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_63:
        DC32     GPIO_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_64:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_65:
        DC32     GPIO_init_struct1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_66:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_67:
        DC32     GPIO_init_struct2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_68:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_69:
        DC32     I2C0_

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11EVBInitUserv
        SECTION_LINK _Z11EVBInitUserv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11EVBInitUserv))
        DC32 0x80308400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z4Initv
        SECTION_LINK _Z4Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z4Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8PWM_initv
        SECTION_LINK _Z8PWM_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8PWM_initv))
        DC32 0x80028400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8PIT_initi
        SECTION_LINK _Z8PIT_initi
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8PIT_initi))
        DC32 0x8001a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9UART_initv
        SECTION_LINK _Z9UART_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9UART_initv))
        DC32 0x80028400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z10LPTMR_initv
        SECTION_LINK _Z10LPTMR_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z10LPTMR_initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8DMA_initv
        SECTION_LINK _Z8DMA_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8DMA_initv))
        DC32 0x80068400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9SPI1_Initv
        SECTION_LINK _Z9SPI1_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9SPI1_Initv))
        DC32 0x80088400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9ADC1_Initv
        SECTION_LINK _Z9ADC1_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9ADC1_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9GPIO_initv
        SECTION_LINK _Z9GPIO_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9GPIO_initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8I2C_intiv
        SECTION_LINK _Z8I2C_intiv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8I2C_intiv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    88 bytes in section .ARM.exidx
// 1 233 bytes in section .bss
// 3 218 bytes in section .text
// 
// 3 146 bytes of CODE  memory (+ 72 bytes shared)
//    88 bytes of CONST memory
// 1 233 bytes of DATA  memory
//
//Errors: none
//Warnings: none
