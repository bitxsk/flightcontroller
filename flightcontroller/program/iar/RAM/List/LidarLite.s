///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:58
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\LidarLite.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1FB8.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\LidarLite.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\LidarLite.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN I2C_ReadByte
        EXTERN I2C_SetMasterWR
        EXTERN I2C_Start
        EXTERN I2C_StartTrans
        EXTERN I2C_Stop
        EXTERN I2C_WaitAck
        EXTERN I2C_WriteByte
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter7isValidEv
        EXTERN _ZN11CJumpFilter7newDataEffi
        EXTERN _ZN17CoordinateElement10calculateDEi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_atexit
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __dso_handle
        EXTERN t
        EXTERN temp_111

        PUBLIC LidarLite
        PUBLIC _Z13LidarLiteInitv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN11LidarLite__11getDistanceEv
        PUBLIC _ZN11LidarLite__11getVelocityEv
        PUBLIC _ZN11LidarLite__13openLidarLiteEv
        PUBLIC _ZN11LidarLite__13readLidarLiteEi
        PUBLIC _ZN11LidarLite__14closeLidarLiteEv
        PUBLIC _ZN11LidarLite__14writeLidarLiteEii
        PUBLIC _ZN11LidarLite__18getHardwareVersionEv
        PUBLIC _ZN11LidarLite__18getSoftwareVersionEv
        PUBLIC _ZN11LidarLite__19getPreviousDistanceEv
        PUBLIC _ZN11LidarLite__6updateEv
        PUBLIC _ZN11LidarLite__7measureEv
        PUBLIC _ZN11LidarLite__8getErrorEv
        PUBLIC _ZN11LidarLite__C1Ev
        PUBLIC _ZN11LidarLite__C2Ev
        PUBLIC _ZN11LidarLite__D1Ev
        PUBLIC _ZN11LidarLite__D2Ev
        PUBLIC _ZN17CoordinateElementC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\LidarLite.cpp
