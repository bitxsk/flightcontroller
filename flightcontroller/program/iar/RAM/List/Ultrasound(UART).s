///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:03
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW30BB.tmp
//        ("C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp"
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\Ultrasound(UART).s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN EKF_AHRS
        EXTERN Navigation
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter12setParameterEfif
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter8newData3Efi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memset
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN t

        PUBLIC UltrasoundUART
        PUBLIC _Z19UltrasoundUART_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN15CUltrasoundUART17setNewPackageFlagEb
        PUBLIC _ZN15CUltrasoundUART6updateEv
        PUBLIC _ZN15CUltrasoundUARTC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC stopFlag

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp
//    1 #include "Ultrasound(UART).h"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11CJumpFilterC1Ev
        THUMB
// __code __interwork __softfp CJumpFilter::CJumpFilter()
_ZN11CJumpFilterC1Ev:
        LDR.N    R1,??CJumpFilter_0  ;; 0x42c80000
        STR      R1,[R0, #+8]
        MOV      R1,#+300
        STR      R1,[R0, #+40]
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+44]
        BX       LR               ;; return
        Nop      
        DATA
??CJumpFilter_0:
        DC32     0x42c80000

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

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN15CUltrasoundUARTC1Ev
        THUMB
// __code __interwork __softfp CUltrasoundUART::CUltrasoundUART()
_ZN15CUltrasoundUARTC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDW     R0,R4,#+3016
        BL       _ZN17CoordinateElementC1Ev
        ADDW     R0,R4,#+3044
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+3072
        BL       _ZN17CoordinateElementC1Ev
        ADDW     R0,R4,#+3100
        BL       _ZN17CoordinateElementC1Ev
        ADDW     R0,R4,#+3128
        BL       _ZN17CoordinateElementC1Ev
        ADDW     R0,R4,#+3156
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+3240
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+3296
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+3364
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+3448
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,#+0
        STRB     R0,[R4, #+3532]
        VMOV.F32 S1,#20.0
        MOVS     R1,#+100
        VLDR.W   S0,??CUltrasoundUART_0  ;; 0x3e19999a
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilter12setParameterEfif
        MOVS     R0,R4
??CUltrasoundUART_1:
        POP      {R4,PC}          ;; return
        DATA
??CUltrasoundUART_0:
        DC32     0x3e19999a
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CUltrasoundUART *UltrasoundUART;
UltrasoundUART:
        DS8 4
//    4 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void UltrasoundUART_Init()
//    6 {
_Z19UltrasoundUART_Initv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??UltrasoundUART_Init_0
//    7   static CUltrasoundUART UltrasoundUART_static;
        LDR.W    R0,??DataTable1_2
        BL       _ZN15CUltrasoundUARTC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//    8   UltrasoundUART = &UltrasoundUART_static;
??UltrasoundUART_Init_0:
        LDR.W    R0,??DataTable1_2
        LDR.W    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//    9   UltrasoundUART->DMA_CHn_Rx = DMA_CH0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
//   10   UltrasoundUART->DMA_CHn_Tx = DMA_CH3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable1_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+1]
//   11   
//   12   UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0  ;; 0x3e19999a
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter12setParameterEfi
//   13   UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0  ;; 0x3e19999a
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter12setParameterEfi
//   14   UltrasoundUART->distanceFilter1.maxValue = 4;
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+3196]
//   15 
//   16   UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0_1  ;; 0x3dcccccd
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3240
        BL       _ZN11CJumpFilter12setParameterEfi
//   17   UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0_1  ;; 0x3dcccccd
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3240
        BL       _ZN11CJumpFilter12setParameterEfi
//   18   UltrasoundUART->distanceFilter2.maxValue = 4;
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+3252]
//   19   
//   20   UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0_1  ;; 0x3dcccccd
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3296
        BL       _ZN11CJumpFilter12setParameterEfi
//   21   UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
        MOVS     R1,#+100
        VLDR.W   S0,??DataTable0_1  ;; 0x3dcccccd
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3296
        BL       _ZN11CJumpFilter12setParameterEfi
//   22   UltrasoundUART->distanceFilter3.maxValue = 4;
        LDR.W    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+3308]
//   23 }
??UltrasoundUART_Init_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x3dcccccd

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char UltrasoundUART_Init()::static guard for UltrasoundUART_static
`UltrasoundUART_Init()::static guard for UltrasoundUART_static`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`UltrasoundUART_Init()::UltrasoundUART_static`:
        DS8 3560
