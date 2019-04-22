///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:57
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\GPS.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW197A.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\GPS.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\GPS.s
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
        SECTION_GROUP _ZN4CGPSC1Ev
        THUMB
// __code __interwork __softfp CGPS::CGPS()
_ZN4CGPSC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDW     R0,R4,#+1148
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+1204
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+1260
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+1316
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+1372
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1456
        BL       _ZN10CoordinateC1Ev
        VMOV.F32 S1,#20.0
        MOVS     R1,#+100
        VLDR.W   S0,??CGPS_0      ;; 0x3e19999a
        ADDW     R0,R4,#+1260
        BL       _ZN11CJumpFilter12setParameterEfif
        VMOV.F32 S1,#20.0
        MOVS     R1,#+100
        VLDR.W   S0,??CGPS_0      ;; 0x3e19999a
        ADDW     R0,R4,#+1316
        BL       _ZN11CJumpFilter12setParameterEfif
        MOVS     R0,R4
??CGPS_1:
        POP      {R4,PC}          ;; return
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
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GPS_Init_0
//    7   static CGPS GPS_0;
        LDR.W    R0,??DataTable4_1
        BL       _ZN4CGPSC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4
        STRB     R0,[R1, #+0]
//    8   GPS = &GPS_0;
??GPS_Init_0:
        LDR.W    R0,??DataTable4_1
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//    9   GPS->DMA_CHn_Rx = DMA_CH4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+32]
//   10   
//   11 //  GPS->latitude_reference  = 3.0849812550000002E+1; //赛场屏幕 单点精度
//   12 //  GPS->longitude_reference = 1.1961452616666665E+2;
//   13 //  GPS->altitude0           = 2.3269999999999999E+1;
//   14 
//   15   GPS->latitude_reference  = 3.084906361666666544E+1;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1088
        LDR.W    R2,??DataTable4_3  ;; 0x3bb1ce8b
        LDR.W    R3,??DataTable4_4  ;; 0x403ed95c
        STRD     R2,R3,[R0, #+0]
//   16   GPS->longitude_reference = 1.1961322839999999E+2;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1096
        LDR.W    R2,??DataTable4_5  ;; 0x2254be9e
        LDR.W    R3,??DataTable4_6  ;; 0x405de73f
        STRD     R2,R3,[R0, #+0]
//   17   GPS->altitude0           = 3.2796999999999997E+1;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1080
        LDR.W    R2,??DataTable4_7  ;; 0x189374bc
        LDR.W    R3,??DataTable4_8  ;; 0x40406604
        STRD     R2,R3,[R0, #+0]
//   18   GPS->positionFilterX.setParameter(10, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,#10.0
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1148
        BL       _ZN11CJumpFilter12setParameterEfi
//   19   GPS->positionFilterY.setParameter(10, 100);
        MOVS     R1,#+100
        VMOV.F32 S0,#10.0
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1204
        BL       _ZN11CJumpFilter12setParameterEfi
//   20   
//   21   GPS->positionFilterX.maxValue = 20;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_9  ;; 0x41a00000
        STR      R1,[R0, #+1160]
//   22   GPS->positionFilterX.minValue = -20;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_10  ;; 0xc1a00000
        STR      R1,[R0, #+1164]
//   23   
//   24   GPS->positionFilterY.maxValue = 20;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_9  ;; 0x41a00000
        STR      R1,[R0, #+1216]
//   25   GPS->positionFilterY.minValue = -20;
        LDR.W    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_10  ;; 0xc1a00000
        STR      R1,[R0, #+1220]
//   26 }
??GPS_Init_1:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char GPS_Init()::static guard for GPS_0
`GPS_Init()::static guard for GPS_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
`GPS_Init()::GPS_0`:
        DS8 1848
//   27 
//   28 /*************获得对应序号逗号后的数据位置*****************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int CGPS::GetComma(int num,char *str)
//   30 {
_ZN4CGPS8GetCommaEiPc:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   31   int i,j = 0;
        MOVS     R7,#+0
//   32   int len = strlen(str);
        MOVS     R0,R6
        BL       strlen
        MOVS     R2,R0
//   33   for(i=0;i<len;i++)
        MOVS     R1,#+0
??GetComma_0:
        CMP      R1,R2
        BGE.N    ??GetComma_1
//   34   {
//   35     //for(;str[i]!='$';i++)
//   36     //{}
//   37     if(str[i]==',')
        LDRB     R0,[R6, R1]
        CMP      R0,#+44
        BNE.N    ??GetComma_2
//   38     {
//   39       j++;
        ADDS     R7,R7,#+1
//   40     }
//   41     
//   42     if(j==num)
??GetComma_2:
        CMP      R7,R5
        BNE.N    ??GetComma_3
//   43       return i+1;
        ADDS     R1,R1,#+1
        MOVS     R0,R1
        B.N      ??GetComma_4
//   44   }
??GetComma_3:
        ADDS     R1,R1,#+1
        B.N      ??GetComma_0
//   45   return 0;
??GetComma_1:
        MOVS     R0,#+0
??GetComma_4:
        POP      {R1,R4-R7,PC}    ;; return
//   46 }
//   47 
//   48 
//   49 /******************解析数据***************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void CGPS::updateUart()
//   51 {
_ZN4CGPS10updateUartEv:
        PUSH     {R0-R10,LR}
        MOVS     R5,R0
//   52   velFilter_x1.checkIsNewData(t);
        LDR.W    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        ADDW     R0,R5,#+1260
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   53   velFilter_y1.checkIsNewData(t);
        LDR.W    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        ADDW     R0,R5,#+1316
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   54   
//   55   
//   56   bool newPackage = false;
        MOVS     R6,#+0
//   57   
//   58   int i = 0, i0 = 0;
        MOVS     R10,#+0
        MOVS     R7,#+0
//   59   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&GPS_BUF[0]);
        LDR.W    R0,??DataTable4_12  ;; 0x40009000
        LDRB     R1,[R5, #+32]
        LSLS     R1,R1,#+5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+16]
        ADDS     R8,R5,#+33
        SUBS     R8,R0,R8
//   60   
//   61   int moveLength = 0;
        MOVS     R9,#+0
//   62   
//   63   bool loopFlag = false;
        MOVS     R4,#+0
//   64   //byteInterval = t - byte_lastTime;
//   65   if(byte_lastAddress != address0)
        LDR      R0,[R5, #+8]
        CMP      R0,R8
        BEQ.N    ??updateUart_0
//   66   {
//   67     byte_lastTime = t;
        LDR.W    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+4]
//   68     byte_lastAddress = address0;
        STR      R8,[R5, #+8]
//   69   }
//   70   for(; i < address0; i++)
??updateUart_0:
        CMP      R10,R8
        BGE.N    ??updateUart_1
//   71   {
//   72     for(; GPS_BUF[i] != '\n'; i++)
??updateUart_2:
        ADD      R0,R5,R10
        LDRB     R0,[R0, #+33]
        CMP      R0,#+10
        BEQ.N    ??updateUart_3
//   73     {
//   74       if((GPS_BUF[i] == '$')&&(GPS_BUF[i+1] == 'G')&&(GPS_BUF[i+2] == 'N')&&(GPS_BUF[i+3] == 'G'))
        ADD      R0,R5,R10
        LDRB     R0,[R0, #+33]
        CMP      R0,#+36
        BNE.N    ??updateUart_4
        ADD      R0,R5,R10
        LDRB     R0,[R0, #+34]
        CMP      R0,#+71
        BNE.N    ??updateUart_4
        ADD      R0,R5,R10
        LDRB     R0,[R0, #+35]
        CMP      R0,#+78
        BNE.N    ??updateUart_4
        ADD      R0,R5,R10
        LDRB     R0,[R0, #+36]
        CMP      R0,#+71
        BNE.N    ??updateUart_4
//   75       {
//   76         start = i;
        STR      R10,[R5, #+12]
//   77       }
//   78       
//   79       
//   80       if(i >= address0)
??updateUart_4:
        CMP      R10,R8
        BLT.N    ??updateUart_5
//   81       {
//   82         
//   83         loopFlag = true;
        MOVS     R0,#+1
        MOVS     R4,R0
//   84         break;
        B.N      ??updateUart_3
//   85       }
//   86     }
??updateUart_5:
        ADDS     R10,R10,#+1
        B.N      ??updateUart_2
//   87     
//   88     if(loopFlag)
??updateUart_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??updateUart_1
//   89     {
//   90       break;
//   91     }
//   92     
//   93     //    char checkSum = 0; //注意每个包的checkSum都要清零
//   94     //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   95     //    {
//   96     //      checkSum += uartData[k];
//   97     //    }
//   98     //    if(checkSum != uartData[i-1])
//   99     //    {
//  100     //      continue;
//  101     //    }
//  102     //byte_lastTime = t;
//  103     i0 = i + 1; 
??updateUart_6:
        ADDS     R0,R10,#+1
        MOVS     R7,R0
//  104     end = i;
        STR      R10,[R5, #+16]
//  105     
//  106     // unpack(start, i);
//  107     if(end-start > 1)unpack(start, i);
        LDR      R1,[R5, #+16]
        LDR      R0,[R5, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+2
        BLT.N    ??updateUart_7
        MOV      R2,R10
        LDR      R1,[R5, #+12]
        MOVS     R0,R5
        BL       _ZN4CGPS6unpackEii
//  108     
//  109     byte_lastAddress = address0;
??updateUart_7:
        STR      R8,[R5, #+8]
//  110   }
        ADDS     R10,R10,#+1
        B.N      ??updateUart_0
//  111   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&GPS_BUF[0]) - i0;
??updateUart_1:
        LDR.W    R0,??DataTable4_12  ;; 0x40009000
        LDRB     R1,[R5, #+32]
        LSLS     R1,R1,#+5
        ADD      R0,R0,R1
        LDR      R1,[R0, #+16]
        ADDS     R0,R5,#+33
        SUBS     R0,R1,R0
        SUBS     R0,R0,R7
//  112   if(moveLength < 0) moveLength = 0;
        CMP      R0,#+0
        BPL.N    ??updateUart_8
        MOVS     R1,#+0
        MOVS     R0,R1
//  113   
//  114   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0] + moveLength);
??updateUart_8:
        LDR.W    R1,??DataTable4_12  ;; 0x40009000
        LDRB     R2,[R5, #+32]
        LSLS     R2,R2,#+5
        ADD      R1,R1,R2
        ADDS     R2,R5,#+33
        ADDS     R2,R0,R2
        STR      R2,[R1, #+16]
//  115   for(i = 0; i < moveLength; i++)
        MOVS     R1,#+0
??updateUart_9:
        CMP      R1,R0
        BGE.N    ??updateUart_10
//  116   {
//  117     GPS_BUF[i] = GPS_BUF[i0 + i];
        ADDS     R2,R1,R7
        ADD      R2,R5,R2
        LDRB     R2,[R2, #+33]
        ADD      R3,R5,R1
        STRB     R2,[R3, #+33]
//  118   }
        ADDS     R1,R1,#+1
        B.N      ??updateUart_9
//  119   // memset(GPS_BUF + moveLength, 0, 500 * sizeof(char));
//  120   if(address0 > 500)
??updateUart_10:
        MOVW     R2,#+501
        CMP      R8,R2
        BLT.N    ??updateUart_11
//  121   {
//  122     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0]);
        LDR.W    R2,??DataTable4_12  ;; 0x40009000
        LDRB     R3,[R5, #+32]
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        ADDS     R3,R5,#+33
        STR      R3,[R2, #+16]
//  123   }
//  124   
//  125   
//  126   
//  127 }
??updateUart_11:
??updateUart_12:
        POP      {R0-R10,PC}      ;; return
//  128 //将获取文本信息转换为double型
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 double CGPS::get_double_number(char *s)
//  131 {
_ZN4CGPS17get_double_numberEPc:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+128
        MOVS     R4,R0
        MOVS     R5,R1
//  132   char buf[128];
//  133   int i;
//  134   double rev;
//  135   i=GetComma(1,s);
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        MOVS     R6,R0
//  136   strncpy(buf,s,i);
        MOVS     R2,R6
        MOVS     R1,R5
        MOV      R0,SP
        BL       strncpy
//  137   buf[i]=0;
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, R6]
//  138   rev=atof(buf);
        MOV      R0,SP
        BL       atof
//  139   
//  140   return rev;
        ADD      SP,SP,#+128
        POP      {R4-R6,PC}       ;; return
//  141 }
//  142 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 double CGPS::get_locate(double temp)
//  144 {
_ZN4CGPS10get_locateEd:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D9}
        MOVS     R4,R0
        VMOV.F32 S16,S0
        VMOV.F32 S17,S1
//  145   int m;
//  146   double  n;
//  147   m=(int)temp/100;
        VMOV     R0,R1,D8
        BL       __aeabi_d2iz
        MOVS     R1,#+100
        SDIV     R5,R0,R1
//  148   n=(temp-m*100)/60;
        MOVS     R0,#+100
        MUL      R0,R0,R5
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D8
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_13  ;; 0x404e0000
        BL       __aeabi_ddiv
        VMOV     D9,R0,R1
//  149   n=n+m;
        MOVS     R0,R5
        BL       __aeabi_i2d
        VMOV     R2,R3,D9
        BL       __aeabi_dadd
        VMOV     D0,R0,R1
//  150   return n;
        VPOP     {D8-D9}
        POP      {R0,R4,R5,PC}    ;; return
//  151   
//  152 }
//  153 
//  154 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  155 void CGPS::unpack(int start, int end)
//  156 {
_ZN4CGPS6unpackEii:
        PUSH     {R3-R9,LR}
        VPUSH    {D8}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  157   //int tmp;
//  158   
//  159   c = GPS_BUF[start+5];
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+38]
        STRB     R0,[R4, #+1120]
//  160   if(c=='A')
        LDRB     R0,[R4, #+1120]
        CMP      R0,#+65
        BNE.W    ??unpack_0
//  161   {
//  162     //"GNGGA"
//  163     D.hour   =(GPS_BUF[start+ 7]-'0')*10+(GPS_BUF[start+ 8]-'0');
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+40]
        MOVS     R2,#+10
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+41]
        MLA      R1,R2,R1,R0
        SUBS     R1,R1,#+528
        STR      R1,[R4, #+1036]
//  164     D.minute =(GPS_BUF[start+ 9]-'0')*10+(GPS_BUF[start+10]-'0');
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+42]
        MOVS     R2,#+10
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+43]
        MLA      R1,R2,R1,R0
        SUBS     R1,R1,#+528
        STR      R1,[R4, #+1040]
//  165     D.second =(GPS_BUF[start+11]-'0')*10+(GPS_BUF[start+12]-'0');
        ADD      R0,R4,R5
        LDRB     R1,[R0, #+44]
        MOVS     R2,#+10
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+45]
        MLA      R1,R2,R1,R0
        SUBS     R1,R1,#+528
        STR      R1,[R4, #+1044]
//  166     //tmp = GetComma(9,GPS_BUF);
//  167     //D.day    =(GPS_BUF[tmp+0]-'0')*10+(GPS_BUF[tmp+1]-'0');
//  168     //D.month  =(GPS_BUF[tmp+2]-'0')*10+(GPS_BUF[tmp+3]-'0');
//  169     //D.year   =(GPS_BUF[tmp+4]-'0')*10+(GPS_BUF[tmp+5]-'0')+2000;
//  170     
//  171     status   = GPS_BUF[GetComma(6, GPS_BUF)];
        ADDS     R2,R4,#+33
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+33]
        STRB     R0,[R4, #+1121]
//  172     if(status == '1' || status == '4' || status == '5')
        LDRB     R0,[R4, #+1121]
        CMP      R0,#+49
        BEQ.N    ??unpack_1
        LDRB     R0,[R4, #+1121]
        CMP      R0,#+52
        BEQ.N    ??unpack_1
        LDRB     R0,[R4, #+1121]
        CMP      R0,#+53
        BNE.N    ??unpack_2
//  173     {
//  174       latitude = get_locate(get_double_number(&GPS_BUF[GetComma(2, GPS_BUF)]));
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
        ADDS     R0,R4,#+1056
        VSTR     D0,[R0, #0]
//  175       NS       = GPS_BUF[GetComma(3, GPS_BUF)];
        ADDS     R2,R4,#+33
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+33]
        STRB     R0,[R4, #+1122]
//  176       longitude= get_locate(get_double_number(&GPS_BUF[GetComma(4, GPS_BUF)]));
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
        ADDS     R0,R4,#+1064
        VSTR     D0,[R0, #0]
//  177       EW       = GPS_BUF[GetComma(5, GPS_BUF)];
        ADDS     R2,R4,#+33
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+33]
        STRB     R0,[R4, #+1123]
//  178       satqua   = get_double_number(&GPS_BUF[GetComma(7, GPS_BUF)]);
        ADDS     R2,R4,#+33
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        ADDS     R0,R4,#+1128
        VSTR     D0,[R0, #0]
//  179       altitude = get_double_number(&GPS_BUF[GetComma(9, GPS_BUF)]);
        ADDS     R2,R4,#+33
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       _ZN4CGPS8GetCommaEiPc
        ADD      R0,R4,R0
        ADDS     R1,R0,#+33
        MOVS     R0,R4
        BL       _ZN4CGPS17get_double_numberEPc
        ADDS     R0,R4,#+1072
        VSTR     D0,[R0, #0]
        B.N      ??unpack_3
//  180     }
//  181     else
//  182     {
//  183       valid = false;
??unpack_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+20]
//  184     }
//  185     
//  186     //UTC2BTC(&GPS->D);//世界时间 
//  187     GPS->dy = (GPS->latitude - GPS->latitude_reference) * 111133;
??unpack_3:
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1056
        LDRD     R0,R1,[R0, #+0]
        LDR.N    R2,??DataTable4_2
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1088
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_14  ;; 0x40fb21d0
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable4_2
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1112
        STRD     R0,R1,[R2, #+0]
//  188     GPS->dx = (GPS->longitude - GPS->longitude_reference) * 111319 * arm_cos_f32((GPS->longitude - GPS->longitude_reference) / 57.2957795);
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1064
        LDRD     R0,R1,[R0, #+0]
        LDR.N    R2,??DataTable4_2
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1096
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        LDR.N    R2,??DataTable4_15  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_16  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1064
        LDRD     R0,R1,[R0, #+0]
        LDR.N    R2,??DataTable4_2
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1096
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_17  ;; 0x40fb2d70
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable4_2
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1104
        STRD     R0,R1,[R2, #+0]
//  189     
//  190     
//  191     dx_local = positionFilterX.newData3(dy * arm_cos_f32(angle / 57.2957795) - dx * arm_sin_f32(angle / 57.2957795), t);
        LDR      R0,[R4, #+1144]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_15  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_16  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S16,S0
        LDR      R0,[R4, #+1144]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_15  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_16  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_sin_f32
        VMOV.F32 S17,S0
        LDR.N    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        MOVS     R7,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        ADDS     R2,R4,#+1112
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        ADDS     R2,R4,#+1104
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOVS     R1,R7
        ADDW     R0,R4,#+1148
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+1136
        VSTR     S0,[R0, #0]
//  192     dy_local = positionFilterY.newData3(dy * arm_sin_f32(angle / 57.2957795) + dx * arm_cos_f32(angle / 57.2957795), t);
        LDR      R0,[R4, #+1144]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_15  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_16  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_sin_f32
        VMOV.F32 S16,S0
        LDR      R0,[R4, #+1144]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_15  ;; 0x1a47a9e3
        LDR.N    R3,??DataTable4_16  ;; 0x404ca5dc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        VMOV.F32 S17,S0
        LDR.N    R0,??DataTable4_11
        LDR      R1,[R0, #+0]
        MOVS     R7,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        ADDS     R2,R4,#+1112
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        ADDS     R2,R4,#+1104
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOVS     R1,R7
        ADDW     R0,R4,#+1204
        BL       _ZN11CJumpFilter8newData3Efi
        ADDW     R0,R4,#+1140
        VSTR     S0,[R0, #0]
//  193   }
//  194 }
??unpack_0:
??unpack_4:
        VPOP     {D8}
        POP      {R0,R4-R9,PC}    ;; return
//  195 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 void CGPS::TX_::startDMA_Transmit()
//  197 {
//  198   //调整源地址
//  199   DMA0->TCD[DMA_CH5].SADDR = DMA_SADDR_SADDR(GPS->TX.data);
_ZN4CGPS3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+1540
        LDR.N    R2,??DataTable4_18  ;; 0x400090a0
        STR      R1,[R2, #+0]
//  200   
//  201   //设置主循环计数器 current major loop count
//  202   DMA0->TCD[DMA_CH5].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+1840]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable4_19  ;; 0x400090b6
        STRH     R1,[R2, #+0]
//  203   
//  204   //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  205   DMA0->TCD[DMA_CH5].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
        LDR.N    R1,??DataTable4_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+1840]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable4_20  ;; 0x400090be
        STRH     R1,[R2, #+0]
//  206   
//  207   DMA_EnableReq(DMA_CH5);
        LDR.N    R1,??DataTable4_21  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20
        LDR.N    R2,??DataTable4_21  ;; 0x4000800c
        STR      R1,[R2, #+0]
//  208   
//  209 }
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
        DC32     0x3bb1ce8b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x403ed95c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x2254be9e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x405de73f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x189374bc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x40406604

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xc1a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x404e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x40fb21d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x1a47a9e3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x40fb2d70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x400090a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x400090b6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x400090be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x4000800c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPSC1Ev
        SECTION_LINK _ZN4CGPSC1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPSC1Ev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8GPS_Initv
        SECTION_LINK _Z8GPS_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8GPS_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPS10updateUartEv
        SECTION_LINK _ZN4CGPS10updateUartEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPS10updateUartEv))
        DC32 0x8003aeb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CGPS6unpackEii
        SECTION_LINK _ZN4CGPS6unpackEii
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CGPS6unpackEii))
        DC32 0x80d000ad
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    32 bytes in section .ARM.exidx
// 1 853 bytes in section .bss
// 1 886 bytes in section .text
// 
// 1 708 bytes of CODE  memory (+ 178 bytes shared)
//    32 bytes of CONST memory
// 1 853 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
