///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:01
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\RemoteHub.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2B87.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\RemoteHub.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\RemoteHub.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN EVB
        EXTERN __aeabi_memset
        EXTERN t

        PUBLIC DMA_isOccupying
        PUBLIC RemoteHub
        PUBLIC _Z14RemoteHub_Initv
        PUBLIC _ZN10CRemoteHub10updateUartEv
        PUBLIC _ZN10CRemoteHub11sendPackageEv
        PUBLIC _ZN10CRemoteHub3TX_17startDMA_TransmitEv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\RemoteHub.cpp
//    1 #include "RemoteHub.h"

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
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CRemoteHub *RemoteHub;
RemoteHub:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void RemoteHub_Init()
//    7 {
_Z14RemoteHub_Initv:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RemoteHub_Init_0
//    8   static CRemoteHub RemoteHub_0;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
//    9   RemoteHub = &RemoteHub_0;
??RemoteHub_Init_0:
        LDR.N    R0,??DataTable2_1
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   10   
//   11   RemoteHub->DMA_CHn_Rx = DMA_CH8;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
//   12   RemoteHub->DMA_CHn_Tx = DMA_CH9;
        MOVS     R0,#+9
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+1]
//   13 }
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char RemoteHub_Init()::static guard for RemoteHub_0
`RemoteHub_Init()::static guard for RemoteHub_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`RemoteHub_Init()::RemoteHub_0`:
        DS8 2356
//   14 
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void CRemoteHub::updateUart()
//   17 {
_ZN10CRemoteHub10updateUartEv:
        PUSH     {R1-R11,LR}
        MOVS     R5,R0
//   18   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   19   int i = 0, i0 = 0;
        MOVS     R1,#+0
        MOVS     R6,#+0
//   20   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.N    R0,??DataTable2_3  ;; 0x40009000
        LDRB     R2,[R5, #+0]
        LSLS     R2,R2,#+5
        ADD      R0,R0,R2
        LDR      R0,[R0, #+16]
        ADDS     R7,R5,#+2
        SUBS     R7,R0,R7
//   21   int moveLength = 0;
        MOVS     R2,#+0
//   22   const int packageLength = 11;
        MOVS     R0,#+11
        STR      R0,[SP, #+4]
//   23   
//   24   bool loopFlag = false;
        MOVS     R4,#+0
//   25   byteInterval = t - byte_lastTime;
        LDR.N    R0,??DataTable2_4
        LDR      R3,[R0, #+0]
        LDR      R0,[R5, #+2008]
        SUBS     R3,R3,R0
        STR      R3,[R5, #+2004]
//   26   
//   27   if(byteInterval > 300)
        LDR      R0,[R5, #+2004]
        MOVW     R3,#+301
        CMP      R0,R3
        BLT.N    ??updateUart_0
//   28   {
//   29     valid = false;
        MOVS     R0,#+0
        STRB     R0,[R5, #+2036]
//   30   }
//   31   
//   32   if(byte_lastAddress != address0)
??updateUart_0:
        LDR      R0,[R5, #+2012]
        CMP      R0,R7
        BEQ.N    ??updateUart_1
//   33   {
//   34     byte_lastAddress = address0;
        STR      R7,[R5, #+2012]
//   35   }
//   36   for(; i < address0; i++)
??updateUart_1:
        CMP      R1,R7
        BGE.W    ??updateUart_2
//   37   {
//   38     for(; uartData[i] != 'e'; i++)
??updateUart_3:
        ADD      R0,R5,R1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+101
        BEQ.N    ??updateUart_4
//   39     {
//   40       if(i >= address0)
        CMP      R1,R7
        BLT.N    ??updateUart_5
//   41       {
//   42         loopFlag = true;
        MOVS     R0,#+1
        MOVS     R4,R0
//   43         break;
        B.N      ??updateUart_4
//   44       }
//   45     }
??updateUart_5:
        ADDS     R1,R1,#+1
        B.N      ??updateUart_3
//   46       
//   47     if(loopFlag)
??updateUart_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??updateUart_2
//   48     {
//   49       break;
//   50     }
//   51     if(i - i0 < packageLength - 1)
??updateUart_6:
        SUBS     R0,R1,R6
        CMP      R0,#+10
        BLT.N    ??updateUart_7
//   52     {
//   53       continue;
//   54     }
//   55     
//   56 //    char checkSum = 0; //注意每个包的checkSum都要清零
//   57 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   58 //    {
//   59 //      checkSum += uartData[k];
//   60 //    }
//   61 //    if(checkSum != uartData[i-1])
//   62 //    {
//   63 //      continue;
//   64 //    }
//   65     valid = true;
??updateUart_8:
        MOVS     R0,#+1
        STRB     R0,[R5, #+2036]
//   66     byte_lastTime = t;
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+2008]
//   67     byte_lastAddress = address0;
        STR      R7,[R5, #+2012]
//   68     i0 = i;    
        MOVS     R6,R1
//   69     
//   70     int packageTop = i - packageLength + 1;
        SUBS     R3,R1,#+10
//   71     Remote_Throttle = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        ADD      R0,R5,R3
        LDRB     R0,[R0, #+2]
        ADD      R12,R5,R3
        LDRB     R12,[R12, #+3]
        ORRS     R12,R12,R0, LSL #+8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        STR      R12,[R5, #+2016]
//   72     packageTop += 2;
        ADDS     R3,R3,#+2
//   73     Remote_Yaw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        ADD      R0,R5,R3
        LDRB     R0,[R0, #+2]
        ADD      R12,R5,R3
        LDRB     R12,[R12, #+3]
        ORRS     R12,R12,R0, LSL #+8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        STR      R12,[R5, #+2020]
//   74     packageTop += 2;
        ADDS     R3,R3,#+2
//   75     Remote_Roll = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        ADD      R0,R5,R3
        LDRB     R0,[R0, #+2]
        ADD      R12,R5,R3
        LDRB     R12,[R12, #+3]
        ORRS     R12,R12,R0, LSL #+8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        STR      R12,[R5, #+2024]
//   76     packageTop += 2;
        ADDS     R3,R3,#+2
//   77     Remote_Pitch = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        ADD      R0,R5,R3
        LDRB     R0,[R0, #+2]
        ADD      R12,R5,R3
        LDRB     R12,[R12, #+3]
        ORRS     R12,R12,R0, LSL #+8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        STR      R12,[R5, #+2028]
//   78     packageTop += 2;
        ADDS     R3,R3,#+2
//   79     Remote_Leftknob = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        ADD      R0,R5,R3
        LDRB     R0,[R0, #+2]
        ADD      R12,R5,R3
        LDRB     R12,[R12, #+3]
        ORRS     R12,R12,R0, LSL #+8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        STR      R12,[R5, #+2032]
//   80     
//   81     if(valid)
        LDRB     R0,[R5, #+2036]
        CMP      R0,#+0
        BEQ.N    ??updateUart_7
//   82     {
//   83       EVB.Yaw       = Remote_Yaw; 
        LDR      R0,[R5, #+2020]
        LDR.W    R12,??DataTable2_5
        STR      R0,[R12, #+1776]
//   84       EVB.Roll      = Remote_Roll;
        LDR      R0,[R5, #+2024]
        LDR.W    R12,??DataTable2_5
        STR      R0,[R12, #+1780]
//   85       EVB.Pitch     = Remote_Pitch;
        LDR      R0,[R5, #+2028]
        LDR.W    R12,??DataTable2_5
        STR      R0,[R12, #+1784]
//   86       EVB.ConstSpd  = Remote_Throttle;
        LDR      R0,[R5, #+2016]
        LDR.W    R12,??DataTable2_5
        STR      R0,[R12, #+1768]
//   87       EVB.LeftKnob  = Remote_Leftknob;
        LDR      R0,[R5, #+2032]
        LDR.W    R12,??DataTable2_5
        STR      R0,[R12, #+1788]
//   88     }
//   89     
//   90   }
??updateUart_7:
        ADDS     R1,R1,#+1
        B.N      ??updateUart_1
//   91   if(valid && !validLast)
??updateUart_2:
        LDRB     R0,[R5, #+2036]
        CMP      R0,#+0
        BEQ.N    ??updateUart_9
        LDRB     R0,[R5, #+2037]
        CMP      R0,#+0
        BNE.N    ??updateUart_9
//   92   {
//   93     validTime = t;
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+2044]
        B.N      ??updateUart_10
//   94   }
//   95   else if(!valid && validLast)
??updateUart_9:
        LDRB     R0,[R5, #+2036]
        CMP      R0,#+0
        BNE.N    ??updateUart_10
        LDRB     R0,[R5, #+2037]
        CMP      R0,#+0
        BEQ.N    ??updateUart_10
//   96   {
//   97     invalidTime = t;
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+2040]
//   98   }
//   99   validLast = valid;
??updateUart_10:
        LDRB     R0,[R5, #+2036]
        STRB     R0,[R5, #+2037]
//  100     
//  101   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
        LDR.N    R0,??DataTable2_3  ;; 0x40009000
        LDRB     R3,[R5, #+0]
        LSLS     R3,R3,#+5
        ADD      R0,R0,R3
        LDR      R0,[R0, #+16]
        ADDS     R8,R5,#+2
        SUBS     R8,R0,R8
        SUBS     R8,R8,R6
//  102   if(moveLength < 0) moveLength = 0;
        CMP      R8,#+0
        BPL.N    ??updateUart_11
        MOVS     R0,#+0
        MOV      R8,R0
//  103    
//  104   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??updateUart_11:
        ADDS     R0,R5,#+2
        ADDS     R0,R8,R0
        LDR.N    R2,??DataTable2_3  ;; 0x40009000
        LDRB     R3,[R5, #+0]
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        STR      R0,[R2, #+16]
//  105   for(i = 0; i < moveLength; i++)
        MOVS     R9,#+0
??updateUart_12:
        CMP      R9,R8
        BGE.N    ??updateUart_13
//  106   {
//  107     uartData[i] = uartData[i0 + i];
        ADDS     R0,R9,R6
        ADD      R0,R5,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R5,R9
        STRB     R0,[R1, #+2]
//  108   }
        ADDS     R9,R9,#+1
        B.N      ??updateUart_12
//  109   memset(uartData + moveLength, 0, 150 * sizeof(char));
??updateUart_13:
        MOVS     R0,#+150
        STR      R0,[SP, #+8]
        MOVS     R10,#+0
        ADD      R0,R5,R8
        ADDS     R11,R0,#+2
        MOV      R2,R10
        LDR      R1,[SP, #+8]
        MOV      R0,R11
        BL       __aeabi_memset
//  110   if(address0 > 100)
        CMP      R7,#+101
        BLT.N    ??updateUart_14
//  111   {
//  112     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        ADDS     R0,R5,#+2
        LDR.N    R1,??DataTable2_3  ;; 0x40009000
        LDRB     R2,[R5, #+0]
        LSLS     R2,R2,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+16]
//  113   }
//  114 }
??updateUart_14:
        POP      {R0-R2,R4-R11,PC}  ;; return
//  115 
//  116 
//  117 
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void CRemoteHub::sendPackage()
//  120 {
_ZN10CRemoteHub11sendPackageEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  121   if(!DMA_isOccupying(DMA_CHn_Tx))
        LDRB     R0,[R4, #+1]
        BL       DMA_isOccupying
//  122   {
//  123 //    TX.clear();
//  124 //    TX.add(Navigation->angleToScreenValid);
//  125 //    TX.startDMA_Transmit();    
//  126   }
//  127 }
        POP      {R4,PC}          ;; return
//  128 
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void CRemoteHub::TX_::startDMA_Transmit()
//  131 { 
//  132   //调整源地址
//  133   DMA0->TCD[DMA_CH7].SADDR = DMA_SADDR_SADDR(RemoteHub->TX.data);
_ZN10CRemoteHub3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+2048
        LDR.N    R2,??DataTable2_6  ;; 0x400090e0
        STR      R1,[R2, #+0]
//  134   
//  135   //设置主循环计数器 current major loop count
//  136   DMA0->TCD[DMA_CH7].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2348]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable2_7  ;; 0x400090f6
        STRH     R1,[R2, #+0]
//  137   
//  138   //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  139   DMA0->TCD[DMA_CH7].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
        LDR.N    R1,??DataTable2_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2348]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable2_8  ;; 0x400090fe
        STRH     R1,[R2, #+0]
//  140     
//  141   DMA_EnableReq(DMA_CH7);
        LDR.N    R1,??DataTable2_9  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x80
        LDR.N    R2,??DataTable2_9  ;; 0x4000800c
        STR      R1,[R2, #+0]
//  142 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     `RemoteHub_Init()::static guard for RemoteHub_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `RemoteHub_Init()::RemoteHub_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     RemoteHub

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x400090e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x400090f6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x400090fe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x4000800c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 2 361 bytes in section .bss
//   706 bytes in section .text
// 
//   686 bytes of CODE memory (+ 20 bytes shared)
// 2 361 bytes of DATA memory
//
//Errors: none
//Warnings: 1