//   24 
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   26 bool stopFlag;
stopFlag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   27 void CUltrasoundUART::update()
//   28 {
_ZN15CUltrasoundUART6updateEv:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+24
        MOVS     R4,R0
//   29   distanceFilter1.checkIsNewData(t);
        LDR.W    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   30   distanceFilter2.checkIsNewData(t);
        LDR.W    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+3240
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   31   distanceFilter3.checkIsNewData(t);
        LDR.W    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDS     R0,R4,#+3296
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   32   //distanceFilter.accumulate(IMU_acc_E.x * 0.002);
//   33   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   34   int i = 0, i0 = 0;
        MOVS     R6,#+0
        MOVS     R8,#+0
//   35   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.W    R0,??DataTable1_5  ;; 0x40009000
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+16]
        ADDS     R5,R4,#+2
        SUBS     R5,R0,R5
//   36   int moveLength = 0;
        MOVS     R9,#+0
//   37   const int packageLength = 4;
        MOVS     R0,#+4
        STR      R0,[SP, #+4]
//   38   bool loopFlag = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   39   
//   40   byteInterval = t - byte_lastTime;
        LDR.W    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+3008]
        SUBS     R1,R1,R0
        STR      R1,[R4, #+3004]
//   41 
//   42 //  if(byte_lastAddress != address0)
//   43 //  {
//   44 //    byte_lastTime = t;
//   45 //    byte_lastAddress = address0;
//   46 //  }
//   47 //  if(byteInterval > 800)
//   48 //  {
//   49 //    DMA_EnableReq(DMA_CHn_Rx);
//   50 //  }
//   51   for(; i < address0; i++)
??update_0:
        CMP      R6,R5
        BGE.W    ??update_1
//   52   {
//   53     for(; uartData[i] != 'e'; i++)
??update_2:
        ADD      R0,R4,R6
        LDRB     R0,[R0, #+2]
        CMP      R0,#+101
        BEQ.N    ??update_3
//   54     {
//   55       if(i >= address0)
        CMP      R6,R5
        BLT.N    ??update_4
//   56       {
//   57         loopFlag = true;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//   58         break;
        B.N      ??update_3
//   59       }
//   60     }
??update_4:
        ADDS     R6,R6,#+1
        B.N      ??update_2
//   61       
//   62     if(loopFlag)
??update_3:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??update_1
//   63     {
//   64       break;
//   65     }
//   66     if(i - i0 < packageLength - 2)
??update_5:
        SUBS     R0,R6,R8
        CMP      R0,#+2
        BLT.W    ??update_6
//   67     {
//   68       continue;
//   69     }
//   70     byte_lastTime = t;
??update_7:
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+3008]
//   71 //    char checkSum = 0; //注意每个包的checkSum都要清零
//   72 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   73 //    {
//   74 //      checkSum += uartData[k];
//   75 //    }
//   76 //    if(checkSum != uartData[i-1])
//   77 //    {
//   78 //      continue;
//   79 //    }
//   80     i0 = i + 1;    
        ADDS     R0,R6,#+1
        MOV      R8,R0
//   81     int packageTop = i - packageLength + 1;
        SUBS     R7,R6,#+3
//   82     if(uartData[packageTop] == 0)
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??update_8
//   83     {
//   84       distanceRaw1 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
        ADD      R0,R4,R7
        LDRB     R1,[R0, #+3]
        MOV      R2,#+256
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+4]
        MLA      R1,R2,R1,R0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??update_9    ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+3016
        BL       _ZN17CoordinateElementaSEf
//   85       
//   86       float epsilon = (t - distanceFilter1.invalidTime) / 1000 * 0.5 + 0.2; //每秒误差累计 0.5米
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+3204]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        SDIV     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_6  ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable1_7  ;; 0x9999999a
        LDR.N    R3,??DataTable1_8  ;; 0x3fc99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S16,R0
