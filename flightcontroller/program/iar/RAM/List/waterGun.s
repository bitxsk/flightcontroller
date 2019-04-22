///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:05
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\waterGun.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW392D.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\waterGun.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\waterGun.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN t

        PUBLIC GPIO_Output_b
        PUBLIC _Z13WaterGun_Initv
        PUBLIC _ZN9CWaterGun12stopSprayingEv
        PUBLIC _ZN9CWaterGun13startSprayingEv
        PUBLIC _ZN9CWaterGun6updateEv
        PUBLIC waterGun

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\waterGun.cpp
//    1 #include "waterGun.h"

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
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CWaterGun *waterGun;
waterGun:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void WaterGun_Init()
//    7 {
//    8   static CWaterGun waterGun_0;
//    9   waterGun = &waterGun_0;
_Z13WaterGun_Initv:
        LDR.N    R0,??DataTable3_1
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   10   
//   11   waterGun->servoMiddle1 = 3000;
        MOVW     R0,#+3000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//   12   waterGun->servoMiddle2 = 3000;
        MOVW     R0,#+3000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
//   13   waterGun->servoMax1 = 6000; //机械结构限制范围最大值
        MOVW     R0,#+6000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+8]
//   14   waterGun->servoMax2 = 6000;
        MOVW     R0,#+6000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
//   15   waterGun->servoMin1 = 2000;
        MOV      R0,#+2000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//   16   waterGun->servoMin2 = 2000;
        MOV      R0,#+2000
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//   17   
//   18   waterGun->horizontalSpeed = 800; //占空比变化每秒
        MOV      R0,#+800
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+24]
//   19 //  waterGun->verticalSpeed = 800; //根据横向速度与次数计算得出
//   20   waterGun->horizontalAngleP = 300; //实际喷洒边界偏移量
        MOV      R0,#+300
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
//   21   waterGun->horizontalAngleM = -300;
        LDR.N    R0,??DataTable3_3  ;; 0xfffffed4
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+36]
//   22   waterGun->verticalAngleP = 300;
        MOV      R0,#+300
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+40]
//   23   waterGun->verticalAngleM = -300;
        LDR.N    R0,??DataTable3_3  ;; 0xfffffed4
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+44]
//   24   
//   25   waterGun->horizontalSprayTime = 5;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+48]
//   26 }
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
`WaterGun_Init()::waterGun_0`:
        DS8 80
//   27 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   28 void CWaterGun::update()
//   29 {
_ZN9CWaterGun6updateEv:
        PUSH     {R3-R11,LR}
        VPUSH    {D8-D10}
        SUB      SP,SP,#+16
        MOVS     R6,R0
