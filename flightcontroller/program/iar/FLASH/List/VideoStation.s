///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:07
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\VideoStation.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW51E1.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\VideoStation.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\VideoStation.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN IMU_acc_E
        EXTERN Navigation
        EXTERN UltrasoundUART
        EXTERN _ZN11CJumpFilter10accumulateEf
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter12setParameterEfif
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter8newData3Efi
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_memset
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN t

        PUBLIC DMA_isOccupying
        PUBLIC _Z17VideoStation_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN13CVideoStation10updateUartEv
        PUBLIC _ZN13CVideoStation11sendPackageEv
        PUBLIC _ZN13CVideoStation3TX_17startDMA_TransmitEv
        PUBLIC _ZN13CVideoStation3TX_3addEc
        PUBLIC _ZN13CVideoStation3TX_5clearEv
        PUBLIC _ZN13CVideoStation7PIT_isrEv
        PUBLIC _ZN13CVideoStationC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC videoStation

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\VideoStation.cpp
//    1 #include "VideoStation.h"

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
        SECTION_GROUP _ZN13CVideoStation3TX_3addEc
        THUMB
// __interwork __softfp void CVideoStation::TX_::add(char)
_ZN13CVideoStation3TX_3addEc:
        LDR      R2,[R0, #+300]
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+300]
        STRB     R1,[R0, R2]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN13CVideoStation3TX_5clearEv
        THUMB
// __interwork __softfp void CVideoStation::TX_::clear()
_ZN13CVideoStation3TX_5clearEv:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R5,#+300
        MOVS     R6,#+0
        MOVS     R7,R4
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R7
        BL       __aeabi_memset
        MOVS     R0,#+0
        STR      R0,[R4, #+300]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN13CVideoStationC1Ev
        THUMB
// __code __interwork __softfp CVideoStation::CVideoStation()
_ZN13CVideoStationC1Ev:
        PUSH     {R4,LR}
        VPUSH    {D8}
        MOVS     R4,R0
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2276
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+2360
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+2444
        BL       _ZN10CoordinateC1Ev
        VLDR.W   S16,??CVideoStation_0  ;; 0x3e19999a
        VMOV.F32 S17,#20.0
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter12setParameterEfif
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter12setParameterEfif
        MOVS     R0,R4
??CVideoStation_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return
        DATA
??CVideoStation_0:
        DC32     0x3e19999a
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CVideoStation *videoStation;
videoStation:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    6 void VideoStation_Init()
//    7 {
_Z17VideoStation_Initv:
        PUSH     {R4,LR}
        VPUSH    {D8}
        LDR.W    R4,??DataTable4_3
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??VideoStation_Init_0
//    8   static CVideoStation videoStation_0;
        LDR.W    R0,??DataTable4_4
        BL       _ZN13CVideoStationC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    9   videoStation = &videoStation_0;
??VideoStation_Init_0:
        LDR.W    R4,??DataTable4_5
        LDR.W    R0,??DataTable4_4
        STR      R0,[R4, #+0]
//   10   
//   11   videoStation->DMA_CHn_Rx = DMA_CH6;
        MOVS     R0,#+6
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+0]
//   12   videoStation->DMA_CHn_Tx = DMA_CH7;
        MOVS     R0,#+7
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+1]
//   13   
//   14   videoStation->positionFilterX.setParameter(100, 100);
        VLDR.W   S16,??DataTable1  ;; 0x42c80000
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+2148
        BL       _ZN11CJumpFilter12setParameterEfi
