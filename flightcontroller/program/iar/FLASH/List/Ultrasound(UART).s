///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:07
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW4E63.tmp
//        ("C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp"
//        -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1 -D
//        __FPU_USED=1 -lCN
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List
//        -lB
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List
//        -o
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        D:\iar\arm\inc\c\DLib_Config_Full.h -I
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
//        -On --c++ -I D:\iar\arm\CMSIS\Core\Include\ -I
//        D:\iar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4 --text_out utf8
//        --utf8_text_in)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\Ultrasound(UART).s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN EKF_AHRS
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

        PUBLIC DMA_isOccupying
        PUBLIC UltrasoundUART
        PUBLIC _Z19UltrasoundUART_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN15CUltrasoundUART17setNewPackageFlagEb
        PUBLIC _ZN15CUltrasoundUART18sendMeasureRequestEv
        PUBLIC _ZN15CUltrasoundUART3TX_17startDMA_TransmitEPS_
        PUBLIC _ZN15CUltrasoundUART3TX_3addEc
        PUBLIC _ZN15CUltrasoundUART3TX_5clearEv
        PUBLIC _ZN15CUltrasoundUART6updateEv
        PUBLIC _ZN15CUltrasoundUARTC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC stopFlag

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ultrasound(UART).cpp
//    1 #include "Ultrasound(UART).h"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP DMA_isOccupying
        THUMB
// __interwork __softfp bool DMA_isOccupying(uint8)
DMA_isOccupying:
        MOVS     R1,R0
        LDR.N    R0,??DMA_isOccupying_0  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
        Nop      
        DATA
??DMA_isOccupying_0:
        DC32     0x4000800c

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11CJumpFilterC1Ev
        THUMB
