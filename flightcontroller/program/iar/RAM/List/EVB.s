///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EVB.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW108A.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EVB.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\EVB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Compass
        EXTERN EKF_AHRS
        EXTERN MPU6000
        EXTERN MPU6000_Raw
        EXTERN RemoteHub
        EXTERN _ZN12Ultrasound__3disE
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memset
        EXTERN angleX
        EXTERN angleY
        EXTERN angleZ
        EXTERN gyroX
        EXTERN gyroY
        EXTERN gyroZ
        EXTERN pitch1
        EXTERN roll1
        EXTERN roror1
        EXTERN roror2
        EXTERN roror3
        EXTERN roror4
        EXTERN t
        EXTERN yaw1

        PUBLIC DMA_isOccupying
        PUBLIC EVB
        PUBLIC TT1
        PUBLIC TT1_max
        PUBLIC TT1_min
        PUBLIC _Z10EVB_SetSpdi
        PUBLIC _Z10EVB_SpdPWMi
        PUBLIC _Z10EVB_Unpacki
        PUBLIC _Z11EVB_Processv
        PUBLIC _Z11EVB_SendStrPh
        PUBLIC _Z12EVB_AnglePWMi
        PUBLIC _Z12EVB_RX_Checki
        PUBLIC _Z13EVB_ResetTimev
        PUBLIC _Z13EVB_SendTablePs10__SendMode
        PUBLIC _Z14EVB_SendSNum_3i
        PUBLIC _Z14EVB_SendUNum_1i
        PUBLIC _Z14EVB_SendUNum_2i
        PUBLIC _Z14EVB_SendUNum_3i
        PUBLIC _Z15EVB_DMA_Receivev
        PUBLIC _Z15EVB_TimerUpdatev
        PUBLIC _Z18EVB_ReceiveOneBytec
        PUBLIC _Z19EVB_FullBrakeStatusv
        PUBLIC _Z21EVB_SetRow_FuzzyTablei
        PUBLIC _Z24EVB_SetColumn_FuzzyTablei
        PUBLIC _Z8EVB_Init17__EVB_InitTypeDef
        PUBLIC _Z8EVB_atoiPci
        PUBLIC _ZN4EVB_13makeOnePackgeEv
        PUBLIC _ZN4EVB_3TX_17startDMA_TransmitEv
        PUBLIC _ZN4EVB_3TX_3addEc
        PUBLIC _ZN4EVB_3TX_5clearEv
        PUBLIC _ZN4EVB_4sendEv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EVB.c
//    1 /*
//    2 * @EVB_car.c
//    3 * @version 1.00
//    4 * @date 2016-5
//    5 * @brief EverythingViaBluetooth的配套代码，版本号与labview程序对应
//    6 *
//    7 ** @Revision History
//    8 *    version 0.99
//    9 *      --第一版库文件
//   10 *      --刘导 QQ:875978009
//   11 *
//   12 **    version 1.00
//   13 *      --刘导 QQ:875978009
//   14 */
//   15 
//   16 #include "common.h"

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
//   17 #include "EVB.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4EVB_3TX_3addEc
        THUMB
// __interwork __softfp void EVB_::TX_::add(char)
_ZN4EVB_3TX_3addEc:
        LDR      R2,[R0, #+100]
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+100]
        STRB     R1,[R0, R2]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4EVB_3TX_5clearEv
        THUMB
// __interwork __softfp void EVB_::TX_::clear()
_ZN4EVB_3TX_5clearEv:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+100
        MOVS     R6,#+0
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       __aeabi_memset
        MOVS     R0,#+0
        STR      R0,[R4, #+100]
        POP      {R4-R6,PC}       ;; return
//   18 #include "includes.h"
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 int TT1, TT1_max, TT1_min;
TT1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
TT1_max:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
TT1_min:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 EVB_ EVB;
EVB:
        DS8 2012
//   22 
//   23 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   24 void EVB_Init(__EVB_InitTypeDef EVB_InitStruct)
//   25 {
_Z8EVB_Init17__EVB_InitTypeDef:
        PUSH     {R0-R3}
//   26   EVB.RXD_PackageLength[EVB_Servo]                  = 18;
        MOVS     R0,#+18
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1540]
//   27   EVB.RXD_PackageLength[EVB_Spd]                    = 20;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1544]
//   28   EVB.RXD_PackageLength[EVB_KpTable]                = 149;
        MOVS     R0,#+149
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1548]
//   29   EVB.RXD_PackageLength[EVB_KdTable]                = 149;
        MOVS     R0,#+149
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1552]
//   30   EVB.RXD_PackageLength[EVB_SpdTable]               = 149;
        MOVS     R0,#+149
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1556]
//   31   EVB.RXD_PackageLength[EVB_OffsetBoundTable]       = 86;
        MOVS     R0,#+86
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1560]
//   32   EVB.RXD_PackageLength[EVB_Sensor]                 = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1564]
//   33   EVB.RXD_PackageLength[EVB_Battle]                 = 4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1568]
//   34   EVB.RXD_PackageLength[EVB_RemoteControl]          = 22;
        MOVS     R0,#+22
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1572]
//   35   EVB.RXD_PackageLength[EVB_Command]                = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1576]
//   36   EVB.RXD_PackageLength[EVB_FullBrake]              = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1580]
//   37   
//   38   EVB.SystemPeriod     = (int)(EVB_InitStruct.SystemPeriod * 1000); //小数变为整数     
        VLDR     S0,[SP, #+4]
        VLDR.W   S1,??DataTable1  ;; 0x447a0000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable12
        VSTR     S0,[R0, #+20]
//   39   EVB.TransmitInterval = (int)(EVB_InitStruct.TransmitInterval * 1000); 
        VLDR     S0,[SP, #+0]
        VLDR.W   S1,??DataTable1  ;; 0x447a0000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        LDR.W    R0,??DataTable12
        VSTR     S0,[R0, #+4]
//   40   
//   41   EVB.AngleMax         = EVB_InitStruct.AngleMax;
        LDR      R0,[SP, #+44]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1828]
//   42   EVB.AngleMid         = EVB_InitStruct.AngleMid;
        LDR      R0,[SP, #+40]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1824]
//   43   EVB.AngleMin         = EVB_InitStruct.AngleMin;
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1820]
//   44   EVB.SpdKd            = EVB_InitStruct.SpdKd;
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1816]
//   45   EVB.SpdKi            = EVB_InitStruct.SpdKi;
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1812]
//   46   EVB.SpdKp            = EVB_InitStruct.SpdKp;
        LDR      R0,[SP, #+12]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1808]
//   47   EVB.SupplyVoltage    = EVB_InitStruct.SupplyVoltage;
        LDR      R0,[SP, #+48]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1832]
//   48   EVB.uartSend         = EVB_InitStruct.uartSend;
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+28]
//   49   EVB.KpTable          = EVB_InitStruct.KpTable;
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1836]
//   50   EVB.KdTable          = EVB_InitStruct.KdTable;
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1840]
//   51   EVB.SpdTable         = EVB_InitStruct.SpdTable;
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1844]
//   52 //  int i;
//   53 //  for(i = 0; EVB_InitStruct.Parameter[i] != NULL; i++)
//   54 //  {
//   55 //    EVB.Parameter[i]        = EVB_InitStruct.Parameter[i];
//   56 //    EVB.ParameterNum[i]     = EVB_InitStruct.ParameterNum[i];
//   57 //  }
//   58 //  EVB.functionNum = i;
//   59 //  
//   60   EVB.FunctionMode     = EVB_Spd;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12
        STRB     R0,[R1, #+25]
//   61   EVB.InitFlag         = true;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
//   62 
//   63 }
        ADD      SP,SP,#+16
        BX       LR               ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void EVB_TimerUpdate()
//   66 {
//   67   EVB.SysTime += EVB.SystemPeriod;
_Z15EVB_TimerUpdatev:
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+16]
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+20]
        ADDS     R1,R0,R1
        LDR.W    R0,??DataTable12
        STR      R1,[R0, #+16]
//   68 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x447a0000
//   69 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   70 void EVB_::send()
//   71 {
_ZN4EVB_4sendEv:
        PUSH     {R3-R5,LR}
        VPUSH    {D8}
        MOVS     R4,R0
//   72   if(EVB.InitFlag == false)
//   73   {
//   74   }
//   75   if(1)
//   76   {
//   77     if(EVB.SysTime >= EVB.TransmitTimestamp + 2*1000 && t >= 5000)
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable12
        LDR      R1,[R1, #+8]
        ADDS     R1,R1,#+2000
        CMP      R0,R1
        BCC.W    ??send_0
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+5000
        CMP      R0,R1
        BLT.W    ??send_0
//   78     {
//   79       if(!DMA_isOccupying(DMA_CH2))
        MOVS     R0,#+2
        BL       DMA_isOccupying
        CMP      R0,#+0
        BNE.W    ??send_1
//   80       {
//   81         EVB.TX.clear();
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_5clearEv
//   82         
//   83         int16 timeS = t/2;
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R5,R0,R1
//   84 
//   85         EVB.TX.add(MPU6000_Raw.BUF[0]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   86         EVB.TX.add(MPU6000_Raw.BUF[1]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   87         EVB.TX.add(MPU6000_Raw.BUF[2]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   88         EVB.TX.add(MPU6000_Raw.BUF[3]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   89         EVB.TX.add(MPU6000_Raw.BUF[4]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   90         EVB.TX.add(MPU6000_Raw.BUF[5]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   91             
//   92         EVB.TX.add(MPU6000_Raw.BUF[8]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+8]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   93         EVB.TX.add(MPU6000_Raw.BUF[9]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   94         EVB.TX.add(MPU6000_Raw.BUF[10]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   95         EVB.TX.add(MPU6000_Raw.BUF[11]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   96         EVB.TX.add(MPU6000_Raw.BUF[12]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+12]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   97         EVB.TX.add(MPU6000_Raw.BUF[13]);
        LDR.W    R0,??DataTable12_3
        LDRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//   98         
//   99         EVB.TX.add(MPU6000.BUF[0]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  100         EVB.TX.add(MPU6000.BUF[1]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  101         EVB.TX.add(MPU6000.BUF[2]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  102         EVB.TX.add(MPU6000.BUF[3]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  103         EVB.TX.add(MPU6000.BUF[4]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  104         EVB.TX.add(MPU6000.BUF[5]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  105             
//  106         EVB.TX.add(MPU6000.BUF[8]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+8]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  107         EVB.TX.add(MPU6000.BUF[9]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  108         EVB.TX.add(MPU6000.BUF[10]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  109         EVB.TX.add(MPU6000.BUF[11]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  110         EVB.TX.add(MPU6000.BUF[12]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+12]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  111         EVB.TX.add(MPU6000.BUF[13]);
        LDR.W    R0,??DataTable12_4
        LDRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  112         
//  113         EVB.TX.add((int16)(roll1 * 100) >> 8);
        LDR.W    R0,??DataTable12_5
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  114         EVB.TX.add((int16)(roll1 * 100));
        LDR.W    R0,??DataTable12_5
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  115         EVB.TX.add((int16)(pitch1 * 100) >> 8);
        LDR.W    R0,??DataTable13
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  116         EVB.TX.add((int16)(pitch1 * 100));
        LDR.W    R0,??DataTable13
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  117         EVB.TX.add((int16)(yaw1 * 100) >> 8);
        LDR.W    R0,??DataTable14
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  118         EVB.TX.add((int16)(yaw1 * 100));
        LDR.W    R0,??DataTable14
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??send_2      ;; 0x42c80000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  119         
//  120         
//  121         EVB.TX.add((int16)Compass.X >> 8);
        LDR.W    R0,??DataTable14_1
        LDRSH    R0,[R0, #+0]
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  122         EVB.TX.add((int16)Compass.X);
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  123         EVB.TX.add((int16)Compass.Y >> 8);
        LDR.W    R0,??DataTable14_1
        LDRSH    R0,[R0, #+4]
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  124         EVB.TX.add((int16)Compass.Y);
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+4]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  125         EVB.TX.add((int16)Compass.Z >> 8);
        LDR.W    R0,??DataTable14_1
        LDRSH    R0,[R0, #+8]
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  126         EVB.TX.add((int16)Compass.Z);
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+8]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  127         
//  128 
//  129         float delta_gyro = 150, delta_angle = 10;
        VLDR.W   S16,??DataTable2  ;; 0x43160000
        VMOV.F32 S17,#10.0
//  130         if(
//  131             (abs(MPU6000.gyro_x - EVB.EventTrigger.wx0) > delta_gyro ||abs(MPU6000.gyro_y - EVB.EventTrigger.wy0) > delta_gyro || abs(MPU6000.gyro_z - EVB.EventTrigger.wz0) > delta_gyro) &&
//  132             (abs(roll1 - EVB.EventTrigger.roll0) > delta_angle || abs(pitch1 - EVB.EventTrigger.pitch0) > delta_angle ||abs(yaw1 - EVB.EventTrigger.yaw0) > delta_angle)
//  133            )
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+60]
        LDR.W    R0,??DataTable16
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BMI.N    ??send_3
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+64]
        LDR.W    R0,??DataTable17
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BMI.N    ??send_3
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+68]
        LDR.W    R0,??DataTable18
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BPL.N    ??send_4
??send_3:
        LDR.W    R0,??DataTable12_5
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable18_1
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BMI.N    ??send_5
        LDR.W    R0,??DataTable13
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable18_2
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BMI.N    ??send_5
        LDR.W    R0,??DataTable14
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable19
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BPL.N    ??send_4
//  134         {
//  135           EVB.EventTrigger.gamma = 3; //均满足
??send_5:
        MOVS     R0,#+3
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1756]
        B.N      ??send_6
