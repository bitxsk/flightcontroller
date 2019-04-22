///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:03:59
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\GPS.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW328E.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\GPS.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\GPS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter12setParameterEfif
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter8newData3Efi
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN arm_cos_f32
        EXTERN arm_sin_f32
        EXTERN atof
        EXTERN strlen
        EXTERN strncpy
        EXTERN t

        PUBLIC GPS
        PUBLIC _Z8GPS_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC _ZN4CGPS10get_locateEd
        PUBLIC _ZN4CGPS10updateUartEv
        PUBLIC _ZN4CGPS17get_double_numberEPc
        PUBLIC _ZN4CGPS3TX_17startDMA_TransmitEv
        PUBLIC _ZN4CGPS6unpackEii
        PUBLIC _ZN4CGPS8GetCommaEiPc
        PUBLIC _ZN4CGPSC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\GPS.cpp
//    1 #include "GPS.h"

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

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4CGPSC1Ev
        THUMB
// __code __interwork __softfp CGPS::CGPS()
_ZN4CGPSC1Ev:
        PUSH     {R4-R6,LR}
        VPUSH    {D8}
        MOVS     R4,R0
        MOVW     R0,#+25156
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilterC1Ev
        MOVW     R0,#+25212
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilterC1Ev
        MOVW     R6,#+25268
        ADD      R0,R4,R6
        BL       _ZN11CJumpFilterC1Ev
        MOVW     R5,#+25324
        ADD      R0,R4,R5
        BL       _ZN11CJumpFilterC1Ev
        MOVW     R0,#+25380
        ADD      R0,R4,R0
        BL       _ZN10CoordinateC1Ev
        MOVW     R0,#+25464
        ADD      R0,R4,R0
        BL       _ZN10CoordinateC1Ev
        VLDR.W   S16,??CGPS_0     ;; 0x3e19999a
        VMOV.F32 S17,#20.0
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        ADD      R0,R4,R6
        BL       _ZN11CJumpFilter12setParameterEfif
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        ADD      R0,R4,R5
        BL       _ZN11CJumpFilter12setParameterEfif
        MOVS     R0,R4
??CGPS_1:
        VPOP     {D8}
        POP      {R4-R6,PC}       ;; return
        DATA
??CGPS_0:
        DC32     0x3e19999a
//    2 #include "string.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 CGPS *GPS;
GPS:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void GPS_Init()
//    6 {
_Z8GPS_Initv:
        PUSH     {R4,LR}
        VPUSH    {D8}
        LDR.W    R4,??DataTable4
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??GPS_Init_0
//    7   static CGPS GPS_0;
        LDR.W    R0,??DataTable4_1
        BL       _ZN4CGPSC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    8   GPS = &GPS_0;
