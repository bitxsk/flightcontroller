///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:58
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\isr.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1F1B.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\isr.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\isr.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN ADC_Get
        EXTERN AHRS
        EXTERN AHRS0
        EXTERN Compass
        EXTERN EKF_AHRS
        EXTERN EKF_AHRS1
        EXTERN EVB
        EXTERN GPS
        EXTERN MPU6000
        EXTERN MPU6000_Raw
        EXTERN Navigation
        EXTERN RemoteHub
        EXTERN UltrasoundUART
        EXTERN _Z11MPU6000_DAQv
        EXTERN _Z11hmc5983_DAQv
        EXTERN _Z12control_gyrov
        EXTERN _Z13control_anglev
        EXTERN _Z15EVB_DMA_Receivev
        EXTERN _Z15EVB_TimerUpdatev
        EXTERN _Z16control_positionv
        EXTERN _Z16hmc5983_StartMeav
        EXTERN _Z7fan_iniv
        EXTERN _Z9rotor_outv
        EXTERN _ZN10CRemoteHub10updateUartEv
        EXTERN _ZN11CFlightMode6updateEv
        EXTERN _ZN11CNavigation6updateEv
        EXTERN _ZN12MPU6000_Type5errorEv
        EXTERN _ZN12MPU6000_Type8isNormalEv
        EXTERN _ZN12MPU6000_Type9isInRangeEfff
        EXTERN _ZN12MPU6000_TypeaSERS_
        EXTERN _ZN12MPU6000_TypeeqERS_
        EXTERN _ZN12MPU6000_TypemiERS_
        EXTERN _ZN13CVideoStation10updateUartEv
        EXTERN _ZN13CVideoStation11sendPackageEv
        EXTERN _ZN15CUltrasoundUART6updateEv
        EXTERN _ZN4CGPS10updateUartEv
        EXTERN _ZN9CEKF_AHRS3EKFEv
        EXTERN _ZN9CWaterGun6updateEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN arm_cos_f32
        EXTERN atan2f
        EXTERN flightMode
        EXTERN pitch1
        EXTERN powerVoltage_12
        EXTERN powerVoltage_3v3
        EXTERN powerVoltage_5
        EXTERN roll1
        EXTERN t
        EXTERN videoStation
        EXTERN waterGun
        EXTERN yaw2
        EXTERN yaw3
        EXTERN yaw4

        PUBLIC GPIO_Output_b
        PUBLIC _Z7pit_isrv
        PUBLIC _ZN12MPU6000_TypeC1Ev
        PUBLIC error_6000
        PUBLIC error_evb
        PUBLIC yaw_init
        PUBLIC yaw_init1

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\isr.c
//    1 #include "isr.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP GPIO_Output_b
        THUMB