//  136         }
//  137         else if(abs(MPU6000.gyro_x - EVB.EventTrigger.wx0) > delta_gyro ||abs(MPU6000.gyro_y - EVB.EventTrigger.wy0) > delta_gyro || abs(MPU6000.gyro_z - EVB.EventTrigger.wz0) > delta_gyro)
??send_4:
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+60]
        LDR.W    R0,??DataTable16
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BMI.N    ??send_7
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+64]
        LDR.W    R0,??DataTable17
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BMI.N    ??send_7
        LDR.W    R0,??DataTable12_4
        VLDR     S0,[R0, #+68]
        LDR.W    R0,??DataTable18
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S16,S1
        FMSTAT   
        BPL.N    ??send_8
//  138         {
//  139           EVB.EventTrigger.gamma = 2; //角速度满足
??send_7:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1756]
        B.N      ??send_6
//  140         }
//  141         else if(abs(roll1 - EVB.EventTrigger.roll0) > delta_angle || abs(pitch1 - EVB.EventTrigger.pitch0) > delta_angle || abs(yaw1 - EVB.EventTrigger.yaw0) > delta_angle)
??send_8:
        LDR.W    R0,??DataTable12_5
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable18_1
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BMI.N    ??send_9
        LDR.W    R0,??DataTable13
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable18_2
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BMI.N    ??send_9
        LDR.W    R0,??DataTable14
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable19
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VABS.F32 S1,S0
        VCMP.F32 S17,S1
        FMSTAT   
        BPL.N    ??send_10
//  142         {
//  143           EVB.EventTrigger.gamma = 1; //角度满足
??send_9:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1756]
        B.N      ??send_6
//  144         }
//  145         else
//  146         {
//  147           EVB.EventTrigger.gamma = 0;
??send_10:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1756]
//  148         }
//  149 
//  150         if(EVB.EventTrigger.gamma != 0)
??send_6:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+1756]
        CMP      R0,#+0
        BEQ.N    ??send_11
//  151         {
//  152           EVB.EventTrigger.wx0 = MPU6000.gyro_x;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable12_4
        LDR      R1,[R1, #+60]
        STR      R1,[R0, #+1732]
//  153           EVB.EventTrigger.wy0 = MPU6000.gyro_y;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable12_4
        LDR      R1,[R1, #+64]
        STR      R1,[R0, #+1736]
//  154           EVB.EventTrigger.wz0 = MPU6000.gyro_z;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable12_4
        LDR      R1,[R1, #+68]
        STR      R1,[R0, #+1740]
//  155           EVB.EventTrigger.roll0 = roll1;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable12_5
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+1744]
//  156           EVB.EventTrigger.pitch0 = pitch1;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable13
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+1748]
//  157           EVB.EventTrigger.yaw0 = yaw1;
        LDR.W    R0,??DataTable12
        LDR.W    R1,??DataTable14
        B.N      ??send_12
        DATA
??send_2:
        DC32     0x42c80000
        THUMB
??send_12:
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+1752]
//  158         }
//  159         
//  160         EVB.TX.add((int16)EVB.EventTrigger.gamma >> 8);
??send_11:
        LDR.W    R0,??DataTable12
        LDRSH    R0,[R0, #+1756]
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  161         EVB.TX.add((int16)EVB.EventTrigger.gamma);
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+1756]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  162        
//  163       //  EVB.TX.add((int16)(roll * 100) >> 8);
//  164       //  EVB.TX.add((int16)(roll * 100));
//  165       //  EVB.TX.add((int16)(pitch * 100) >> 8);
//  166       //  EVB.TX.add((int16)(pitch * 100));
//  167       //  EVB.TX.add((int16)(yaw * 100) >> 8);
//  168       //  EVB.TX.add((int16)(yaw * 100));
//  169         
//  170 #if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//  171         EVB.TX.add((int16)(Ultrasound->dis * 10000) >> 8);
        LDR.W    R0,??DataTable22_1
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable7  ;; 0x461c4000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  172         EVB.TX.add((int16)(Ultrasound->dis * 10000));
        LDR.W    R0,??DataTable22_1
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable7  ;; 0x461c4000
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  173 #else   
//  174         EVB.TX.add((int16)(0) >> 8);
//  175         EVB.TX.add((int16)(0));
//  176 #endif        
//  177 
//  178 #if SENSOR_NVIDIATX1 == SENSOR_USED
//  179         EVB.TX.add((int16)(NvidiaTX1->velX_raw) >> 8);
//  180         EVB.TX.add((int16)(NvidiaTX1->velX_raw));
//  181       
//  182         EVB.TX.add((int16)(NvidiaTX1->velY_raw) >> 8);
//  183         EVB.TX.add((int16)(NvidiaTX1->velY_raw));
//  184 #else
//  185         EVB.TX.add((int16)(0) >> 8);
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  186         EVB.TX.add((int16)(0));
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  187         EVB.TX.add((int16)(0) >> 8);
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  188         EVB.TX.add((int16)(0));
        MOVS     R1,#+0
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  189 #endif     
//  190         /*****************************************/
//  191         EVB.TX.add((int16)timeS >> 8);
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R0,R5
        ASRS     R0,R0,#+8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  192         EVB.TX.add((int16)timeS);
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  193          
//  194 
//  195         
//  196         
//  197         //  EVB.TX.add((int16)(15098) >> 8);
//  198         //  EVB.TX.add((int16)(15098));
//  199         EVB.TransmitTimestamp = EVB.SysTime;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+8]
//  200         EVB.TX.startDMA_Transmit();
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_17startDMA_TransmitEv
//  201         EVB.TX.sendPackageCnt++;
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+1728]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1728]
        B.N      ??send_0
//  202           
//  203       }
//  204       else
//  205       {
//  206         EVB.EventTrigger.dropPackage++;
??send_1:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+1764]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+1764]
//  207       }
//  208     }
//  209   }
//  210   else
//  211   {
//  212     if(EVB.SysTime > EVB.TransmitInterval + EVB.TransmitTimestamp &&
//  213     !DMA_isOccupying(DMA_CH2))
//  214     {
//  215       EVB.makeOnePackge();
//  216       EVB.TransmitTimestamp = EVB.SysTime;
//  217       EVB.TX.startDMA_Transmit();
//  218       EVB.TX.sendPackageCnt++;
//  219     }
//  220   }
//  221 }
??send_0:
        VPOP     {D8}
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x43160000
//  222 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 void EVB_SendUNum_3(int num)
//  224 {
_Z14EVB_SendUNum_3i:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  225   EVB.TX.add(num/1000000);
        LDR.W    R0,??DataTable22_2  ;; 0xf4240
        SDIV     R0,R4,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  226   EVB.TX.add(num/10000%100);
        MOVW     R0,#+10000
        SDIV     R0,R4,R0
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  227   EVB.TX.add(num/100%100);
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  228 }
        POP      {R4,PC}          ;; return