??GPS_Init_0:
        LDR.W    R4,??DataTable4_2
        LDR.W    R0,??DataTable4_1
        STR      R0,[R4, #+0]
//    9   GPS->DMA_CHn_Rx = DMA_CH4;
        MOVS     R0,#+4
        LDR      R1,[R4, #+0]
        STRB     R0,[R1, #+32]
//   10   
//   11 //  GPS->latitude_reference  = 3.0849812550000002E+1; //Èü³¡ÆÁÄ» µ¥µã¾«¶È
//   12 //  GPS->longitude_reference = 1.1961452616666665E+2;
//   13 //  GPS->altitude0           = 2.3269999999999999E+1;
//   14 
//   15 //  GPS->latitude_reference  = 3.084906361666666544E+1;
//   16 //  GPS->longitude_reference = 1.1961322839999999E+2;
//   17 //  GPS->altitude0           = 3.2796999999999997E+1;
//   18   GPS->positionFilterX.setParameter(10, 100);
        VMOV.F32 S16,#10.0
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        MOVW     R2,#+25156
        ADD      R0,R0,R2
        BL       _ZN11CJumpFilter12setParameterEfi
//   19   GPS->positionFilterY.setParameter(10, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        MOVW     R2,#+25212
        ADD      R0,R0,R2
        BL       _ZN11CJumpFilter12setParameterEfi
//   20   
//   21   GPS->positionFilterX.maxValue = 20;
        VMOV.F32 S0,#20.0
        LDR      R0,[R4, #+0]
        MOVW     R1,#+25168
        ADD      R0,R0,R1
        VSTR     S0,[R0, #0]
//   22   GPS->positionFilterX.minValue = -20;
        VMOV.F32 S1,#-20.0
        LDR      R0,[R4, #+0]
        MOVW     R1,#+25172
        ADD      R0,R0,R1
        VSTR     S1,[R0, #0]
//   23   
//   24   GPS->positionFilterY.maxValue = 20;
        LDR      R0,[R4, #+0]
        MOVW     R1,#+25224
        ADD      R0,R0,R1
        VSTR     S0,[R0, #0]
//   25   GPS->positionFilterY.minValue = -20;
        LDR      R0,[R4, #+0]
        MOVW     R1,#+25228
        ADD      R0,R0,R1
        VSTR     S1,[R0, #0]
//   26 }
??GPS_Init_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for GPS_0
`GPS_Init()::static guard for GPS_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
`GPS_Init()::GPS_0`:
        DS8 25856
//   27 
//   28 
//   29 /*************»ñµÃ¶ÔÓ¦ÐòºÅ¶ººÅºóµÄÊý¾ÝÎ»ÖÃ*****************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 int CGPS::GetComma(int num,char *str)
//   31 {
_ZN4CGPS8GetCommaEiPc:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   32   int i,j = 0;
        MOVS     R7,#+0
//   33   int len = strlen(str);
        MOVS     R0,R6
        BL       strlen
        MOVS     R2,R0
//   34   for(i=0;i<len;i++)
        MOVS     R1,#+0
??GetComma_0:
        CMP      R1,R2
        BGE.N    ??GetComma_1
//   35   {
//   36     //for(;str[i]!='$';i++)
//   37     //{}
//   38     if(str[i]==',')
        LDRB     R0,[R6, R1]
        CMP      R0,#+44
        BNE.N    ??GetComma_2
//   39     {
//   40       j++;
        ADDS     R7,R7,#+1
//   41     }
//   42     
//   43     if(j==num)
??GetComma_2:
        CMP      R7,R5
        BNE.N    ??GetComma_3
//   44       return i+1;
        ADDS     R1,R1,#+1
        MOVS     R0,R1
        B.N      ??GetComma_4
//   45   }
??GetComma_3:
        ADDS     R1,R1,#+1
        B.N      ??GetComma_0
//   46   return 0;
??GetComma_1:
        MOVS     R0,#+0
??GetComma_4:
        POP      {R1,R4-R7,PC}    ;; return
//   47 }
//   48 
//   49 
//   50 /******************½âÎöÊý¾Ý***************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void CGPS::updateUart()
//   52 {
_ZN4CGPS10updateUartEv:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
//   53   velFilter_x1.checkIsNewData(t);
        LDR.W    R11,??DataTable4_3
        LDR      R1,[R11, #+0]
        MOVW     R0,#+25268
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   54   velFilter_y1.checkIsNewData(t);
        LDR      R1,[R11, #+0]
        MOVW     R0,#+25324
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   55   
//   56   
//   57   bool newPackage = false;
        MOVS     R5,#+0
//   58   
//   59   int i = 0, i0 = 0;
        MOVS     R10,#+0
        MOVS     R6,#+0
//   60   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&GPS_BUF[0]);
        LDR.W    R7,??DataTable4_4  ;; 0x40009000
        LDRB     R0,[R4, #+32]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        LDR      R0,[R0, #+16]
        ADDS     R8,R4,#+33
        SUBS     R8,R0,R8
//   61   
//   62   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   63   
//   64   bool loopFlag = false;
        MOVS     R9,#+0
//   65   //byteInterval = t - byte_lastTime;
//   66   if(byte_lastAddress != address0)
        LDR      R0,[R4, #+8]
        CMP      R0,R8
        BEQ.N    ??updateUart_0
//   67   {
//   68     byte_lastTime = t;
        LDR      R0,[R11, #+0]
        STR      R0,[R4, #+4]
//   69     byte_lastAddress = address0;
        STR      R8,[R4, #+8]
//   70   }
//   71   for(; i < address0; i++)
??updateUart_0:
        CMP      R10,R8
        BGE.N    ??updateUart_1
//   72   {
//   73     for(; GPS_BUF[i] != '\n'; i++)
??updateUart_2:
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+33]
        CMP      R0,#+10
        BEQ.N    ??updateUart_3
//   74     {
//   75       if((GPS_BUF[i] == '$')&&(GPS_BUF[i+1] == 'G')&&(GPS_BUF[i+2] == 'N')&&(GPS_BUF[i+3] == 'G'))
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+33]
        CMP      R0,#+36
        BNE.N    ??updateUart_4
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+34]
        CMP      R0,#+71
        BNE.N    ??updateUart_4
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+35]
        CMP      R0,#+78
        BNE.N    ??updateUart_4
        ADD      R0,R4,R10
        LDRB     R0,[R0, #+36]
        CMP      R0,#+71
        BNE.N    ??updateUart_4
//   76       {
//   77         start = i;
        STR      R10,[R4, #+12]
//   78       }
//   79       
//   80       
//   81       if(i >= address0)
??updateUart_4:
        CMP      R10,R8
        BLT.N    ??updateUart_5
//   82       {
//   83         
//   84         loopFlag = true;
        MOVS     R0,#+1
        MOV      R9,R0
//   85         break;
        B.N      ??updateUart_3
//   86       }
//   87     }
??updateUart_5:
        ADDS     R10,R10,#+1
        B.N      ??updateUart_2
//   88     
//   89     if(loopFlag)
??updateUart_3:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??updateUart_1
//   90     {
//   91       break;
//   92     }
//   93     
//   94     //    char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
//   95     //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   96     //    {
//   97     //      checkSum += uartData[k];
//   98     //    }
//   99     //    if(checkSum != uartData[i-1])
//  100     //    {
//  101     //      continue;
//  102     //    }
//  103     //byte_lastTime = t;
//  104     i0 = i + 1; 
??updateUart_6:
        ADDS     R0,R10,#+1
        MOVS     R6,R0
//  105     end = i;
        STR      R10,[R4, #+16]
//  106     
//  107     // unpack(start, i);
//  108     if(end-start > 1)unpack(start, i);
        LDR      R1,[R4, #+16]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+2
        BLT.N    ??updateUart_7
        MOV      R2,R10
        LDR      R1,[R4, #+12]
        MOVS     R0,R4
        BL       _ZN4CGPS6unpackEii
//  109     
//  110     byte_lastAddress = address0;
??updateUart_7:
        STR      R8,[R4, #+8]
//  111   }
        ADDS     R10,R10,#+1
        B.N      ??updateUart_0
//  112   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&GPS_BUF[0]) - i0;
??updateUart_1:
        LDRB     R0,[R4, #+32]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        LDR      R1,[R0, #+16]
        ADDS     R0,R4,#+33
        SUBS     R0,R1,R0
        SUBS     R0,R0,R6
//  113   if(moveLength < 0) moveLength = 0;
        CMP      R0,#+0
        BPL.N    ??updateUart_8
        MOVS     R1,#+0
        MOVS     R0,R1
//  114   
//  115   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0] + moveLength);
??updateUart_8:
        LDRB     R1,[R4, #+32]
        LSLS     R1,R1,#+5
        ADD      R1,R7,R1
        ADDS     R2,R4,#+33
        ADDS     R2,R0,R2
        STR      R2,[R1, #+16]
//  116   for(i = 0; i < moveLength; i++)
        MOVS     R1,#+0
??updateUart_9:
        CMP      R1,R0
        BGE.N    ??updateUart_10
//  117   {
//  118     GPS_BUF[i] = GPS_BUF[i0 + i];
        ADDS     R2,R1,R6
        ADD      R2,R4,R2
        LDRB     R2,[R2, #+33]
        ADD      R3,R4,R1
        STRB     R2,[R3, #+33]
//  119   }
        ADDS     R1,R1,#+1
        B.N      ??updateUart_9
//  120   // memset(GPS_BUF + moveLength, 0, 500 * sizeof(char));
//  121   if(address0 > 500)
??updateUart_10:
        MOVW     R2,#+501
        CMP      R8,R2
        BLT.N    ??updateUart_11
//  122   {
//  123     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0]);
        LDRB     R2,[R4, #+32]
        LSLS     R2,R2,#+5
        ADD      R2,R7,R2
        ADDS     R3,R4,#+33
        STR      R3,[R2, #+16]
//  124   }
//  125   
//  126   
//  127   
//  128 }
??updateUart_11:
??updateUart_12:
        POP      {R0,R4-R11,PC}   ;; return
//  129 //½«»ñÈ¡ÎÄ±¾ÐÅÏ¢×ª»»ÎªdoubleÐÍ
//  130 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 double CGPS::get_double_number(char *s)
//  132 {
_ZN4CGPS17get_double_numberEPc:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+128
        MOVS     R4,R0
        MOVS     R5,R1
//  133   char buf[128];
//  134   int i;
//  135   double rev;
//  136   i=GetComma(1,s);
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        MOVS     R6,R0
//  137   strncpy(buf,s,i);
        MOVS     R2,R6
        MOVS     R1,R5
        MOV      R0,SP
        BL       strncpy
//  138   buf[i]=0;
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, R6]
//  139   rev=atof(buf);
        MOV      R0,SP
        BL       atof
//  140   
//  141   return rev;
        ADD      SP,SP,#+128
        POP      {R4-R6,PC}       ;; return
//  142 }
//  143 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  144 double CGPS::get_locate(double temp)
//  145 {
_ZN4CGPS10get_locateEd:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D9}
        MOVS     R4,R0
        VMOV.F32 S16,S0
        VMOV.F32 S17,S1
//  146   int m;
//  147   double  n;
//  148   m=(int)temp/100;
        VMOV     R0,R1,D8
        BL       __aeabi_d2iz
        MOVS     R1,#+100
        SDIV     R5,R0,R1
//  149   n=(temp-m*100)/60;
        MOVS     R0,#+100
        MUL      R0,R0,R5
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D8
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_5  ;; 0x404e0000
        BL       __aeabi_ddiv
        VMOV     D9,R0,R1
//  150   n=n+m;
        MOVS     R0,R5
        BL       __aeabi_i2d
        VMOV     R2,R3,D9
        BL       __aeabi_dadd
        VMOV     D0,R0,R1
//  151   return n;
        VPOP     {D8-D9}
        POP      {R0,R4,R5,PC}    ;; return
//  152   
//  153 }
//  154 
//  155 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 void CGPS::unpack(int start, int end)
//  157 {
_ZN4CGPS6unpackEii:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R11,R2
//  158   //int tmp;
//  159   
//  160   c = GPS_BUF[start+5];
        MOVW     R0,#+25128
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+38]
        STRB     R1,[R4, R0]
//  161   if(c=='A')
        LDRB     R0,[R4, R0]
        CMP      R0,#+65
        BNE.W    ??unpack_0
//  162   {
//  163     //"GNGGA"
//  164     D.hour   =(GPS_BUF[start+ 7]-'0')*10+(GPS_BUF[start+ 8]-'0');
        MOVS     R1,#+10
        ADD      R0,R4,R5
        LDRB     R2,[R0, #+40]
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+41]
        MLA      R2,R1,R2,R0
        SUBS     R2,R2,#+528
        MOVW     R0,#+25040
        STR      R2,[R4, R0]
//  165     D.minute =(GPS_BUF[start+ 9]-'0')*10+(GPS_BUF[start+10]-'0');
        ADD      R0,R4,R5
        LDRB     R2,[R0, #+42]
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+43]
        MLA      R2,R1,R2,R0
        SUBS     R2,R2,#+528
        MOVW     R0,#+25044
        STR      R2,[R4, R0]
//  166     D.second =(GPS_BUF[start+11]-'0')*10+(GPS_BUF[start+12]-'0');
        ADD      R0,R4,R5
        LDRB     R2,[R0, #+44]
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+45]
        MLA      R1,R1,R2,R0
        SUBS     R1,R1,#+528
        MOVW     R0,#+25048
        STR      R1,[R4, R0]
//  167     //tmp = GetComma(9,GPS_BUF);
//  168     //D.day    =(GPS_BUF[tmp+0]-'0')*10+(GPS_BUF[tmp+1]-'0');
//  169     //D.month  =(GPS_BUF[tmp+2]-'0')*10+(GPS_BUF[tmp+3]-'0');
//  170     //D.year   =(GPS_BUF[tmp+4]-'0')*10+(GPS_BUF[tmp+5]-'0')+2000;
//  171     
//  172  //   status   = GPS_BUF[GetComma(6, GPS_BUF)];
//  173     status   = '1';
        MOVW     R0,#+25129
        MOVS     R1,#+49
        STRB     R1,[R4, R0]
//  174     if(status == '1' || status == '4' || status == '5')
        LDRB     R1,[R4, R0]
        CMP      R1,#+49
        BEQ.N    ??unpack_1
        LDRB     R1,[R4, R0]
        CMP      R1,#+52
        BEQ.N    ??unpack_1
        LDRB     R0,[R4, R0]
        CMP      R0,#+53
        BNE.N    ??unpack_2
//  175     {
//  176       latitude = get_locate(get_double_number(&GPS_BUF[GetComma(2, GPS_BUF)]));
??unpack_1:
        ADDS     R2,R4,#+33
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        MOVS     R0,R4
        BL       _ZN4CGPS10get_locateEd
        MOVW     R0,#+25064
        ADD      R0,R4,R0
        VSTR     D0,[R0, #0]
//  177       NS       = GPS_BUF[GetComma(3, GPS_BUF)];
        ADDS     R2,R4,#+33
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+33]
        MOVW     R1,#+25130
        STRB     R0,[R4, R1]
//  178       longitude= get_locate(get_double_number(&GPS_BUF[GetComma(4, GPS_BUF)]));
        ADDS     R2,R4,#+33
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        MOVS     R0,R4
        BL       _ZN4CGPS10get_locateEd
        MOVW     R0,#+25072
        ADD      R0,R4,R0
        VSTR     D0,[R0, #0]
//  179       EW       = GPS_BUF[GetComma(5, GPS_BUF)];
        ADDS     R2,R4,#+33
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+33]
        MOVW     R1,#+25131
        STRB     R0,[R4, R1]
//  180       satqua   = get_double_number(&GPS_BUF[GetComma(7, GPS_BUF)]);
        ADDS     R2,R4,#+33
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        MOVW     R0,#+25136
        ADD      R0,R4,R0
        VSTR     D0,[R0, #0]
//  181       altitude = get_double_number(&GPS_BUF[GetComma(9, GPS_BUF)]);
        ADDS     R2,R4,#+33
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        MOVW     R0,#+25080
        ADD      R0,R4,R0
        VSTR     D0,[R0, #0]
        B.N      ??unpack_3
//  182     }
//  183     else
//  184     {
//  185       valid = false;
??unpack_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
//  186     }
//  187     
//  188     //UTC2BTC(&GPS->D);//ÊÀ½çÊ±¼ä 
//  189     GPS->dy = (GPS->latitude - GPS->latitude_reference) * 111133;
??unpack_3:
        MOVW     R10,#+25120
        LDR.N    R6,??DataTable4_2
        LDR      R0,[R6, #+0]
        MOVW     R1,#+25064
        ADD      R0,R0,R1
        LDRD     R0,R1,[R0, #+0]
        LDR      R2,[R6, #+0]
        MOVW     R3,#+25096
        ADD      R2,R2,R3
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_6  ;; 0x40fb21d0
        BL       __aeabi_dmul
        LDR      R2,[R6, #+0]
        ADD      R2,R2,R10
        STRD     R0,R1,[R2, #+0]
//  190     GPS->dx = (GPS->longitude - GPS->longitude_reference) * 111319 * arm_cos_f32((GPS->longitude - GPS->longitude_reference) / 57.2957795);
        MOVW     R8,#+25104
        MOVW     R7,#+25072
        LDR      R0,[R6, #+0]
        ADD      R0,R0,R7
        LDRD     R0,R1,[R0, #+0]
        LDR      R2,[R6, #+0]
        ADD      R2,R2,R8
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        LDR.N    R2,??DataTable4_7  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_8  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S16,S0
        MOVW     R9,#+25112
        LDR      R0,[R6, #+0]
        ADD      R0,R0,R7
        LDRD     R0,R1,[R0, #+0]
        LDR      R2,[R6, #+0]
        ADD      R2,R2,R8
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9  ;; 0x40fb2d70
        BL       __aeabi_dmul
        STRD     R0,R1,[SP, #+0]
        VMOV     R0,S16
        BL       __aeabi_f2d
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dmul
        LDR      R2,[R6, #+0]
        ADD      R2,R2,R9
        STRD     R0,R1,[R2, #+0]
//  191     
//  192     
//  193     dx_local = positionFilterX.newData3(dy * arm_cos_f32(angle / 57.2957795) - dx * arm_sin_f32(angle / 57.2957795), t);
        MOVW     R6,#+25152
        LDR      R0,[R4, R6]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_7  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_8  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S16,S0
        LDR      R0,[R4, R6]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_7  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_8  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_sin_f32
        VMOV.F32 S17,S0
        LDR.N    R7,??DataTable4_3
        LDR      R1,[R7, #+0]
        MOV      R8,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        ADD      R2,R4,R10
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        STRD     R0,R1,[SP, #+0]
        VMOV     R0,S17
        BL       __aeabi_f2d
        ADD      R2,R4,R9
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        LDRD     R0,R1,[SP, #+0]
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOV      R1,R8
        MOVW     R0,#+25156
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilter8newData3Efi
        MOVW     R0,#+25144
        ADD      R0,R4,R0
        VSTR     S0,[R0, #0]
//  194     dy_local = positionFilterY.newData3(dy * arm_sin_f32(angle / 57.2957795) + dx * arm_cos_f32(angle / 57.2957795), t);
        LDR      R0,[R4, R6]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_7  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_8  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_sin_f32
        VMOV.F32 S16,S0
        LDR      R0,[R4, R6]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_7  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_8  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S17,S0
        LDR      R1,[R7, #+0]
        MOV      R8,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        ADD      R2,R4,R10
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        ADD      R2,R4,R9
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOV      R1,R8
        MOVW     R0,#+25212
        ADD      R0,R4,R0
        BL       _ZN11CJumpFilter8newData3Efi
        MOVW     R0,#+25148
        ADD      R0,R4,R0
        VSTR     S0,[R0, #0]
//  195   }
//  196 }
??unpack_0:
??unpack_4:
        ADD      SP,SP,#+8
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return
//  197 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 void CGPS::TX_::startDMA_Transmit()
//  199 {
_ZN4CGPS3TX_17startDMA_TransmitEv:
        PUSH     {R4}
//  200   //µ÷ÕûÔ´µØÖ·
//  201   DMA0->TCD[DMA_CH5].SADDR = DMA_SADDR_SADDR(GPS->TX.data);
        LDR.N    R1,??DataTable4_2
        LDR      R2,[R1, #+0]
        MOVW     R3,#+25548
        ADD      R2,R2,R3
        LDR.N    R3,??DataTable4_10  ;; 0x400090a0
        STR      R2,[R3, #+0]
//  202   
//  203   //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  204   DMA0->TCD[DMA_CH5].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
        MOVW     R2,#+25848
        LDR      R3,[R1, #+0]
        LDR      R3,[R3, R2]
        LSLS     R3,R3,#+17       ;; ZeroExtS R3,R3,#+17,#+17
        LSRS     R3,R3,#+17
        LDR.N    R4,??DataTable4_11  ;; 0x400090b6
        STRH     R3,[R4, #+0]
//  205   
//  206   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  207   DMA0->TCD[DMA_CH5].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, R2]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable4_12  ;; 0x400090be
        STRH     R1,[R2, #+0]
//  208   
//  209   DMA_EnableReq(DMA_CH5);
        LDR.N    R1,??DataTable4_13  ;; 0x4000800c
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x20
        STR      R2,[R1, #+0]
//  210   
//  211 }
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     `GPS_Init()::static guard for GPS_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     `GPS_Init()::GPS_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     GPS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x404e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40fb21d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x1a47a9e3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40fb2d70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x400090a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x400090b6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x400090be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x4000800c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPSC1Ev
        SECTION_LINK _ZN4CGPSC1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPSC1Ev))
        DC32 0x80d0aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8GPS_Initv
        SECTION_LINK _Z8GPS_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8GPS_Initv))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPS10updateUartEv
        SECTION_LINK _ZN4CGPS10updateUartEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPS10updateUartEv))
        DC32 0x8000afb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPS6unpackEii
        SECTION_LINK _ZN4CGPS6unpackEii
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPS6unpackEii))
        DC32 RELOC_ARM_PREL31(`.extab for _ZN4CGPS6unpackEii`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4CGPS6unpackEii
`.extab for _ZN4CGPS6unpackEii`:
        DATA
        DC32 0x810101d0
        DC32 0xafb0b0
        DC16 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//     32 bytes in section .ARM.exidx
//     12 bytes in section .ARM.extab
// 25 861 bytes in section .bss
//  1 802 bytes in section .text
// 
//  1 596 bytes of CODE  memory (+ 206 bytes shared)
//     44 bytes of CONST memory
// 25 861 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
