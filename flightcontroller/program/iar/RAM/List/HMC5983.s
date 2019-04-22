///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:57
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\HMC5983.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1C79.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\HMC5983.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\HMC5983.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN SPI_Master_WriteRead
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN strncmp

        PUBLIC Compass
        PUBLIC _Z11hmc5983_DAQv
        PUBLIC _Z12hmc5983_initv
        PUBLIC _Z15hmc5983_ReadBufhPhh
        PUBLIC _Z16hmc5983_ReadByteh
        PUBLIC _Z16hmc5983_StartMeav
        PUBLIC _Z17hmc5983_WriteBytehh
        PUBLIC hmc5983_CS

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\HMC5983.cpp
//    1 #include "HMC5983.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 Compass_TypeDef Compass;
Compass:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4   int  hmc5983_CS;
hmc5983_CS:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void hmc5983_init(void)
//    6 {
_Z12hmc5983_initv:
        PUSH     {LR}
        SUB      SP,SP,#+12
//    7   u8 CheckID[3];
//    8   u8 HMC5983_ID[]="H43"; //hmc5983内部固定ID为H43
        MOV      R0,SP
        LDR.N    R1,??DataTable4
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+0]
//    9 hmc5983_CS = 5;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   10   hmc5983_ReadByte(HMC5983_Status_REG); //这一步很关键 否则读数错误。可能由于单片机初始化问题导致？
        MOVS     R0,#+9
        BL       _Z16hmc5983_ReadByteh
//   11   hmc5983_ReadBuf(HMC5983_IDA_REG, CheckID, 3); //读芯片ID
        MOVS     R2,#+3
        ADD      R1,SP,#+4
        MOVS     R0,#+10
        BL       _Z15hmc5983_ReadBufhPhh
//   12   if(strncmp((char*)CheckID, (char*)HMC5983_ID ,3)!=0&&0)
        MOVS     R2,#+3
        MOV      R1,SP
        ADD      R0,SP,#+4
        BL       strncmp
//   13   {
//   14     #ifdef MY_DEBUG
//   15       printf("Didn't check to HMC5983! ReadID:%s\n",CheckID);
//   16     #endif
//   17   }
//   18   else
//   19   {
//   20     #ifdef MY_DEBUG
//   21       printf("The HMC5983 is ready!\n");
//   22     #endif
//   23       hmc5983_WriteByte(HMC5983_CONF_REG_A, 0x94);       //正常测量，1次平均 30HZ 开启温度测量0x94
        MOVS     R1,#+148
        MOVS     R0,#+0
        BL       _Z17hmc5983_WriteBytehh
//   24       hmc5983_WriteByte(HMC5983_CONF_REG_B, 0x30);       //±2.5Ga 0x30
        MOVS     R1,#+48
        MOVS     R0,#+1
        BL       _Z17hmc5983_WriteBytehh
//   25       hmc5983_WriteByte(HMC5983_MODE_REG,   0x00);       //4线SPI 单次测量   测量完成自动空闲
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       _Z17hmc5983_WriteBytehh
//   26     #ifdef MY_DEBUG
//   27       CheckID[0] = hmc5983_ReadByte(HMC5983_CONF_REG_A);
//   28       printf("HMC5983_CONF_REG_A:  0x%.2X\n",CheckID[0]);
//   29       CheckID[0] = hmc5983_ReadByte(HMC5983_CONF_REG_B);
//   30       printf("HMC5983_CONF_REG_B:  0x%.2X\n",CheckID[0]);
//   31       CheckID[0] = hmc5983_ReadByte(HMC5983_MODE_REG);
//   32       printf("HMC5983_MODE_REG:    0x%.2X\n",CheckID[0]);
//   33     #endif
//   34   }
//   35 }
??hmc5983_init_0:
        POP      {R0-R2,PC}       ;; return
//   36 
//   37 //开启一次测量

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void hmc5983_StartMea(void)
//   39 {
_Z16hmc5983_StartMeav:
        PUSH     {R7,LR}
//   40   hmc5983_WriteByte(HMC5983_MODE_REG,  0x01);
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       _Z17hmc5983_WriteBytehh
//   41 }
??hmc5983_StartMea_0:
        POP      {R0,PC}          ;; return
//   42 
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void hmc5983_WriteByte(u8 Address,u8 byte)
//   45 {
_Z17hmc5983_WriteBytehh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   46   SPI_Master_WriteRead(hmc5983_SPIx, Address&0X7F, hmc5983_CS, SPI_PCS_ASSERTED);    //&0X7F将第一位变为0
        MOVS     R3,#+1
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R1,R4,#0x7F
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   47   //SPI_Master_WriteRead(hmc5983_SPIx, Address<<1, hmc5983_CS, SPI_PCS_ASSERTED);    
//   48   SPI_Master_WriteRead(hmc5983_SPIx, byte, hmc5983_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   49 }
??hmc5983_WriteByte_0:
        POP      {R0,R4,R5,PC}    ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 u8 hmc5983_ReadByte(u8 Address)