//  229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 void EVB_SendUNum_2(int num)
//  231 {
_Z14EVB_SendUNum_2i:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  232   EVB.TX.add(num/100);
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  233   EVB.TX.add(num%100);
        MOVS     R0,#+100
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  234 }
        POP      {R4,PC}          ;; return
//  235 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 void EVB_SendUNum_1(int num)
//  237 {
_Z14EVB_SendUNum_1i:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  238   EVB.TX.add(num);
        MOVS     R0,R4
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  239 }
        POP      {R4,PC}          ;; return
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void EVB_SendSNum_3(int num)
//  242 {
_Z14EVB_SendSNum_3i:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  243   if(num < -9999) num = -9999;
        LDR.W    R0,??DataTable22_4  ;; 0xffffd8f1
        CMP      R4,R0
        BGE.N    ??EVB_SendSNum_3_0
        LDR.W    R0,??DataTable22_4  ;; 0xffffd8f1
        MOVS     R4,R0
        B.N      ??EVB_SendSNum_3_1
//  244   else if(num > 9999) num = 9999;
??EVB_SendSNum_3_0:
        MOVW     R0,#+10000
        CMP      R4,R0
        BLT.N    ??EVB_SendSNum_3_1
        MOVW     R0,#+9999
        MOVS     R4,R0
//  245   if(num<0)
??EVB_SendSNum_3_1:
        CMP      R4,#+0
        BPL.N    ??EVB_SendSNum_3_2
//  246   {
//  247     num = -num;
        RSBS     R4,R4,#+0
//  248     EVB.TX.add('-');
        MOVS     R1,#+45
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
        B.N      ??EVB_SendSNum_3_3
//  249   }
//  250   else
//  251   {
//  252     EVB.TX.add('+');
??EVB_SendSNum_3_2:
        MOVS     R1,#+43
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  253   }
//  254   EVB.TX.add(num/100);
??EVB_SendSNum_3_3:
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  255   EVB.TX.add(num%100);
        MOVS     R0,#+100
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
//  256 }
        POP      {R4,PC}          ;; return
//  257 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void EVB_SendTable(int16* Table, __SendMode mode)
//  259 {
_Z13EVB_SendTablePs10__SendMode:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
//  260   char TmpString[4];
//  261   EVB_SendUNum_1(EVB_Command);
        MOVS     R0,#+10
        BL       _Z14EVB_SendUNum_1i
//  262   EVB_SendUNum_1(mode);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       _Z14EVB_SendUNum_1i
//  263   for(int i = 0; i < NUM * NUM; i++)
        MOVS     R6,#+0
??EVB_SendTable_0:
        CMP      R6,#+49
        BGE.N    ??EVB_SendTable_1
//  264   {
//  265   //  sprintf (TmpString, "%03d", *(Table + i));
//  266     EVB_SendStr((u8 *)TmpString);
        MOV      R0,SP
        BL       _Z11EVB_SendStrPh
//  267     if(i % NUM == NUM - 1)
        MOVS     R0,#+7
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        CMP      R0,#+6
        BNE.N    ??EVB_SendTable_2
//  268     {
//  269       EVB_SendUNum_1(13);//回车
        MOVS     R0,#+13
        BL       _Z14EVB_SendUNum_1i
        B.N      ??EVB_SendTable_3
//  270     }
//  271     else
//  272     {
//  273       EVB_SendUNum_1(32);//空格
??EVB_SendTable_2:
        MOVS     R0,#+32
        BL       _Z14EVB_SendUNum_1i
//  274     }
//  275   }
??EVB_SendTable_3:
        ADDS     R6,R6,#+1
        B.N      ??EVB_SendTable_0
//  276 }
??EVB_SendTable_1:
        POP      {R0,R1,R4-R6,PC}  ;; return
//  277 
//  278 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 void EVB_SendStr(u8 *str)
//  280 {
_Z11EVB_SendStrPh:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  281     while(*str)
??EVB_SendStr_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??EVB_SendStr_1
//  282     {
//  283        EVB.TX.add(*str++);
        LDRB     R1,[R4, #+0]
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_3addEc
        ADDS     R4,R4,#+1
        B.N      ??EVB_SendStr_0
//  284     }
//  285 }
??EVB_SendStr_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x461c4000
//  286 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void EVB_::makeOnePackge()
//  288 {
_ZN4EVB_13makeOnePackgeEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  289   EVB.TX.clear();
        LDR.W    R0,??DataTable12_2
        BL       _ZN4EVB_3TX_5clearEv
//  290   if(EVB.SendMode == EVB_SendMode_Normal)
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+0
        BNE.W    ??makeOnePackge_0
//  291   {
//  292     switch(EVB.FunctionMode)
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+25]
        CMP      R0,#+1
        BEQ.N    ??makeOnePackge_1
        BCC.N    ??makeOnePackge_2
        CMP      R0,#+3
        BEQ.N    ??makeOnePackge_3
        BCC.N    ??makeOnePackge_4
        CMP      R0,#+5
        BEQ.N    ??makeOnePackge_5
        BCC.N    ??makeOnePackge_3
        CMP      R0,#+7
        BEQ.N    ??makeOnePackge_6
        BCC.N    ??makeOnePackge_7
        CMP      R0,#+9
        BEQ.N    ??makeOnePackge_8
        BCC.N    ??makeOnePackge_9
        B.N      ??makeOnePackge_2
