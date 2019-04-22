///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:04
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Odom.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW444C.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Odom.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\Odom.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN MPU6000_Raw
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN __aeabi_memset
        EXTERN __aeabi_unwind_cpp_pr0

        PUBLIC DMA_isOccupying
        PUBLIC Odom
        PUBLIC _Z9Odom_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC _ZN5COdom11sendPackageEv
        PUBLIC _ZN5COdom12Odom_convertEj
        PUBLIC _ZN5COdom3TX_17startDMA_TransmitEPS_
        PUBLIC _ZN5COdom3TX_3addEc
        PUBLIC _ZN5COdom3TX_5clearEv
        PUBLIC _ZN5COdom6updateEv
        PUBLIC _ZN5COdomC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Odom.c
//    1 #include "Odom.h"

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
        SECTION_GROUP _ZN5COdom3TX_3addEc
        THUMB
// __interwork __softfp void COdom::TX_::add(char)
_ZN5COdom3TX_3addEc:
        LDR      R2,[R0, #+1000]
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+1000]
        STRB     R1,[R0, R2]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5COdom3TX_5clearEv
        THUMB
// __interwork __softfp void COdom::TX_::clear()
_ZN5COdom3TX_5clearEv:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+100
        MOVS     R6,#+0
        MOVS     R7,R4
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R7
        BL       __aeabi_memset
        MOVS     R0,#+0
        STR      R0,[R4, #+1000]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5COdomC1Ev
        THUMB
// __code __interwork __softfp COdom::COdom()
_ZN5COdomC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDS     R0,R4,#+324
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+380
        BL       _ZN11CJumpFilterC1Ev
        MOVS     R0,#+0
        STRB     R0,[R4, #+1446]
        ADDW     R0,R4,#+1548
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1632
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+1716
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 COdom *Odom;
Odom:
        DS8 4
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void Odom_Init()
//    6 {
_Z9Odom_Initv:
        PUSH     {R4,LR}
        VPUSH    {D8}
        LDR.W    R4,??DataTable4_3
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??Odom_Init_0
//    7   static COdom Odom_static;
        LDR.W    R0,??DataTable4_4
        BL       _ZN5COdomC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    8   Odom = &Odom_static;
??Odom_Init_0:
        LDR.W    R4,??DataTable4_5
        LDR.W    R0,??DataTable4_4
        STR      R0,[R4, #+0]
//    9   Odom->DMA_CHn_Tx = DMA_CH9;
        MOVS     R0,#+9
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+1]
//   10   Odom->DMA_CHn_Rx = DMA_CH8;
        MOVS     R0,#+8
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+0]
//   11   Odom->positionFilterX.setParameter(10, 100);
        VMOV.F32 S16,#10.0
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+324
        BL       _ZN11CJumpFilter12setParameterEfi
//   12   Odom->positionFilterY.setParameter(10, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+380
        BL       _ZN11CJumpFilter12setParameterEfi
//   13   
//   14   Odom->positionFilterX.maxValue = 20;
        VMOV.F32 S0,#20.0
        LDR      R0,[R4, #+0]
        VSTR     S0,[R0, #+336]
//   15   Odom->positionFilterX.minValue = -20;
        VMOV.F32 S1,#-20.0
        LDR      R0,[R4, #+0]
        VSTR     S1,[R0, #+340]
//   16   
//   17   Odom->positionFilterY.maxValue = 20;
        LDR      R0,[R4, #+0]
        VSTR     S0,[R0, #+392]
//   18   Odom->positionFilterY.minValue = -20;
        LDR      R0,[R4, #+0]
        VSTR     S1,[R0, #+396]
//   19 }
??Odom_Init_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for Odom_static
`Odom_Init()::static guard for Odom_static`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Odom_Init()::Odom_static`:
        DS8 1800
//   20 
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void COdom::update()
//   23 {
_ZN5COdom6updateEv:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
//   24   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   25   int i = 0, i0 = 0, n;
        MOVS     R9,#+0
        MOVS     R5,#+0
//   26   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.W    R6,??DataTable4_6  ;; 0x40009000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R0,[R0, #+16]
        ADDS     R7,R4,#+2
        SUBS     R7,R0,R7
//   27   int moveLength = 0;
        MOVS     R8,#+0
//   28   const int packageLength = 27;
        MOVS     R0,#+27
        STR      R0,[SP, #+8]
//   29   bool loopFlag = false;  
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   30   readflag = false;
        MOVS     R0,#+0
        STRB     R0,[R4, #+1445]
//   31   for(; i < address0; i++)
??update_0:
        CMP      R9,R7
        BGE.N    ??update_1
//   32   {
//   33     for(; uartData[i] != 'x'&& i < address0 - 1; i++)
??update_2:
        ADD      R0,R4,R9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+120
        BEQ.N    ??update_3
        SUBS     R0,R7,#+1
        CMP      R9,R0
        BGE.N    ??update_3
        ADDS     R9,R9,#+1
        B.N      ??update_2
//   34     {
//   35     }
//   36     if(i - i0 < packageLength)
??update_3:
        SUBS     R0,R9,R5
        CMP      R0,#+27
        BLT.N    ??update_4
//   37     {
//   38       continue;
//   39     }
//   40     
//   41     unsigned char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
??update_5:
        MOVS     R10,#+0
//   42     for(int k = i - (packageLength - 2); k < i - 1; k++)
        SUBS     R1,R9,#+25
??update_6:
        SUBS     R0,R9,#+1
        CMP      R1,R0
        BGE.N    ??update_7
//   43     {
//   44       checkSum += uartData[k];
        ADD      R0,R4,R1
        LDRB     R0,[R0, #+2]
        ADDS     R10,R0,R10
//   45     }
        ADDS     R1,R1,#+1
        B.N      ??update_6
//   46     if(checkSum != uartData[i-1])
??update_7:
        MOV      R0,R10
        ADD      R1,R4,R9
        LDRB     R1,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??update_4
//   47     {
//   48       continue;
//   49     }
//   50   
//   51     i0 = i;    
??update_8:
        MOV      R5,R9
//   52     if( uartData[i+1] != 'X')
        ADD      R0,R4,R9
        LDRB     R0,[R0, #+3]
        CMP      R0,#+88
        BNE.N    ??update_4
//   53     {
//   54       continue;
//   55     }
//   56     int packageTop = i - packageLength + 2;
??update_9:
        SUBS     R11,R9,#+25
//   57     readflag = true;
        MOVS     R0,#+1
        STRB     R0,[R4, #+1445]
//   58     Odom_convert(packageTop);
        MOV      R1,R11
        MOVS     R0,R4
        BL       _ZN5COdom12Odom_convertEj
//   59    
//   60   }
??update_4:
        ADDS     R9,R9,#+1
        B.N      ??update_0
//   61   
//   62   if(readflag)
??update_1:
        LDRB     R0,[R4, #+1445]
        CMP      R0,#+0
        BEQ.N    ??update_10
//   63   {  
//   64     moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        LDR      R1,[R0, #+16]
        ADDS     R0,R4,#+2
        SUBS     R1,R1,R0
        SUBS     R1,R1,R5
        MOV      R8,R1
//   65     if(moveLength < 0) 
        CMP      R8,#+0
        BPL.N    ??update_11
//   66     {
//   67       moveLength = 0;
        MOVS     R0,#+0
        MOV      R8,R0
//   68     }
//   69     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??update_11:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        ADDS     R1,R8,R1
        STR      R1,[R0, #+16]
//   70     for(i = 0; i < moveLength; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??update_12:
        CMP      R9,R8
        BGE.N    ??update_13
//   71     {
//   72       uartData[i] = uartData[i0 + i];
        ADDS     R0,R9,R5
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R9
        STRB     R0,[R1, #+2]
//   73     }
        ADDS     R9,R9,#+1
        B.N      ??update_12
//   74     memset(uartData + moveLength, 0, 150 * sizeof(char));
??update_13:
        MOVS     R0,#+150
        STR      R0,[SP, #+4]
        MOVS     R10,#+0
        ADD      R0,R4,R8
        ADDS     R11,R0,#+2
        MOV      R2,R10
        LDR      R1,[SP, #+4]
        MOV      R0,R11
        BL       __aeabi_memset
//   75   }  
//   76   
//   77   if(address0 > 100)
??update_10:
        CMP      R7,#+101
        BLT.N    ??update_14
//   78   {
//   79      DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R6,R0
        ADDS     R1,R4,#+2
        STR      R1,[R0, #+16]
//   80   }
//   81   
//   82    
//   83   
//   84 }
??update_14:
        POP      {R0-R2,R4-R11,PC}  ;; return
//   85 
//   86 
//   87 
//   88 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   89 unsigned char COdom::Odom_convert(unsigned int start)
//   90 { 
_ZN5COdom12Odom_convertEj:
        PUSH     {R4}
        MOVS     R2,R0
//   91   int i;
//   92   float kx = 0.73,ky = 0.54;
        VLDR.W   S0,??DataTable4  ;; 0x3f3ae148
        VLDR.W   S1,??DataTable4_1  ;; 0x3f0a3d71
//   93     for (int i = 0; i < 4; i++)
        MOVS     R0,#+0
??Odom_convert_0:
        CMP      R0,#+4
        BGE.N    ??Odom_convert_1
//   94     {
//   95       positionX_raw.data[i] = uartData[start+i];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+2]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1484]
//   96       positionY_raw.data[i] = uartData[start+i+4];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+6]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1488]
//   97       positionZ_raw.data[i] = uartData[start+i+8];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+10]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1492]
//   98       velX_raw.data[i] = uartData[start+i+12];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+14]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1496]
//   99       velY_raw.data[i] = uartData[start+i+16];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+18]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1500]
//  100       velZ_raw.data[i] = uartData[start+i+20];
        ADDS     R3,R0,R1
        ADD      R3,R2,R3
        LDRB     R3,[R3, #+22]
        ADD      R4,R2,R0
        STRB     R3,[R4, #+1504]
//  101     } 
        ADDS     R0,R0,#+1
        B.N      ??Odom_convert_0
//  102     valid = true;
??Odom_convert_1:
        MOVS     R0,#+1
        STRB     R0,[R2, #+1444]
//  103     if(valid)
        LDRB     R0,[R2, #+1444]
        CMP      R0,#+0
        BEQ.N    ??Odom_convert_2
//  104     {
//  105       positionX  = positionX_raw.d; 
        LDR      R0,[R2, #+1484]
        STR      R0,[R2, #+1460]
//  106       positionY  = positionY_raw.d;
        LDR      R0,[R2, #+1488]
        STR      R0,[R2, #+1464]
//  107       positionZ  = positionZ_raw.d;
        LDR      R0,[R2, #+1492]
        STR      R0,[R2, #+1468]
//  108       velX       = velX_raw.d;
        LDR      R0,[R2, #+1496]
        STR      R0,[R2, #+1472]
//  109       velY       = velY_raw.d;
        LDR      R0,[R2, #+1500]
        STR      R0,[R2, #+1476]
//  110       velZ       = velZ_raw.d;
        LDR      R0,[R2, #+1504]
        STR      R0,[R2, #+1480]
//  111     }
//  112 //    positionX_raw_f = positionFilterX.newData3(positionX, t);
//  113 //    positionY_raw_f = positionFilterY.newData3(positionY, t);
//  114     positionX_raw_f = positionX*kx/100;
??Odom_convert_2:
        LDR      R0,[R2, #+1460]
        VMOV     S2,R0
        VMUL.F32 S2,S2,S0
        VLDR.W   S3,??DataTable4_2  ;; 0x42c80000
        VDIV.F32 S2,S2,S3
        ADDW     R0,R2,#+1452
        VSTR     S2,[R0, #0]
//  115     positionY_raw_f = positionY*ky/100;
        LDR      R0,[R2, #+1464]
        VMOV     S2,R0
        VMUL.F32 S2,S2,S1
        VLDR.W   S3,??DataTable4_2  ;; 0x42c80000
        VDIV.F32 S2,S2,S3
        ADDW     R0,R2,#+1456
        VSTR     S2,[R0, #0]
//  116     return(0);    
        MOVS     R0,#+0
        POP      {R4}
        BX       LR               ;; return
//  117   
//  118 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void COdom::sendPackage()
//  120 {
_ZN5COdom11sendPackageEv:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  121   if(!DMA_isOccupying(DMA_CH9))
        MOVS     R0,#+9
        BL       DMA_isOccupying
        CMP      R0,#+0
        BNE.W    ??sendPackage_0
//  122   {
//  123     q0.d = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+1508]
//  124     q1.d = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+1512]
//  125     q2.d = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+1516]
//  126     q3.d = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+1520]
//  127     accel_X.d = MPU6000_Raw.accel_x;
        LDR.N    R0,??DataTable4_7
        LDR      R1,[R0, #+48]
        STR      R1,[R4, #+1524]
//  128     accel_Y.d = MPU6000_Raw.accel_y;
        LDR      R1,[R0, #+52]
        STR      R1,[R4, #+1528]
//  129     accel_Z.d = MPU6000_Raw.accel_z;
        LDR      R1,[R0, #+56]
        STR      R1,[R4, #+1532]
//  130     gyro_X.d = MPU6000_Raw.gyro_x;
        LDR      R1,[R0, #+60]
        STR      R1,[R4, #+1536]
//  131     gyro_Y.d = MPU6000_Raw.gyro_y;
        LDR      R1,[R0, #+64]
        STR      R1,[R4, #+1540]
//  132     gyro_Z.d = MPU6000_Raw.gyro_z;
        LDR      R0,[R0, #+68]
        STR      R0,[R4, #+1544]
//  133     TX.clear();
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_5clearEv
//  134     for (int i = 0; i < 4; i++)
        MOVS     R5,#+0
??sendPackage_1:
        CMP      R5,#+4
        BGE.N    ??sendPackage_2
//  135     {
//  136       TX.add(q0.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1508]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  137     } 
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_1
//  138     for (int i = 0; i < 4; i++)
??sendPackage_2:
        MOVS     R5,#+0
??sendPackage_3:
        CMP      R5,#+4
        BGE.N    ??sendPackage_4
//  139     {
//  140       TX.add(q1.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1512]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  141     } 
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_3
//  142     for (int i = 0; i < 4; i++)
??sendPackage_4:
        MOVS     R5,#+0
??sendPackage_5:
        CMP      R5,#+4
        BGE.N    ??sendPackage_6
//  143     {
//  144       TX.add(q2.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1516]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  145     }
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_5
//  146     for (int i = 0; i < 4; i++)
??sendPackage_6:
        MOVS     R5,#+0
??sendPackage_7:
        CMP      R5,#+4
        BGE.N    ??sendPackage_8
//  147     {
//  148       TX.add(q3.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1520]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  149     }
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_7
//  150     
//  151     
//  152     for (int i = 0; i < 4; i++)
??sendPackage_8:
        MOVS     R5,#+0
??sendPackage_9:
        CMP      R5,#+4
        BGE.N    ??sendPackage_10
//  153     {
//  154       TX.add(accel_X.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1524]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  155     } 
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_9
//  156     for (int i = 0; i < 4; i++)
??sendPackage_10:
        MOVS     R5,#+0
??sendPackage_11:
        CMP      R5,#+4
        BGE.N    ??sendPackage_12
//  157     {
//  158       TX.add(accel_Y.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1528]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  159     }
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_11
//  160     for (int i = 0; i < 4; i++)
??sendPackage_12:
        MOVS     R5,#+0
??sendPackage_13:
        CMP      R5,#+4
        BGE.N    ??sendPackage_14
//  161     {
//  162       TX.add(accel_Z.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1532]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  163     }
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_13
//  164     
//  165     
//  166     for (int i = 0; i < 4; i++)
??sendPackage_14:
        MOVS     R5,#+0
??sendPackage_15:
        CMP      R5,#+4
        BGE.N    ??sendPackage_16
//  167     {
//  168       TX.add(gyro_X.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1536]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  169     } 
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_15
//  170     for (int i = 0; i < 4; i++)
??sendPackage_16:
        MOVS     R5,#+0
??sendPackage_17:
        CMP      R5,#+4
        BGE.N    ??sendPackage_18
//  171     {
//  172       TX.add(gyro_Y.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1540]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  173     }
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_17
//  174     for (int i = 0; i < 4; i++)
??sendPackage_18:
        MOVS     R5,#+0
??sendPackage_19:
        CMP      R5,#+4
        BGE.N    ??sendPackage_20
//  175     {
//  176       TX.add(gyro_Z.data[i]); 
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+1544]
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  177     }   
        ADDS     R5,R5,#+1
        B.N      ??sendPackage_19
//  178     TX.add(0x0a);
??sendPackage_20:
        MOVS     R1,#+10
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_3addEc
//  179     TX.startDMA_Transmit(this);    
        MOVS     R1,R4
        ADDS     R0,R4,#+436
        BL       _ZN5COdom3TX_17startDMA_TransmitEPS_
//  180   }
//  181 }
??sendPackage_0:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void COdom::TX_::startDMA_Transmit(COdom *tmp)
//  183 { 
_ZN5COdom3TX_17startDMA_TransmitEPS_:
        PUSH     {R4,R5}
//  184   //µ÷ÕûÔ´µØÖ·
//  185   DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
        LDR.N    R2,??DataTable4_6  ;; 0x40009000
        ADDS     R3,R1,#+436
        LDRB     R4,[R1, #+1]
        LSLS     R4,R4,#+5
        STR      R3,[R2, R4]
//  186   
//  187   //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  188   DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
        LDRB     R3,[R1, #+1]
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        LDR      R4,[R1, #+1436]
        LSLS     R4,R4,#+17       ;; ZeroExtS R4,R4,#+17,#+17
        LSRS     R4,R4,#+17
        STRH     R4,[R3, #+22]
//  189   
//  190   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  191   DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
        LDRB     R3,[R1, #+1]
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        LDR      R3,[R1, #+1436]
        LSLS     R3,R3,#+17       ;; ZeroExtS R3,R3,#+17,#+17
        LSRS     R3,R3,#+17
        STRH     R3,[R2, #+30]
//  192     
//  193   DMA_EnableReq(tmp->DMA_CHn_Tx);
        LDR.N    R3,??DataTable4_8  ;; 0x4000800c
        LDR      R4,[R3, #+0]
        MOVS     R5,#+1
        LDRSB    R2,[R1, #+1]
        LSLS     R5,R5,R2
        ORRS     R4,R5,R4
        STR      R4,[R3, #+0]
//  194 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x3f3ae148

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x3f0a3d71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     `Odom_Init()::static guard for Odom_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     `Odom_Init()::Odom_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Odom

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     MPU6000_Raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x4000800c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9Odom_Initv
        SECTION_LINK _Z9Odom_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9Odom_Initv))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//     8 bytes in section .ARM.exidx
// 1 805 bytes in section .bss
// 1 306 bytes in section .text
// 
// 1 112 bytes of CODE  memory (+ 194 bytes shared)
//     8 bytes of CONST memory
// 1 805 bytes of DATA  memory
//
//Errors: none
//Warnings: 4