//   87       distanceFilter1.maxValue = EKF_AHRS->fusion.position.z + epsilon;
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VADD.F32 S0,S0,S16
        ADDW     R0,R4,#+3196
        VSTR     S0,[R0, #0]
//   88       distanceFilter1.minValue = EKF_AHRS->fusion.position.z - epsilon;
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VSUB.F32 S0,S0,S16
        ADDW     R0,R4,#+3200
        VSTR     S0,[R0, #0]
//   89       if(distanceFilter1.maxValue > 4)
        LDR      R0,[R4, #+3196]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable1  ;; 0x40800001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_10
//   90       {
//   91         distanceFilter1.maxValue = 4;
        MOVS     R0,#+1082130432
        STR      R0,[R4, #+3196]
//   92       }
//   93       if(distanceFilter1.minValue < 0)
??update_10:
        LDR      R0,[R4, #+3200]
        VMOV     S0,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??update_11
//   94       {
//   95         distanceFilter1.minValue = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+3200]
//   96       }
//   97       distance1 = distanceFilter1.newData3(distanceRaw1, t);
??update_11:
        ADDW     R0,R4,#+3016
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+3100
        BL       _ZN17CoordinateElementaSEf
//   98       lastValidTime1 = t;
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+3352]
        B.N      ??update_6
//   99     }
//  100     else if(uartData[packageTop] == 1)
??update_8:
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.W    ??update_12
//  101     {
//  102       distanceRaw2 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
        ADD      R0,R4,R7
        LDRB     R1,[R0, #+3]
        MOV      R2,#+256
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+4]
        MLA      R1,R2,R1,R0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??update_9    ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+3044
        BL       _ZN17CoordinateElementaSEf
//  103       
//  104       float epsilon = (t - distanceFilter2.invalidTime) / 1000 * 0.5 + 0.2; //每秒误差累计 0.5米
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+3260]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        SDIV     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_6  ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable1_7  ;; 0x9999999a
        LDR.N    R3,??DataTable1_8  ;; 0x3fc99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S16,R0
//  105       distanceFilter2.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VADD.F32 S0,S0,S16
        ADDW     R0,R4,#+3252
        VSTR     S0,[R0, #0]
//  106       distanceFilter2.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VSUB.F32 S0,S0,S16
        ADDW     R0,R4,#+3256
        VSTR     S0,[R0, #0]
//  107       
//  108       if(distanceFilter2.maxValue > 4)
        LDR      R0,[R4, #+3252]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable1  ;; 0x40800001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_13
//  109       {
//  110         distanceFilter2.maxValue = 4;
        MOVS     R0,#+1082130432
        STR      R0,[R4, #+3252]
//  111       }
//  112       if(distanceFilter2.minValue < 0)
??update_13:
        LDR      R0,[R4, #+3256]
        VMOV     S0,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??update_14
//  113       {
//  114         distanceFilter2.minValue = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+3256]
//  115       }
//  116       
//  117       distance2 = distanceFilter2.newData3(distanceRaw2, t);
??update_14:
        ADDW     R0,R4,#+3044
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+3240
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+3128
        BL       _ZN17CoordinateElementaSEf
//  118       lastValidTime2 = t;
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+3356]
        B.N      ??update_6
//  119     }
//  120     else if(uartData[packageTop] == 2)
??update_12:
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+2]
        CMP      R0,#+2
        BNE.N    ??update_6
//  121     {
//  122       distanceRaw3 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
        ADD      R0,R4,R7
        LDRB     R1,[R0, #+3]
        MOV      R2,#+256
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+4]
        MLA      R1,R2,R1,R0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??update_9    ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        ADDS     R0,R4,#+3072
        BL       _ZN17CoordinateElementaSEf
//  123       
//  124       float epsilon = (t - distanceFilter3.invalidTime) / 1000 * 0.5 + 0.2; //每秒误差累计 0.5米
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+3316]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        SDIV     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_6  ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable1_7  ;; 0x9999999a
        LDR.N    R3,??DataTable1_8  ;; 0x3fc99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S16,R0
//  125       distanceFilter3.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VADD.F32 S0,S0,S16
        ADDW     R0,R4,#+3308
        VSTR     S0,[R0, #0]
//  126       distanceFilter3.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VSUB.F32 S0,S0,S16
        ADDW     R0,R4,#+3312
        VSTR     S0,[R0, #0]
//  127       
//  128       if(distanceFilter3.maxValue > 4)
        LDR      R0,[R4, #+3308]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable1  ;; 0x40800001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_15
//  129       {
//  130         distanceFilter3.maxValue = 4;
        MOVS     R0,#+1082130432
        STR      R0,[R4, #+3308]
//  131       }
//  132       if(distanceFilter3.minValue < 0)
??update_15:
        LDR      R0,[R4, #+3312]
        VMOV     S0,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??update_16
//  133       {
//  134         distanceFilter3.minValue = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+3312]
//  135       }
//  136       
//  137       distance3 = distanceFilter3.newData3(distanceRaw3, t);
??update_16:
        ADDS     R0,R4,#+3072
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable1_4
        LDR      R1,[R0, #+0]
        ADDS     R0,R4,#+3296
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+3156
        BL       _ZN17CoordinateElementaSEf
//  138       lastValidTime3 = t;
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+3360]
//  139     }
//  140   }
??update_6:
        ADDS     R6,R6,#+1
        B.N      ??update_0
//  141   
//  142   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
??update_1:
        LDR.N    R0,??DataTable1_5  ;; 0x40009000
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+16]
        ADDS     R7,R4,#+2
        SUBS     R7,R0,R7
        SUBS     R7,R7,R8
//  143   if(moveLength < 0) moveLength = 0;
        CMP      R7,#+0
        BPL.N    ??update_17
        MOVS     R0,#+0
        MOVS     R7,R0
//  144    
//  145   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??update_17:
        ADDS     R0,R4,#+2
        ADDS     R0,R7,R0
        LDR.N    R1,??DataTable1_5  ;; 0x40009000
        LDRB     R2,[R4, #+0]
        LSLS     R2,R2,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+16]
//  146   for(i = 0; i < moveLength; i++)
        MOVS     R9,#+0
??update_18:
        CMP      R9,R7
        BGE.N    ??update_19
//  147   {
//  148     uartData[i] = uartData[i0 + i];
        ADDS     R0,R9,R8
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R9
        STRB     R0,[R1, #+2]
//  149   }
        ADDS     R9,R9,#+1
        B.N      ??update_18
//  150   memset(uartData + moveLength, 0, 150 * sizeof(char));
??update_19:
        MOVS     R6,#+150
        MOVS     R10,#+0
        ADD      R0,R4,R7
        ADDS     R11,R0,#+2
        MOV      R2,R10
        MOVS     R1,R6
        MOV      R0,R11
        BL       __aeabi_memset
//  151   if(address0 > 100)
        CMP      R5,#+101
        BLT.N    ??update_20
//  152   {
//  153     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        ADDS     R0,R4,#+2
        LDR.N    R1,??DataTable1_5  ;; 0x40009000
        LDRB     R2,[R4, #+0]
        LSLS     R2,R2,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+16]
//  154   }
//  155   
//  156 }
??update_20:
??update_21:
        ADD      SP,SP,#+24
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return
        Nop      
        DATA
??update_9:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     `UltrasoundUART_Init()::static guard for UltrasoundUART_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     `UltrasoundUART_Init()::UltrasoundUART_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     Navigation
//  157 
//  158 //void CUltrasoundUART::sendMeasureRequest()
//  159 //{
//  160 //  if(!DMA_isOccupying(DMA_CHn_Tx))
//  161 //  {
//  162 //    TX.clear();
//  163 //    TX.add(0x55);
//  164 //    TX.startDMA_Transmit(this);    
//  165 //  }
//  166 //}
//  167 
//  168 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void CUltrasoundUART::setNewPackageFlag(bool flag)
//  170 {
//  171   newPackageFlag = flag;
_ZN15CUltrasoundUART17setNewPackageFlagEb:
        STRB     R1,[R0, #+3532]
//  172 }
        BX       LR               ;; return

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN15CUltrasoundUARTC1Ev
        SECTION_LINK _ZN15CUltrasoundUARTC1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN15CUltrasoundUARTC1Ev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z19UltrasoundUART_Initv
        SECTION_LINK _Z19UltrasoundUART_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z19UltrasoundUART_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN15CUltrasoundUART6updateEv
        SECTION_LINK _ZN15CUltrasoundUART6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN15CUltrasoundUART6updateEv))
        DC32 RELOC_ARM_PREL31(`.extab for _ZN15CUltrasoundUART6updateEv`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZN15CUltrasoundUART6updateEv
`.extab for _ZN15CUltrasoundUART6updateEv`:
        DATA
        DC32 0x810105d0
        DC32 0xafb0b0
        DC16 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  173 
//  174 //void CUltrasoundUART::TX_::startDMA_Transmit(CUltrasoundUART *tmp)
//  175 //{
//  176 //  //DMA_changeLength(tmp->DMA_CHn_Tx, tmp->TX.index);    
//  177 //  DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
//  178 //   //设置主循环计数器 current major loop count
//  179 //  DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
//  180 //  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  181 //  DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
//  182 //  
//  183 //  DMA_EnableReq(tmp->DMA_CHn_Tx);
//  184 //}
// 
//    24 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
// 3 566 bytes in section .bss
// 1 558 bytes in section .text
// 
// 1 352 bytes of CODE  memory (+ 206 bytes shared)
//    36 bytes of CONST memory
// 3 566 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