//  293     {
//  294       case EVB_Servo:           EVB_SendUNum_1(1);  break;
??makeOnePackge_1:
        MOVS     R0,#+1
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  295       case EVB_Spd:             EVB_SendUNum_1(2);  break;
??makeOnePackge_4:
        MOVS     R0,#+2
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  296       case EVB_KpTable:
//  297       case EVB_KdTable:         EVB_SendUNum_1(3);  break;
??makeOnePackge_3:
        MOVS     R0,#+3
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  298       case EVB_SpdTable:        EVB_SendUNum_1(5);  break;
??makeOnePackge_5:
        MOVS     R0,#+5
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  299       case EVB_OffsetBoundTable:EVB_SendUNum_1(6);  break;
??makeOnePackge_7:
        MOVS     R0,#+6
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  300       case EVB_Sensor:          EVB_SendUNum_1(7);  break;
??makeOnePackge_6:
        MOVS     R0,#+7
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  301       case EVB_Battle:          EVB_SendUNum_1(8);  break;
??makeOnePackge_9:
        MOVS     R0,#+8
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  302       case EVB_RemoteControl:   EVB_SendUNum_1(9);  break;
??makeOnePackge_8:
        MOVS     R0,#+9
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_10
//  303       default:                  EVB_SendUNum_1(0);
??makeOnePackge_2:
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_1i
//  304     }
//  305 
//  306     
//  307   ///////////////////////变量需要修改///////////////////////
//  308     extern int myYaw, myYaw1, myYaw2;
//  309 
//  310 //  EVB_SendSNum_3((int)(MPU6000.gyro_z*10));
//  311 //  EVB_SendSNum_3(angleY.output);
//  312 //  EVB_SendSNum_3(gyroY.output * 10);
//  313 //  EVB_SendSNum_3(MPU6000.accel_z);
//  314 //  EVB_SendSNum_3(roror4);
//  315 extern float compensation;
//  316 
//  317 
//  318 //    EVB_SendSNum_3(Navigation->angleToScreenJumpF * 100);
//  319 //    EVB_SendSNum_3(UltrasoundUART->distance1 * 1000);
//  320  //     EVB_SendSNum_3(videoStation->positionX_raw);
//  321  //     EVB_SendSNum_3(videoStation->positionY_raw);
//  322   //  EVB_SendSNum_3(UltrasoundUART->position.z * 100);
//  323   //  EVB_SendSNum_3(UltrasoundUART->vel.z * 100);
//  324 //    EVB_SendSNum_3(UltrasoundUART->distance1 * 1000);
//  325 //    EVB_SendSNum_3(UltrasoundUART->distance2 * 1000);
//  326 ////    EVB_SendSNum_3(flightMode->takeOff.state * 100);
//  327 //    EVB_SendSNum_3(UltrasoundUART->distance3 * 1000);
//  328  //   EVB_SendSNum_3(UltrasoundUART->distanceRaw1 * 1000);
//  329  //   EVB_SendSNum_3(UWB->dis[0] * 100);
//  330    // EVB_SendSNum_3(UWB->position.y * 100);
//  331    // EVB_SendSNum_3(UWB->vel.y * 100);
//  332    // EVB_SendSNum_3(UWB->positionF.y * 100);
//  333     //EVB_SendSNum_3(t - UWB->byte_lastTime);
//  334 //   EVB_SendSNum_3(UltrasoundUART->distanceRaw2 * 1000);
//  335  //  EVB_SendSNum_3(UltrasoundUART->distanceRaw3 * 1000);
//  336 //    EVB_SendSNum_3(videoStation->valid * 1000);
//  337  //   EVB_SendSNum_3(videoStation->positionX_A * 1000);
//  338  //   EVB_SendSNum_3(videoStation->positionY_A * 1000);
//  339  //   EVB_SendSNum_3(videoStation->position.y * 1000);
//  340   //  EVB_SendSNum_3(videoStation->position.z * 1000);
//  341   //  EVB_SendSNum_3(dis_set_hight * 100);
//  342 
//  343 //    EVB_SendSNum_3(GPS->position.x * 100);
//  344 //    EVB_SendSNum_3(GPS->position.y * 100);
//  345  //   EVB_SendSNum_3(EKF_AHRS1->fusion.position.z * 100);
//  346 //    EVB_SendSNum_3(EKF_AHRS1->fusion.vel.x * 100);
//  347 //    EVB_SendSNum_3(EKF_AHRS1->fusion.vel.y * 100);
//  348 //    EVB_SendSNum_3(positionX.referance * 100);
//  349 //    EVB_SendSNum_3(positionY.referance * 100);
//  350   //  EVB_SendSNum_3(positionX_vel.referance * 100);
//  351   //  EVB_SendSNum_3(positionY_vel.referance * 100);
//  352 //    EVB_SendSNum_3(GPS->vel.x * 100);
//  353   //  EVB_SendSNum_3(GPS->vel.y * 100);
//  354     EVB_SendSNum_3(angleX.referance * 10);
??makeOnePackge_10:
        LDR.W    R0,??DataTable22_6
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        BL       _Z14EVB_SendSNum_3i
//  355     EVB_SendSNum_3(angleY.referance * 10);
        LDR.W    R0,??DataTable22_7
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        BL       _Z14EVB_SendSNum_3i
//  356     
//  357 //    EVB_SendSNum_3((GPS->status - '0') * 100);
//  358 //    EVB_SendSNum_3((GPS->positionFilterX.valid + GPS->positionFilterY.valid) * 100);
//  359     
//  360 //    EVB_SendSNum_3(roll1 * 10);
//  361 // //   EVB_SendSNum_3(roll3 * 10);
//  362 ////    EVB_SendSNum_3(pitch1 * 10);
//  363 //    EVB_SendSNum_3(pitch1 * 10);
//  364 //        EVB_SendSNum_3(yaw2 * 10);
//  365 //        EVB_SendSNum_3(yaw1 * 10);
//  366 //    EVB_SendSNum_3(yaw3 * 10);
//  367 //    EVB_SendSNum_3(yaw4 * 10);
//  368  //   EVB_SendSNum_3(gyroY.referance * 10);
//  369   //  EVB_SendSNum_3(gyroY.outputP * 100);
//  370 //    EVB_SendSNum_3(MPU6000.gyro_x * 100);
//  371 //    EVB_SendSNum_3(MPU6000.gyro_y * 100);
//  372 //    EVB_SendSNum_3(MPU6000.gyro_x_f * 100);
//  373  //   EVB_SendSNum_3(gyroY.outputI * 100);
//  374    // EVB_SendSNum_3(gyroY.outputD * 100);
//  375 //    EVB_SendSNum_3(GPS->vel.y * 1000);
//  376 //    EVB_SendSNum_3(Navigation->angleToScreen * 100);
//  377 //    EVB_SendSNum_3(Navigation->angleToScreen_CF * 100);
//  378   //    EVB_SendSNum_3(UltrasoundUART->distanceFilter2.valid * 100);
//  379   //    EVB_SendSNum_3(UltrasoundUART->distanceFilter3.valid * 100);
//  380      //EVB_SendSNum_3(positionX.output * 100);
//  381    //   EVB_SendSNum_3(positionX.outputP * 100);
//  382    //   EVB_SendSNum_3(positionX.outputD * 100);
//  383 //    EVB_SendSNum_3(IMU_acc_E.y * 100);
//  384 //    EVB_SendSNum_3(waterGun->servoControl2);
//  385 //    EVB_SendSNum_3(accel_E_H_y.sum * 100);
//  386 //    EVB_SendSNum_3(UltrasoundUART->byteInterval);
//  387  //   EVB_SendSNum_3(t - UltrasoundUART->lastValidTime1);
//  388 //    EVB_SendSNum_3(t - UltrasoundUART->lastValidTime2);
//  389 //    EVB_SendSNum_3(t - UltrasoundUART->lastValidTime3);
//  390     
//  391 //  EVB_SendSNum_3(pitch1 * 100);
//  392 //  EVB_SendSNum_3(roll1 * 100);
//  393   //EVB_SendSNum_3(positionX_vel.output * 100);
//  394   //EVB_SendSNum_3(positionY_vel.output * 100);
//  395 //  EVB_SendSNum_3(yaw1 * 10);
//  396 
//  397   EVB_SendSNum_3(roror1);
        LDR.W    R0,??DataTable22_8
        LDR      R0,[R0, #+0]
        BL       _Z14EVB_SendSNum_3i
//  398   EVB_SendSNum_3(roror2);
        LDR.W    R0,??DataTable22_9
        LDR      R0,[R0, #+0]
        BL       _Z14EVB_SendSNum_3i
//  399   EVB_SendSNum_3(roror3);
        LDR.W    R0,??DataTable22_10
        LDR      R0,[R0, #+0]
        BL       _Z14EVB_SendSNum_3i
//  400   EVB_SendSNum_3(roror4);
        LDR.W    R0,??DataTable22_11
        LDR      R0,[R0, #+0]
        BL       _Z14EVB_SendSNum_3i
//  401 
//  402 //  EVB_SendSNum_3(0);
//  403 //  EVB_SendSNum_3(0);
//  404 
//  405     for(int i = 0; i < 10; i++)
        MOVS     R0,#+0
??makeOnePackge_11:
        CMP      R0,#+10
        BGE.N    ??makeOnePackge_12
        ADDS     R0,R0,#+1
        B.N      ??makeOnePackge_11
//  406     {
//  407     //  EVB_SendSNum_3(-10000 + t * 5 + i);
//  408     }
//  409 //  EVB_SendSNum_3(MPU6000.gyro_x * 10);
//  410 //  EVB_SendSNum_3(pitch * 10);
//  411 //  EVB_SendSNum_3(yaw * 10);
//  412 
//  413 //  EVB_SendSNum_3(angleX.output);
//  414 //  EVB_SendSNum_3(gyroX.output);
//  415 //  
//  416 //  EVB_SendSNum_3(gyroX.outputD);
//  417 //  EVB_SendSNum_3(gyroX.outputP);
//  418   //EVB_SendSNum_3(roror4);
//  419   
//  420 //  EVB_SendSNum_3(roror3);
//  421 //  EVB_SendSNum_3(roror4);
//  422   
//  423 //  EVB_SendSNum_3(controlOutput.D1);
//  424 //  EVB_SendSNum_3(controlOutput.D2);
//  425 //  EVB_SendSNum_3(controlOutput.D3);
//  426 //  EVB_SendSNum_3(Diffa.diff);
//  427   
//  428 //  EVB_SendSNum_3(EVB.Pitch);
//  429 //  EVB_SendSNum_3(angleY.output);
//  430 //  EVB_SendSNum_3(gyroY.output);
//  431 //  EVB_SendSNum_3(gyroY.D);
//  432   
//  433   
//  434   
//  435   EVB_SendUNum_1(0);
??makeOnePackge_12:
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_1i
//  436   EVB_SendUNum_1(EVB.Row_FuzzyTable);
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1800]
        BL       _Z14EVB_SendUNum_1i
//  437   EVB_SendUNum_1(EVB.Column_FuzzyTable);
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1804]
        BL       _Z14EVB_SendUNum_1i
//  438   EVB_SendUNum_1(0); //忽略两位!!
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_1i
//  439   EVB_SendUNum_1(0);
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_1i
//  440 
//  441   
//  442   if(EVB.FunctionMode==7)
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+25]
        CMP      R0,#+7
        BNE.N    ??makeOnePackge_13
//  443   {
//  444      EVB_SendUNum_2(0);
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_2i
//  445      EVB_SendUNum_2(0);
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_2i
//  446      EVB_SendUNum_2(0);
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_2i
//  447      EVB_SendUNum_2(0);
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_2i
//  448      EVB_SendUNum_2(0); 
        MOVS     R0,#+0
        BL       _Z14EVB_SendUNum_2i
//  449   }  
//  450   ///////////////////////--------///////////////////////
//  451   
//  452   EVB_SendUNum_2(*EVB.SupplyVoltage);
??makeOnePackge_13:
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1832]
        LDR      R0,[R0, #+0]
        BL       _Z14EVB_SendUNum_2i
        B.N      ??makeOnePackge_14
//  453   }
//  454   else if(EVB.SendMode == EVB_SendMode_KpTable)
??makeOnePackge_0:
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+1
        BNE.N    ??makeOnePackge_15
//  455   {
//  456     EVB_SendTable(EVB.KpTable, EVB_SendMode_KpTable);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1836]
        BL       _Z13EVB_SendTablePs10__SendMode
//  457     EVB.SendMode = EVB_SendMode_Normal;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??makeOnePackge_14
//  458   }
//  459   else if(EVB.SendMode == EVB_SendMode_KdTable)
??makeOnePackge_15:
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+2
        BNE.N    ??makeOnePackge_16
//  460   {
//  461     EVB_SendTable(EVB.KdTable, EVB_SendMode_KdTable);
        MOVS     R1,#+2
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1840]
        BL       _Z13EVB_SendTablePs10__SendMode