// __code __interwork __softfp CJumpFilter::CJumpFilter()
_ZN11CJumpFilterC1Ev:
        LDR.N    R1,??CJumpFilter_0  ;; 0x42c80000
        STR      R1,[R0, #+8]
        MOVS     R1,#+50
        STR      R1,[R0, #+40]
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+44]
        BX       LR               ;; return
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

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN15CUltrasoundUART3TX_3addEc
        THUMB
// __interwork __softfp void CUltrasoundUART::TX_::add(char)
_ZN15CUltrasoundUART3TX_3addEc:
        LDR      R2,[R0, #+12]
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+12]
        STRB     R1,[R0, R2]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN15CUltrasoundUART3TX_5clearEv
        THUMB
// __interwork __softfp void CUltrasoundUART::TX_::clear()
_ZN15CUltrasoundUART3TX_5clearEv:
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        BX       LR               ;; return

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
        PUSH     {R4,LR}
        VPUSH    {D8}
        LDR.N    R4,??DataTable2_4
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??UltrasoundUART_Init_0
//    7   static CUltrasoundUART UltrasoundUART_static;
        LDR.N    R0,??DataTable2_5
        BL       _ZN15CUltrasoundUARTC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    8   UltrasoundUART = &UltrasoundUART_static;
??UltrasoundUART_Init_0:
        LDR.N    R4,??DataTable2_6
        LDR.N    R0,??DataTable2_5
        STR      R0,[R4, #+0]
//    9   UltrasoundUART->DMA_CHn_Rx = DMA_CH0;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+0]
//   10   UltrasoundUART->DMA_CHn_Tx = DMA_CH3;
        MOVS     R0,#+3
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+1]
//   11   
//   12   UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
        VLDR.W   S16,??DataTable2  ;; 0x3e19999a
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter12setParameterEfi
//   13   UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter12setParameterEfi
//   14   UltrasoundUART->distanceFilter1.maxValue = 4;
        VMOV.F32 S16,#4.0
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+3196
        VSTR     S16,[R0, #0]
//   15 
//   16   UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
        VLDR.W   S17,??DataTable2_1  ;; 0x3dcccccd
        MOVS     R1,#+100
        VMOV.F32 S0,S17
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+3240
        BL       _ZN11CJumpFilter12setParameterEfi
//   17   UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S17
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+3240
        BL       _ZN11CJumpFilter12setParameterEfi
//   18   UltrasoundUART->distanceFilter2.maxValue = 4;
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+3252
        VSTR     S16,[R0, #0]
//   19   
//   20   UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S17
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+3296
        BL       _ZN11CJumpFilter12setParameterEfi
//   21   UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S17
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+3296
        BL       _ZN11CJumpFilter12setParameterEfi
//   22   UltrasoundUART->distanceFilter3.maxValue = 4;
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+3308
        VSTR     S16,[R0, #0]
//   23   
//   24   UltrasoundUART->sendMeasureRequest();
        LDR      R0,[R4, #+0]
        BL       _ZN15CUltrasoundUART18sendMeasureRequestEv
//   25 }
??UltrasoundUART_Init_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for UltrasoundUART_static
`UltrasoundUART_Init()::static guard for UltrasoundUART_static`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`UltrasoundUART_Init()::UltrasoundUART_static`:
        DS8 3560
//   26 
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   28 bool stopFlag;
stopFlag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   29 void CUltrasoundUART::update()
//   30 {
_ZN15CUltrasoundUART6updateEv:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+16
        MOVS     R4,R0
//   31   distanceFilter1.checkIsNewData(t);
        LDR.W    R8,??DataTable2_7
        LDR      R1,[R8, #+0]
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   32   distanceFilter2.checkIsNewData(t);
        LDR      R1,[R8, #+0]
        ADDW     R0,R4,#+3240
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   33   distanceFilter3.checkIsNewData(t);
        LDR      R1,[R8, #+0]
        ADDS     R0,R4,#+3296
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   34   //distanceFilter.accumulate(IMU_acc_E.x * 0.002);
//   35   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   36   int i = 0, i0 = 0;
        MOVS     R5,#+0
        MOVS     R10,#+0
//   37   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.N    R6,??DataTable2_8  ;; 0x40009000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R0,[R0, #+16]
        ADDS     R9,R4,#+2
        SUBS     R9,R0,R9
//   38   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   39   const int packageLength = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//   40   bool loopFlag = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   41   
//   42   //byteInterval = t - byte_lastTime;
//   43 
//   44 //  if(byte_lastAddress != address0)
//   45 //  {
//   46 //    byte_lastTime = t;
//   47 //    byte_lastAddress = address0;
//   48 //  }
//   49 //  if(byteInterval > 800)
//   50 //  {
//   51 //    DMA_EnableReq(DMA_CHn_Rx);
//   52 //  }
//   53   for(; i < address0; i++)
??update_0:
        CMP      R5,R9
        BGE.W    ??update_1
//   54   {
//   55 //    for(; uartData[i] != 'e'; i++)
//   56 //    {
//   57       if(i >= address0)
        CMP      R5,R9
        BLT.N    ??update_2
//   58       {
//   59         loopFlag = true;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//   60         break;
        B.N      ??update_1
//   61       }
//   62 //    }
//   63 //      
//   64     if(loopFlag)
??update_2:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??update_1
//   65     {
//   66       break;
//   67     }
//   68     if(i - i0 < packageLength - 2)
??update_3:
        SUBS     R0,R5,R10
        CMP      R0,#+0
        BMI.N    ??update_4
//   69     {
//   70       continue;
//   71     }
//   72  //   byte_lastTime = t;
//   73 //    char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
//   74 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   75 //    {
//   76 //      checkSum += uartData[k];
//   77 //    }
//   78 //    if(checkSum != uartData[i-1])
//   79 //    {
//   80 //      continue;
//   81 //    }
//   82     i0 = i + 1;    
??update_5:
        ADDS     R0,R5,#+1
        MOV      R10,R0
//   83     int packageTop = i - packageLength + 2;
        MOVS     R0,R5
//   84     packageTop = -1;
        MOVS     R7,#-1
//   85     if(address0 == 2)
        CMP      R9,#+2
        BNE.N    ??update_4
//   86     {
//   87       distanceRaw1 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
        ADD      R0,R4,R7
        LDRB     R1,[R0, #+3]
        MOV      R2,#+256
        ADD      R0,R4,R7
        LDRB     R0,[R0, #+4]
        MLA      R1,R2,R1,R0
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable2_2  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+3016
        BL       _ZN17CoordinateElementaSEf
//   88       
//   89       float epsilon = (t - distanceFilter1.invalidTime) / 1000 * 0.5 + 0.1; //Ã¿ÃëÎó²îÀÛ¼Æ 0.5Ã×£¨500mm£©
        LDR      R1,[R8, #+0]
        LDR      R0,[R4, #+3204]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        SDIV     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_9  ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable2_10  ;; 0x9999999a
        LDR.N    R3,??DataTable2_11  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S16,R0
//   90       distanceFilter1.maxValue = EKF_AHRS->fusion.position.z + epsilon;
        LDR.W    R11,??DataTable2_12
        LDR      R0,[R11, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VADD.F32 S0,S0,S16
        ADDW     R0,R4,#+3196
        VSTR     S0,[R0, #0]
//   91       distanceFilter1.minValue = EKF_AHRS->fusion.position.z - epsilon;
        LDR      R0,[R11, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VSUB.F32 S0,S0,S16
        ADDW     R0,R4,#+3200
        VSTR     S0,[R0, #0]
//   92       if(distanceFilter1.maxValue > 4)
        LDR      R0,[R4, #+3196]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable2_3  ;; 0x40800001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_6
//   93       {
//   94         distanceFilter1.maxValue = 4;
        MOVS     R0,#+1082130432
        STR      R0,[R4, #+3196]
//   95       }
//   96       if(distanceFilter1.minValue < 0)
??update_6:
        LDR      R0,[R4, #+3200]
        VMOV     S0,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BPL.N    ??update_7
//   97       {
//   98         distanceFilter1.minValue = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+3200]
//   99       }
//  100       distance1 = distanceFilter1.newData3(distanceRaw1, t);
??update_7:
        ADDW     R0,R4,#+3016
        BL       _ZN17CoordinateElementcvfEv
        LDR      R1,[R8, #+0]
        ADDS     R0,R4,#+3184
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+3100
        BL       _ZN17CoordinateElementaSEf
//  101       lastValidTime1 = t;
        LDR      R0,[R8, #+0]
        STR      R0,[R4, #+3352]
//  102     }
//  103 //    else if(uartData[packageTop] == 1)
//  104 //    {
//  105 //      distanceRaw2 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
//  106 //      
//  107 //      float epsilon = (t - distanceFilter2.invalidTime) / 1000 * 0.5 + 0.2; //Ã¿ÃëÎó²îÀÛ¼Æ 0.5Ã×
//  108 //      distanceFilter2.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
//  109 //      distanceFilter2.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
//  110 //      
//  111 //      if(distanceFilter2.maxValue > 4)
//  112 //      {
//  113 //        distanceFilter2.maxValue = 4;
//  114 //      }
//  115 //      if(distanceFilter2.minValue < 0)
//  116 //      {
//  117 //        distanceFilter2.minValue = 0;
//  118 //      }
//  119 //      
//  120 //      distance2 = distanceFilter2.newData3(distanceRaw2, t);
//  121 //      lastValidTime2 = t;
//  122 //    }
//  123 //    else if(uartData[packageTop] == 2)
//  124 //    {
//  125 //      distanceRaw3 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
//  126 //      
//  127 //      float epsilon = (t - distanceFilter3.invalidTime) / 1000 * 0.5 + 0.2; //Ã¿ÃëÎó²îÀÛ¼Æ 0.5Ã×
//  128 //      distanceFilter3.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
//  129 //      distanceFilter3.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
//  130 //      
//  131 //      if(distanceFilter3.maxValue > 4)
//  132 //      {
//  133 //        distanceFilter3.maxValue = 4;
//  134 //      }
//  135 //      if(distanceFilter3.minValue < 0)
//  136 //      {
//  137 //        distanceFilter3.minValue = 0;
//  138 //      }
//  139 //      
//  140 //      distance3 = distanceFilter3.newData3(distanceRaw3, t);
//  141 //      lastValidTime3 = t;
//  142 //    }
//  143   }
??update_4:
        ADDS     R5,R5,#+1
        B.N      ??update_0
//  144   
//  145   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
??update_1:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R0,[R0, #+16]
        ADDS     R7,R4,#+2
        SUBS     R7,R0,R7
        SUBS     R7,R7,R10
//  146   if(moveLength < 0) moveLength = 0;
        CMP      R7,#+0
        BPL.N    ??update_8
        MOVS     R0,#+0
        MOVS     R7,R0
//  147    
//  148   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??update_8:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        ADDS     R1,R7,R1
        STR      R1,[R0, #+16]
//  149   for(i = 0; i < moveLength; i++)
        MOVS     R8,#+0
??update_9:
        CMP      R8,R7
        BGE.N    ??update_10
//  150   {
//  151     uartData[i] = uartData[i0 + i];
        ADDS     R0,R8,R10
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R8
        STRB     R0,[R1, #+2]
//  152   }
        ADDS     R8,R8,#+1
        B.N      ??update_9
//  153   memset(uartData + moveLength, 0, 150 * sizeof(char));
??update_10:
        MOVS     R0,#+150
        STR      R0,[SP, #+4]
        MOVS     R5,#+0
        ADD      R0,R4,R7
        ADDS     R11,R0,#+2
        MOVS     R2,R5
        LDR      R1,[SP, #+4]
        MOV      R0,R11
        BL       __aeabi_memset
//  154   if(address0 > 100)
        CMP      R9,#+101
        BLT.N    ??update_11
//  155   {
//  156     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        STR      R1,[R0, #+16]
//  157   }
//  158   
//  159 }
??update_11:
??update_12:
        ADD      SP,SP,#+16
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return
//  160 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 void CUltrasoundUART::sendMeasureRequest()
//  162 {
_ZN15CUltrasoundUART18sendMeasureRequestEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  163   if(!DMA_isOccupying(DMA_CH3))
        MOVS     R0,#+3
        BL       DMA_isOccupying
        CMP      R0,#+0
        BNE.N    ??sendMeasureRequest_0
//  164   {
//  165     TX.clear();
        ADDW     R0,R4,#+3540
        BL       _ZN15CUltrasoundUART3TX_5clearEv
//  166     TX.add(0x55);
        MOVS     R1,#+85
        ADDW     R0,R4,#+3540
        BL       _ZN15CUltrasoundUART3TX_3addEc
//  167     TX.startDMA_Transmit(this);    
        MOVS     R1,R4
        ADDW     R0,R4,#+3540
        BL       _ZN15CUltrasoundUART3TX_17startDMA_TransmitEPS_
//  168   }
//  169 }
??sendMeasureRequest_0:
        POP      {R4,PC}          ;; return
//  170 
//  171 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void CUltrasoundUART::setNewPackageFlag(bool flag)
//  173 {
//  174   newPackageFlag = flag;
_ZN15CUltrasoundUART17setNewPackageFlagEb:
        STRB     R1,[R0, #+3532]
//  175 }
        BX       LR               ;; return
//  176 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  177 void CUltrasoundUART::TX_::startDMA_Transmit(CUltrasoundUART *tmp)
//  178 {
_ZN15CUltrasoundUART3TX_17startDMA_TransmitEPS_:
        PUSH     {R4,R5}
//  179   //DMA_changeLength(tmp->DMA_CHn_Tx, tmp->TX.index);    
//  180   DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
        LDR.N    R2,??DataTable2_8  ;; 0x40009000
        ADDW     R3,R1,#+3540
        LDRB     R4,[R1, #+1]
        LSLS     R4,R4,#+5
        STR      R3,[R2, R4]
//  181    //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  182   DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
        LDRB     R3,[R1, #+1]
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        LDR      R4,[R1, #+3552]
        LSLS     R4,R4,#+17       ;; ZeroExtS R4,R4,#+17,#+17
        LSRS     R4,R4,#+17
        STRH     R4,[R3, #+22]
//  183   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  184   DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
        LDRB     R3,[R1, #+1]
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        LDR      R3,[R1, #+3552]
        LSLS     R3,R3,#+17       ;; ZeroExtS R3,R3,#+17,#+17
        LSRS     R3,R3,#+17
        STRH     R3,[R2, #+30]
//  185   
//  186   DMA_EnableReq(tmp->DMA_CHn_Tx);
        LDR.N    R3,??DataTable2_13  ;; 0x4000800c
        LDR      R4,[R3, #+0]
        MOVS     R5,#+1
        LDRSB    R2,[R1, #+1]
        LSLS     R5,R5,R2
        ORRS     R4,R5,R4
        STR      R4,[R3, #+0]
//  187 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     `UltrasoundUART_Init()::static guard for UltrasoundUART_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     `UltrasoundUART_Init()::UltrasoundUART_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x4000800c

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
        DC32 0x80d0a8b0
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
        DC32 0x810103d0
        DC32 0xafb0b0
        DC16 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    24 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
// 3 566 bytes in section .bss
// 1 096 bytes in section .text
// 
//   858 bytes of CODE  memory (+ 238 bytes shared)
//    36 bytes of CONST memory
// 3 566 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