// __interwork __softfp void GPIO_Output_b(GPIO_Type *, uint32, uint8)
GPIO_Output_b:
        PUSH     {R4}
        LDR      R4,[R0, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        BICS     R4,R4,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R3,R2,R1
        ORRS     R4,R3,R4
        STR      R4,[R0, #+0]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// static __interwork __vfp arm_status arm_sqrt_f32(float, float *)
_ZN26_INTERNAL_5_isr_c_48df0d0212arm_sqrt_f32EfPf:
        MOVS     R1,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BLT.N    ??arm_sqrt_f32_0
        VSQRT.F32 S1,S0
        VSTR     S1,[R1, #0]
        MOVS     R0,#+0
        B.N      ??arm_sqrt_f32_1
??arm_sqrt_f32_0:
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
??arm_sqrt_f32_1:
        BX       LR               ;; return
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 int error_6000, error_evb;
error_6000:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
error_evb:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 float yaw_init,yaw_init1;
yaw_init:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
yaw_init1:
        DS8 4
//    6 
//    7 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    8 void pit_isr(void)
//    9 {
_Z7pit_isrv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8-D9}
        SUB      SP,SP,#+216
//   10   GPIO_Output_b(PTB,23,0);
        MOVS     R2,#+0
        MOVS     R1,#+23
        LDR.W    R0,??DataTable1  ;; 0x400ff040
        BL       GPIO_Output_b
//   11   t+=2;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   12   
//   13   EVB_TimerUpdate();
        BL       _Z15EVB_TimerUpdatev
//   14   RemoteHub->updateUart();
        LDR.W    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        BL       _ZN10CRemoteHub10updateUartEv
//   15   int n;
//   16   n=DMA0->TCD[DMA_CH1].DADDR-(uint32)&(EVB.RXD[0]);
        LDR.W    R0,??DataTable1_3  ;; 0x40009030
        LDR      R0,[R0, #+0]
        LDR.W    R6,??DataTable1_4
        SUBS     R6,R0,R6
//   17   if(n>sizeof(EVB.RXD)-100||n<0)
        MOVW     R0,#+1401
        CMP      R6,R0
        BCS.N    ??pit_isr_0
        CMP      R6,#+0
        BPL.N    ??pit_isr_1
//   18   {
//   19     error_evb++;
??pit_isr_0:
        LDR.W    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//   20     DMA0->TCD[DMA_CH1].DADDR=(uint32)&(EVB.RXD[0]);
        LDR.W    R0,??DataTable1_4
        LDR.W    R1,??DataTable1_3  ;; 0x40009030
        STR      R0,[R1, #+0]
//   21   }
//   22   if(t > 2)
??pit_isr_1:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??pit_isr_2
//   23   {
//   24     EVB_DMA_Receive();
        BL       _Z15EVB_DMA_Receivev
//   25   }
//   26   if(EVB.Pitch>=0)
??pit_isr_2:
        LDR.W    R0,??DataTable1_6
        LDR      R0,[R0, #+1784]
        CMP      R0,#+0
        BMI.N    ??pit_isr_3
//   27   {
//   28     GPIO_Output_b(PTB,21,0);
        MOVS     R2,#+0
        MOVS     R1,#+21
        LDR.W    R0,??DataTable1  ;; 0x400ff040
        BL       GPIO_Output_b
        B.N      ??pit_isr_4
//   29   }
//   30   else
//   31   {
//   32     GPIO_Output_b(PTB,21,1);
??pit_isr_3:
        MOVS     R2,#+1
        MOVS     R1,#+21
        LDR.W    R0,??DataTable1  ;; 0x400ff040
        BL       GPIO_Output_b
//   33   }
//   34   
//   35   if(t - EVB.LastPackageTime > 200 && EVB.MotorSwitch || !MPU6000.valid)
??pit_isr_4:
        LDR.W    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable1_6
        LDR      R0,[R0, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+201
        BLT.N    ??pit_isr_5
        LDR.W    R0,??DataTable1_6
        LDR      R0,[R0, #+1792]
        CMP      R0,#+0
        BNE.N    ??pit_isr_6
??pit_isr_5:
        LDR.W    R0,??DataTable1_7
        LDRB     R0,[R0, #+14]
        CMP      R0,#+0
        BNE.N    ??pit_isr_7
//   36   {
//   37     GPIO_Output_b(PTA,16,1); //BUZZ
??pit_isr_6:
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.W    R0,??DataTable1_8  ;; 0x400ff000
        BL       GPIO_Output_b
        B.N      ??pit_isr_8
//   38   }
//   39   else
//   40   {
//   41     GPIO_Output_b(PTA,16,0);
??pit_isr_7:
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.W    R0,??DataTable1_8  ;; 0x400ff000
        BL       GPIO_Output_b
//   42   }
//   43   //  NvidiaTX1->updateUart();
//   44   //  NvidiaTX1->PIT_isr();
//   45   
//   46 #if DEVICE_VIDEOSTATION == SENSOR_USED
//   47   videoStation->updateUart();
??pit_isr_8:
        LDR.W    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        BL       _ZN13CVideoStation10updateUartEv
//   48 #endif
//   49   
//   50 #if SENSOR_GPS == SENSOR_USED
//   51   GPS->updateUart();
        LDR.W    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        BL       _ZN4CGPS10updateUartEv
//   52 #else
//   53   UWB->update();
//   54 #endif
//   55   
//   56   if(t % 6 == 2)
        MOVS     R0,#+6
        LDR.W    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+2
        BEQ.N    ??pit_isr_9
//   57   {
//   58     
//   59   }
//   60   else if(t % 6 == 0)
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVS     R0,#+6
//   61   {
//   62     //  LidarLite->update(); //激光测距不可更新太快 可开启连续测量模式？
//   63     //  LidarLite->measure();
//   64   }
//   65   
//   66 #if SENSOR_ULTRASOUND_UART == SENSOR_USED
//   67   UltrasoundUART->update();
??pit_isr_9:
        LDR.W    R0,??DataTable1_11
        LDR      R0,[R0, #+0]
        BL       _ZN15CUltrasoundUART6updateEv
//   68 #endif
//   69   
//   70   powerVoltage_12  = ADC_Get(ADC1,AD13);
        MOVS     R1,#+13
        LDR.W    R0,??DataTable1_12  ;; 0x400bb000
        BL       ADC_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable1_13
        STR      R0,[R1, #+0]
//   71   powerVoltage_5   = ADC_Get(ADC1,AD12);
        MOVS     R1,#+12
        LDR.W    R0,??DataTable1_12  ;; 0x400bb000
        BL       ADC_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable1_14
        STR      R0,[R1, #+0]
//   72   powerVoltage_3v3 = ADC_Get(ADC1,AD11);
        MOVS     R1,#+11
        LDR.W    R0,??DataTable1_12  ;; 0x400bb000
        BL       ADC_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable1_15
        STR      R0,[R1, #+0]
//   73   
//   74   MPU6000_DAQ();
        BL       _Z11MPU6000_DAQv
//   75   hmc5983_StartMea(); 
        BL       _Z16hmc5983_StartMeav
//   76   hmc5983_DAQ();
        BL       _Z11hmc5983_DAQv
//   77   //pix4Flow->update();
//   78   
//   79   if(MPU6000_Raw.isNormal() && (MPU6000_Raw - MPU6000).isInRange(0.5f, 30.0f, 5.1f) //这里不太对！
//   80      || MPU6000.continuousError >= 3) //正常为accel0.4，gyro10 
        LDR.W    R0,??DataTable1_16
        BL       _ZN12MPU6000_Type8isNormalEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??pit_isr_10
        LDR.W    R2,??DataTable1_7
        LDR.W    R1,??DataTable1_16
        ADD      R0,SP,#+24
        BL       _ZN12MPU6000_TypemiERS_
        ADD      R0,SP,#+120
        ADD      R1,SP,#+24
        MOVS     R2,#+96
        BL       __aeabi_memcpy4
        VLDR.W   S2,??pit_isr_11  ;; 0x40a33333
        VMOV.F32 S1,#30.0
        VMOV.F32 S0,#0.5
        ADD      R0,SP,#+120
        BL       _ZN12MPU6000_Type9isInRangeEfff
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??pit_isr_12
        MOVS     R0,#+1
        B.N      ??pit_isr_13
??pit_isr_12:
        MOVS     R0,#+0
??pit_isr_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??pit_isr_14
??pit_isr_10:
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+92]
        CMP      R0,#+3
        BLT.N    ??pit_isr_15
??pit_isr_14:
        MOVS     R0,#+1
        B.N      ??pit_isr_16
??pit_isr_15:
        MOVS     R0,#+0
??pit_isr_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??pit_isr_17
//   81   {
//   82     MPU6000 = MPU6000_Raw;
        LDR.W    R1,??DataTable1_16
        LDR.W    R0,??DataTable1_7
        BL       _ZN12MPU6000_TypeaSERS_
//   83     MPU6000.continuousError = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_7
        STR      R0,[R1, #+92]
//   84     MPU6000.gyro_x_f = MPU6000.gyro_x_f * 0.7 + MPU6000.gyro_x * 0.3;
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+72]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable1_17  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_18  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable1_7
        STR      R0,[R1, #+72]
//   85     MPU6000.gyro_y_f = MPU6000.gyro_y_f * 0.7 + MPU6000.gyro_y * 0.3;
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+76]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable1_17  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_18  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable1_7
        STR      R0,[R1, #+76]
//   86     MPU6000.gyro_z_f = MPU6000.gyro_z_f * 0.7 + MPU6000.gyro_z * 0.3;
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+80]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable1_17  ;; 0x3fe66666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_7
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_18  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable1_7
        STR      R0,[R1, #+80]
        B.N      ??pit_isr_18
//   87   }
//   88   else
//   89   {
//   90     MPU6000.error();
??pit_isr_17:
        LDR.W    R0,??DataTable1_7
        BL       _ZN12MPU6000_Type5errorEv
??pit_isr_18:
        LDR.W    R0,??DataTable1_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??pit_isr_19
//   91   }
//   92   
//   93   static int MPU6000_changeTime;
//   94   static MPU6000_Type MPU6000_0;
        LDR.W    R0,??DataTable1_20
        BL       _ZN12MPU6000_TypeC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_19
        STRB     R0,[R1, #+0]
//   95   if(!(MPU6000_Raw == MPU6000_0))
??pit_isr_19:
        LDR.W    R1,??DataTable1_20
        LDR.W    R0,??DataTable1_16
        BL       _ZN12MPU6000_TypeeqERS_
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??pit_isr_20
//   96   {
//   97     MPU6000_0 = MPU6000_Raw;
        LDR.W    R1,??DataTable1_16
        LDR.W    R0,??DataTable1_20
        BL       _ZN12MPU6000_TypeaSERS_
//   98     MPU6000_changeTime = t;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_21
        STR      R0,[R1, #+0]
//   99   }
//  100 
//  101   if(t - MPU6000_changeTime < 100)
??pit_isr_20:
        LDR.W    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable1_21
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        CMP      R1,#+100
        BGE.N    ??pit_isr_21
//  102   {
//  103     MPU6000.valid = true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_7
        STRB     R0,[R1, #+14]
        B.N      ??pit_isr_22
        DATA
??pit_isr_11:
        DC32     0x40a33333
        THUMB
//  104   }
//  105   else
//  106   {
//  107     MPU6000.valid = false;
??pit_isr_21:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_7
        STRB     R0,[R1, #+14]
//  108   }
//  109   
//  110   //  MadgwickAHRSupdateIMU(MPU6000.gyro_x/57.3,MPU6000.gyro_y/57.3,MPU6000.gyro_z/57.3,
//  111   //                       MPU6000.accel_x,MPU6000.accel_y,MPU6000.accel_z);
//  112   
//  113   
//  114 #if defined USE_OLD_DATA
//  115   if(t > 3000 && t < 3000 + H_NUM * 2)
//  116   {
//  117     EKF_AHRS->ax = H_accel_x[(t-3000)/2];
//  118     EKF_AHRS->ay = H_accel_y[(t-3000)/2];
//  119     EKF_AHRS->az = H_accel_z[(t-3000)/2];
//  120     EKF_AHRS->Wx = H_gyro_x[(t-3000)/2];
//  121     EKF_AHRS->Wy = H_gyro_y[(t-3000)/2];
//  122     EKF_AHRS->Wz = H_gyro_z[(t-3000)/2];
//  123     roll = H_roll[(t-3000)/2];
//  124     pitch = H_pitch[(t-3000)/2];
//  125     yaw = H_yaw[(t-3000)/2];
//  126     EKF_AHRS->EKF(); 
//  127   }
//  128 #else
//  129   
//  130   float norm_m, m1, m2, m3, norm_a;
//  131   arm_sqrt_f32(Compass.X * Compass.X + Compass.Y * Compass.Y, &norm_m); // + Compass.Z * Compass.Z
??pit_isr_22:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable1_22
        LDR      R2,[R1, #+0]
        LDR.W    R1,??DataTable1_22
        LDR      R3,[R1, #+0]
        LDR.W    R1,??DataTable1_22
        LDR      R4,[R1, #+4]
        LDR.W    R1,??DataTable1_22
        LDR      R1,[R1, #+4]
        MULS     R4,R1,R4
        MLA      R2,R3,R2,R4
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        BL       _ZN26_INTERNAL_5_isr_c_48df0d0212arm_sqrt_f32EfPf
//  132   
//  133   if(norm_m!=0)
        VLDR     S0,[SP, #+4]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BEQ.N    ??pit_isr_23
//  134   {
//  135     m1 = Compass.X / norm_m;
        LDR.W    R0,??DataTable1_22
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VLDR     S1,[SP, #+4]
        VDIV.F32 S0,S0,S1
        VMOV.F32 S16,S0
//  136     m2 = Compass.Y / norm_m;
        LDR.W    R0,??DataTable1_22
        VLDR     S0,[R0, #+4]
        VCVT.F32.S32 S0,S0
        VLDR     S1,[SP, #+4]
        VDIV.F32 S0,S0,S1
        VMOV.F32 S17,S0
//  137     m3 = Compass.Z / norm_m;
        LDR.W    R0,??DataTable1_22
        VLDR     S0,[R0, #+8]
        VCVT.F32.S32 S0,S0
        VLDR     S1,[SP, #+4]
        VDIV.F32 S0,S0,S1
        VMOV.F32 S18,S0
//  138   }
//  139   
//  140   arm_sqrt_f32(MPU6000.accel_x*MPU6000.accel_x + MPU6000.accel_y*MPU6000.accel_y 
//  141                + MPU6000.accel_z*MPU6000.accel_z, &norm_a);
??pit_isr_23:
        MOV      R0,SP
        LDR.N    R1,??DataTable1_7
        VLDR     S0,[R1, #+48]
        LDR.N    R1,??DataTable1_7
        VLDR     S1,[R1, #+48]
        VMUL.F32 S0,S0,S1
        LDR.N    R1,??DataTable1_7
        VLDR     S1,[R1, #+52]
        LDR.N    R1,??DataTable1_7
        VLDR     S2,[R1, #+52]
        VMLA.F32 S0,S1,S2
        LDR.N    R1,??DataTable1_7
        VLDR     S1,[R1, #+56]
        LDR.N    R1,??DataTable1_7
        VLDR     S2,[R1, #+56]
        VMLA.F32 S0,S1,S2
        BL       _ZN26_INTERNAL_5_isr_c_48df0d0212arm_sqrt_f32EfPf
//  142   if(norm_a < 0.00000001)
        VLDR     S0,[SP, #+0]
        VLDR.W   S1,??pit_isr_24  ;; 0x322bcc78
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??pit_isr_25
//  143   {
//  144     norm_a = 1;
        MOVS     R0,#+1065353216
        STR      R0,[SP, #+0]
//  145   }
//  146   EKF_AHRS->ax = MPU6000.accel_x/norm_a;
??pit_isr_25:
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+48]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+32]
//  147   EKF_AHRS->ay = MPU6000.accel_y/norm_a;
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+52]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+36]
//  148   EKF_AHRS->az = MPU6000.accel_z/norm_a;
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+56]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+40]
//  149 #if THIS_PLANE == QAV250
//  150   EKF_AHRS->Wx = MPU6000.gyro_x/57.29577951;
//  151   EKF_AHRS->Wy = MPU6000.gyro_y/57.29577951+0.007;
//  152   EKF_AHRS->Wz = MPU6000.gyro_z/57.29577951+0.005;
//  153 #else
//  154   EKF_AHRS->Wx = MPU6000.gyro_x/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_23
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  155   EKF_AHRS->Wy = MPU6000.gyro_y/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_23
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+24]
//  156   EKF_AHRS->Wz = MPU6000.gyro_z/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_23
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
//  157 #endif
//  158   EKF_AHRS->mx = m1;
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S16,[R0, #+44]
//  159   EKF_AHRS->my = m2;
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S17,[R0, #+48]
//  160   EKF_AHRS->mz = m3;
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        VSTR     S18,[R0, #+52]
//  161   
//  162   EKF_AHRS1->ax = MPU6000.accel_x/norm_a;
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+48]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+32]
//  163   EKF_AHRS1->ay = MPU6000.accel_y/norm_a;
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+52]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+36]
//  164   EKF_AHRS1->az = MPU6000.accel_z/norm_a;
        LDR.N    R0,??DataTable1_7
        VLDR     S0,[R0, #+56]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+40]
//  165 #if THIS_PLANE == QAV250
//  166   EKF_AHRS1->Wx = MPU6000.gyro_x/57.29577951;
//  167   EKF_AHRS1->Wy = MPU6000.gyro_y/57.29577951+0.007;
//  168   EKF_AHRS1->Wz = MPU6000.gyro_z/57.29577951+0.005;
//  169 #else
//  170   EKF_AHRS1->Wx = MPU6000.gyro_x/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_26
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  171   EKF_AHRS1->Wy = MPU6000.gyro_y/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_26
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+24]
//  172   EKF_AHRS1->Wz = MPU6000.gyro_z/57.29577951;
        LDR.N    R0,??DataTable1_7
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_24  ;; 0x1a5d2372
        LDR.N    R3,??DataTable1_25  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_26
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
//  173 #endif
//  174   EKF_AHRS1->mx = m1 / arm_cos_f32(pitch1 / 57.3);
        LDR.N    R0,??DataTable1_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VDIV.F32 S0,S16,S0
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+44]
//  175   EKF_AHRS1->my = m2 / arm_cos_f32(roll1 / 57.3);
        LDR.N    R0,??DataTable1_29
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VDIV.F32 S0,S17,S0
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        VSTR     S0,[R0, #+48]
//  176   EKF_AHRS1->mz = 0;
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
//  177   
//  178 
//  179 #endif
//  180   
//  181   //    MadgwickAHRSupdate(         MPU6000.gyro_x/57.3,MPU6000.gyro_y/57.3,MPU6000.gyro_z/57.3,
//  182   //                                MPU6000.accel_x,MPU6000.accel_y,MPU6000.accel_z,
//  183   //                                -Compass.Y/57.3, Compass.X/57.3,Compass.Z/57.3
//  184   //                      );
//  185   
//  186   //q2Eular();  //MadgwickAHRS
//  187   
//  188   //Ultrasound->PIT_isr();
//  189   
//  190   EKF_AHRS->EKF(); 
        LDR.N    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        BL       _ZN9CEKF_AHRS3EKFEv
//  191   EKF_AHRS1->EKF();
        LDR.N    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        BL       _ZN9CEKF_AHRS3EKFEv
//  192   
//  193   yaw3 = 57.3 * atan2f(m2 / arm_cos_f32(pitch1 / 57.3), m1 / arm_cos_f32(roll1 / 57.3));
        LDR.N    R0,??DataTable1_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S19,S0
        LDR.N    R0,??DataTable1_29
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VDIV.F32 S1,S16,S0
        VDIV.F32 S0,S17,S19
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_28  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_30
        STR      R0,[R1, #+0]
//  194   if(t < 5000)
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+5000
        CMP      R0,R1
        BGE.N    ??pit_isr_26
//  195   {
//  196     fan_ini();
        BL       _Z7fan_iniv
        B.N      ??pit_isr_27
//  197 //    MS5611_init();
//  198   }
//  199   else if(t == 5000)
??pit_isr_26:
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+5000
        CMP      R0,R1
        BNE.N    ??pit_isr_28
//  200   {
//  201     AHRS0.angle_x = AHRS.angle_x;
        LDR.N    R0,??DataTable1_31
        LDR.N    R1,??DataTable1_32
        LDR      R1,[R1, #+24]
        STR      R1,[R0, #+24]
//  202     AHRS0.angle_y = AHRS.angle_y;
        LDR.N    R0,??DataTable1_31
        LDR.N    R1,??DataTable1_32
        LDR      R1,[R1, #+28]
        STR      R1,[R0, #+28]
//  203     AHRS0.angle_z = AHRS.angle_z;
        LDR.N    R0,??DataTable1_31
        LDR.N    R1,??DataTable1_32
        LDR      R1,[R1, #+32]
        STR      R1,[R0, #+32]
//  204     yaw_init = yaw4;
        LDR.N    R0,??DataTable1_33
        LDR.N    R1,??DataTable1_34
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  205     yaw_init1 = yaw2;
        LDR.N    R0,??DataTable1_35
        LDR.N    R1,??DataTable1_36
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??pit_isr_27
//  206   }
//  207   else
//  208   {
//  209     videoStation->sendPackage();
??pit_isr_28:
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        BL       _ZN13CVideoStation11sendPackageEv
//  210     flightMode->update();
        LDR.N    R0,??DataTable1_37
        LDR      R0,[R0, #+0]
        BL       _ZN11CFlightMode6updateEv
//  211     Navigation->update();
        LDR.N    R0,??DataTable1_38
        LDR      R0,[R0, #+0]
        BL       _ZN11CNavigation6updateEv
//  212     control_position();
        BL       _Z16control_positionv
//  213     control_angle();
        BL       _Z13control_anglev
//  214     control_gyro();
        BL       _Z12control_gyrov
//  215     waterGun->update();
        LDR.N    R0,??DataTable1_39
        LDR      R0,[R0, #+0]
        BL       _ZN9CWaterGun6updateEv
//  216     rotor_out();
        BL       _Z9rotor_outv
//  217   }
//  218   GPIO_Output_b(PTB,23,1);
??pit_isr_27:
        MOVS     R2,#+1
        MOVS     R1,#+23
        LDR.N    R0,??DataTable1  ;; 0x400ff040
        BL       GPIO_Output_b
//  219   
//  220 //  MS5611_getTemperature(CMD_CONVERT_D2_OSR4096);
//  221 //  MS5611_getPressure(CMD_CONVERT_D1_OSR4096);
//  222 //  Baro_hight = get_altitude(); 
//  223 }
??pit_isr_29:
        ADD      SP,SP,#+216
        VPOP     {D8-D9}
        POP      {R4-R6,PC}       ;; return
        DATA
??pit_isr_24:
        DC32     0x322bcc78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     RemoteHub

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40009030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     EVB+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     error_evb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     GPS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     powerVoltage_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     powerVoltage_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     powerVoltage_3v3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     MPU6000_Raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     `pit_isr()::static guard for MPU6000_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     `pit_isr()::MPU6000_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     `pit_isr()::MPU6000_changeTime`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     Compass

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     0x1a5d2372

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
        DC32     EKF_AHRS1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_27:
        DC32     pitch1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_28:
        DC32     0x404ca666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_29:
        DC32     roll1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_30:
        DC32     yaw3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_31:
        DC32     AHRS0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_32:
        DC32     AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_33:
        DC32     yaw_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_34:
        DC32     yaw4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_35:
        DC32     yaw_init1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_36:
        DC32     yaw2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_37:
        DC32     flightMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_38:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_39:
        DC32     waterGun

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12MPU6000_TypeC1Ev
        THUMB
// __code __interwork __softfp MPU6000_Type::MPU6000_Type()
_ZN12MPU6000_TypeC1Ev:
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+28]
        LDR.N    R1,??MPU6000_Type_0  ;; 0x44fa0000
        STR      R1,[R0, #+32]
        LDR.N    R1,??MPU6000_Type_0+0x4  ;; 0x42700000
        STR      R1,[R0, #+36]
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+40]
        LDR.N    R1,??MPU6000_Type_0+0x8  ;; 0x43480000
        STR      R1,[R0, #+44]
        BX       LR               ;; return
        Nop      
        DATA
??MPU6000_Type_0:
        DC32     0x44fa0000
        DC32     0x42700000
        DC32     0x43480000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_isr()::MPU6000_changeTime`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char pit_isr()::static guard for MPU6000_0
`pit_isr()::static guard for MPU6000_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_isr()::MPU6000_0`:
        DS8 96

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z7pit_isrv
        SECTION_LINK _Z7pit_isrv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z7pit_isrv))
        DC32 0x8035d1aa
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  224 
//  225 
//  226 
// 
//     8 bytes in section .ARM.exidx
//   117 bytes in section .bss
// 1 906 bytes in section .text
// 
// 1 842 bytes of CODE  memory (+ 64 bytes shared)
//     8 bytes of CONST memory
//   117 bytes of DATA  memory
//
//Errors: none
//Warnings: none