//  462     EVB.SendMode = EVB_SendMode_Normal;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??makeOnePackge_14
//  463   }
//  464   else if(EVB.SendMode == EVB_SendMode_SpdTable)
??makeOnePackge_16:
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+3
        BNE.N    ??makeOnePackge_17
//  465   {
//  466     EVB_SendTable(EVB.SpdTable, EVB_SendMode_SpdTable);
        MOVS     R1,#+3
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1844]
        BL       _Z13EVB_SendTablePs10__SendMode
//  467     EVB.SendMode =EVB_SendMode_Normal;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??makeOnePackge_14
//  468   }
//  469   else if(EVB.SendMode == EVB_SendMode_VERSION)
??makeOnePackge_17:
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+4
        BNE.N    ??makeOnePackge_18
//  470   {
//  471     EVB_SendUNum_1(EVB_VERSION);
        MOVS     R0,#+100
        BL       _Z14EVB_SendUNum_1i
        B.N      ??makeOnePackge_14
//  472   }
//  473   else if(EVB.SendMode == EVB_SendMode_FnINIT)
//  474   {
//  475     
//  476   }
//  477   EVB_SendUNum_1(EVB_END);
??makeOnePackge_18:
??makeOnePackge_14:
        MOVS     R0,#+101
        BL       _Z14EVB_SendUNum_1i
//  478 
//  479 }
        POP      {R4,PC}          ;; return