//   52 {
_Z16hmc5983_ReadByteh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   53   u8 temp=0;
        MOVS     R5,#+0
//   54   SPI_Master_WriteRead(hmc5983_SPIx, Address|0x80, hmc5983_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R1,R4,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   55   //SPI_Master_WriteRead(hmc5983_SPIx, (Address<<1)|0x01, hmc5983_CS, SPI_PCS_ASSERTED);
//   56   temp = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   57   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??hmc5983_ReadByte_0:
        POP      {R1,R4,R5,PC}    ;; return
//   58 }
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void hmc5983_ReadBuf(u8 Address, u8 *Buf, u8 len)
//   61 {
_Z15hmc5983_ReadBufhPhh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   62   uint8 i;
//   63   
//   64   SPI_Master_WriteRead(hmc5983_SPIx, Address|0x80|0x40, hmc5983_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R1,R4,#0xC0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   65   //SPI_Master_WriteRead(hmc5983_SPIx, (Address<<1)|0x01, hmc5983_CS, SPI_PCS_ASSERTED);
//   66   for(i = 0 ;i < len ;i++)
        MOVS     R7,#+0
??hmc5983_ReadBuf_0:
        MOVS     R0,R7
        MOVS     R1,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??hmc5983_ReadBuf_1
//   67   {
//   68     if( i == (len-1) )
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R7,R0
        BNE.N    ??hmc5983_ReadBuf_2
//   69     {
//   70       Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte|0x40, hmc5983_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+192
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R5, R7]
        B.N      ??hmc5983_ReadBuf_3
//   71     //  Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_INACTIVE);
//   72     }
//   73     else
//   74     {
//   75       Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte|0x40, hmc5983_CS, SPI_PCS_ASSERTED);
??hmc5983_ReadBuf_2:
        MOVS     R3,#+1
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+192
        LDR.N    R0,??DataTable4_2  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R5, R7]
//   76     //  Buf[i] = SPI_Master_WriteRead(hmc5983_SPIx, Dummy_Byte1, hmc5983_CS, SPI_PCS_ASSERTED);
//   77     }
//   78   }
??hmc5983_ReadBuf_3:
        ADDS     R7,R7,#+1
        B.N      ??hmc5983_ReadBuf_0
//   79 }
??hmc5983_ReadBuf_1:
??hmc5983_ReadBuf_4:
        POP      {R0,R4-R7,PC}    ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void hmc5983_DAQ()
//   82 {
_Z11hmc5983_DAQv:
        PUSH     {LR}
        SUB      SP,SP,#+12
//   83   //查询状态寄存器以判断转换完成？
//   84   //启用单次工作模式而非连续工作模式？
//   85   //需要温度？
//   86   u8 BUF[6];
//   87   hmc5983_ReadBuf(HMC5983_X_axis_MSB_REG, BUF, 6);
        MOVS     R2,#+6
        MOV      R1,SP
        MOVS     R0,#+3
        BL       _Z15hmc5983_ReadBufhPhh
//   88   Compass.X = (int16)(BUF[0] << 8 | BUF[1]);
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable4_3
        STR      R1,[R0, #+0]
//   89   Compass.Z = (int16)(BUF[2] << 8 | BUF[3]);
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable4_3
        STR      R1,[R0, #+8]
//   90   Compass.Y = (int16)(BUF[4] << 8 | BUF[5]);
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable4_3
        STR      R1,[R0, #+4]
//   91 }
??hmc5983_DAQ_0:
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     hmc5983_CS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     Compass

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z12hmc5983_initv
        SECTION_LINK _Z12hmc5983_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z12hmc5983_initv))
        DC32 0x80028400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16hmc5983_StartMeav
        SECTION_LINK _Z16hmc5983_StartMeav
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16hmc5983_StartMeav))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z17hmc5983_WriteBytehh
        SECTION_LINK _Z17hmc5983_WriteBytehh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z17hmc5983_WriteBytehh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16hmc5983_ReadByteh
        SECTION_LINK _Z16hmc5983_ReadByteh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16hmc5983_ReadByteh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15hmc5983_ReadBufhPhh
        SECTION_LINK _Z15hmc5983_ReadBufhPhh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15hmc5983_ReadBufhPhh))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11hmc5983_DAQv
        SECTION_LINK _Z11hmc5983_DAQv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11hmc5983_DAQv))
        DC32 0x80028400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "H43"

        END
//   92 
// 
//  48 bytes in section .ARM.exidx
//  20 bytes in section .bss
//   4 bytes in section .rodata
// 372 bytes in section .text
// 
// 372 bytes of CODE  memory
//  52 bytes of CONST memory
//  20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
