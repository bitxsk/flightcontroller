///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:06
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\RemoteHub.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW4AC7.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\RemoteHub.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\RemoteHub.s
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
        LDR.N    R1,??DataTable2
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??RemoteHub_Init_0
//    8   static CRemoteHub RemoteHub_0;
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
//    9   RemoteHub = &RemoteHub_0;
??RemoteHub_Init_0:
        LDR.N    R0,??DataTable2_1
        LDR.N    R1,??DataTable2_2
        STR      R1,[R0, #+0]
//   10   
//   11   RemoteHub->DMA_CHn_Rx = DMA_CH3;
        MOVS     R1,#+3
        LDR      R2,[R0, #+0]
        STRB     R1,[R2, #+0]
//   12   RemoteHub->DMA_CHn_Tx = DMA_CH0;
        MOVS     R1,#+0
        LDR      R0,[R0, #+0]
        STRB     R1,[R0, #+1]
//   13 }
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for RemoteHub_0
`RemoteHub_Init()::static guard for RemoteHub_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`RemoteHub_Init()::RemoteHub_0`:
        DS8 30356
//   14 
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void CRemoteHub::updateUart()
//   17 {
_ZN10CRemoteHub10updateUartEv:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
//   18   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   19   int i = 0, i0 = 0;
        MOVS     R1,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   20   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.N    R5,??DataTable2_3  ;; 0x40009000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R5,R0
        LDR      R0,[R0, #+16]
        ADDS     R6,R4,#+2
        SUBS     R6,R0,R6
//   21   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   22   const int packageLength = 11;
        MOVS     R0,#+11
        STR      R0,[SP, #+12]
//   23   
//   24   bool loopFlag = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   25   byteInterval = t - byte_lastTime;
        MOVW     R3,#+30004
        LDR.N    R2,??DataTable2_4
        LDR      R7,[R2, #+0]
        MOVW     R0,#+30008
        LDR      R0,[R4, R0]
        SUBS     R7,R7,R0
        STR      R7,[R4, R3]
//   26   
//   27   if(byteInterval > 300)
        LDR      R0,[R4, R3]
        MOVW     R3,#+301
        CMP      R0,R3
        BLT.N    ??updateUart_0
//   28   {
//   29     valid = false;
        MOVS     R0,#+0
        MOVW     R3,#+30036
        STRB     R0,[R4, R3]
//   30   }
//   31   
//   32   if(byte_lastAddress != address0)
??updateUart_0:
        MOVW     R3,#+30012
        LDR      R0,[R4, R3]
        CMP      R0,R6
        BEQ.N    ??updateUart_1
//   33   {
//   34     byte_lastAddress = address0;
        STR      R6,[R4, R3]
//   35   }
//   36   for(; i < address0; i++)
??updateUart_1:
        CMP      R1,R6
        BGE.W    ??updateUart_2
//   37   {
//   38     for(; uartData[i] != 'e'; i++)
??updateUart_3:
        ADD      R0,R4,R1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+101
        BEQ.N    ??updateUart_4
//   39     {
//   40       if(i >= address0)
        CMP      R1,R6
        BLT.N    ??updateUart_5
//   41       {
//   42         loopFlag = true;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
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
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??updateUart_2
//   48     {
//   49       break;
//   50     }
//   51     if(i - i0 < packageLength - 1)
??updateUart_6:
        LDR      R0,[SP, #+4]
        SUBS     R0,R1,R0
        CMP      R0,#+10
        BLT.W    ??updateUart_7
//   52     {
//   53       continue;
//   54     }
//   55     
//   56 //    char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
//   57 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   58 //    {
//   59 //      checkSum += uartData[k];
//   60 //    }
//   61 //    if(checkSum != uartData[i-1])
//   62 //    {
//   63 //      continue;
//   64 //    }
//   65 //    valid = true;
//   66     valid = false;
??updateUart_8:
        MOVW     R0,#+30036
        MOVS     R7,#+0
        STRB     R7,[R4, R0]
//   67     byte_lastTime = t;
        LDR      R7,[R2, #+0]
        MOVW     R12,#+30008
        STR      R7,[R4, R12]
//   68     byte_lastAddress = address0;
        STR      R6,[R4, R3]
//   69     i0 = i;    
        STR      R1,[SP, #+4]
//   70     
//   71     int packageTop = i - packageLength + 1;
        SUBS     R10,R1,#+10
//   72     Remote_Throttle = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        MOVW     R7,#+30016
        ADD      R12,R4,R10
        LDRB     R12,[R12, #+2]
        ADD      LR,R4,R10
        LDRB     LR,[LR, #+3]
        ORRS     LR,LR,R12, LSL #+8
        SXTH     LR,LR            ;; SignExt  LR,LR,#+16,#+16
        STR      LR,[R4, R7]
//   73     packageTop += 2;
        ADDS     R10,R10,#+2
//   74     Remote_Yaw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        MOVW     LR,#+30020
        ADD      R12,R4,R10
        LDRB     R12,[R12, #+2]
        ADD      R8,R4,R10
        LDRB     R8,[R8, #+3]
        ORRS     R8,R8,R12, LSL #+8
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        STR      R8,[R4, LR]
//   75     packageTop += 2;
        ADDS     R10,R10,#+2
//   76     Remote_Roll = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        MOVW     R8,#+30024
        ADD      R12,R4,R10
        LDRB     R12,[R12, #+2]
        ADD      R9,R4,R10
        LDRB     R9,[R9, #+3]
        ORRS     R9,R9,R12, LSL #+8
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        STR      R9,[R4, R8]
//   77     packageTop += 2;
        ADDS     R10,R10,#+2
//   78     Remote_Pitch = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        MOVW     R9,#+30028
        ADD      R12,R4,R10
        LDRB     R12,[R12, #+2]
        ADD      R11,R4,R10
        LDRB     R11,[R11, #+3]
        ORRS     R11,R11,R12, LSL #+8
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        STR      R11,[R4, R9]
//   79     packageTop += 2;
        ADDS     R10,R10,#+2
        STR      R10,[SP, #+8]
//   80     Remote_Leftknob = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
        MOVW     R12,#+30032
        LDR      R10,[SP, #+8]
        ADD      R10,R4,R10
        LDRB     R10,[R10, #+2]
        LDR      R11,[SP, #+8]
        ADD      R11,R4,R11
        LDRB     R11,[R11, #+3]
        ORRS     R11,R11,R10, LSL #+8
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        STR      R11,[R4, R12]
//   81     
//   82     if(valid)
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??updateUart_7
//   83     {
//   84       EVB.Yaw       = Remote_Yaw; 
        LDR.N    R0,??DataTable2_5
        LDR      LR,[R4, LR]
        STR      LR,[R0, #+1776]
//   85       EVB.Roll      = Remote_Roll;
        LDR      LR,[R4, R8]
        STR      LR,[R0, #+1780]
//   86       EVB.Pitch     = Remote_Pitch;
        LDR      LR,[R4, R9]
        STR      LR,[R0, #+1784]
//   87       EVB.ConstSpd  = Remote_Throttle;
        LDR      R7,[R4, R7]
        STR      R7,[R0, #+1768]
//   88       EVB.LeftKnob  = Remote_Leftknob;
        LDR      R7,[R4, R12]
        STR      R7,[R0, #+1788]
//   89     }
//   90     
//   91   }
??updateUart_7:
        ADDS     R1,R1,#+1
        B.N      ??updateUart_1
//   92   if(valid && !validLast)
??updateUart_2:
        MOVW     R3,#+30036
        LDRB     R0,[R4, R3]
        CMP      R0,#+0
        BEQ.N    ??updateUart_9
        MOVW     R0,#+30037
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BNE.N    ??updateUart_9
//   93   {
//   94     validTime = t;
        LDR      R0,[R2, #+0]
        MOVW     R2,#+30044
        STR      R0,[R4, R2]
        B.N      ??updateUart_10
//   95   }
//   96   else if(!valid && validLast)
??updateUart_9:
        LDRB     R0,[R4, R3]
        CMP      R0,#+0
        BNE.N    ??updateUart_10
        MOVW     R0,#+30037
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??updateUart_10
//   97   {
//   98     invalidTime = t;
        LDR      R0,[R2, #+0]
        MOVW     R2,#+30040
        STR      R0,[R4, R2]
//   99   }
//  100   validLast = valid;
??updateUart_10:
        LDRB     R0,[R4, R3]
        MOVW     R2,#+30037
        STRB     R0,[R4, R2]
//  101     
//  102   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R5,R0
        LDR      R2,[R0, #+16]
        ADDS     R0,R4,#+2
        SUBS     R2,R2,R0
        LDR      R7,[SP, #+4]
        SUBS     R7,R2,R7
//  103   if(moveLength < 0) moveLength = 0;
        CMP      R7,#+0
        BPL.N    ??updateUart_11
        MOVS     R0,#+0
        MOVS     R7,R0
//  104    
//  105   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??updateUart_11:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R5,R0
        ADDS     R2,R4,#+2
        ADDS     R2,R7,R2
        STR      R2,[R0, #+16]
//  106   for(i = 0; i < moveLength; i++)
        MOVS     R8,#+0
??updateUart_12:
        CMP      R8,R7
        BGE.N    ??updateUart_13
//  107   {
//  108     uartData[i] = uartData[i0 + i];
        LDR      R0,[SP, #+4]
        ADDS     R0,R8,R0
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R8
        STRB     R0,[R1, #+2]
//  109   }
        ADDS     R8,R8,#+1
        B.N      ??updateUart_12
//  110   memset(uartData + moveLength, 0, 150 * sizeof(char));
??updateUart_13:
        MOVS     R9,#+150
        MOVS     R10,#+0
        ADD      R0,R4,R7
        ADDS     R11,R0,#+2
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R11
        BL       __aeabi_memset
//  111   if(address0 > 100)
        CMP      R6,#+101
        BLT.N    ??updateUart_14
//  112   {
//  113     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R5,R0
        ADDS     R1,R4,#+2
        STR      R1,[R0, #+16]
//  114   }
//  115 }
??updateUart_14:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//  116 
//  117 
//  118 
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void CRemoteHub::sendPackage()
//  121 {
_ZN10CRemoteHub11sendPackageEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  122   if(!DMA_isOccupying(DMA_CHn_Tx))
        LDRB     R0,[R4, #+1]
        BL       DMA_isOccupying
//  123   {
//  124 //    TX.clear();
//  125 //    TX.add(Navigation->angleToScreenValid);
//  126 //    TX.startDMA_Transmit();    
//  127   }
//  128 }
        POP      {R4,PC}          ;; return
//  129 
//  130 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void CRemoteHub::TX_::startDMA_Transmit()
//  132 { 
_ZN10CRemoteHub3TX_17startDMA_TransmitEv:
        PUSH     {R4}
//  133   //µ÷ÕûÔ´µØÖ·
//  134   DMA0->TCD[DMA_CH7].SADDR = DMA_SADDR_SADDR(RemoteHub->TX.data);
        LDR.N    R1,??DataTable2_1
        LDR      R2,[R1, #+0]
        MOVW     R3,#+30048
        ADD      R2,R2,R3
        LDR.N    R3,??DataTable2_6  ;; 0x400090e0
        STR      R2,[R3, #+0]
//  135   
//  136   //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  137   DMA0->TCD[DMA_CH7].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
        MOVW     R2,#+30348
        LDR      R3,[R1, #+0]
        LDR      R3,[R3, R2]
        LSLS     R3,R3,#+17       ;; ZeroExtS R3,R3,#+17,#+17
        LSRS     R3,R3,#+17
        LDR.N    R4,??DataTable2_7  ;; 0x400090f6
        STRH     R3,[R4, #+0]
//  138   
//  139   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  140   DMA0->TCD[DMA_CH7].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, R2]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable2_8  ;; 0x400090fe
        STRH     R1,[R2, #+0]
//  141     
//  142   DMA_EnableReq(DMA_CH7);
        LDR.N    R1,??DataTable2_9  ;; 0x4000800c
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x80
        STR      R2,[R1, #+0]
//  143 }
        POP      {R4}
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
        DC32     RemoteHub

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `RemoteHub_Init()::RemoteHub_0`

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
// 30 361 bytes in section .bss
//    744 bytes in section .text
// 
//    724 bytes of CODE memory (+ 20 bytes shared)
// 30 361 bytes of DATA memory
//
//Errors: none
//Warnings: 1