//  480 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 void EVB_::TX_::startDMA_Transmit()
//  482 {
//  483   //DMA_changeLength(DMA_CH2, EVB.TX.index);
//  484   
//  485   //主的计数次数（major iteration count）达到后，重新调整源地址
//  486   //DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(-length);
//  487   
//  488   //调整源地址
//  489   DMA0->TCD[DMA_CH2].SADDR = DMA_SADDR_SADDR(EVB.TX.data);
_ZN4EVB_3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable12_2
        LDR.W    R2,??DataTable22_12  ;; 0x40009040
        STR      R1,[R2, #+0]
//  490   
//  491   //设置主循环计数器 current major loop count
//  492   DMA0->TCD[DMA_CH2].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(EVB.TX.index);
        LDR.N    R1,??DataTable12
        LDR      R1,[R1, #+1724]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.W    R2,??DataTable22_13  ;; 0x40009056
        STRH     R1,[R2, #+0]
//  493   
//  494   //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  495   DMA0->TCD[DMA_CH2].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(EVB.TX.index);
        LDR.N    R1,??DataTable12
        LDR      R1,[R1, #+1724]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.W    R2,??DataTable22_14  ;; 0x4000905e
        STRH     R1,[R2, #+0]
//  496   
//  497   DMA_EnableReq(DMA_CH2);
        LDR.W    R1,??DataTable22_15  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.W    R2,??DataTable22_15  ;; 0x4000800c
        STR      R1,[R2, #+0]
//  498 }
        BX       LR               ;; return
//  499 
//  500 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  501 void EVB_ReceiveOneByte(char dataTmp)
//  502 {
_Z18EVB_ReceiveOneBytec:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  503   EVB.RXD[EVB.RXD_Iterator] = dataTmp;
        LDR.N    R0,??DataTable12
        LDR.N    R1,??DataTable12
        LDR      R1,[R1, #+1532]
        ADD      R0,R0,R1
        STRB     R4,[R0, #+32]
//  504   if(EVB.RXD[EVB.RXD_Iterator] == EVB_END)
        LDR.N    R0,??DataTable12
        LDR.N    R1,??DataTable12
        LDR      R1,[R1, #+1532]
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+32]
        CMP      R0,#+101
        BNE.N    ??EVB_ReceiveOneByte_0
//  505   {
//  506     if(EVB_RX_Check(0) == true)
        MOVS     R0,#+0
        BL       _Z12EVB_RX_Checki
        CMP      R0,#+1
        BNE.N    ??EVB_ReceiveOneByte_1
        MOVS     R0,#+1
        B.N      ??EVB_ReceiveOneByte_2
??EVB_ReceiveOneByte_1:
        MOVS     R0,#+0
??EVB_ReceiveOneByte_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EVB_ReceiveOneByte_3
//  507     {
//  508       EVB_Unpack(0);
        MOVS     R0,#+0
        BL       _Z10EVB_Unpacki
        B.N      ??EVB_ReceiveOneByte_4
//  509     }
//  510     else
//  511     {
//  512       EVB.RxError++;
??EVB_ReceiveOneByte_3:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+1620]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable12
        STR      R0,[R1, #+1620]
//  513       EVB.RXD_Iterator = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12
        STR      R0,[R1, #+1532]
        B.N      ??EVB_ReceiveOneByte_4
//  514     }
//  515   }
//  516   else
//  517   {
//  518     EVB.RXD_Iterator++;
??EVB_ReceiveOneByte_0:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+1532]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable12
        STR      R0,[R1, #+1532]
//  519   }
//  520 }
??EVB_ReceiveOneByte_4:
        POP      {R4,PC}          ;; return
//  521 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  522 void EVB_DMA_Receive()
//  523 {
_Z15EVB_DMA_Receivev:
        PUSH     {R3-R7,LR}
//  524   int i0 = 0;
        MOVS     R4,#+0
//  525   int i = 0;
        MOVS     R5,#+0
//  526   int address0 = (DMA0->TCD[DMA_CH1].DADDR) - (uint32)&(EVB.RXD[0]);
        LDR.W    R0,??DataTable22_16  ;; 0x40009030
        LDR      R0,[R0, #+0]
        LDR.W    R6,??DataTable22_17
        SUBS     R6,R0,R6
//  527   int moveLength = 0;
        MOVS     R7,#+0
//  528   static int address00;
//  529   if(address0 - address00 > 0)
        LDR.W    R0,??DataTable22_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R6,R0
        CMP      R0,#+1
        BLT.N    ??EVB_DMA_Receive_0
//  530   {
//  531     address00 = address0;
        LDR.W    R0,??DataTable22_18
        STR      R6,[R0, #+0]
//  532     EVB.LastPackageTime = t;
        LDR.N    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STR      R0,[R1, #+12]
//  533   }
//  534   for(; i < address0 ;i++)
??EVB_DMA_Receive_0:
        CMP      R5,R6
        BGE.N    ??EVB_DMA_Receive_1
//  535   {
//  536     for(; EVB.RXD[i] != EVB_END && i < address0; i++)
??EVB_DMA_Receive_2:
        LDR.N    R0,??DataTable12
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+101
        BEQ.N    ??EVB_DMA_Receive_3
        CMP      R5,R6
        BGE.N    ??EVB_DMA_Receive_3
        ADDS     R5,R5,#+1
        B.N      ??EVB_DMA_Receive_2
//  537     {
//  538     }
//  539     if( EVB.RXD[i] == EVB_END )
??EVB_DMA_Receive_3:
        LDR.N    R0,??DataTable12
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+101
        BNE.N    ??EVB_DMA_Receive_4
//  540     {
//  541       EVB.LastPackageTime = t;
        LDR.N    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12
        STR      R0,[R1, #+12]
//  542       EVB.RXD_Iterator = i;
        LDR.N    R0,??DataTable12
        STR      R5,[R0, #+1532]
//  543       if(EVB_RX_Check(i0) == true)
        MOVS     R0,R4
        BL       _Z12EVB_RX_Checki
        CMP      R0,#+1
        BNE.N    ??EVB_DMA_Receive_5
        MOVS     R0,#+1
        B.N      ??EVB_DMA_Receive_6
??EVB_DMA_Receive_5:
        MOVS     R0,#+0
??EVB_DMA_Receive_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EVB_DMA_Receive_7
//  544       {
//  545         EVB_Unpack(i0);
        MOVS     R0,R4
        BL       _Z10EVB_Unpacki
//  546       }
//  547       i0 = i + 1;
??EVB_DMA_Receive_7:
        ADDS     R0,R5,#+1
        MOVS     R4,R0
//  548     }
//  549   }
??EVB_DMA_Receive_4:
        ADDS     R5,R5,#+1
        B.N      ??EVB_DMA_Receive_0
//  550   moveLength = (DMA0->TCD[DMA_CH1].DADDR - (uint32)&(EVB.RXD[0])) - i0;
??EVB_DMA_Receive_1:
        LDR.W    R0,??DataTable22_16  ;; 0x40009030
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable22_17
        SUBS     R0,R1,R0
        SUBS     R0,R0,R4
//  551 
//  552   if(moveLength < 0) moveLength = 0;
        CMP      R0,#+0
        BPL.N    ??EVB_DMA_Receive_8
        MOVS     R1,#+0
        MOVS     R0,R1
//  553   DMA_LoadDstAddr(DMA_CH1, (uint32)(&(EVB.RXD[0]) + moveLength) );
??EVB_DMA_Receive_8:
        LDR.N    R1,??DataTable12
        ADD      R1,R1,R0
        ADDS     R1,R1,#+32
        LDR.W    R2,??DataTable22_16  ;; 0x40009030
        STR      R1,[R2, #+0]
//  554   for(i = 0; i < moveLength; i++)
        MOVS     R1,#+0
??EVB_DMA_Receive_9:
        CMP      R1,R0
        BGE.N    ??EVB_DMA_Receive_10
//  555   {
//  556     EVB.RXD[i] = EVB.RXD[i0 + i];
        LDR.N    R2,??DataTable12
        ADDS     R3,R1,R4
        ADD      R2,R2,R3
        LDRB     R2,[R2, #+32]
        LDR.N    R3,??DataTable12
        ADD      R3,R3,R1
        STRB     R2,[R3, #+32]
//  557   }
        ADDS     R1,R1,#+1
        B.N      ??EVB_DMA_Receive_9
//  558   for(i = DMA0->TCD[DMA_CH1].DADDR - (uint32)&(EVB.RXD[0]); i < address0; i++) //1、地址4字节 但是uart本身是单字节接收 每次接收+1     2、换成 memset(uartData + moveLength, 0, 150 * sizeof(char));
??EVB_DMA_Receive_10:
        LDR.W    R2,??DataTable22_16  ;; 0x40009030
        LDR      R3,[R2, #+0]
        LDR.W    R2,??DataTable22_17
        SUBS     R2,R3,R2
??EVB_DMA_Receive_11:
        CMP      R2,R6
        BGE.N    ??EVB_DMA_Receive_12
//  559   {
//  560     EVB.RXD[i] = 0;
        MOVS     R1,#+0
        LDR.N    R3,??DataTable12
        ADD      R3,R3,R2
        STRB     R1,[R3, #+32]
//  561   }
        ADDS     R2,R2,#+1
        B.N      ??EVB_DMA_Receive_11
//  562 }
??EVB_DMA_Receive_12:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`EVB_DMA_Receive()::address00`:
        DS8 4
//  563 
//  564 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  565 bool EVB_RX_Check(int start)
//  566 {
_Z12EVB_RX_Checki:
        MOVS     R1,R0
//  567   if(EVB.RXD[0] > FUNCTION_NUM_MAX)
        LDR.W    R0,??DataTable22_5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+21
        BLT.N    ??EVB_RX_Check_0
//  568   {
//  569     return false;
        MOVS     R0,#+0
        B.N      ??EVB_RX_Check_1
//  570   }
//  571   else
//  572   {
//  573     if(EVB.RXD_Iterator - start == EVB.RXD_PackageLength[EVB.RXD[0]])
??EVB_RX_Check_0:
        LDR.W    R0,??DataTable22_5
        LDR      R0,[R0, #+1532]
        SUBS     R0,R0,R1
        LDR.W    R2,??DataTable22_5
        LDR.W    R3,??DataTable22_5
        LDRB     R3,[R3, #+32]
        ADD      R2,R2,R3, LSL #+2
        LDR      R2,[R2, #+1536]
        CMP      R0,R2
        BNE.N    ??EVB_RX_Check_2
//  574     {
//  575        return true;
        MOVS     R0,#+1
        B.N      ??EVB_RX_Check_1
//  576     }
//  577     else
//  578     {
//  579       return false;
??EVB_RX_Check_2:
        MOVS     R0,#+0
??EVB_RX_Check_1:
        BX       LR               ;; return
//  580     }
//  581   }
//  582 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     EVB+0x658

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     MPU6000_Raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     roll1
//  583 
//  584 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  585 void EVB_Unpack(int start)
//  586 {
_Z10EVB_Unpacki:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
//  587     int row    = 0;
        MOVS     R4,#+0
//  588     int column = 0;
        MOVS     R6,#+0
//  589     int i1     = 0;
        MOVS     R7,#+0
//  590   //  int tmpNum = 0;
//  591     
//  592     if(EVB.RXD[start] == EVB_Servo)
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+1
        BNE.N    ??EVB_Unpack_0
//  593     {
//  594       EVB.FunctionMode       = EVB_Servo;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  595 
//  596       EVB.AngleDirectControl = EVB_atoi(EVB.RXD + 1 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        STR      R0,[R1, #+1772]
//  597       *EVB.AngleMin          = EVB_atoi(EVB.RXD + 5 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+37
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1820]
        STR      R0,[R1, #+0]
//  598       *EVB.AngleMid          = EVB_atoi(EVB.RXD + 9 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+41
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1824]
        STR      R0,[R1, #+0]
//  599       *EVB.AngleMax          = EVB_atoi(EVB.RXD + 13 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+45
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1828]
        STR      R0,[R1, #+0]
        B.N      ??EVB_Unpack_1
//  600     } 
//  601     else if(EVB.RXD[start] == EVB_Spd)
??EVB_Unpack_0:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+2
        BNE.N    ??EVB_Unpack_2
//  602     {
//  603       EVB.FunctionMode = EVB_Spd;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  604 
//  605       EVB.ConstSpd  = EVB_atoi(EVB.RXD + 1 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        STR      R0,[R1, #+1768]
//  606      *EVB.SpdKp     = EVB_atoi(EVB.RXD + 5 + start, 6);
        MOVS     R1,#+6
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+37
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1808]
        STR      R0,[R1, #+0]
//  607      *EVB.SpdKi     = EVB_atoi(EVB.RXD + 11 + start, 5);
        MOVS     R1,#+5
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+43
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1812]
        STR      R0,[R1, #+0]
//  608      *EVB.SpdKd     = EVB_atoi(EVB.RXD + 16 + start, 3);
        MOVS     R1,#+3
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+48
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1816]
        STR      R0,[R1, #+0]
        B.N      ??EVB_Unpack_1
//  609     }
//  610     else if(EVB.RXD[start] == EVB_KpTable)
??EVB_Unpack_2:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+3
        BNE.N    ??EVB_Unpack_3
//  611     {
//  612       EVB.FunctionMode  = EVB_KpTable;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  613       for(i1 = 0; i1 < 49; i1++)
        MOVS     R0,#+0
        MOVS     R7,R0
??EVB_Unpack_4:
        CMP      R7,#+49
        BGE.W    ??EVB_Unpack_1
//  614       { 
//  615         *(EVB.KpTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
        MOVS     R1,#+3
        LDR.W    R0,??DataTable22_5
        MOVS     R2,#+3
        MUL      R2,R2,R7
        ADD      R0,R0,R2
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1836]
        STRH     R0,[R1, R7, LSL #+1]
//  616       }
        ADDS     R7,R7,#+1
        B.N      ??EVB_Unpack_4
//  617     }
//  618     else if(EVB.RXD[start] == EVB_KdTable)
??EVB_Unpack_3:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+4
        BNE.N    ??EVB_Unpack_5
//  619     {
//  620       EVB.FunctionMode  = EVB_KdTable;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  621       for(i1 = 0; i1 < 49; i1++)
        MOVS     R0,#+0
        MOVS     R7,R0
??EVB_Unpack_6:
        CMP      R7,#+49
        BGE.W    ??EVB_Unpack_1
//  622       { 
//  623         *(EVB.KdTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
        MOVS     R1,#+3
        LDR.W    R0,??DataTable22_5
        MOVS     R2,#+3
        MUL      R2,R2,R7
        ADD      R0,R0,R2
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1840]
        STRH     R0,[R1, R7, LSL #+1]
//  624       }
        ADDS     R7,R7,#+1
        B.N      ??EVB_Unpack_6
//  625     }
//  626     else if(EVB.RXD[start] == EVB_SpdTable)
??EVB_Unpack_5:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+5
        BNE.N    ??EVB_Unpack_7
//  627     {
//  628       EVB.FunctionMode  = EVB_SpdTable;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  629       for(i1 = 0; i1 < 49; i1++)
        MOVS     R0,#+0
        MOVS     R7,R0
??EVB_Unpack_8:
        CMP      R7,#+49
        BGE.W    ??EVB_Unpack_1
//  630       { 
//  631         *(EVB.SpdTable + i1) = EVB_atoi(EVB.RXD + i1*3 + 1 + start, 3); 
        MOVS     R1,#+3
        LDR.W    R0,??DataTable22_5
        MOVS     R2,#+3
        MUL      R2,R2,R7
        ADD      R0,R0,R2
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        LDR      R1,[R1, #+1844]
        STRH     R0,[R1, R7, LSL #+1]
//  632       }
        ADDS     R7,R7,#+1
        B.N      ??EVB_Unpack_8
//  633     }
//  634     else if(EVB.RXD[start] == EVB_OffsetBoundTable)
??EVB_Unpack_7:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+6
        BNE.N    ??EVB_Unpack_9
//  635     {
//  636       EVB.FunctionMode  = EVB_OffsetBoundTable;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  637       for(i1=1;i1<84;i1+=3)
        MOVS     R0,#+1
        MOVS     R7,R0
??EVB_Unpack_10:
        CMP      R7,#+84
        BGE.W    ??EVB_Unpack_1
//  638       {
//  639 //        if(column<3) 
//  640 //          tmpNum = -((EVB.RXD[i1] - '0')*100 + (EVB.RXD[i1+1] - '0')*10 +(EVB.RXD[i1+2] - '0'));
//  641 //        else
//  642 //          tmpNum = ((EVB.RXD[i1] - '0')*100 + (EVB.RXD[i1+1] - '0')*10 +(EVB.RXD[i1+2] - '0'));
//  643         
//  644         if(row==0)
        CMP      R4,#+0
//  645         {
//  646         }
//  647           //OffsetBound[column] = tmpNum;
//  648         else if(row==1)
//  649         {
//  650         }
//  651           //OffsetDBound[column] = tmpNum;
//  652         
//  653         column++;
??EVB_Unpack_11:
        ADDS     R6,R6,#+1
//  654         if(column==7)
        CMP      R6,#+7
        BNE.N    ??EVB_Unpack_12
//  655         {
//  656           column = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  657           row++;
        ADDS     R4,R4,#+1
//  658         }            
//  659       }
??EVB_Unpack_12:
        ADDS     R7,R7,#+3
        B.N      ??EVB_Unpack_10
//  660     }
//  661     else if(EVB.RXD[start] == EVB_Sensor)
??EVB_Unpack_9:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+7
        BNE.N    ??EVB_Unpack_13
//  662     {
//  663       EVB.FunctionMode  = EVB_Sensor;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
        B.N      ??EVB_Unpack_1
//  664     }
//  665     else if(EVB.RXD[start] == EVB_Battle)
??EVB_Unpack_13:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+8
        BNE.N    ??EVB_Unpack_14
//  666     {
//  667       EVB.FunctionMode  = EVB_Battle;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  668       //t_delay = EVB.RXD[1]*1000;
//  669       //t_test =  EVB.RXD[3]*1000; 
//  670       //t_test = 35000;
//  671       EVB_ResetTime();
        BL       _Z13EVB_ResetTimev
        B.N      ??EVB_Unpack_1
//  672     }
//  673     else if(EVB.RXD[start] == EVB_RemoteControl)
??EVB_Unpack_14:
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+9
        BNE.N    ??EVB_Unpack_15
//  674     {
//  675       EVB.FunctionMode  = EVB_RemoteControl;
        MOVS     R0,#+9
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+25]
//  676       if(!RemoteHub->valid)
        LDR.W    R0,??DataTable22_19
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2036]
        CMP      R0,#+0
        BNE.N    ??EVB_Unpack_1
//  677       {
//  678         EVB.Yaw       = EVB_atoi(EVB.RXD + 1 + start, 4); 
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+33
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        STR      R0,[R1, #+1776]
//  679         EVB.Roll      = EVB_atoi(EVB.RXD + 5 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+37
        BL       _Z8EVB_atoiPci
        LDR.W    R1,??DataTable22_5
        STR      R0,[R1, #+1780]
//  680         EVB.Pitch     = EVB_atoi(EVB.RXD + 9 + start, 4);
        MOVS     R1,#+4
        LDR.W    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+41
        BL       _Z8EVB_atoiPci
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1784]
//  681         EVB.ConstSpd  = EVB_atoi(EVB.RXD + 13 + start, 4);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+45
        BL       _Z8EVB_atoiPci
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1768]
//  682         EVB.LeftKnob  = EVB_atoi(EVB.RXD + 17 + start, 4); //用遥控器直接连接
        MOVS     R1,#+4
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        ADDS     R0,R0,#+49
        BL       _Z8EVB_atoiPci
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1788]
        B.N      ??EVB_Unpack_1
//  683       }
//  684     }
//  685     else if(EVB.RXD[start] == EVB_Command)
??EVB_Unpack_15:
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+32]
        CMP      R0,#+10
        BNE.N    ??EVB_Unpack_16
//  686     {
//  687       if(EVB.RXD[1 + start] == 0)
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+33]
        CMP      R0,#+0
        BNE.N    ??EVB_Unpack_17
//  688       {
//  689         EVB.MotorSwitch = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1792]
        B.N      ??EVB_Unpack_1
//  690        // writeAllParameter();      //策略号要远程更新?
//  691       }
//  692       else if(EVB.RXD[1 + start] == 1)
??EVB_Unpack_17:
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+33]
        CMP      R0,#+1
        BNE.N    ??EVB_Unpack_18
//  693         EVB.SendMode = EVB_SendMode_KpTable;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??EVB_Unpack_1
//  694       else if(EVB.RXD[1 + start] == 2)
??EVB_Unpack_18:
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+33]
        CMP      R0,#+2
        BNE.N    ??EVB_Unpack_19
//  695         EVB.SendMode = EVB_SendMode_KdTable;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??EVB_Unpack_1
//  696       else if(EVB.RXD[1 + start] == 3)
??EVB_Unpack_19:
        LDR.N    R0,??DataTable22_5
        ADD      R0,R0,R5
        LDRB     R0,[R0, #+33]
        CMP      R0,#+3
        BNE.N    ??EVB_Unpack_1
//  697         EVB.SendMode = EVB_SendMode_SpdTable;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable22_5
        STRB     R0,[R1, #+24]
        B.N      ??EVB_Unpack_1
//  698     }
//  699     else if(EVB.RXD[start] == EVB_FullBrake)
//  700     {
//  701     }
//  702     EVB.MotorSwitch = EVB.RXD[EVB.RXD_Iterator - 1] - 48;
??EVB_Unpack_16:
??EVB_Unpack_1:
        LDR.N    R0,??DataTable22_5
        LDR.N    R1,??DataTable22_5
        LDR      R1,[R1, #+1532]
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+31]
        SUBS     R0,R0,#+48
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1792]
//  703     //EVB.LastPackageTime = t;
//  704     EVB_Process();
        BL       _Z11EVB_Processv
//  705     EVB.RXD_Iterator = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1532]
//  706 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     pitch1
//  707 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  708 void EVB_Process()
//  709 {
_Z11EVB_Processv:
        PUSH     {R7,LR}
//  710   if(!EVB.MotorSwitchLast && EVB.MotorSwitch) 
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1796]
        CMP      R0,#+0
        BNE.N    ??EVB_Process_0
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+0
        BEQ.N    ??EVB_Process_0
//  711   {
//  712     EVB_ResetTime();
        BL       _Z13EVB_ResetTimev
//  713   }  
//  714   EVB.MotorSwitchLast = EVB.MotorSwitch;
??EVB_Process_0:
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1796]
//  715 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     yaw1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     Compass
//  716 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  717 void EVB_ResetTime()    //注意速度PID控制器的重置
//  718 {
//  719   angleZ.referance = 0;
_Z13EVB_ResetTimev:
        LDR.N    R0,??DataTable22_20
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  720   EKF_AHRS->q0 = 1.0f, 
//  721   EKF_AHRS->q1 = 0.0f, 
//  722   EKF_AHRS->q2 = 0.0f, 
//  723   EKF_AHRS->q3 = 0.0f;
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+56]
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+64]
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//  724   gyroX.I = 0;
        LDR.N    R0,??DataTable22_22
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//  725   gyroY.I = 0;
        LDR.N    R0,??DataTable22_23
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//  726   gyroZ.I = 0;
        LDR.N    R0,??DataTable22_24
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//  727   angleX.I = angleY.I = angleZ.I = 0;
        VLDR.W   S0,??DataTable22  ;; 0x0
        LDR.N    R0,??DataTable22_20
        VSTR     S0,[R0, #+68]
        LDR.N    R0,??DataTable22_7
        VSTR     S0,[R0, #+68]
        LDR.N    R0,??DataTable22_6
        VSTR     S0,[R0, #+68]
//  728 }
        BX       LR               ;; return
//  729 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  730 void EVB_SetRow_FuzzyTable(int Tmp)
//  731 {
//  732   EVB.Row_FuzzyTable = Tmp;
_Z21EVB_SetRow_FuzzyTablei:
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1800]
//  733 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     EVB+0x6C4
//  734 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  735 void EVB_SetColumn_FuzzyTable(int Tmp)
//  736 {
//  737   EVB.Column_FuzzyTable = Tmp;
_Z24EVB_SetColumn_FuzzyTablei:
        LDR.N    R1,??DataTable22_5
        STR      R0,[R1, #+1804]
//  738 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     EVB+0x6C8
//  739 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  740 int EVB_SetSpd(int tmp)
//  741 {
_Z10EVB_SetSpdi:
        MOVS     R1,R0
//  742   if(EVB.MotorSwitch == 2)
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+2
        BNE.N    ??EVB_SetSpd_0
//  743   {
//  744     return tmp;
        MOVS     R0,R1
        B.N      ??EVB_SetSpd_1
//  745   }
//  746   else if(EVB.MotorSwitch == 1)
??EVB_SetSpd_0:
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+1
        BNE.N    ??EVB_SetSpd_2
//  747   {
//  748     return EVB.ConstSpd;
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1768]
        B.N      ??EVB_SetSpd_1
//  749   }
//  750   else  //EVB.MotorSwitch == 0或3
//  751   {
//  752     return 0;
??EVB_SetSpd_2:
        MOVS     R0,#+0
??EVB_SetSpd_1:
        BX       LR               ;; return
//  753   }
//  754 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     EVB+0x6CC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     EVB+0x6D0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     EVB+0x6D4
//  755 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  756 int EVB_SpdPWM(int tmp)
//  757 {
_Z10EVB_SpdPWMi:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  758   if(EVB.MotorSwitch == 2 || EVB.MotorSwitch == 1)
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+2
        BEQ.N    ??EVB_SpdPWM_0
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+1
        BNE.N    ??EVB_SpdPWM_1
//  759   {
//  760     return tmp;
??EVB_SpdPWM_0:
        MOVS     R0,R4
        B.N      ??EVB_SpdPWM_2
//  761   }
//  762   else  if(EVB.MotorSwitch == 0)
??EVB_SpdPWM_1:
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+0
        BNE.N    ??EVB_SpdPWM_3
//  763   {
//  764     return 0;
        MOVS     R0,#+0
        B.N      ??EVB_SpdPWM_2
//  765   }
//  766   else  //EVB.MotorSwitch == 3
//  767   {
//  768     return (int)(EVB.ConstSpd*8.333);//常数随便改
??EVB_SpdPWM_3:
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1768]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable22_25  ;; 0xf9db22d1
        LDR.N    R3,??DataTable22_26  ;; 0x4020aa7e
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
??EVB_SpdPWM_2:
        POP      {R4,PC}          ;; return
//  769   }
//  770 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     EVB+0x6D8
//  771 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  772 int  EVB_AnglePWM(int tmp)
//  773 {
_Z12EVB_AnglePWMi:
        MOVS     R1,R0
//  774   if(EVB.MotorSwitch != 3)
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1792]
        CMP      R0,#+3
        BEQ.N    ??EVB_AnglePWM_0
//  775   {
//  776     return tmp;
        MOVS     R0,R1
        B.N      ??EVB_AnglePWM_1
//  777   }
//  778   else
//  779   {
//  780     return EVB.AngleDirectControl;
??EVB_AnglePWM_0:
        LDR.N    R0,??DataTable22_5
        LDR      R0,[R0, #+1772]
??EVB_AnglePWM_1:
        BX       LR               ;; return
//  781   }
//  782 }
//  783 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  784 bool EVB_FullBrakeStatus()
//  785 {
//  786   if(EVB.FunctionMode == EVB_FullBrake)
_Z19EVB_FullBrakeStatusv:
        LDR.N    R0,??DataTable22_5
        LDRB     R0,[R0, #+25]
        CMP      R0,#+11
        BNE.N    ??EVB_FullBrakeStatus_0
//  787     return true;
        MOVS     R0,#+1
        B.N      ??EVB_FullBrakeStatus_1
//  788   else
//  789     return false;
??EVB_FullBrakeStatus_0:
        MOVS     R0,#+0
??EVB_FullBrakeStatus_1:
        BX       LR               ;; return
//  790 }
//  791 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  792 int EVB_atoi(char* data, int length)
//  793 {
_Z8EVB_atoiPci:
        PUSH     {R4-R6}
        MOVS     R3,R0
//  794   int result = 0, i;
        MOVS     R2,#+0
//  795   if(*data != '-')
        LDRB     R0,[R3, #+0]
        CMP      R0,#+45
        BEQ.N    ??EVB_atoi_0
//  796   {
//  797     for(i = 0; i < length; i++)
        MOVS     R4,#+0
??EVB_atoi_1:
        CMP      R4,R1
        BGE.N    ??EVB_atoi_2
//  798     {
//  799       result += (*(data + i) - '0') * pow(10.0f, length - i - 1);
        SUBS     R5,R1,R4
        SUBS     R5,R5,#+1
        VMOV.F32 S0,#10.0
        MOVS     R0,R5
        CMP      R5,#+0
        BPL.N    ??EVB_atoi_3
        RSBS     R0,R0,#+0
??EVB_atoi_3:
        VMOV.F32 S1,#1.0
??EVB_atoi_4:
        LSLS     R6,R0,#+31
        BPL.N    ??EVB_atoi_5
        VMUL.F32 S1,S1,S0
??EVB_atoi_5:
        LSRS     R0,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??EVB_atoi_6
        VMUL.F32 S0,S0,S0
        B.N      ??EVB_atoi_4
??EVB_atoi_6:
        CMP      R5,#+0
        BPL.N    ??EVB_atoi_7
        VCMP.F32 S1,#0.0
        FMSTAT   
        BNE.N    ??EVB_atoi_8
        VLDR.W   S1,??DataTable22_3  ;; 0x7f800000
        B.N      ??EVB_atoi_9
??EVB_atoi_8:
        VMOV.F32 S0,#1.0
        VDIV.F32 S1,S0,S1
        B.N      ??EVB_atoi_9
//  800     }
??EVB_atoi_7:
??EVB_atoi_9:
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        LDRB     R0,[R3, R4]
        SUBS     R0,R0,#+48
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VMLA.F32 S0,S2,S1
        VCVT.S32.F32 S0,S0
        VMOV     R2,S0
        ADDS     R4,R4,#+1
        B.N      ??EVB_atoi_1
//  801   }
//  802   else
//  803   {
//  804     for(i = 1; i < length; i++)
??EVB_atoi_0:
        MOVS     R4,#+1
??EVB_atoi_10:
        CMP      R4,R1
        BGE.N    ??EVB_atoi_2
//  805     {
//  806       result -= (*(data + i) - '0') * pow(10.0f, length - i - 1);
        SUBS     R5,R1,R4
        SUBS     R5,R5,#+1
        VMOV.F32 S0,#10.0
        MOVS     R0,R5
        CMP      R5,#+0
        BPL.N    ??EVB_atoi_11
        RSBS     R0,R0,#+0
??EVB_atoi_11:
        VMOV.F32 S1,#1.0
??EVB_atoi_12:
        LSLS     R6,R0,#+31
        BPL.N    ??EVB_atoi_13
        VMUL.F32 S1,S1,S0
??EVB_atoi_13:
        LSRS     R0,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??EVB_atoi_14
        VMUL.F32 S0,S0,S0
        B.N      ??EVB_atoi_12
??EVB_atoi_14:
        CMP      R5,#+0
        BPL.N    ??EVB_atoi_15
        VCMP.F32 S1,#0.0
        FMSTAT   
        BNE.N    ??EVB_atoi_16
        VLDR.W   S1,??DataTable22_3  ;; 0x7f800000
        B.N      ??EVB_atoi_17
??EVB_atoi_16:
        VMOV.F32 S0,#1.0
        VDIV.F32 S1,S0,S1
        B.N      ??EVB_atoi_17
//  807     }
??EVB_atoi_15:
??EVB_atoi_17:
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        LDRB     R0,[R3, R4]
        SUBS     R0,R0,#+48
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VMLS.F32 S0,S2,S1
        VCVT.S32.F32 S0,S0
        VMOV     R2,S0
        ADDS     R4,R4,#+1
        B.N      ??EVB_atoi_10
//  808   }
//  809   return result;
??EVB_atoi_2:
        MOVS     R0,R2
        POP      {R4-R6}
        BX       LR               ;; return
//  810 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     _ZN12Ultrasound__3disE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     0x7f800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     0xffffd8f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_5:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_6:
        DC32     angleX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_7:
        DC32     angleY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_8:
        DC32     roror1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_9:
        DC32     roror2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_10:
        DC32     roror3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_11:
        DC32     roror4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_12:
        DC32     0x40009040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_13:
        DC32     0x40009056

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_14:
        DC32     0x4000905e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_15:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_16:
        DC32     0x40009030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_17:
        DC32     EVB+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_18:
        DC32     `EVB_DMA_Receive()::address00`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_19:
        DC32     RemoteHub

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_20:
        DC32     angleZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_21:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_22:
        DC32     gyroX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_23:
        DC32     gyroY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_24:
        DC32     gyroZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_25:
        DC32     0xf9db22d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_26:
        DC32     0x4020aa7e

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  811 
//  812 //int pow(int a, int b)
//  813 //{
//  814 //  int result = 1;
//  815 //  for(int i = 0; i < b; i++)
//  816 //  {
//  817 //    result *= a;
//  818 //  }
//  819 //  return result;
//  820 //}
// 
// 2 028 bytes in section .bss
// 4 734 bytes in section .text
// 
// 4 680 bytes of CODE memory (+ 54 bytes shared)
// 2 028 bytes of DATA memory
//
//Errors: none
//Warnings: 2