//   30   if(working)
        LDRB     R0,[R6, #+74]
        CMP      R0,#+0
        BEQ.W    ??update_0
//   31   {
//   32     int horizontalRange = horizontalAngleP - horizontalAngleM;
        LDR      R1,[R6, #+32]
        LDR      R0,[R6, #+36]
        SUBS     R1,R1,R0
        STR      R1,[SP, #+0]
//   33     double horizontalPeriod = (double)horizontalRange / (double)horizontalSpeed;
        LDR      R0,[SP, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+24]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        VMOV     D8,R0,R1
//   34     double time = (t - sprayingStartTime) / 1000.0f;
        LDR.N    R0,??DataTable3_4
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+52]
        SUBS     R1,R1,R0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     D9,R0,R1
//   35     
//   36     if((int)(time / horizontalPeriod ) % 2 == 0)
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??update_1
//   37     {
//   38       servoControl1 = horizontalAngleM + 
//   39         (time / horizontalPeriod - (int)(time / horizontalPeriod)) * horizontalRange;
        LDR      R0,[R6, #+36]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        STRD     R0,R1,[R6, #+56]
        B.N      ??update_2
//   40     }
//   41     else
//   42     {
//   43        servoControl1 = horizontalAngleP - 
//   44         (time / horizontalPeriod - (int)(time / horizontalPeriod)) * horizontalRange;
??update_1:
        LDR      R0,[R6, #+32]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+0]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        BL       __aeabi_i2d
        MOV      R10,R0
        MOV      R11,R1
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R10
        MOV      R1,R11
        BL       __aeabi_dsub
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        STRD     R0,R1,[R6, #+56]
//   45     }
//   46     
//   47     int verticalRange = verticalAngleP - verticalAngleM;
??update_2:
        LDR      R0,[R6, #+40]
        LDR      R7,[R6, #+44]
        SUBS     R7,R0,R7
//   48     double verticalPeriod = horizontalPeriod * horizontalSprayTime;
        LDR      R0,[R6, #+48]
        BL       __aeabi_i2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        VMOV     D10,R0,R1
//   49     
//   50     servoControl2 = verticalAngleP - 
//   51         (time / verticalPeriod) * verticalRange;
        LDR      R0,[R6, #+40]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,R1,D9
        VMOV     R2,R3,D10
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R7
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        STRD     R0,R1,[R6, #+64]
//   52     
//   53     if((int)(time / horizontalPeriod) >= horizontalSprayTime)
        VMOV     R0,R1,D9
        VMOV     R2,R3,D8
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR      R1,[R6, #+48]
        CMP      R0,R1
        BLT.N    ??update_3
//   54     {
//   55       stopSpraying();
        MOVS     R0,R6
        BL       _ZN9CWaterGun12stopSprayingEv
        B.N      ??update_3
//   56     }
//   57   }
//   58   else
//   59   {
//   60     servoControl1 = horizontalAngleM;
??update_0:
        LDR      R0,[R6, #+36]
        BL       __aeabi_i2d
        STRD     R0,R1,[R6, #+56]
//   61     servoControl2 = verticalAngleP;
        LDR      R0,[R6, #+40]
        BL       __aeabi_i2d
        STRD     R0,R1,[R6, #+64]
//   62   }
//   63  
//   64 //  FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, limiter(servoMin1, servoMax1, servoMiddle1 + (int)servoControl1));
//   65  // FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, limiter(servoMin2, servoMax2, servoMiddle2 + (int)servoControl2));  
//   66 }
??update_3:
        ADD      SP,SP,#+16
        VPOP     {D8-D10}
        POP      {R0,R4-R11,PC}   ;; return
//   67 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void CWaterGun::startSpraying()
//   69 {
_ZN9CWaterGun13startSprayingEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   70   sprayingStartTime = t;
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+52]
//   71   working = true;
        MOVS     R0,#+1
        STRB     R0,[R4, #+74]
//   72   GPIO_Output_b(PTB, 22, 1);
        MOVS     R2,#+1
        MOVS     R1,#+22
        LDR.N    R0,??DataTable3_5  ;; 0x400ff040
        BL       GPIO_Output_b
//   73 }
        POP      {R4,PC}          ;; return
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void CWaterGun::stopSpraying()
//   76 {
_ZN9CWaterGun12stopSprayingEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   77   working = false;
        MOVS     R0,#+0
        STRB     R0,[R4, #+74]
//   78   done = true;
        MOVS     R0,#+1
        STRB     R0,[R4, #+75]
//   79   GPIO_Output_b(PTB, 22, 0);
        MOVS     R2,#+0
        MOVS     R1,#+22
        LDR.N    R0,??DataTable3_5  ;; 0x400ff040
        BL       GPIO_Output_b
//   80 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     `WaterGun_Init()::waterGun_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     waterGun

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0xfffffed4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x400ff040

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   81 
//   82 template<typename T>
//   83 T limiter(T lowerLimit, T upperLimit, T data)
//   84 {
//   85   if(data > upperLimit)
//   86   {
//   87     data = upperLimit;
//   88   }
//   89   else if(data < lowerLimit)
//   90   {
//   91     data = lowerLimit;
//   92   }
//   93   return data;
//   94 }
// 
//  84 bytes in section .bss
// 672 bytes in section .text
// 
// 648 bytes of CODE memory (+ 24 bytes shared)
//  84 bytes of DATA memory
//
//Errors: none
//Warnings: none