//   15   videoStation->positionFilterX.maxValue = 240;
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable4_6  ;; 0x43700000
        STR      R1,[R0, #+2160]
//   16   videoStation->positionFilterX.minValue = 0;
        LDR      R0,[R4, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+2164]
//   17   
//   18   
//   19   videoStation->positionFilterY.setParameter(100, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDW     R0,R0,#+2204
        BL       _ZN11CJumpFilter12setParameterEfi
//   20   videoStation->positionFilterY.maxValue = 320;
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable4_15  ;; 0x43a00000
        STR      R1,[R0, #+2216]
//   21   videoStation->positionFilterY.minValue = 0;
        LDR      R0,[R4, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+2220]
//   22 }
??VideoStation_Init_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for videoStation_0
`VideoStation_Init()::static guard for videoStation_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`VideoStation_Init()::videoStation_0`:
        DS8 2856
//   23 
//   24 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   25 void CVideoStation::updateUart()
//   26 {
_ZN13CVideoStation10updateUartEv:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+16
        MOVS     R4,R0
//   27   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   28   int i = 0, i0 = 0;
        MOVS     R10,#+0
        MOVS     R5,#+0
//   29   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.W    R6,??DataTable4_7  ;; 0x40009000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R0,[R0, #+16]
        ADDS     R7,R4,#+2
        SUBS     R7,R0,R7
//   30   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   31   const int packageLength = 6;
        MOVS     R0,#+6
        STR      R0,[SP, #+12]
//   32   
//   33   bool loopFlag = false;
        MOVS     R8,#+0
//   34   byteInterval = t - byte_lastTime;
        LDR.W    R9,??DataTable4_8
        LDR      R1,[R9, #+0]
        LDR      R0,[R4, #+2008]
        SUBS     R1,R1,R0
        STR      R1,[R4, #+2004]
//   35   
//   36   if(byteInterval > 300 || !positionFilterX.valid || !positionFilterY.valid)
        LDR      R0,[R4, #+2004]
        MOVW     R1,#+301
        CMP      R0,R1
        BGE.N    ??updateUart_0
        LDRB     R0,[R4, #+2200]
        CMP      R0,#+0
        BEQ.N    ??updateUart_0
        LDRB     R0,[R4, #+2256]
        CMP      R0,#+0
        BNE.N    ??updateUart_1
//   37   {
//   38     valid = false;
??updateUart_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+2528]
//   39   }
//   40   
//   41   if(byte_lastAddress != address0)
??updateUart_1:
        LDR      R0,[R4, #+2012]
        CMP      R0,R7
        BEQ.N    ??updateUart_2
//   42   {
//   43     byte_lastAddress = address0;
        STR      R7,[R4, #+2012]
//   44   }
//   45   for(; i < address0; i++)
??updateUart_2:
        CMP      R10,R7
        BGE.W    ??updateUart_3
//   46   {
//   47     for(; uartData[i] != 'e'; i++)
??updateUart_4:
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+2]
        CMP      R0,#+101
        BEQ.N    ??updateUart_5
//   48     {
//   49       if(i >= address0)
        CMP      R10,R7
        BLT.N    ??updateUart_6
//   50       {
//   51         loopFlag = true;
        MOVS     R0,#+1
        MOV      R8,R0
//   52         break;
        B.N      ??updateUart_5
//   53       }
//   54     }
??updateUart_6:
        ADDS     R10,R10,#+1
        B.N      ??updateUart_4
//   55       
//   56     if(loopFlag)
??updateUart_5:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??updateUart_3
//   57     {
//   58       break;
//   59     }
//   60     if(i - i0 < packageLength - 1)
??updateUart_7:
        SUBS     R0,R10,R5
        CMP      R0,#+5
        BLT.W    ??updateUart_8
//   61     {
//   62       continue;
//   63     }
//   64     
//   65 //    char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
//   66 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   67 //    {
//   68 //      checkSum += uartData[k];
//   69 //    }
//   70 //    if(checkSum != uartData[i-1])
//   71 //    {
//   72 //      continue;
//   73 //    }
//   74     byte_lastTime = t;
??updateUart_9:
        LDR      R0,[R9, #+0]
        STR      R0,[R4, #+2008]
//   75     byte_lastAddress = address0;
        STR      R7,[R4, #+2012]
//   76     i0 = i;    
        MOV      R5,R10
//   77     
//   78     int packageTop = i - packageLength + 1;
        SUBS     R11,R10,#+5
//   79     valid = (bool)(uartData[packageTop] - '0');
        ADD      R0,R4,R11
        LDRB     R0,[R0, #+2]
        SUBS     R0,R0,#+48
        CMP      R0,#+0
        BEQ.N    ??updateUart_10
        MOVS     R0,#+1
        B.N      ??updateUart_11
??updateUart_10:
        MOVS     R0,#+0
??updateUart_11:
        STRB     R0,[R4, #+2528]
//   80     packageTop += 1;
        ADDS     R11,R11,#+1
//   81     
//   82     switch(uartData[packageTop] - '0')
        ADD      R0,R4,R11
        LDRB     R0,[R0, #+2]
        SUBS     R0,R0,#+48
        CMP      R0,#+0
        BEQ.N    ??updateUart_12
        CMP      R0,#+2
        BEQ.N    ??updateUart_13
        BCC.N    ??updateUart_14
        CMP      R0,#+3
        BEQ.N    ??updateUart_15
        B.N      ??updateUart_16
//   83     {
//   84     case 0:
//   85       remoteState = searchScreen;
??updateUart_12:
        MOVS     R0,#+0
        STRB     R0,[R4, #+2541]
//   86       break;
        B.N      ??updateUart_16
//   87     case 1:
//   88       remoteState = searchTarget;
??updateUart_14:
        MOVS     R0,#+1
        STRB     R0,[R4, #+2541]
//   89       break;
        B.N      ??updateUart_16
//   90     case 2:
//   91       remoteState = foundTarget;
??updateUart_13:
        MOVS     R0,#+2
        STRB     R0,[R4, #+2541]
//   92       break;
        B.N      ??updateUart_16
//   93     case 3:
//   94       remoteState = idel;
??updateUart_15:
        MOVS     R0,#+3
        STRB     R0,[R4, #+2541]
//   95       break;
//   96     }
//   97     if(myState == searchScreen  && (t - idelTime > 1000))
??updateUart_16:
        LDRB     R0,[R4, #+2540]
        CMP      R0,#+0
        BNE.N    ??updateUart_17
        LDR      R1,[R9, #+0]
        LDR      R0,[R4, #+2544]
        SUBS     R1,R1,R0
        MOVW     R0,#+1001
        CMP      R1,R0
        BLT.N    ??updateUart_17
//   98     {
//   99       myState = searchTarget;
        MOVS     R0,#+1
        STRB     R0,[R4, #+2540]
//  100     }
//  101     
//  102     if(valid)
??updateUart_17:
        LDRB     R0,[R4, #+2528]
        CMP      R0,#+0
        BEQ.N    ??updateUart_8
//  103     {
//  104       float distanceCmaera = 1.54;//Navigation->DesiredDistanceToScreen - EKF_AHRS.fusion.position.x + 0.1; //0.1ÊÇÏà»úÀë³¬Éù²¨µÄ¾àÀë
        VLDR.W   S16,??DataTable4  ;; 0x3fc51eb8
//  105       
//  106       packageTop += 1;
        ADDS     R11,R11,#+1
//  107       positionX_raw = (int16)(uartData[packageTop + 1] << 8 | uartData[packageTop]); //x×ø±ê µ¥Î»ÏñËØ
        ADD      R0,R4,R11
        LDRB     R0,[R0, #+3]
        ADD      R1,R4,R11
        LDRB     R1,[R1, #+2]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        ADDW     R0,R4,#+2020
        VSTR     S0,[R0, #0]
//  108       positionX_F = positionFilterX.newData3(positionX_raw, t);
        LDR      R1,[R9, #+0]
        LDR      R0,[R4, #+2020]
        VMOV     S0,R0
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+2260
        VSTR     S0,[R0, #0]
//  109       positionX_A = (positionX_F - 120) * distanceCmaera / 192;
        LDR      R0,[R4, #+2260]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable4_1  ;; 0xc2f00000
        VADD.F32 S0,S0,S1
        VMUL.F32 S0,S0,S16
        VLDR.W   S1,??DataTable4_16  ;; 0x43400000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+2268
        VSTR     S0,[R0, #0]
//  110       
//  111       packageTop += 2;
        ADDS     R11,R11,#+2
//  112       positionY_raw = (int16)(uartData[packageTop + 1] << 8 | uartData[packageTop]); //y×ø±ê
        ADD      R0,R4,R11
        LDRB     R0,[R0, #+3]
        ADD      R1,R4,R11
        LDRB     R1,[R1, #+2]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        ADDW     R0,R4,#+2024
        VSTR     S0,[R0, #0]
//  113       positionY_F = positionFilterY.newData3(positionY_raw, t);
        LDR      R1,[R9, #+0]
        LDR      R0,[R4, #+2024]
        VMOV     S0,R0
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+2264
        VSTR     S0,[R0, #0]
//  114       positionY_A = (positionY_F - 160) * distanceCmaera / 192;
        LDR      R0,[R4, #+2264]
        VMOV     S0,R0
        VLDR.W   S1,??DataTable4_2  ;; 0xc3200000
        VADD.F32 S0,S0,S1
        VMUL.F32 S0,S0,S16
        VLDR.W   S1,??DataTable4_16  ;; 0x43400000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+2272
        VSTR     S0,[R0, #0]
//  115     }
//  116   }
??updateUart_8:
        ADDS     R10,R10,#+1
        B.N      ??updateUart_2
//  117   if(valid && !validLast)
??updateUart_3:
        LDRB     R0,[R4, #+2528]
        CMP      R0,#+0
        BEQ.N    ??updateUart_18
        LDRB     R0,[R4, #+2529]
        CMP      R0,#+0
        BNE.N    ??updateUart_18
//  118   {
//  119     validTime = t;
        LDR      R0,[R9, #+0]
        STR      R0,[R4, #+2536]
        B.N      ??updateUart_19
//  120   }
//  121   else if(!valid && validLast)
??updateUart_18:
        LDRB     R0,[R4, #+2528]
        CMP      R0,#+0
        BNE.N    ??updateUart_19
        LDRB     R0,[R4, #+2529]
        CMP      R0,#+0
        BEQ.N    ??updateUart_19
//  122   {
//  123     invalidTime = t;
        LDR      R0,[R9, #+0]
        STR      R0,[R4, #+2532]
//  124   }
//  125   validLast = valid;
??updateUart_19:
        LDRB     R0,[R4, #+2528]
        STRB     R0,[R4, #+2529]
//  126     
//  127   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R0,[R0, #+16]
        ADDS     R9,R4,#+2
        SUBS     R9,R0,R9
        SUBS     R9,R9,R5
//  128   if(moveLength < 0) moveLength = 0;
        CMP      R9,#+0
        BPL.N    ??updateUart_20
        MOVS     R0,#+0
        MOV      R9,R0
//  129    
//  130   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??updateUart_20:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        ADDS     R1,R9,R1
        STR      R1,[R0, #+16]
//  131   for(i = 0; i < moveLength; i++)
        MOVS     R11,#+0
??updateUart_21:
        CMP      R11,R9
        BGE.N    ??updateUart_22
//  132   {
//  133     uartData[i] = uartData[i0 + i];
        ADDS     R0,R11,R5
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R11
        STRB     R0,[R1, #+2]
//  134   }
        ADDS     R11,R11,#+1
        B.N      ??updateUart_21
//  135   memset(uartData + moveLength, 0, 150 * sizeof(char));
??updateUart_22:
        MOVS     R0,#+150
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        ADD      R0,R4,R9
        ADDS     R10,R0,#+2
        LDR      R2,[SP, #+4]
        LDR      R1,[SP, #+8]
        MOV      R0,R10
        BL       __aeabi_memset
//  136   if(address0 > 100)
        CMP      R7,#+101
        BLT.N    ??updateUart_23
//  137   {
//  138     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        STR      R1,[R0, #+16]
//  139   }
//  140 }
??updateUart_23:
??updateUart_24:
        ADD      SP,SP,#+16
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x42c80000
//  141 
//  142 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  143 void CVideoStation::PIT_isr()
//  144 {
_ZN13CVideoStation7PIT_isrEv:
        PUSH     {R3-R5,LR}
        VPUSH    {D8}
        MOVS     R4,R0
//  145   this->velFilter_x.checkIsNewData(t);
        LDR.N    R5,??DataTable4_8
        LDR      R1,[R5, #+0]
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  146   this->velFilter_y.checkIsNewData(t);
        LDR      R1,[R5, #+0]
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  147   velFilter_x.accumulate(IMU_acc_E.x * 0.002);
        LDR.N    R5,??DataTable4_9
        MOVS     R0,R5
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   D8,??DataTable4_17
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter10accumulateEf
//  148   velFilter_y.accumulate(IMU_acc_E.y * 0.002);
        ADDS     R0,R5,#+28
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter10accumulateEf
//  149 }
??PIT_isr_0:
        VPOP     {D8}
        POP      {R0,R4,R5,PC}    ;; return
//  150 
//  151 
//  152 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  153 void CVideoStation::sendPackage()
//  154 {
_ZN13CVideoStation11sendPackageEv:
        PUSH     {R3-R5,LR}
        VPUSH    {D8}
        MOVS     R4,R0
//  155   if(!DMA_isOccupying(DMA_CHn_Tx))
        LDRB     R0,[R4, #+1]
        BL       DMA_isOccupying
        CMP      R0,#+0
        BNE.N    ??sendPackage_0
//  156   {
//  157     TX.clear();
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_5clearEv
//  158     TX.add(Navigation->angleToScreenValid);
        LDR.N    R5,??DataTable4_10
        LDR      R0,[R5, #+0]
        LDRB     R1,[R0, #+154]
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  159     int distance = (int)((Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x) * 1000);
        LDR.N    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        LDR      R0,[R5, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VLDR.W   S1,??DataTable4_18  ;; 0x447a0000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S16,S0
//  160     TX.add((int16)distance >> 8);
        VMOV     R0,S16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  161     TX.add((int16)distance);
        VMOV     R0,S16
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  162     TX.add(myState);
        LDRB     R1,[R4, #+2540]
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  163     TX.add('\r');
        MOVS     R1,#+13
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  164     TX.add('\n');
        MOVS     R1,#+10
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_3addEc
//  165     TX.startDMA_Transmit();    
        ADDW     R0,R4,#+2548
        BL       _ZN13CVideoStation3TX_17startDMA_TransmitEv
//  166   }
//  167 }
??sendPackage_0:
??sendPackage_1:
        VPOP     {D8}
        POP      {R0,R4,R5,PC}    ;; return
//  168 
//  169 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void CVideoStation::TX_::startDMA_Transmit()
//  171 { 
//  172   //µ÷ÕûÔ´µØÖ·
//  173   DMA0->TCD[DMA_CH7].SADDR = DMA_SADDR_SADDR(videoStation->TX.data);
_ZN13CVideoStation3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable4_5
        LDR      R2,[R1, #+0]
        ADDW     R2,R2,#+2548
        LDR.N    R3,??DataTable4_12  ;; 0x400090e0
        STR      R2,[R3, #+0]
//  174   
//  175   //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  176   DMA0->TCD[DMA_CH7].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(videoStation->TX.index);
        LDR      R2,[R1, #+0]
        LDR      R2,[R2, #+2848]
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        LDR.N    R3,??DataTable4_13  ;; 0x400090f6
        STRH     R2,[R3, #+0]
//  177   
//  178   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  179   DMA0->TCD[DMA_CH7].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(videoStation->TX.index);
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2848]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable4_14  ;; 0x400090fe
        STRH     R1,[R2, #+0]
//  180     
//  181   DMA_EnableReq(DMA_CH7);
        LDR.N    R1,??DataTable4_19  ;; 0x4000800c
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x80
        STR      R2,[R1, #+0]
//  182 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x3fc51eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xc2f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xc3200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     `VideoStation_Init()::static guard for videoStation_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     `VideoStation_Init()::videoStation_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x43700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     IMU_acc_E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x400090e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x400090f6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x400090fe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x43a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x43400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0xD2F1A9FC,0x3F60624D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x4000800c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN13CVideoStationC1Ev
        SECTION_LINK _ZN13CVideoStationC1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN13CVideoStationC1Ev))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z17VideoStation_Initv
        SECTION_LINK _Z17VideoStation_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z17VideoStation_Initv))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN13CVideoStation10updateUartEv
        SECTION_LINK _ZN13CVideoStation10updateUartEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN13CVideoStation10updateUartEv))
        DC32 RELOC_ARM_PREL31(`.extab for _ZN13CVideoStation10updateUartEv`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZN13CVideoStation10updateUartEv
`.extab for _ZN13CVideoStation10updateUartEv`:
        DATA
        DC32 0x810103d0
        DC32 0xafb0b0
        DC16 0, 0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN13CVideoStation7PIT_isrEv
        SECTION_LINK _ZN13CVideoStation7PIT_isrEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN13CVideoStation7PIT_isrEv))
        DC32 0x80d000a9
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN13CVideoStation11sendPackageEv
        SECTION_LINK _ZN13CVideoStation11sendPackageEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN13CVideoStation11sendPackageEv))
        DC32 0x80d000a9
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    40 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
// 2 861 bytes in section .bss
// 1 508 bytes in section .text
// 
// 1 246 bytes of CODE  memory (+ 262 bytes shared)
//    52 bytes of CONST memory
// 2 861 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