//    1 #include "LidarLite.h"
//    2 // Interface for Lidar-Lite V2 (Blue Label) with NVIDIA Jetson TK1
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 LidarLite__* LidarLite;
LidarLite:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char LidarLiteInit()::static guard for LidarLite_0
`LidarLiteInit()::static guard for LidarLite_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`LidarLiteInit()::LidarLite_0`:
        DS8 320

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __softfp LidarLite__::subobject LidarLite__()
_ZN11LidarLite__C2Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN11LidarLite__C1Ev
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __softfp LidarLite__::subobject ~LidarLite__()
_ZN11LidarLite__D2Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN11LidarLite__D1Ev
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void LidarLiteInit()
//    6 {
_Z13LidarLiteInitv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??LidarLiteInit_0
//    7   static LidarLite__ LidarLite_0;
        LDR.W    R0,??DataTable4_2
        BL       _ZN11LidarLite__C1Ev
        LDR.W    R2,??DataTable4
        ADR.W    R1,_ZN11LidarLite__D1Ev
        BL       __aeabi_atexit
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_1
        STRB     R0,[R1, #+0]
//    8   LidarLite = &LidarLite_0;
??LidarLiteInit_0:
        LDR.W    R0,??DataTable4_2
        LDR.W    R1,??DataTable4_16
        STR      R0,[R1, #+0]
//    9 
//   10   //LidarLite->writeLidarLite(0x08,0x28);
//   11   LidarLite->writeLidarLite(0x08,0x28);
        MOVS     R2,#+40
        MOVS     R1,#+8
        LDR.W    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        BL       _ZN11LidarLite__14writeLidarLiteEii
//   12   LidarLite->vel.z.D_smoother = 0.993;
        LDR.W    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_3  ;; 0x3f7e353f
        STR      R1,[R0, #+164]
//   13   LidarLite->velFilter.setParameter(0.8,500);
        MOV      R1,#+500
        VLDR.W   S0,??DataTable3  ;; 0x3f4ccccd
        LDR.W    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+260
        BL       _ZN11CJumpFilter12setParameterEfi
//   14 }
??LidarLiteInit_1:
        POP      {R0,PC}          ;; return
//   15 
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 LidarLite__::LidarLite__()
_ZN11LidarLite__C1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDS     R0,R4,#+8
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+92
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+176
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+260
        BL       _ZN11CJumpFilterC1Ev
//   18 {
//   19     error = 0 ;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//   20 }
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   21 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   22 LidarLite__::~LidarLite__()
//   23 {
_ZN11LidarLite__D1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   24     closeLidarLite() ;
        MOVS     R0,R4
        BL       _ZN11LidarLite__14closeLidarLiteEv
//   25 }
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   26 
//   27 // Returns true if device file descriptor opens correctly, false otherwise
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 bool LidarLite__::openLidarLite()
//   30 {
_ZN11LidarLite__13openLidarLiteEv:
        MOVS     R1,R0
//   31     return true ;
        MOVS     R0,#+1
        BX       LR               ;; return
//   32 }
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void LidarLite__::closeLidarLite()
//   35 {
//   36 //    if (kI2CFileDescriptor > 0) {
//   37 //        close(kI2CFileDescriptor);
//   38 //        // WARNING - This is not quite right, need to check for error first
//   39 //        kI2CFileDescriptor = -1 ;
//   40 //    }
//   41 }
_ZN11LidarLite__14closeLidarLiteEv:
        BX       LR               ;; return
//   42 
//   43 // Read the given register on the Lidar-Lite

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 int LidarLite__::readLidarLite(int readRegister)
//   45 {
_ZN11LidarLite__13readLidarLiteEi:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   46 //    // Do not use i2c_smbus_read_byte_data here ; LidarLite__ V2 needs STOP between write and read
//   47 //    int toReturn ;
//   48 //    //toReturn = i2c_smbus_write_byte(kI2CFileDescriptor, readRegister) ;
//   49 //    toReturn = I2C_WriteByte(I2C0, readRegister) ;
//   50 //    if (toReturn < 0) {
//   51 //  //      error = errno ;
//   52 //        toReturn = -1 ;
//   53 //    }
//   54 //    toReturn = i2c_smbus_read_byte(kI2CFileDescriptor) ;
//   55 //    toReturn = I2C_ReadByte(I2C0) ;
//   56 //    if (toReturn < 0) {
//   57 //   //     error = errno ;
//   58 //        toReturn = -1 ;
//   59 //    }
//   60 //    return toReturn ;
//   61     
//   62     
//   63   uint8 result;
//   64 
//   65   //发送从机地址
//   66 //  I2C_StartTrans(I2C0, kLidarLiteI2CAddress << 1, I2C_MWSR);
//   67   I2C_Start(I2C0);
        LDR.W    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_Start
//   68   //将从机地址和主机读写位合成一个字节写入
//   69   I2C_WriteByte(I2C0, kLidarLiteI2CAddress << 1 );
        MOVS     R1,#+196
        LDR.W    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WriteByte
//   70   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//   71 
//   72   //写寄存器地址
//   73   I2C_WriteByte(I2C0, readRegister);
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WriteByte
//   74   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//   75 
//   76   //再次产生开始信号
//   77  // I2C_ReStart(I2C0); //////////////////// K60 硬件ReStart时间太短！ 读数根本就是错的！（但是如果先用长ReStart间隔时间，则可以正确读数）
//   78   I2C_Stop(I2C0);
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_Stop
//   79   for(int i = 0; i < 500; i++)
        MOVS     R0,#+0
??readLidarLite_0:
        CMP      R0,#+500
        BGE.N    ??readLidarLite_1
//   80   {
//   81     i+=1;
        ADDS     R0,R0,#+1
//   82   }
        ADDS     R0,R0,#+1
        B.N      ??readLidarLite_0
//   83   I2C_Start(I2C0);
??readLidarLite_1:
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_Start
//   84 
//   85 
//   86 //  //发送从机地址和读取位
//   87   I2C_WriteByte(I2C0, kLidarLiteI2CAddress << 1| 0x01);
        MOVS     R1,#+197
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WriteByte
//   88   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//   89 //
//   90   //转换主机模式为读
//   91   I2C_SetMasterWR(I2C0, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_SetMasterWR
//   92 
//   93   //关闭应答ACK
//   94   I2C_WaitAck(I2C0, I2C_ACK_OFF);//关闭ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//   95 
//   96   //读IIC数据
//   97   result =I2C_ReadByte(I2C0);
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_ReadByte
        MOVS     R6,R0
//   98   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//   99 
//  100   //发送停止信号
//  101   I2C_Stop(I2C0);
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_Stop
//  102 
//  103    //读IIC数据
//  104   result = I2C_ReadByte(I2C0);
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_ReadByte
//  105   
//  106   for(int i = 0; i < 500; i++)
        MOVS     R1,#+0
??readLidarLite_2:
        CMP      R1,#+500
        BGE.N    ??readLidarLite_3
//  107   {
//  108     i+=1;
        ADDS     R1,R1,#+1
//  109   }
        ADDS     R1,R1,#+1
        B.N      ??readLidarLite_2
//  110   return result;
??readLidarLite_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??readLidarLite_4:
        POP      {R4-R6,PC}       ;; return
//  111 }
//  112 
//  113 // Write the the given value to the given register on the Lidar-Lite

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 int LidarLite__::writeLidarLite(int writeRegister, int writeValue)
//  115 {
_ZN11LidarLite__14writeLidarLiteEii:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  116 //    //int toReturn = i2c_smbus_write_byte_data(kI2CFileDescriptor, writeRegister, writeValue);
//  117 //    int toReturn = I2C_WriteByte(I2C0, writeRegister, writeValue);
//  118 //    // Wait a little bit to make sure it settles
//  119 //    usleep(10000);
//  120 //    if (toReturn < 0) {
//  121 //        error = errno ;
//  122 //        toReturn = -1 ;
//  123 //    }
//  124 //    return toReturn ;
//  125 
//  126   //发送从机地址
//  127   I2C_StartTrans(I2C0, kLidarLiteI2CAddress, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+98
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_StartTrans
//  128   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//  129   
//  130   //写寄存器地址
//  131   I2C_WriteByte(I2C0, writeRegister);
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WriteByte
//  132   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//  133   
//  134   //向寄存器中写具体数据
//  135   I2C_WriteByte(I2C0, writeValue);
        MOVS     R0,R6
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WriteByte
//  136   I2C_WaitAck(I2C0, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_WaitAck
//  137 
//  138   I2C_Stop(I2C0);
        LDR.N    R0,??DataTable4_23  ;; 0x40066000
        BL       I2C_Stop
//  139   
//  140   for(int i = 0; i < 500; i++)
        MOVS     R0,#+0
??writeLidarLite_0:
        CMP      R0,#+500
        BGE.N    ??writeLidarLite_1
//  141   {
//  142     i+=1;
        ADDS     R0,R0,#+1
//  143   }
        ADDS     R0,R0,#+1
        B.N      ??writeLidarLite_0
//  144   return 0;
??writeLidarLite_1:
        MOVS     R0,#+0
??writeLidarLite_2:
        POP      {R4-R6,PC}       ;; return
//  145 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x3f4ccccd
//  146 
//  147 // Return the current calculated distance in centimeters

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 int LidarLite__::getDistance()
//  149 {
_ZN11LidarLite__11getDistanceEv:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  150     int ioResult ;
//  151     int msb, lsb ;
//  152     
//  153     extern int ti2;
//  154 
//  155     
//  156     ioResult = readLidarLite(kLidarLiteCalculateDistanceMSB);
        MOVS     R1,#+143
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
        MOVS     R5,R0
//  157     if (ioResult < 0) {
        CMP      R5,#+0
        BPL.N    ??getDistance_0
//  158         return ioResult ;
        MOVS     R0,R5
        B.N      ??getDistance_1
//  159     } else {
//  160         msb = ioResult ;
//  161     }
//  162     ioResult = readLidarLite(kLidarLiteCalculateDistanceLSB);
??getDistance_0:
        MOVS     R1,#+16
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
        MOVS     R1,R0
//  163     if (ioResult < 0) {
        CMP      R1,#+0
        BPL.N    ??getDistance_2
//  164         return ioResult ;
        MOVS     R0,R1
        B.N      ??getDistance_1
//  165     } else {
//  166         lsb = ioResult ;
//  167     }
//  168 
//  169     int distance = (msb << 8) + lsb ;
??getDistance_2:
        ADDS     R0,R1,R5, LSL #+8
//  170 
//  171     return distance ;
??getDistance_1:
        POP      {R1,R4,R5,PC}    ;; return
//  172 }
//  173 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 void LidarLite__::measure()
//  175 {
_ZN11LidarLite__7measureEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  176     writeLidarLite(kLidarLiteCommandControlRegister,kLidarLiteMeasure);
        MOVS     R2,#+4
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       _ZN11LidarLite__14writeLidarLiteEii
//  177 }
??measure_0:
        POP      {R4,PC}          ;; return
//  178 
//  179 // Return the previous measurement in centimeters

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 int LidarLite__::getPreviousDistance() 
//  181 {
_ZN11LidarLite__19getPreviousDistanceEv:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  182     int ioResult ;
//  183     int msb, lsb ;
//  184     ioResult = readLidarLite(kLidarLitePreviousMeasuredDistanceMSB);
        MOVS     R1,#+148
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
        MOVS     R5,R0
//  185     if (ioResult < 0) 
        CMP      R5,#+0
        BPL.N    ??getPreviousDistance_0
//  186     {
//  187         return ioResult ;
        MOVS     R0,R5
        B.N      ??getPreviousDistance_1
//  188     } else {
//  189         msb = ioResult ;
//  190     }
//  191     ioResult = readLidarLite(kLidarLitePreviousMeasuredDistanceLSB);
??getPreviousDistance_0:
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
        MOVS     R1,R0
//  192     if (ioResult < 0) 
        CMP      R1,#+0
        BPL.N    ??getPreviousDistance_2
//  193     {
//  194         return ioResult ;
        MOVS     R0,R1
        B.N      ??getPreviousDistance_1
//  195     } else {
//  196         lsb = ioResult ;
//  197     }
//  198 
//  199     int distance = (msb << 8) + lsb ;
??getPreviousDistance_2:
        ADDS     R0,R1,R5, LSL #+8
//  200 
//  201     return distance ;
??getPreviousDistance_1:
        POP      {R1,R4,R5,PC}    ;; return
//  202 }
//  203 
//  204 // Return the velocity (rate of change) in centimeters; +/-
//  205 // Velocity is returned from the Lidar-Lite as an 8-bit 2's complement number
//  206 // The returned value is converted to a signed integer

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 int LidarLite__::getVelocity()
//  208 {
_ZN11LidarLite__11getVelocityEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  209     int ioResult = readLidarLite(kLidarLiteVelocityMeasurementOutput);
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
        MOVS     R1,R0
//  210     if (ioResult == 255) {
        CMP      R1,#+255
        BNE.N    ??getVelocity_0
//  211         return 0 ;
        MOVS     R0,#+0
        B.N      ??getVelocity_1
//  212     }
//  213     if (ioResult > 127) {
??getVelocity_0:
        CMP      R1,#+128
        BLT.N    ??getVelocity_2
//  214 
//  215         return  ioResult - 256 ;
        SUBS     R1,R1,#+256
        MOVS     R0,R1
        B.N      ??getVelocity_1
//  216     }
//  217     return ioResult ;
??getVelocity_2:
        MOVS     R0,R1
??getVelocity_1:
        POP      {R4,PC}          ;; return
//  218 }
//  219 
//  220 // Return the Lidar-Lite hardware version

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 int LidarLite__::getHardwareVersion()
//  222 {
_ZN11LidarLite__18getHardwareVersionEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  223     return readLidarLite(kLidarLiteHardwareVersion) ;
        MOVS     R1,#+65
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
??getHardwareVersion_0:
        POP      {R4,PC}          ;; return
//  224 }
//  225 
//  226 // Return the Lidar-Lite software version

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 int LidarLite__::getSoftwareVersion() 
//  228 {
_ZN11LidarLite__18getSoftwareVersionEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  229     return readLidarLite(kLidarLiteSoftwareVersion) ;
        MOVS     R1,#+79
        MOVS     R0,R4
        BL       _ZN11LidarLite__13readLidarLiteEi
??getSoftwareVersion_0:
        POP      {R4,PC}          ;; return
//  230 }
//  231 
//  232 // Return the last i/o error

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 int LidarLite__::getError()
//  234 {
//  235     return error ;
_ZN11LidarLite__8getErrorEv:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//  236 }
//  237 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  238 void LidarLite__::update()
//  239 {
_ZN11LidarLite__6updateEv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8-D10}
        SUB      SP,SP,#+32
        MOVS     R6,R0
//  240   float rawDistance = LidarLite->getDistance() / 100.0f;
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        BL       _ZN11LidarLite__11getDistanceEv
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable4_13  ;; 0x42c80000
        VDIV.F32 S17,S0,S1
//  241  
//  242   
//  243   //f(x) = p0*x^3 + p1*x^2 + p2*x + p3
//  244   
//  245   double xPowered = 1;
        VLDR.W   D9,??DataTable4_4
//  246   double p[4];
//  247   p[0] =  -3.416e-07;
        LDR.N    R0,??DataTable4_5  ;; 0xb02d6cbb
        LDR.N    R1,??DataTable4_6  ;; 0xbe96eca4
        STRD     R0,R1,[SP, #+0]
//  248   p[1] =   0.0003616;
        LDR.N    R0,??DataTable4_7  ;; 0x2c9a92be
        LDR.N    R1,??DataTable4_8  ;; 0x3f37b2a4
        STRD     R0,R1,[SP, #+8]
//  249   p[2] =      0.9125;
        MOVS     R0,#+858993459
        LDR.N    R1,??DataTable4_9  ;; 0x3fed3333
        STRD     R0,R1,[SP, #+16]
//  250   p[3] =      -3.989;
        LDR.N    R0,??DataTable4_10  ;; 0xd4fdf3b6
        LDR.N    R1,??DataTable4_11  ;; 0xc00fe978
        STRD     R0,R1,[SP, #+24]
//  251   
//  252   double fitted = 0;
        VLDR.W   D10,??DataTable4_12
//  253   for(int i = 3; i >= 0; i--)
        MOVS     R4,#+3
??update_0:
        CMP      R4,#+0
        BMI.N    ??update_1
//  254   {
//  255     fitted += p[i] * xPowered;
        MOV      R0,SP
        ADD      R0,R0,R4, LSL #+3
        LDRD     R0,R1,[R0, #+0]
        VMOV     R2,R3,D9
        BL       __aeabi_dmul
        VMOV     R2,R3,D10
        BL       __aeabi_dadd
        VMOV     D10,R0,R1
//  256     xPowered *= rawDistance * 100.0f;
        VLDR.W   S0,??DataTable4_13  ;; 0x42c80000
        VMUL.F32 S0,S17,S0
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     R2,R3,D9
        BL       __aeabi_dmul
        VMOV     D9,R0,R1
//  257   }
        SUBS     R4,R4,#+1
        B.N      ??update_0
//  258   fitted /= 100.0f;
??update_1:
        VMOV     R0,R1,D10
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_14  ;; 0x40590000
        BL       __aeabi_ddiv
        VMOV     D10,R0,R1
//  259   
//  260   float temp = velFilter.newData(fitted, vel_z_CF, t);
        LDR.N    R0,??DataTable4_24
        LDR      R1,[R0, #+0]
        VLDR     S1,[R6, #+316]
        VMOV.F32 S16,S1
        MOVS     R4,R1
        VMOV     R0,R1,D10
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOVS     R1,R4
        VMOV.F32 S1,S16
        ADDS     R0,R6,#+260
        BL       _ZN11CJumpFilter7newDataEffi
        VMOV.F32 S16,S0
//  261   temp_111 = rawDistance;
        LDR.N    R0,??DataTable4_15
        VSTR     S17,[R0, #0]
//  262 //    if(!(temp == temp)) //对于NaN temp == temp 返回false
//  263 //    {
//  264 //      while(1){}
//  265 //    }
//  266   if(LidarLite->velFilter.isValid())
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+260
        BL       _ZN11CJumpFilter7isValidEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_2
        MOVS     R0,#+1
        B.N      ??update_3
??update_2:
        MOVS     R0,#+0
??update_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_4
//  267   {
//  268     position.z = (0.92) * (position.z + vel_z_CF * 0.002) + (0.08)*(temp); 
        ADDS     R0,R6,#+64
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+316]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_17  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable4_18  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable4_19  ;; 0xd70a3d71
        LDR.N    R3,??DataTable4_20  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_21  ;; 0x47ae147b
        LDR.N    R3,??DataTable4_22  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDS     R0,R6,#+64
        BL       _ZN17CoordinateElementaSEf
//  269   }
//  270   else
//  271   {
//  272     //  position.z = (1) * (position.z + vel_z_CF * 0.002) + (0)*(temp);
//  273   }
//  274   position.z.calculateD(t);
??update_4:
        LDR.N    R0,??DataTable4_24
        LDR      R1,[R0, #+0]
        ADDS     R0,R6,#+64
        BL       _ZN17CoordinateElement10calculateDEi
//  275 }
??update_5:
        ADD      SP,SP,#+32
        VPOP     {D8-D10}
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     __dso_handle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     `LidarLiteInit()::static guard for LidarLite_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     `LidarLiteInit()::LidarLite_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x3f7e353f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x0,0x3FF00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xb02d6cbb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0xbe96eca4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x2c9a92be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x3f37b2a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x3fed3333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xd4fdf3b6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0xc00fe978

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     temp_111

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     LidarLite

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x3f60624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0xd70a3d71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x3fed70a3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x3fb47ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     t

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

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z13LidarLiteInitv
        SECTION_LINK _Z13LidarLiteInitv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z13LidarLiteInitv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__13readLidarLiteEi
        SECTION_LINK _ZN11LidarLite__13readLidarLiteEi
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__13readLidarLiteEi))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__14writeLidarLiteEii
        SECTION_LINK _ZN11LidarLite__14writeLidarLiteEii
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__14writeLidarLiteEii))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__11getDistanceEv
        SECTION_LINK _ZN11LidarLite__11getDistanceEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__11getDistanceEv))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__7measureEv
        SECTION_LINK _ZN11LidarLite__7measureEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__7measureEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__19getPreviousDistanceEv
        SECTION_LINK _ZN11LidarLite__19getPreviousDistanceEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__19getPreviousDistanceEv))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__11getVelocityEv
        SECTION_LINK _ZN11LidarLite__11getVelocityEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__11getVelocityEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__18getHardwareVersionEv
        SECTION_LINK _ZN11LidarLite__18getHardwareVersionEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__18getHardwareVersionEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__18getSoftwareVersionEv
        SECTION_LINK _ZN11LidarLite__18getSoftwareVersionEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__18getSoftwareVersionEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11LidarLite__6updateEv
        SECTION_LINK _ZN11LidarLite__6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11LidarLite__6updateEv))
        DC32 0x8007d2aa
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    80 bytes in section .ARM.exidx
//   325 bytes in section .bss
// 1 170 bytes in section .text
// 
// 1 088 bytes of CODE  memory (+ 82 bytes shared)
//    80 bytes of CONST memory
//   325 bytes of DATA  memory
//
//Errors: none
//Warnings: none
