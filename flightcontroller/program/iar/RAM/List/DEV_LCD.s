///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\DEV\DEV_LCD.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWE51D.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\DEV\DEV_LCD.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\DEV_LCD.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN FlexBus_Init
        EXTERN GPIO_Init
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0

        PUBLIC CurX
        PUBLIC CurY
        PUBLIC LCD_GRAM
        PUBLIC LCD_INFO
        PUBLIC PreX
        PUBLIC PreY
        PUBLIC _Z11LCD_BGR2RGBt
        PUBLIC _Z11LCD_ShowNumttthtt
        PUBLIC _Z12LCD_DrawLinettttt
        PUBLIC _Z12LCD_GetPointtt
        PUBLIC _Z12LCD_PrintNumthtt
        PUBLIC _Z12LCD_SetPointttt
        PUBLIC _Z12LCD_ShowChartthtt
        PUBLIC _Z14LCD_DrawSquarettttt
        PUBLIC _Z14LCD_DrawU8GrayPhtt
        PUBLIC _Z14LCD_ShowStringttPhtt
        PUBLIC _Z14LCD_U8GRAY2RGBh
        PUBLIC _Z15LCD_GRAMFillRecttttt
        PUBLIC _Z15LCD_PrintStringPhtt
        PUBLIC _Z16LCD_PrintNumLinethtt
        PUBLIC _Z17LCD_DrawRectangletttttt
        PUBLIC _Z17LCD_GRAMDrawHLinetttt
        PUBLIC _Z18LCD_FillBackgroundt
        PUBLIC _Z19LCD_PrintStringLinePhtt
        PUBLIC _Z22LCD_FillBackgroundGRAMPt
        PUBLIC _Z5mypowhh
        PUBLIC _Z8LCD_Initv
        PUBLIC dID

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\DEV\DEV_LCD.c
//    1 /**
//    2  * @file DEV_LCD.c
//    3  * @version 0.2[By LPLD]
//    4  * @date 2013-10-21
//    5  * @brief LCD设备驱动程序
//    6  *
//    7  * 更改建议:可根据实际硬件修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  *
//   22  * 0.2-2013-10-21 优化初始化函数、字符串数字显示函数
//   23  */
//   24 #include "DEV_LCD.h"
//   25 #include "Font_ASC.h"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const asc2_1608[95][16]
asc2_1608:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8
        DC8 8, 8, 8, 0, 0, 24, 24, 0, 0, 0, 72, 108, 36, 18, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 36, 36, 36, 127, 18, 18, 18, 127, 18, 18
        DC8 18, 0, 0, 0, 0, 8, 28, 42, 42, 10, 12, 24, 40, 40, 42, 42, 28, 8, 8
        DC8 0, 0, 0, 34, 37, 21, 21, 21, 42, 88, 84, 84, 84, 34, 0, 0, 0, 0, 0
        DC8 12, 18, 18, 18, 10, 118, 37, 41, 17, 145, 110, 0, 0, 0, 6, 6, 4, 3
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 32, 16, 16, 8, 8, 8, 8, 8
        DC8 8, 16, 16, 32, 64, 0, 0, 2, 4, 8, 8, 16, 16, 16, 16, 16, 16, 8, 8
        DC8 4, 2, 0, 0, 0, 0, 0, 8, 8, 107, 28, 28, 107, 8, 8, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 8, 8, 8, 8, 127, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 6, 6, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 254, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 0, 128, 64
        DC8 64, 32, 32, 16, 16, 8, 8, 4, 4, 2, 2, 0, 0, 0, 0, 24, 36, 66, 66
        DC8 66, 66, 66, 66, 66, 36, 24, 0, 0, 0, 0, 0, 8, 14, 8, 8, 8, 8, 8, 8
        DC8 8, 8, 62, 0, 0, 0, 0, 0, 60, 66, 66, 66, 32, 32, 16, 8, 4, 66, 126
        DC8 0, 0, 0, 0, 0, 60, 66, 66, 32, 24, 32, 64, 64, 66, 34, 28, 0, 0, 0
        DC8 0, 0, 32, 48, 40, 36, 36, 34, 34, 126, 32, 32, 120, 0, 0, 0, 0, 0
        DC8 126, 2, 2, 2, 26, 38, 64, 64, 66, 34, 28, 0, 0, 0, 0, 0, 56, 36, 2
        DC8 2, 26, 38, 66, 66, 66, 36, 24, 0, 0, 0, 0, 0, 126, 34, 34, 16, 16
        DC8 8, 8, 8, 8, 8, 8, 0, 0, 0, 0, 0, 60, 66, 66, 66, 36, 24, 36, 66, 66
        DC8 66, 60, 0, 0, 0, 0, 0, 24, 36, 66, 66, 66, 100, 88, 64, 64, 36, 28
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 0, 0, 0, 0, 24, 24, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 8, 8, 4, 0, 0, 0, 64, 32, 16, 8, 4, 2
        DC8 4, 8, 16, 32, 64, 0, 0, 0, 0, 0, 0, 0, 0, 127, 0, 0, 0, 127, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 2, 4, 8, 16, 32, 64, 32, 16, 8, 4, 2, 0, 0, 0, 0
        DC8 0, 60, 66, 66, 70, 64, 32, 16, 16, 0, 24, 24, 0, 0, 0, 0, 0, 28, 34
        DC8 90, 85, 85, 85, 85, 45, 66, 34, 28, 0, 0, 0, 0, 0, 8, 8, 24, 20, 20
        DC8 36, 60, 34, 66, 66, 231, 0, 0, 0, 0, 0, 31, 34, 34, 34, 30, 34, 66
        DC8 66, 66, 34, 31, 0, 0, 0, 0, 0, 124, 66, 66, 1, 1, 1, 1, 1, 66, 34
        DC8 28, 0, 0, 0, 0, 0, 31, 34, 66, 66, 66, 66, 66, 66, 66, 34, 31, 0, 0
        DC8 0, 0, 0, 63, 66, 18, 18, 30, 18, 18, 2, 66, 66, 63, 0, 0, 0, 0, 0
        DC8 63, 66, 18, 18, 30, 18, 18, 2, 2, 2, 7, 0, 0, 0, 0, 0, 60, 34, 34
        DC8 1, 1, 1, 113, 33, 34, 34, 28, 0, 0, 0, 0, 0, 231, 66, 66, 66, 66
        DC8 126, 66, 66, 66, 66, 231, 0, 0, 0, 0, 0, 62, 8, 8, 8, 8, 8, 8, 8, 8
        DC8 8, 62, 0, 0, 0, 0, 0, 124, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
        DC8 17, 15, 0, 0, 0, 119, 34, 18, 10, 14, 10, 18, 18, 34, 34, 119, 0, 0
        DC8 0, 0, 0, 7, 2, 2, 2, 2, 2, 2, 2, 2, 66, 127, 0, 0, 0, 0, 0, 119, 54
        DC8 54, 54, 54, 42, 42, 42, 42, 42, 107, 0, 0, 0, 0, 0, 227, 70, 70, 74
        DC8 74, 82, 82, 82, 98, 98, 71, 0, 0, 0, 0, 0, 28, 34, 65, 65, 65, 65
        DC8 65, 65, 65, 34, 28, 0, 0, 0, 0, 0, 63, 66, 66, 66, 66, 62, 2, 2, 2
        DC8 2, 7, 0, 0, 0, 0, 0, 28, 34, 65, 65, 65, 65, 65, 77, 83, 50, 28, 96
        DC8 0, 0, 0, 0, 63, 66, 66, 66, 62, 18, 18, 34, 34, 66, 199, 0, 0, 0, 0
        DC8 0, 124, 66, 66, 2, 4, 24, 32, 64, 66, 66, 62, 0, 0, 0, 0, 0, 127
        DC8 73, 8, 8, 8, 8, 8, 8, 8, 8, 28, 0, 0, 0, 0, 0, 231, 66, 66, 66, 66
        DC8 66, 66, 66, 66, 66, 60, 0, 0, 0, 0, 0, 231, 66, 66, 34, 36, 36, 20
        DC8 20, 24, 8, 8, 0, 0, 0, 0, 0, 107, 73, 73, 73, 73, 85, 85, 54, 34
        DC8 34, 34, 0, 0, 0, 0, 0, 231, 66, 36, 36, 24, 24, 24, 36, 36, 66, 231
        DC8 0, 0, 0, 0, 0, 119, 34, 34, 20, 20, 8, 8, 8, 8, 8, 28, 0, 0, 0, 0
        DC8 0, 126, 33, 32, 16, 16, 8, 4, 4, 66, 66, 63, 0, 0, 0, 120, 8, 8, 8
        DC8 8, 8, 8, 8, 8, 8, 8, 8, 8, 120, 0, 0, 0, 2, 2, 4, 4, 8, 8, 8, 16
        DC8 16, 32, 32, 32, 64, 64, 0, 30, 16, 16, 16, 16, 16, 16, 16, 16, 16
        DC8 16, 16, 16, 30, 0, 0, 56, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 6, 8, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 66, 120, 68
        DC8 66, 66, 252, 0, 0, 0, 0, 0, 3, 2, 2, 2, 26, 38, 66, 66, 66, 38, 26
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 68, 2, 2, 2, 68, 56, 0, 0, 0, 0, 0
        DC8 96, 64, 64, 64, 120, 68, 66, 66, 66, 100, 216, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 60, 66, 126, 2, 2, 66, 60, 0, 0, 0, 0, 0, 240, 136, 8, 8, 126
        DC8 8, 8, 8, 8, 8, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 34, 34, 28, 2
        DC8 60, 66, 66, 60, 0, 0, 0, 3, 2, 2, 2, 58, 70, 66, 66, 66, 66, 231, 0
        DC8 0, 0, 0, 0, 12, 12, 0, 0, 14, 8, 8, 8, 8, 8, 62, 0, 0, 0, 0, 0, 48
        DC8 48, 0, 0, 56, 32, 32, 32, 32, 32, 32, 34, 30, 0, 0, 0, 3, 2, 2, 2
        DC8 114, 18, 10, 22, 18, 34, 119, 0, 0, 0, 0, 0, 14, 8, 8, 8, 8, 8, 8
        DC8 8, 8, 8, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 146, 146, 146, 146
        DC8 146, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 70, 66, 66, 66, 66, 231, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 60, 66, 66, 66, 66, 66, 60, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 27, 38, 66, 66, 66, 34, 30, 2, 7, 0, 0, 0, 0, 0, 0, 0
        DC8 120, 68, 66, 66, 66, 68, 120, 64, 224, 0, 0, 0, 0, 0, 0, 0, 119, 76
        DC8 4, 4, 4, 4, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 66, 2, 60, 64, 66
        DC8 62, 0, 0, 0, 0, 0, 0, 0, 8, 8, 62, 8, 8, 8, 8, 8, 48, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 99, 66, 66, 66, 66, 98, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 231, 66, 36, 36, 20, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235, 73, 73
        DC8 85, 85, 34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 36, 24, 24, 24, 36
        DC8 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231, 66, 36, 36, 20, 24, 8, 8, 7, 0
        DC8 0, 0, 0, 0, 0, 0, 126, 34, 16, 8, 8, 68, 126, 0, 0, 0, 192, 32, 32
        DC8 32, 32, 32, 16, 32, 32, 32, 32, 32, 32, 192, 0, 16, 16, 16, 16, 16
        DC8 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 0, 6, 8, 8, 8, 8, 8, 16
        DC8 8, 8, 8, 8, 8, 8, 6, 0, 12, 50, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0
//   26 
//   27 static void LCD_Reset(void);
//   28 static void LCD_FLEXBUS_Init(uint16 lcd_id);
//   29 static void LCD_IO_Cfg(void);
//   30 static void LCD_WriteIndex(uint16 index);
//   31 static void LCD_WriteData(uint16 data);
//   32 static uint16 LCD_ReadData(void);
//   33 static void LCD_WriteReg(uint16 LCD_Reg,uint16 LCD_RegValue);
//   34 static uint16 LCD_ReadReg(uint16 LCD_Reg);
//   35 static void LCD_SetCursor( uint16 Xpos, uint16 Ypos );
//   36 static void LCD_Delayms(uint16 ms);
//   37 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 LCD_Info_t LCD_INFO;
LCD_INFO:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   39 uint16 PreX=0, PreY=0;
PreX:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
PreY:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 uint16 *LCD_GRAM;
LCD_GRAM:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   41 uint16 CurX=0, CurY=0;
CurX:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
CurY:
        DS8 2
//   42 
//   43 /*
//   44  * LCD_Delayms
//   45  * LCD内部延时函数，内部调用
//   46  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 static void LCD_Delayms(uint16 n)
//   48 {
//   49   uint16 i;
//   50   while(n--)
_ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt:
??LCD_Delayms_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??LCD_Delayms_1
//   51   {
//   52     for(i=0; i<400; i++)
        MOVS     R1,#+0
        MOVS     R2,R1
??LCD_Delayms_2:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+400
        BGE.N    ??LCD_Delayms_0
//   53     {
//   54       asm("nop");
        nop
//   55     }
        ADDS     R2,R2,#+1
        B.N      ??LCD_Delayms_2
//   56   }
//   57 }
??LCD_Delayms_1:
        BX       LR               ;; return
//   58 
//   59 /*
//   60  * LCD_FLEXBUS_Init
//   61  * LCD FlexBus初始化函数，内部调用
//   62  * 
//   63  * 说明:
//   64  *    本初始化函数用来配置FlexBus与LCD的连接
//   65  *    配置为16位端口大小
//   66  *    地址与数据线复用
//   67  *    数据及地址线为FB_AD[15:0]
//   68  *    RS:FB_AD[16]
//   69  *    CS:FB_CS0
//   70  *    RW:FB_FB_RW
//   71  *    RD:FB_OE 
//   72  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 static void LCD_FLEXBUS_Init(uint16 lcd_id)
//   74 {
_ZN26_INTERNAL_9_DEV_LCD_c_PreX16LCD_FLEXBUS_InitEt:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
//   75   FB_InitTypeDef fb_init;
//   76   fb_init.FB_Fbx = FB0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   77   fb_init.FB_ChipSelAddress = LCD_CMD_ADDRESS;
        MOVS     R0,#+1610612736
        STR      R0,[SP, #+8]
//   78   fb_init.FB_AutoAckEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+18]
//   79   fb_init.FB_IsRightJustied = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   80   fb_init.FB_WateStates = 0x02;
        MOVS     R0,#+2
        STRB     R0,[SP, #+19]
//   81   fb_init.FB_PortSize = FB_SIZE_16BIT;
        MOVS     R0,#+2
        STRB     R0,[SP, #+16]
//   82   fb_init.FB_AddressSpace = FB_SPACE_KB(128);   //128K
        MOVS     R0,#+131072
        STR      R0,[SP, #+12]
//   83   fb_init.FB_ReadAddrHold = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+20]
//   84   fb_init.FB_WriteAddrHold = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+21]
//   85   FlexBus_Init(fb_init); 
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       FlexBus_Init
//   86 }
??LCD_FLEXBUS_Init_0:
        ADD      SP,SP,#+24
        POP      {R4,PC}          ;; return
//   87 
//   88 /*
//   89  * LCD_IO_Cfg
//   90  * LCD IO引脚初始化，内部调用
//   91  *
//   92  * 说明：
//   93  * 此处初始化复位引脚，可根据实际硬件更改
//   94  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 static void LCD_IO_Cfg(void)
//   96 {
_ZN26_INTERNAL_9_DEV_LCD_c_PreX10LCD_IO_CfgEv:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   97   GPIO_InitTypeDef ptc_init;
//   98   //RST 
//   99   ptc_init.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable5  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  100   ptc_init.GPIO_Pins = GPIO_Pin15;
        MOV      R0,#+32768
        STR      R0,[SP, #+8]
//  101   ptc_init.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  102   ptc_init.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  103   ptc_init.GPIO_PinControl = IRQC_DIS; 
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  104   GPIO_Init(ptc_init);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       GPIO_Init
//  105 }
??LCD_IO_Cfg_0:
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  106 
//  107 /*
//  108  * LCD_WriteIndex
//  109  * LCD写控制命令，内部调用
//  110  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 static void LCD_WriteIndex(uint16 index)
//  112 {
//  113   *(vuint16*)LCD_CMD_ADDRESS = index;  //write
_ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt:
        MOVS     R1,#+1610612736
        STRH     R0,[R1, #+0]
//  114 }
        BX       LR               ;; return
//  115 
//  116 /*
//  117  * LCD_WriteData
//  118  * LCD写数据，内部调用
//  119  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void LCD_WriteData(uint16 data)
//  121 {
//  122   *(vuint16*)LCD_DATA_ADDRESS = data;  //write
_ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt:
        LDR.N    R1,??DataTable5_1  ;; 0x60010000
        STRH     R0,[R1, #+0]
//  123 }
        BX       LR               ;; return
//  124 
//  125 /*
//  126  * LCD_ReadData
//  127  * LCD读数据，内部调用
//  128  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 static uint16 LCD_ReadData(void)
//  130 { 
//  131   uint16 value;
//  132   value = *(vuint16*)LCD_DATA_ADDRESS;  //read
_ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_ReadDataEv:
        LDR.N    R0,??DataTable5_1  ;; 0x60010000
        LDRH     R0,[R0, #+0]
//  133   return value;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  134 }
//  135 
//  136 /*
//  137  * LCD_WriteReg
//  138  * LCD写寄存器，内部调用
//  139  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 static void LCD_WriteReg(uint16 LCD_Reg,uint16 LCD_RegValue)
//  141 { 
_ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  142   /* Write 16-bit Index, then Write Reg */  
//  143   LCD_WriteIndex(LCD_Reg);         
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  144   /* Write 16-bit Reg */
//  145   LCD_WriteData(LCD_RegValue);  
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  146 }
        POP      {R0,R4,R5,PC}    ;; return
//  147 
//  148 /*
//  149  * LCD_ReadReg
//  150  * LCD读寄存器，内部调用
//  151  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 static uint16 LCD_ReadReg(uint16 LCD_Reg)
//  153 {
_ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_ReadRegEt:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  154   uint16 LCD_RAM;
//  155   /* Write 16-bit Index (then Read Reg) */
//  156   LCD_WriteIndex(LCD_Reg);
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  157   /* Read 16-bit Reg */
//  158   LCD_RAM = LCD_ReadData();      	
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_ReadDataEv
//  159   return LCD_RAM;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  160 }
//  161 
//  162 /*
//  163  * LCD_SetCursor
//  164  * 设置LCD内部GRAM光标位置，内部调用
//  165  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 static void LCD_SetCursor( uint16 Xpos, uint16 Ypos )
//  167 {
_ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  168 #if(HORIZONTAL)
//  169     
//  170   uint16 temp = Xpos;
//  171   Xpos = Ypos;
//  172   Ypos = temp;  
//  173 
//  174 #else
//  175             
//  176 #endif
//  177 //  LCD_WriteReg(LCD_INFO.X_GRAM, Xpos );      
//  178 //  LCD_WriteReg(LCD_INFO.Y_GRAM, Ypos );          
//  179    
//  180   LCD_WriteIndex(LCD_INFO.X_GRAM); 
        LDR.N    R0,??DataTable5_2
        LDRH     R0,[R0, #+4]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  181   LCD_WriteData(Xpos>>8); 
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  182   LCD_WriteIndex(LCD_INFO.X_GRAM+1); 
        LDR.N    R0,??DataTable5_2
        LDRH     R0,[R0, #+4]
        ADDS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  183   LCD_WriteData(Xpos&0XFF);	 
        AND      R0,R5,#0xFF
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  184   LCD_WriteIndex(LCD_INFO.Y_GRAM); 
        LDR.N    R0,??DataTable5_2
        LDRH     R0,[R0, #+6]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  185   LCD_WriteData(Ypos>>8); 
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  186   LCD_WriteIndex(LCD_INFO.Y_GRAM+1); 
        LDR.N    R0,??DataTable5_2
        LDRH     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  187   LCD_WriteData(Ypos&0XFF);	
        AND      R0,R4,#0xFF
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  188 }
        POP      {R0,R4,R5,PC}    ;; return
//  189 
//  190 
//  191 /*
//  192  * LCD_Reset
//  193  * 复位LCD控制器，内部调用
//  194  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 static void LCD_Reset(void)
//  196 {
_ZN26_INTERNAL_9_DEV_LCD_c_PreX9LCD_ResetEv:
        PUSH     {R7,LR}
//  197   LCD_CLR_RST;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_3  ;; 0x43fe183c
        STR      R0,[R1, #+0]
//  198   LCD_Delayms(10); //延时
        MOVS     R0,#+10
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  199   LCD_SET_RST;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_3  ;; 0x43fe183c
        STR      R0,[R1, #+0]
//  200 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x60010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     LCD_INFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x43fe183c
//  201 
//  202 /*
//  203  * LCD_Init
//  204  * LCD初始化
//  205  * 
//  206  * 参数:
//  207  *    无
//  208  *
//  209  * 输出:
//  210  *    LCD控制型号
//  211  *    0x9320--9320
//  212  *    0x8989--8989
//  213  */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  214 uint16 dID[4];
dID:
        DS8 8

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  215 uint16 LCD_Init(void)
//  216 {
_Z8LCD_Initv:
        PUSH     {R7,LR}
//  217   
//  218    
//  219   LCD_FLEXBUS_Init(0);
        MOVS     R0,#+0
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX16LCD_FLEXBUS_InitEt
//  220   LCD_IO_Cfg();
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX10LCD_IO_CfgEv
//  221   LCD_Delayms(50);
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  222   
//  223   LCD_Reset();                 //硬件复位
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX9LCD_ResetEv
//  224   
//  225   dID[0] = LCD_ReadReg(0xda00);   //获取LCD控制器设备ID
        MOV      R0,#+55808
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_ReadRegEt
        LDR.W    R1,??LCD_Init_0
        STRH     R0,[R1, #+0]
//  226   dID[1] = LCD_ReadReg(0xdb00);
        MOV      R0,#+56064
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_ReadRegEt
        LDR.W    R1,??LCD_Init_0
        STRH     R0,[R1, #+2]
//  227   dID[2] = LCD_ReadReg(0xdc00);
        MOV      R0,#+56320
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_ReadRegEt
        LDR.W    R1,??LCD_Init_0
        STRH     R0,[R1, #+4]
//  228   dID[3]  = 0X8000;
        MOV      R0,#+32768
        LDR.W    R1,??LCD_Init_0
        STRH     R0,[R1, #+6]
//  229   LCD_INFO.Lcd_Id = dID[3];
        LDR.W    R0,??LCD_Init_0
        LDRH     R0,[R0, #+6]
        LDR.W    R1,??LCD_Init_0+0x4
        STRH     R0,[R1, #+0]
//  230   
//  231   if(dID[3] == 0X8000)
        LDR.W    R0,??LCD_Init_0
        LDRH     R0,[R0, #+6]
        CMP      R0,#+32768
        BNE.W    ??LCD_Init_1
//  232   {
//  233     
//  234     
//  235 		LCD_WriteReg(0xF000,0x55);
        MOVS     R1,#+85
        MOV      R0,#+61440
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  236 		LCD_WriteReg(0xF001,0xAA);
        MOVS     R1,#+170
        MOVW     R0,#+61441
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  237 		LCD_WriteReg(0xF002,0x52);
        MOVS     R1,#+82
        MOVW     R0,#+61442
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  238 		LCD_WriteReg(0xF003,0x08);
        MOVS     R1,#+8
        MOVW     R0,#+61443
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  239 		LCD_WriteReg(0xF004,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+61444
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  240 		//AVDD Set AVDD 5.2V
//  241 		LCD_WriteReg(0xB000,0x0D);
        MOVS     R1,#+13
        MOV      R0,#+45056
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  242 		LCD_WriteReg(0xB001,0x0D);
        MOVS     R1,#+13
        MOVW     R0,#+45057
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  243 		LCD_WriteReg(0xB002,0x0D);
        MOVS     R1,#+13
        MOVW     R0,#+45058
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  244 		//AVDD ratio
//  245 		LCD_WriteReg(0xB600,0x34);
        MOVS     R1,#+52
        MOV      R0,#+46592
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  246 		LCD_WriteReg(0xB601,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+46593
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  247 		LCD_WriteReg(0xB602,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+46594
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  248 		//AVEE -5.2V
//  249 		LCD_WriteReg(0xB100,0x0D);
        MOVS     R1,#+13
        MOV      R0,#+45312
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  250 		LCD_WriteReg(0xB101,0x0D);
        MOVS     R1,#+13
        MOVW     R0,#+45313
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  251 		LCD_WriteReg(0xB102,0x0D);
        MOVS     R1,#+13
        MOVW     R0,#+45314
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  252 		//AVEE ratio
//  253 		LCD_WriteReg(0xB700,0x34);
        MOVS     R1,#+52
        MOV      R0,#+46848
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  254 		LCD_WriteReg(0xB701,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+46849
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  255 		LCD_WriteReg(0xB702,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+46850
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  256 		//VCL -2.5V
//  257 		LCD_WriteReg(0xB200,0x00);
        MOVS     R1,#+0
        MOV      R0,#+45568
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  258 		LCD_WriteReg(0xB201,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+45569
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  259 		LCD_WriteReg(0xB202,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+45570
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  260 		//VCL ratio
//  261 		LCD_WriteReg(0xB800,0x24);
        MOVS     R1,#+36
        MOV      R0,#+47104
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  262 		LCD_WriteReg(0xB801,0x24);
        MOVS     R1,#+36
        MOVW     R0,#+47105
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  263 		LCD_WriteReg(0xB802,0x24);
        MOVS     R1,#+36
        MOVW     R0,#+47106
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  264 		//VGH 15V (Free pump)
//  265 		LCD_WriteReg(0xBF00,0x01);
        MOVS     R1,#+1
        MOV      R0,#+48896
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  266 		LCD_WriteReg(0xB300,0x0F);
        MOVS     R1,#+15
        MOV      R0,#+45824
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  267 		LCD_WriteReg(0xB301,0x0F);
        MOVS     R1,#+15
        MOVW     R0,#+45825
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  268 		LCD_WriteReg(0xB302,0x0F);
        MOVS     R1,#+15
        MOVW     R0,#+45826
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  269 		//VGH ratio
//  270 		LCD_WriteReg(0xB900,0x34);
        MOVS     R1,#+52
        MOV      R0,#+47360
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  271 		LCD_WriteReg(0xB901,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+47361
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  272 		LCD_WriteReg(0xB902,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+47362
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  273 		//VGL_REG -10V
//  274 		LCD_WriteReg(0xB500,0x08);
        MOVS     R1,#+8
        MOV      R0,#+46336
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  275 		LCD_WriteReg(0xB501,0x08);
        MOVS     R1,#+8
        MOVW     R0,#+46337
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  276 		LCD_WriteReg(0xB502,0x08);
        MOVS     R1,#+8
        MOVW     R0,#+46338
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  277 		LCD_WriteReg(0xC200,0x03);
        MOVS     R1,#+3
        MOV      R0,#+49664
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  278 		//VGLX ratio
//  279 		LCD_WriteReg(0xBA00,0x24);
        MOVS     R1,#+36
        MOV      R0,#+47616
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  280 		LCD_WriteReg(0xBA01,0x24);
        MOVS     R1,#+36
        MOVW     R0,#+47617
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  281 		LCD_WriteReg(0xBA02,0x24);
        MOVS     R1,#+36
        MOVW     R0,#+47618
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  282 		//VGMP/VGSP 4.5V/0V
//  283 		LCD_WriteReg(0xBC00,0x00);
        MOVS     R1,#+0
        MOV      R0,#+48128
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  284 		LCD_WriteReg(0xBC01,0x78);
        MOVS     R1,#+120
        MOVW     R0,#+48129
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  285 		LCD_WriteReg(0xBC02,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+48130
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  286 		//VGMN/VGSN -4.5V/0V
//  287 		LCD_WriteReg(0xBD00,0x00);
        MOVS     R1,#+0
        MOV      R0,#+48384
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  288 		LCD_WriteReg(0xBD01,0x78);
        MOVS     R1,#+120
        MOVW     R0,#+48385
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  289 		LCD_WriteReg(0xBD02,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+48386
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  290 		//VCOM
//  291 		LCD_WriteReg(0xBE00,0x00);
        MOVS     R1,#+0
        MOV      R0,#+48640
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  292 		LCD_WriteReg(0xBE01,0x64);
        MOVS     R1,#+100
        MOVW     R0,#+48641
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  293 		//Gamma Setting
//  294 		LCD_WriteReg(0xD100,0x00);
        MOVS     R1,#+0
        MOV      R0,#+53504
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  295 		LCD_WriteReg(0xD101,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+53505
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  296 		LCD_WriteReg(0xD102,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53506
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  297 		LCD_WriteReg(0xD103,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+53507
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  298 		LCD_WriteReg(0xD104,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53508
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  299 		LCD_WriteReg(0xD105,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+53509
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  300 		LCD_WriteReg(0xD106,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53510
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  301 		LCD_WriteReg(0xD107,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+53511
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  302 		LCD_WriteReg(0xD108,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53512
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  303 		LCD_WriteReg(0xD109,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+53513
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  304 		LCD_WriteReg(0xD10A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53514
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  305 		LCD_WriteReg(0xD10B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+53515
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  306 		LCD_WriteReg(0xD10C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53516
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  307 		LCD_WriteReg(0xD10D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+53517
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  308 		LCD_WriteReg(0xD10E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53518
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  309 		LCD_WriteReg(0xD10F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+53519
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  310 		LCD_WriteReg(0xD110,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53520
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  311 		LCD_WriteReg(0xD111,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+53521
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  312 		LCD_WriteReg(0xD112,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53522
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  313 		LCD_WriteReg(0xD113,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+53523
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  314 		LCD_WriteReg(0xD114,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53524
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  315 		LCD_WriteReg(0xD115,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+53525
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  316 		LCD_WriteReg(0xD116,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53526
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  317 		LCD_WriteReg(0xD117,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+53527
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  318 		LCD_WriteReg(0xD118,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53528
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  319 		LCD_WriteReg(0xD119,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53529
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  320 		LCD_WriteReg(0xD11A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53530
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  321 		LCD_WriteReg(0xD11B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53531
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  322 		LCD_WriteReg(0xD11C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53532
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  323 		LCD_WriteReg(0xD11D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+53533
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  324 		LCD_WriteReg(0xD11E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53534
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  325 		LCD_WriteReg(0xD11F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+53535
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  326 		LCD_WriteReg(0xD120,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53536
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  327 		LCD_WriteReg(0xD121,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+53537
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  328 		LCD_WriteReg(0xD122,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53538
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  329 		LCD_WriteReg(0xD123,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+53539
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  330 		LCD_WriteReg(0xD124,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53540
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  331 		LCD_WriteReg(0xD125,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+53541
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  332 		LCD_WriteReg(0xD126,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53542
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  333 		LCD_WriteReg(0xD127,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+53543
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  334 		LCD_WriteReg(0xD128,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53544
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  335 		LCD_WriteReg(0xD129,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+53545
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  336 		LCD_WriteReg(0xD12A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53546
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  337 		LCD_WriteReg(0xD12B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+53547
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  338 		LCD_WriteReg(0xD12C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53548
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  339 		LCD_WriteReg(0xD12D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+53549
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  340 		LCD_WriteReg(0xD12E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53550
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  341 		LCD_WriteReg(0xD12F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+53551
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  342 		LCD_WriteReg(0xD130,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53552
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  343 		LCD_WriteReg(0xD131,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+53553
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  344 		LCD_WriteReg(0xD132,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53554
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  345 		LCD_WriteReg(0xD133,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+53555
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  346 		LCD_WriteReg(0xD200,0x00);
        MOVS     R1,#+0
        MOV      R0,#+53760
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  347 		LCD_WriteReg(0xD201,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+53761
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  348 		LCD_WriteReg(0xD202,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53762
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  349 		LCD_WriteReg(0xD203,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+53763
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  350 		LCD_WriteReg(0xD204,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53764
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  351 		LCD_WriteReg(0xD205,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+53765
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  352 		LCD_WriteReg(0xD206,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53766
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  353 		LCD_WriteReg(0xD207,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+53767
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  354 		LCD_WriteReg(0xD208,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53768
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  355 		LCD_WriteReg(0xD209,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+53769
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  356 		LCD_WriteReg(0xD20A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53770
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  357 
//  358 		LCD_WriteReg(0xD20B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+53771
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  359 		LCD_WriteReg(0xD20C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53772
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  360 		LCD_WriteReg(0xD20D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+53773
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  361 		LCD_WriteReg(0xD20E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53774
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  362 		LCD_WriteReg(0xD20F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+53775
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  363 		LCD_WriteReg(0xD210,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53776
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  364 		LCD_WriteReg(0xD211,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+53777
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  365 		LCD_WriteReg(0xD212,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53778
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  366 		LCD_WriteReg(0xD213,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+53779
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  367 		LCD_WriteReg(0xD214,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53780
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  368 		LCD_WriteReg(0xD215,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+53781
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  369 		LCD_WriteReg(0xD216,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53782
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  370 		LCD_WriteReg(0xD217,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+53783
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  371 		LCD_WriteReg(0xD218,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53784
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  372 		LCD_WriteReg(0xD219,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+53785
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  373 		LCD_WriteReg(0xD21A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53786
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  374 		LCD_WriteReg(0xD21B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+53787
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  375 		LCD_WriteReg(0xD21C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53788
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  376 		LCD_WriteReg(0xD21D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+53789
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  377 		LCD_WriteReg(0xD21E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53790
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  378 		LCD_WriteReg(0xD21F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+53791
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  379 		LCD_WriteReg(0xD220,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53792
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  380 		LCD_WriteReg(0xD221,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+53793
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  381 		LCD_WriteReg(0xD222,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53794
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  382 		LCD_WriteReg(0xD223,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+53795
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  383 		LCD_WriteReg(0xD224,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53796
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  384 		LCD_WriteReg(0xD225,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+53797
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  385 		LCD_WriteReg(0xD226,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53798
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  386 		LCD_WriteReg(0xD227,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+53799
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  387 		LCD_WriteReg(0xD228,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53800
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  388 		LCD_WriteReg(0xD229,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+53801
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  389 		LCD_WriteReg(0xD22A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53802
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  390 		LCD_WriteReg(0xD22B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+53803
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  391 		LCD_WriteReg(0xD22C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+53804
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  392 		LCD_WriteReg(0xD22D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+53805
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  393 		LCD_WriteReg(0xD22E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53806
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  394 		LCD_WriteReg(0xD22F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+53807
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  395 		LCD_WriteReg(0xD230,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53808
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  396 		LCD_WriteReg(0xD231,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+53809
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  397 		LCD_WriteReg(0xD232,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+53810
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  398 		LCD_WriteReg(0xD233,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+53811
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  399 		LCD_WriteReg(0xD300,0x00);
        MOVS     R1,#+0
        MOV      R0,#+54016
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  400 		LCD_WriteReg(0xD301,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54017
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  401 		LCD_WriteReg(0xD302,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54018
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  402 		LCD_WriteReg(0xD303,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54019
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  403 		LCD_WriteReg(0xD304,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54020
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  404 		LCD_WriteReg(0xD305,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+54021
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  405 		LCD_WriteReg(0xD306,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54022
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  406 		LCD_WriteReg(0xD307,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+54023
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  407 		LCD_WriteReg(0xD308,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54024
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  408 		LCD_WriteReg(0xD309,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+54025
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  409 		LCD_WriteReg(0xD30A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54026
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  410 
//  411 		LCD_WriteReg(0xD30B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+54027
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  412 		LCD_WriteReg(0xD30C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54028
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  413 		LCD_WriteReg(0xD30D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+54029
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  414 		LCD_WriteReg(0xD30E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54030
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  415 		LCD_WriteReg(0xD30F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+54031
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  416 		LCD_WriteReg(0xD310,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54032
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  417 		LCD_WriteReg(0xD311,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+54033
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  418 		LCD_WriteReg(0xD312,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54034
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  419 		LCD_WriteReg(0xD313,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+54035
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  420 		LCD_WriteReg(0xD314,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54036
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  421 		LCD_WriteReg(0xD315,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+54037
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  422 		LCD_WriteReg(0xD316,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54038
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  423 		LCD_WriteReg(0xD317,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+54039
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  424 		LCD_WriteReg(0xD318,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54040
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  425 		LCD_WriteReg(0xD319,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54041
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  426 		LCD_WriteReg(0xD31A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54042
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  427 		LCD_WriteReg(0xD31B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54043
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  428 		LCD_WriteReg(0xD31C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54044
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  429 		LCD_WriteReg(0xD31D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54045
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  430 		LCD_WriteReg(0xD31E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54046
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  431 		LCD_WriteReg(0xD31F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+54047
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  432 		LCD_WriteReg(0xD320,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54048
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  433 		LCD_WriteReg(0xD321,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+54049
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  434 		LCD_WriteReg(0xD322,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54050
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  435 		LCD_WriteReg(0xD323,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+54051
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  436 		LCD_WriteReg(0xD324,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54052
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  437 		LCD_WriteReg(0xD325,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+54053
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  438 		LCD_WriteReg(0xD326,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54054
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  439 		LCD_WriteReg(0xD327,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+54055
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  440 		LCD_WriteReg(0xD328,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54056
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  441 		LCD_WriteReg(0xD329,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+54057
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  442 		LCD_WriteReg(0xD32A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54058
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  443 		LCD_WriteReg(0xD32B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+54059
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  444 		LCD_WriteReg(0xD32C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54060
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  445 		LCD_WriteReg(0xD32D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+54061
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  446 		LCD_WriteReg(0xD32E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54062
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  447 		LCD_WriteReg(0xD32F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+54063
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  448 		LCD_WriteReg(0xD330,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54064
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  449 		LCD_WriteReg(0xD331,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54065
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  450 		LCD_WriteReg(0xD332,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54066
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  451 		LCD_WriteReg(0xD333,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+54067
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  452 		LCD_WriteReg(0xD400,0x00);
        MOVS     R1,#+0
        MOV      R0,#+54272
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  453 		LCD_WriteReg(0xD401,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54273
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  454 		LCD_WriteReg(0xD402,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54274
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  455 		LCD_WriteReg(0xD403,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54275
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  456 		LCD_WriteReg(0xD404,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54276
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  457 		LCD_WriteReg(0xD405,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+54277
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  458 		LCD_WriteReg(0xD406,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54278
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  459 		LCD_WriteReg(0xD407,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+54279
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  460 		LCD_WriteReg(0xD408,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54280
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  461 		LCD_WriteReg(0xD409,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+54281
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  462 		LCD_WriteReg(0xD40A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54282
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  463 		LCD_WriteReg(0xD40B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+54283
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  464 
//  465 		LCD_WriteReg(0xD40C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54284
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  466 		LCD_WriteReg(0xD40D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+54285
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  467 		LCD_WriteReg(0xD40E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54286
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  468 		LCD_WriteReg(0xD40F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+54287
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  469 		LCD_WriteReg(0xD410,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54288
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  470 		LCD_WriteReg(0xD411,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+54289
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  471 		LCD_WriteReg(0xD412,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54290
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  472 		LCD_WriteReg(0xD413,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+54291
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  473 		LCD_WriteReg(0xD414,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54292
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  474 		LCD_WriteReg(0xD415,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+54293
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  475 		LCD_WriteReg(0xD416,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54294
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  476 		LCD_WriteReg(0xD417,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+54295
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  477 		LCD_WriteReg(0xD418,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54296
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  478 		LCD_WriteReg(0xD419,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54297
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  479 		LCD_WriteReg(0xD41A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54298
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  480 		LCD_WriteReg(0xD41B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54299
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  481 		LCD_WriteReg(0xD41C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54300
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  482 		LCD_WriteReg(0xD41D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54301
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  483 		LCD_WriteReg(0xD41E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54302
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  484 		LCD_WriteReg(0xD41F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+54303
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  485 		LCD_WriteReg(0xD420,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54304
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  486 		LCD_WriteReg(0xD421,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+54305
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  487 		LCD_WriteReg(0xD422,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54306
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  488 		LCD_WriteReg(0xD423,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+54307
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  489 		LCD_WriteReg(0xD424,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54308
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  490 		LCD_WriteReg(0xD425,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+54309
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  491 		LCD_WriteReg(0xD426,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54310
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  492 		LCD_WriteReg(0xD427,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+54311
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  493 		LCD_WriteReg(0xD428,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54312
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  494 		LCD_WriteReg(0xD429,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+54313
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  495 		LCD_WriteReg(0xD42A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54314
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  496 		LCD_WriteReg(0xD42B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+54315
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  497 		LCD_WriteReg(0xD42C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54316
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  498 		LCD_WriteReg(0xD42D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+54317
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  499 		LCD_WriteReg(0xD42E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54318
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  500 		LCD_WriteReg(0xD42F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+54319
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  501 		LCD_WriteReg(0xD430,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54320
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  502 		LCD_WriteReg(0xD431,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54321
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  503 		LCD_WriteReg(0xD432,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54322
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  504 		LCD_WriteReg(0xD433,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+54323
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  505 		LCD_WriteReg(0xD500,0x00);
        MOVS     R1,#+0
        MOV      R0,#+54528
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  506 		LCD_WriteReg(0xD501,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54529
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  507 		LCD_WriteReg(0xD502,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54530
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  508 		LCD_WriteReg(0xD503,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54531
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  509 		LCD_WriteReg(0xD504,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54532
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  510 		LCD_WriteReg(0xD505,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+54533
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  511 		LCD_WriteReg(0xD506,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54534
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  512 		LCD_WriteReg(0xD507,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+54535
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  513 		LCD_WriteReg(0xD508,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54536
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  514 		LCD_WriteReg(0xD509,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+54537
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  515 		LCD_WriteReg(0xD50A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54538
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  516 		LCD_WriteReg(0xD50B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+54539
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  517 
//  518 		LCD_WriteReg(0xD50C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54540
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  519 		LCD_WriteReg(0xD50D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+54541
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  520 		LCD_WriteReg(0xD50E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54542
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  521 		LCD_WriteReg(0xD50F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+54543
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  522 		LCD_WriteReg(0xD510,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54544
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  523 		LCD_WriteReg(0xD511,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+54545
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  524 		LCD_WriteReg(0xD512,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54546
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  525 		LCD_WriteReg(0xD513,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+54547
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  526 		LCD_WriteReg(0xD514,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54548
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  527 		LCD_WriteReg(0xD515,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+54549
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  528 		LCD_WriteReg(0xD516,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54550
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  529 		LCD_WriteReg(0xD517,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+54551
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  530 		LCD_WriteReg(0xD518,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54552
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  531 		LCD_WriteReg(0xD519,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54553
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  532 		LCD_WriteReg(0xD51A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54554
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  533 		LCD_WriteReg(0xD51B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54555
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  534 		LCD_WriteReg(0xD51C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54556
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  535 		LCD_WriteReg(0xD51D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54557
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  536 		LCD_WriteReg(0xD51E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54558
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  537 		LCD_WriteReg(0xD51F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+54559
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  538 		LCD_WriteReg(0xD520,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54560
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  539 		LCD_WriteReg(0xD521,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+54561
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  540 		LCD_WriteReg(0xD522,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54562
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  541 		LCD_WriteReg(0xD523,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+54563
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  542 		LCD_WriteReg(0xD524,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54564
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  543 		LCD_WriteReg(0xD525,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+54565
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  544 		LCD_WriteReg(0xD526,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54566
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  545 		LCD_WriteReg(0xD527,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+54567
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  546 		LCD_WriteReg(0xD528,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54568
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  547 		LCD_WriteReg(0xD529,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+54569
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  548 		LCD_WriteReg(0xD52A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54570
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  549 		LCD_WriteReg(0xD52B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+54571
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  550 		LCD_WriteReg(0xD52C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54572
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  551 		LCD_WriteReg(0xD52D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+54573
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  552 		LCD_WriteReg(0xD52E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54574
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  553 		LCD_WriteReg(0xD52F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+54575
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  554 		LCD_WriteReg(0xD530,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54576
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  555 		LCD_WriteReg(0xD531,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54577
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  556 		LCD_WriteReg(0xD532,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54578
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  557 		LCD_WriteReg(0xD533,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+54579
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  558 		LCD_WriteReg(0xD600,0x00);
        MOVS     R1,#+0
        MOV      R0,#+54784
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  559 		LCD_WriteReg(0xD601,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54785
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  560 		LCD_WriteReg(0xD602,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54786
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  561 		LCD_WriteReg(0xD603,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54787
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  562 		LCD_WriteReg(0xD604,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54788
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  563 		LCD_WriteReg(0xD605,0x3A);
        MOVS     R1,#+58
        MOVW     R0,#+54789
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  564 		LCD_WriteReg(0xD606,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54790
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  565 		LCD_WriteReg(0xD607,0x4A);
        MOVS     R1,#+74
        MOVW     R0,#+54791
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  566 		LCD_WriteReg(0xD608,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54792
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  567 		LCD_WriteReg(0xD609,0x5C);
        MOVS     R1,#+92
        MOVW     R0,#+54793
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  568 		LCD_WriteReg(0xD60A,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54794
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  569 		LCD_WriteReg(0xD60B,0x81);
        MOVS     R1,#+129
        MOVW     R0,#+54795
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  570 
//  571 		LCD_WriteReg(0xD60C,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54796
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  572 		LCD_WriteReg(0xD60D,0xA6);
        MOVS     R1,#+166
        MOVW     R0,#+54797
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  573 		LCD_WriteReg(0xD60E,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54798
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  574 		LCD_WriteReg(0xD60F,0xE5);
        MOVS     R1,#+229
        MOVW     R0,#+54799
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  575 		LCD_WriteReg(0xD610,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54800
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  576 		LCD_WriteReg(0xD611,0x13);
        MOVS     R1,#+19
        MOVW     R0,#+54801
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  577 		LCD_WriteReg(0xD612,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54802
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  578 		LCD_WriteReg(0xD613,0x54);
        MOVS     R1,#+84
        MOVW     R0,#+54803
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  579 		LCD_WriteReg(0xD614,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54804
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  580 		LCD_WriteReg(0xD615,0x82);
        MOVS     R1,#+130
        MOVW     R0,#+54805
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  581 		LCD_WriteReg(0xD616,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54806
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  582 		LCD_WriteReg(0xD617,0xCA);
        MOVS     R1,#+202
        MOVW     R0,#+54807
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  583 		LCD_WriteReg(0xD618,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54808
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  584 		LCD_WriteReg(0xD619,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+54809
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  585 		LCD_WriteReg(0xD61A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54810
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  586 		LCD_WriteReg(0xD61B,0x01);
        MOVS     R1,#+1
        MOVW     R0,#+54811
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  587 		LCD_WriteReg(0xD61C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54812
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  588 		LCD_WriteReg(0xD61D,0x34);
        MOVS     R1,#+52
        MOVW     R0,#+54813
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  589 		LCD_WriteReg(0xD61E,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54814
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  590 		LCD_WriteReg(0xD61F,0x67);
        MOVS     R1,#+103
        MOVW     R0,#+54815
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  591 		LCD_WriteReg(0xD620,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54816
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  592 		LCD_WriteReg(0xD621,0x84);
        MOVS     R1,#+132
        MOVW     R0,#+54817
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  593 		LCD_WriteReg(0xD622,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54818
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  594 		LCD_WriteReg(0xD623,0xA4);
        MOVS     R1,#+164
        MOVW     R0,#+54819
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  595 		LCD_WriteReg(0xD624,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54820
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  596 		LCD_WriteReg(0xD625,0xB7);
        MOVS     R1,#+183
        MOVW     R0,#+54821
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  597 		LCD_WriteReg(0xD626,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54822
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  598 		LCD_WriteReg(0xD627,0xCF);
        MOVS     R1,#+207
        MOVW     R0,#+54823
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  599 		LCD_WriteReg(0xD628,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54824
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  600 		LCD_WriteReg(0xD629,0xDE);
        MOVS     R1,#+222
        MOVW     R0,#+54825
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  601 		LCD_WriteReg(0xD62A,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54826
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  602 		LCD_WriteReg(0xD62B,0xF2);
        MOVS     R1,#+242
        MOVW     R0,#+54827
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  603 		LCD_WriteReg(0xD62C,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+54828
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  604 		LCD_WriteReg(0xD62D,0xFE);
        MOVS     R1,#+254
        MOVW     R0,#+54829
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  605 		LCD_WriteReg(0xD62E,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54830
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  606 		LCD_WriteReg(0xD62F,0x10);
        MOVS     R1,#+16
        MOVW     R0,#+54831
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  607 		LCD_WriteReg(0xD630,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54832
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  608 		LCD_WriteReg(0xD631,0x33);
        MOVS     R1,#+51
        MOVW     R0,#+54833
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  609 		LCD_WriteReg(0xD632,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+54834
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  610 		LCD_WriteReg(0xD633,0x6D);
        MOVS     R1,#+109
        MOVW     R0,#+54835
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  611 		//LV2 Page 0 enable
//  612 		LCD_WriteReg(0xF000,0x55);
        MOVS     R1,#+85
        MOV      R0,#+61440
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  613 		LCD_WriteReg(0xF001,0xAA);
        MOVS     R1,#+170
        MOVW     R0,#+61441
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  614 		LCD_WriteReg(0xF002,0x52);
        MOVS     R1,#+82
        MOVW     R0,#+61442
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  615 		LCD_WriteReg(0xF003,0x08);
        MOVS     R1,#+8
        MOVW     R0,#+61443
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  616 		LCD_WriteReg(0xF004,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+61444
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  617 		//Display control
//  618 		LCD_WriteReg(0xB100, 0xCC);
        MOVS     R1,#+204
        MOV      R0,#+45312
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  619 		LCD_WriteReg(0xB101, 0x00);
        MOVS     R1,#+0
        MOVW     R0,#+45313
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  620 		//Source hold time
//  621 		LCD_WriteReg(0xB600,0x05);
        MOVS     R1,#+5
        MOV      R0,#+46592
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  622 		//Gate EQ control
//  623 		LCD_WriteReg(0xB700,0x70);
        MOVS     R1,#+112
        MOV      R0,#+46848
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  624 		LCD_WriteReg(0xB701,0x70);
        MOVS     R1,#+112
        MOVW     R0,#+46849
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  625 		//Source EQ control (Mode 2)
//  626 		LCD_WriteReg(0xB800,0x01);
        MOVS     R1,#+1
        MOV      R0,#+47104
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  627 		LCD_WriteReg(0xB801,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+47105
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  628 		LCD_WriteReg(0xB802,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+47106
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  629 		LCD_WriteReg(0xB803,0x03);
        MOVS     R1,#+3
        MOVW     R0,#+47107
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  630 		//Inversion mode (2-dot)
//  631         //LCD_WriteReg(0xBC00,0x00);
//  632 		LCD_WriteReg(0xBC00,0x02);
        MOVS     R1,#+2
        MOV      R0,#+48128
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  633 		LCD_WriteReg(0xBC01,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+48129
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  634 		LCD_WriteReg(0xBC02,0x00);
        MOVS     R1,#+0
        MOVW     R0,#+48130
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  635 		//Timing control 4H w/ 4-delay
//  636 		LCD_WriteReg(0xC900,0xD0);
        MOVS     R1,#+208
        MOV      R0,#+51456
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  637 		LCD_WriteReg(0xC901,0x02);
        MOVS     R1,#+2
        MOVW     R0,#+51457
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  638 		LCD_WriteReg(0xC902,0x50);
        MOVS     R1,#+80
        MOVW     R0,#+51458
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  639 		LCD_WriteReg(0xC903,0x50);
        MOVS     R1,#+80
        MOVW     R0,#+51459
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  640 		LCD_WriteReg(0xC904,0x50);
        MOVS     R1,#+80
        MOVW     R0,#+51460
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  641 		LCD_WriteReg(0x3500,0x00);
        MOVS     R1,#+0
        MOV      R0,#+13568
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  642 		LCD_WriteReg(0x3A00,0x55);  //16-bit/pixel
        MOVS     R1,#+85
        MOV      R0,#+14848
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  643 		//LCD_WR_REG(0x1100);
//  644         LCD_WriteIndex(0x1100);
        MOV      R0,#+4352
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  645 		LCD_Delayms(1);
        MOVS     R0,#+1
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  646 		//LCD_WR_REG(0x2900);
//  647         LCD_WriteIndex(0x2900);
        MOV      R0,#+10496
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  648         LCD_INFO.Write_GRAM = 0X2C00;
        MOV      R0,#+11264
        LDR.N    R1,??LCD_Init_0+0x4
        STRH     R0,[R1, #+2]
//  649         LCD_INFO.Y_GRAM = 0X2A00;
        MOV      R0,#+10752
        LDR.N    R1,??LCD_Init_0+0x4
        STRH     R0,[R1, #+6]
//  650         LCD_INFO.X_GRAM = 0X2B00;
        MOV      R0,#+11008
        LDR.N    R1,??LCD_Init_0+0x4
        STRH     R0,[R1, #+4]
        B.N      ??LCD_Init_2
        Nop      
        DATA
??LCD_Init_0:
        DC32     dID
        DC32     LCD_INFO
        THUMB
//  651         /*LCD_Delayms(50);
//  652         LCD_WriteReg(0x0000,0x0001);
//  653         LCD_Delayms(50);  */
//  654 	
//  655   }
//  656   else if(dID[3] == 0x9320)
??LCD_Init_1:
        LDR.W    R0,??DataTable20
        LDRH     R0,[R0, #+6]
        MOVW     R1,#+37664
        CMP      R0,R1
        BNE.W    ??LCD_Init_3
//  657   {
//  658     LCD_INFO.Write_GRAM = 0x0022;
        MOVS     R0,#+34
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+2]
//  659     LCD_INFO.X_GRAM = 0x0020;
        MOVS     R0,#+32
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+4]
//  660     LCD_INFO.Y_GRAM = 0x0021;
        MOVS     R0,#+33
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+6]
//  661     
//  662     LCD_WriteReg(0x00,0x0001);   //开启LCD内部晶振，并等待10ms稳定
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  663     LCD_Delayms(10);
        MOVS     R0,#+10
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  664     
//  665     LCD_WriteReg(0x01,0x0000);   //Driver Output Control
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  666     LCD_WriteReg(0x02,0x0700);   //LCD Driving Wave Control
        MOV      R1,#+1792
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  667     LCD_WriteReg(0x03,0x1008);   //Entry Mode
        MOVW     R1,#+4104
        MOVS     R0,#+3
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  668     LCD_WriteReg(0x04,0x0000);   //Resizing Control
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  669     LCD_WriteReg(0x08,0x0202);   //Display Control 2
        MOVW     R1,#+514
        MOVS     R0,#+8
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  670     LCD_WriteReg(0x09,0x0000);   //Display Contral 3.(0x0000)
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  671     LCD_WriteReg(0x0a,0x0000);//Frame Cycle Contal.(0x0000)
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  672     LCD_WriteReg(0x0c,0x0001);//Extern Display Interface Contral 1.(0x0000)
        MOVS     R1,#+1
        MOVS     R0,#+12
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  673     LCD_WriteReg(0x0d,0x0000);//Frame Maker Position.
        MOVS     R1,#+0
        MOVS     R0,#+13
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  674     LCD_WriteReg(0x0f,0x0000);//Extern Display Interface Contral 2.
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  675     
//  676     LCD_WriteReg(0x10,0x0000);//Power Control 1.(0x16b0)
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  677     LCD_WriteReg(0x11,0x0000);//Power Control 2.(0x0001)	
        MOVS     R1,#+0
        MOVS     R0,#+17
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  678     LCD_WriteReg(0x12,0x0000);//Power Control 3.(0x0138)
        MOVS     R1,#+0
        MOVS     R0,#+18
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  679     LCD_WriteReg(0x13,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  680     //LCD_Delayms(200);	
//  681     
//  682     LCD_WriteReg(0x10,0x17b0);//Power Control 1.(0x16b0)
        MOVW     R1,#+6064
        MOVS     R0,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  683     LCD_WriteReg(0x11,0x0137);//Power Control 2.(0x0001)
        MOVW     R1,#+311
        MOVS     R0,#+17
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  684     LCD_Delayms(50);
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  685     LCD_WriteReg(0x12,0x0139);//Power Control 3.(0x0138)
        MOVW     R1,#+313
        MOVS     R0,#+18
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  686     LCD_Delayms(50);	
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  687     LCD_WriteReg(0x13,0x1700);	 
        MOV      R1,#+5888
        MOVS     R0,#+19
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  688    
//  689     LCD_WriteReg(0x29,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+41
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  690     LCD_WriteReg(0x2B,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+43
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  691     LCD_Delayms(50);						
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  692     
//  693     LCD_WriteReg(0x30,0x0000);					
        MOVS     R1,#+0
        MOVS     R0,#+48
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  694     LCD_WriteReg(0x31,0x0507);
        MOVW     R1,#+1287
        MOVS     R0,#+49
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  695     LCD_WriteReg(0x32,0x0104);	
        MOV      R1,#+260
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  696     LCD_WriteReg(0x35,0x0105);	
        MOVW     R1,#+261
        MOVS     R0,#+53
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  697     LCD_WriteReg(0x36,0x0404);
        MOVW     R1,#+1028
        MOVS     R0,#+54
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  698     LCD_WriteReg(0x37,0x0603);	
        MOVW     R1,#+1539
        MOVS     R0,#+55
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  699     LCD_WriteReg(0x38,0x0004);	
        MOVS     R1,#+4
        MOVS     R0,#+56
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  700     LCD_WriteReg(0x39,0x0007);
        MOVS     R1,#+7
        MOVS     R0,#+57
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  701     LCD_WriteReg(0x3c,0x0501);	
        MOVW     R1,#+1281
        MOVS     R0,#+60
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  702     LCD_WriteReg(0x3d,0x0404);
        MOVW     R1,#+1028
        MOVS     R0,#+61
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  703     
//  704     LCD_WriteReg(0x0050,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+80
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  705     LCD_WriteReg(0x0051,239);
        MOVS     R1,#+239
        MOVS     R0,#+81
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  706     LCD_WriteReg(0x0052,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+82
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  707     LCD_WriteReg(0x0053,319);
        MOVW     R1,#+319
        MOVS     R0,#+83
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  708   
//  709     LCD_WriteReg(0x60,0x2700);//Driver Output Control.
        MOV      R1,#+9984
        MOVS     R0,#+96
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  710     LCD_WriteReg(0x61,0x0001);//Driver Output Control.
        MOVS     R1,#+1
        MOVS     R0,#+97
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  711     LCD_WriteReg(0x6a,0x0000);//Vertical Srcoll Control.
        MOVS     R1,#+0
        MOVS     R0,#+106
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  712     
//  713     LCD_WriteReg(0x80,0x0000);//Display Position? Partial Display 1.
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  714     LCD_WriteReg(0x81,0x0000);//RAM Address Start? Partial Display 1.
        MOVS     R1,#+0
        MOVS     R0,#+129
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  715     LCD_WriteReg(0x82,0x0000);//RAM Address End-Partial Display 1.
        MOVS     R1,#+0
        MOVS     R0,#+130
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  716     LCD_WriteReg(0x83,0x0000);//Displsy Position? Partial Display 2.
        MOVS     R1,#+0
        MOVS     R0,#+131
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  717     LCD_WriteReg(0x84,0x0000);//RAM Address Start? Partial Display 2.
        MOVS     R1,#+0
        MOVS     R0,#+132
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  718     LCD_WriteReg(0x85,0x0000);//RAM Address End? Partial Display 2.
        MOVS     R1,#+0
        MOVS     R0,#+133
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  719     
//  720     LCD_WriteReg(0x90,0x0010);//Frame Cycle Contral.(0x0013)
        MOVS     R1,#+16
        MOVS     R0,#+144
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  721     LCD_WriteReg(0x92,0x0000);//Panel Interface Contral 2.(0x0000)
        MOVS     R1,#+0
        MOVS     R0,#+146
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  722     LCD_WriteReg(0x93,0x0003);//Panel Interface Contral 3.
        MOVS     R1,#+3
        MOVS     R0,#+147
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  723     LCD_WriteReg(0x95,0x0110);//Frame Cycle Contral.(0x0110)
        MOV      R1,#+272
        MOVS     R0,#+149
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  724     LCD_WriteReg(0x97,0x0000);//
        MOVS     R1,#+0
        MOVS     R0,#+151
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  725     LCD_WriteReg(0x98,0x0000);//Frame Cycle Contral.
        MOVS     R1,#+0
        MOVS     R0,#+152
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  726 
//  727     LCD_WriteReg(0x07,0x0133);
        MOVW     R1,#+307
        MOVS     R0,#+7
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  728     LCD_Delayms(300);
        MOV      R0,#+300
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
        B.N      ??LCD_Init_2
//  729   }  
//  730   else if(dID[3] == 0x8989)
??LCD_Init_3:
        LDR.W    R0,??DataTable20
        LDRH     R0,[R0, #+6]
        MOVW     R1,#+35209
        CMP      R0,R1
        BNE.W    ??LCD_Init_2
//  731   {
//  732     LCD_INFO.Write_GRAM = 0x0022;
        MOVS     R0,#+34
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+2]
//  733     LCD_INFO.X_GRAM = 0x004e;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+4]
//  734     LCD_INFO.Y_GRAM = 0x004f;
        MOVS     R0,#+79
        LDR.W    R1,??DataTable20_1
        STRH     R0,[R1, #+6]
//  735     
//  736     //SSD1289;
//  737     /* 打开晶振 */
//  738     LCD_WriteReg(0x0000,0x0001);    LCD_Delayms(LCD_DELAY_TIME); 
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  739     //启动频率设置为最大osc/16 消耗功率设置在large档位，提高显示画质
//  740     //LCD_WriteReg(0x0003,0xF8F8);    LCD_Delayms(LCD_DELAY_TIME);
//  741     LCD_WriteReg(0x0003,0xA8A4);    LCD_Delayms(LCD_DELAY_TIME);   //0210
        MOVW     R1,#+43172
        MOVS     R0,#+3
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  742     LCD_WriteReg(0x000C,0x0000);    LCD_Delayms(LCD_DELAY_TIME);   
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  743     LCD_WriteReg(0x000D,0x080C);    LCD_Delayms(LCD_DELAY_TIME);   
        MOVW     R1,#+2060
        MOVS     R0,#+13
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  744     LCD_WriteReg(0x000E,0x2B00);    LCD_Delayms(LCD_DELAY_TIME);   
        MOV      R1,#+11008
        MOVS     R0,#+14
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  745     LCD_WriteReg(0x001E,0x00B0);    LCD_Delayms(LCD_DELAY_TIME); 
        MOVS     R1,#+176
        MOVS     R0,#+30
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  746     //驱动输出控制320*240 0x2B3F 
//  747     LCD_WriteReg(0x0001,0x2B3F);    LCD_Delayms(LCD_DELAY_TIME); 
        MOVW     R1,#+11071
        MOVS     R0,#+1
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  748     //驱动输出控制320*240 0x233F 将原来的第11位BGR清零这样输出是RGB就不会红色与蓝色颠倒 
//  749     //LCD_WriteReg(0x0001,0x233F);    LCD_Delayms(LCD_DELAY_TIME);   
//  750     LCD_WriteReg(0x0002,0x0600);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+1536
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  751     LCD_WriteReg(0x0010,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  752     /* 定义数据格式 16位色 横屏 0x6070 */
//  753     // TY1（bit7） TY0 ID1 ID0 AM LG2 LG1 LG0
//  754     //   0          0   1   1   1  0   0   0
//  755     // type A  0 0
//  756     // type B  0 1
//  757     // type C  1 1
//  758     // AM   指针自动增加
//  759     // 65K颜色
//  760     // 寄存器 4f/4e 定义窗口大小
//  761     LCD_WriteReg(0x0011,0x6028);    LCD_Delayms(LCD_DELAY_TIME);   
        MOVW     R1,#+24616
        MOVS     R0,#+17
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  762     //LCD_WriteReg(0x0011,0x6070);    LCD_Delayms(LCD_DELAY_TIME);   
//  763     //
//  764     LCD_WriteReg(0x0005,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  765     LCD_WriteReg(0x0006,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  766     LCD_WriteReg(0x0016,0xEF1C);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+61212
        MOVS     R0,#+22
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  767     LCD_WriteReg(0x0017,0x0003);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+3
        MOVS     R0,#+23
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  768     //PT1 PT0 VLE2 VLE1 SPT 0  0 GON DTE CM 0 D1 D0
//  769     //  0   0        1   0  0  0  1   1  0  0  1  1
//  770     LCD_WriteReg(0x0007,0x0233);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+563
        MOVS     R0,#+7
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  771     //LCD_WriteReg(0x0007,0x0133);    LCD_Delayms(LCD_DELAY_TIME);
//  772     //NO1 NO0 SDT1 SDT0 0 EQ2 EQ1 EQ0 DIV1 DIV0 SDIV SRTN RTN3 RTN2 RTN1 RTN0
//  773     //                                 1     1    0    0    0    0   0   0
//  774     //将DIV设置成2分频
//  775     //
//  776     //LCD_WriteReg(0x000B,0x0020);    LCD_Delayms(LCD_DELAY_TIME);
//  777     LCD_WriteReg(0x000B,0x0020);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+32
        MOVS     R0,#+11
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  778     //配置扫描模式
//  779     LCD_WriteReg(0x000F,0x0000);    LCD_Delayms(LCD_DELAY_TIME);   
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  780     /* 扫描开始地址 */
//  781     //垂直控制
//  782     LCD_WriteReg(0x0041,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+65
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  783     LCD_WriteReg(0x0042,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+66
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  784     //水平RAMposition
//  785     LCD_WriteReg(0x0048,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+72
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  786     LCD_WriteReg(0x0049,0x013F);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+319
        MOVS     R0,#+73
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  787     
//  788     LCD_WriteReg(0x004A,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+74
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  789     LCD_WriteReg(0x004B,0x0000);    LCD_Delayms(LCD_DELAY_TIME); 
        MOVS     R1,#+0
        MOVS     R0,#+75
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  790     
//  791     LCD_WriteReg(0x0030,0x0707);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+1799
        MOVS     R0,#+48
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  792     LCD_WriteReg(0x0031,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+516
        MOVS     R0,#+49
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  793     LCD_WriteReg(0x0032,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+516
        MOVS     R0,#+50
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  794     LCD_WriteReg(0x0033,0x0502);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+1282
        MOVS     R0,#+51
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  795     LCD_WriteReg(0x0034,0x0507);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+1287
        MOVS     R0,#+52
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  796     LCD_WriteReg(0x0035,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+516
        MOVS     R0,#+53
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  797     LCD_WriteReg(0x0036,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+516
        MOVS     R0,#+54
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  798     LCD_WriteReg(0x0037,0x0502);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+1282
        MOVS     R0,#+55
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  799     LCD_WriteReg(0x003A,0x0302);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+770
        MOVS     R0,#+58
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  800     LCD_WriteReg(0x003B,0x0302);    LCD_Delayms(LCD_DELAY_TIME);
        MOVW     R1,#+770
        MOVS     R0,#+59
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  801     LCD_WriteReg(0x0023,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+35
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  802     LCD_WriteReg(0x0024,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
        MOVS     R1,#+0
        MOVS     R0,#+36
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  803     /*0000 390K  50 
//  804       0010 430K  55 
//  805       0101 470K  60 
//  806       1000 510K  65 
//  807       1010 548K  70 
//  808       1100 587K  75 
//  809       1110 626K  80 */
//  810     //LCD_WriteReg(0x0025,0x8000);    LCD_Delayms(LCD_DELAY_TIME);
//  811     LCD_WriteReg(0x0025,0xe000);    LCD_Delayms(LCD_DELAY_TIME);
        MOV      R1,#+57344
        MOVS     R0,#+37
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
        MOVS     R0,#+2
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  812     //设定显示窗口       
//  813     //LCD_UpdateData();	//更新写入的数据使之生效*/
//  814     LCD_Delayms(20);         //等待LCD启动
        MOVS     R0,#+20
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX11LCD_DelaymsEt
//  815   }
//  816   
//  817   return dID[3];
??LCD_Init_2:
        LDR.W    R0,??DataTable20
        LDRH     R0,[R0, #+6]
??LCD_Init_4:
        POP      {R1,PC}          ;; return
//  818 }
//  819 
//  820 /*
//  821  * LCD_FillBackground
//  822  * 填充LCD背景色
//  823  * 
//  824  * 参数:
//  825  *    Color--16位RGB颜色值
//  826  *
//  827  * 输出:
//  828  *    无
//  829  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  830 void LCD_FillBackground(uint16 Color)
//  831 {
_Z18LCD_FillBackgroundt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  832   uint32_t index=0;
        MOVS     R5,#+0
//  833   LCD_SetCursor(0,0); 
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt
//  834   LCD_WriteIndex(LCD_INFO.Write_GRAM);
        LDR.W    R0,??DataTable20_1
        LDRH     R0,[R0, #+2]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  835   for( index = 0; index < MAX_X * MAX_Y; index++ )
        MOVS     R6,#+0
??LCD_FillBackground_0:
        LDR.W    R0,??DataTable20_2  ;; 0x5dc00
        CMP      R6,R0
        BCS.N    ??LCD_FillBackground_1
//  836   {
//  837     LCD_WriteData(Color);
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  838   }
        ADDS     R6,R6,#+1
        B.N      ??LCD_FillBackground_0
//  839 }
??LCD_FillBackground_1:
        POP      {R4-R6,PC}       ;; return
//  840 
//  841 /*
//  842  * LCD_FillBackgroundGRAM
//  843  * 填充LCD背景色到LCD_GRAM
//  844  * 
//  845  * 参数:
//  846  *    *Color--16位RGB颜色值数组，长度为LCD_GRAM数组的长度
//  847  *
//  848  * 输出:
//  849  *    无
//  850  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  851 void LCD_FillBackgroundGRAM(uint16 *Color)
//  852 {
_Z22LCD_FillBackgroundGRAMPt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  853   uint32_t index=0;
        MOVS     R5,#+0
//  854   LCD_SetCursor(0,0); 
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt
//  855   LCD_WriteIndex(LCD_INFO.Write_GRAM);
        LDR.W    R0,??DataTable20_1
        LDRH     R0,[R0, #+2]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  856   for( index = 0; index < MAX_X * MAX_Y; index++ )
        MOVS     R6,#+0
??LCD_FillBackgroundGRAM_0:
        LDR.W    R0,??DataTable20_2  ;; 0x5dc00
        CMP      R6,R0
        BCS.N    ??LCD_FillBackgroundGRAM_1
//  857   {
//  858     LCD_WriteData(Color[index]);
        LDRH     R0,[R4, R6, LSL #+1]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
//  859   }
        ADDS     R6,R6,#+1
        B.N      ??LCD_FillBackgroundGRAM_0
//  860 }
??LCD_FillBackgroundGRAM_1:
        POP      {R4-R6,PC}       ;; return
//  861 
//  862 /*
//  863  * LCD_BGR2RGB
//  864  * BGR颜色转RGB颜色
//  865  * 
//  866  * 参数:
//  867  *    Color--16位BGR颜色值
//  868  *
//  869  * 输出:
//  870  *    16位RGB颜色值
//  871  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  872 uint16 LCD_BGR2RGB(uint16 Color)
//  873 {
_Z11LCD_BGR2RGBt:
        PUSH     {R4}
        MOVS     R1,R0
//  874   uint16  r, g, b, rgb;
//  875   
//  876   b = ( Color>>0 )  & 0x1f;
        ANDS     R4,R1,#0x1F
//  877   g = ( Color>>5 )  & 0x3f;
        UBFX     R3,R1,#+5,#+6
//  878   r = ( Color>>11 ) & 0x1f;
        MOVS     R2,R1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R2,R2,#+11
//  879   
//  880   rgb =  (b<<11) + (g<<5) + (r<<0);
        LSLS     R0,R3,#+5
        ADDS     R0,R0,R4, LSL #+11
        ADDS     R0,R2,R0
//  881   
//  882   return( rgb );
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  883 }
//  884 
//  885 /*
//  886  * LCD_U8GRAY2RGB
//  887  * U8灰度颜色转为RGB颜色
//  888  * 
//  889  * 参数:
//  890  *    Color--8位灰度颜色值
//  891  *
//  892  * 输出:
//  893  *    16位RGB颜色值
//  894  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  895 uint16 LCD_U8GRAY2RGB(uint8 Color)
//  896 {
_Z14LCD_U8GRAY2RGBh:
        PUSH     {R4}
        MOVS     R1,R0
//  897   uint16  r, g, b, rgb;
//  898   
//  899   b = ( Color>>3 )  & 0x1f;
        MOVS     R4,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
//  900   g = ( Color>>2 )  & 0x3f;
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
//  901   r = ( Color>>3 )  & 0x1f;
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
//  902   
//  903   rgb =  (b<<11) + (g<<5) + (r<<0);
        LSLS     R0,R3,#+5
        ADDS     R0,R0,R4, LSL #+11
        ADDS     R0,R2,R0
//  904   
//  905   return( rgb );
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  906 }
//  907 
//  908 /*
//  909  * LCD_GetPoint
//  910  * 取得LCD某点的16位RGB值
//  911  * 
//  912  * 参数:
//  913  *    Xpos--X轴坐标
//  914  *    Ypos--Y轴坐标
//  915  *
//  916  * 输出:
//  917  *    16位RGB颜色值
//  918  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  919 uint16 LCD_GetPoint(uint16 Xpos,uint16 Ypos)
//  920 {
_Z12LCD_GetPointtt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  921   uint16 dummy;
//  922   
//  923   LCD_SetCursor(Xpos,Ypos);
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt
//  924   LCD_WriteIndex(LCD_INFO.Write_GRAM);  
        LDR.W    R0,??DataTable20_1
        LDRH     R0,[R0, #+2]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
//  925  
//  926   dummy = LCD_ReadData();   /* 空读一次 */
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_ReadDataEv
        MOVS     R6,R0
//  927   dummy = LCD_ReadData(); 
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_ReadDataEv
//  928   return  dummy;	          
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return
//  929 }
//  930 
//  931 /*
//  932  * LCD_SetPoint
//  933  * 设置LCD某点的16位RGB值
//  934  * 
//  935  * 参数:
//  936  *    Xpos--X轴坐标
//  937  *    Ypos--Y轴坐标
//  938  *    Color--16位RGB颜色值
//  939  *
//  940  * 输出:
//  941  *    无
//  942  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  943 void LCD_SetPoint(uint16 Xpos,uint16 Ypos,uint16 Color)
//  944 {
_Z12LCD_SetPointttt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  945   if( Xpos >= MAX_X || Ypos >= MAX_Y )
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+800
        BGE.N    ??LCD_SetPoint_0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+480
        BLT.N    ??LCD_SetPoint_1
//  946   {
//  947     return;
??LCD_SetPoint_0:
        B.N      ??LCD_SetPoint_2
//  948   } 
//  949   LCD_SetCursor(Xpos,Ypos);
??LCD_SetPoint_1:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt
//  950   LCD_WriteReg(LCD_INFO.Write_GRAM,Color);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable20_1
        LDRH     R0,[R0, #+2]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX12LCD_WriteRegEtt
//  951 }
??LCD_SetPoint_2:
        POP      {R4-R6,PC}       ;; return
//  952 
//  953 /*
//  954  * LCD_DrawLine
//  955  * 在指定坐标显示直线
//  956  * 
//  957  * 参数:
//  958  *    x0--X轴起始坐标
//  959  *    y0--Y轴起始坐标
//  960  *    x1--X轴结束坐标
//  961  *    y1--Y轴结束坐标
//  962  *    Color--16位RGB颜色值
//  963  *
//  964  * 输出:
//  965  *    无
//  966  */	 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  967 void LCD_DrawLine( uint16 x0, uint16 y0, uint16 x1, uint16 y1 , uint16 color )
//  968 {
_Z12LCD_DrawLinettttt:
        PUSH     {R3-R11,LR}
        MOVS     R7,R0
        MOV      R8,R1
        MOV      R9,R2
        MOV      R10,R3
        LDR      R6,[SP, #+40]
//  969   short dx,dy;      /* 定义X Y轴上增加的变量值 */
//  970   short temp;       /* 起点 终点大小比较 交换数据时的中间变量 */
//  971   
//  972   if( x0 > x1 )     /* X轴上起点大于终点 交换数据 */
        MOV      R0,R9
        MOVS     R1,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawLine_0
//  973   {
//  974     temp = x1;
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R0,[SP, #+0]
//  975     x1 = x0;
        MOV      R9,R7
//  976     x0 = temp;   
        LDRSH    R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R7,R0
//  977   }
//  978   if( y0 > y1 )     /* Y轴上起点大于终点 交换数据 */
??LCD_DrawLine_0:
        MOV      R0,R10
        MOV      R1,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawLine_1
//  979   {
//  980     temp = y1;
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R0,[SP, #+0]
//  981     y1 = y0;
        MOV      R10,R8
//  982     y0 = temp;   
        LDRSH    R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R8,R0
//  983   }
//  984   
//  985   dx = x1-x0;       /* X轴方向上的增量 */
??LCD_DrawLine_1:
        SUBS     R4,R9,R7
//  986   dy = y1-y0;       /* Y轴方向上的增量 */
        SUBS     R5,R10,R8
//  987   
//  988   if( dx == 0 )     /* X轴上没有增量 画垂直线 */ 
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??LCD_DrawLine_2
//  989   {
//  990     do
//  991     { 
//  992       LCD_SetPoint(x0, y0, color);   /* 逐点显示 描垂直线 */
??LCD_DrawLine_3:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
//  993       y0++;
        ADDS     R8,R8,#+1
//  994     }
//  995     while( y1 >= y0 ); 
        MOV      R0,R10
        MOV      R1,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawLine_3
//  996       return; 
        B.N      ??LCD_DrawLine_4
//  997   }
//  998   if( dy == 0 )     /* Y轴上没有增量 画水平直线 */ 
??LCD_DrawLine_2:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??LCD_DrawLine_5
//  999   {
// 1000     do
// 1001     {
// 1002       LCD_SetPoint(x0, y0, color);   /* 逐点显示 描水平线 */
??LCD_DrawLine_6:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1003       x0++;
        ADDS     R7,R7,#+1
// 1004     }
// 1005     while( x1 >= x0 ); 
        MOV      R0,R9
        MOVS     R1,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawLine_6
// 1006       return;
        B.N      ??LCD_DrawLine_4
// 1007   }
// 1008   /* 布兰森汉姆(Bresenham)算法画线 */
// 1009   if( dx > dy )                         /* 靠近X轴 */
??LCD_DrawLine_5:
        MOVS     R0,R5
        MOVS     R1,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??LCD_DrawLine_7
// 1010   {
// 1011     temp = 2 * dy - dx;               /* 计算下个点的位置 */         
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        RSBS     R11,R4,R5, LSL #+1
// 1012     while( x0 != x1 )
??LCD_DrawLine_8:
        MOVS     R0,R7
        MOV      R1,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BEQ.N    ??LCD_DrawLine_9
// 1013     {
// 1014       LCD_SetPoint(x0,y0,color);    /* 画起点 */ 
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1015       x0++;                         /* X轴上加1 */
        ADDS     R7,R7,#+1
// 1016       if( temp > 0 )                /* 判断下下个点的位置 */
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R11,#+1
        BLT.N    ??LCD_DrawLine_10
// 1017       {
// 1018         y0++;                     /* 为右上相邻点，即（x0+1,y0+1） */ 
        ADDS     R8,R8,#+1
// 1019         temp += 2 * dy - 2 * dx; 
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+1
        SXTAH    R11,R0,R11
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R11,R11,R4, LSL #+1
        B.N      ??LCD_DrawLine_8
// 1020       }
// 1021       else         
// 1022       {
// 1023         temp += 2 * dy;           /* 判断下下个点的位置 */  
??LCD_DrawLine_10:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+1
        SXTAH    R11,R0,R11
        B.N      ??LCD_DrawLine_8
// 1024       }       
// 1025     }
// 1026     LCD_SetPoint(x0,y0,color);
??LCD_DrawLine_9:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
        B.N      ??LCD_DrawLine_11
// 1027     }  
// 1028     else
// 1029     {
// 1030       temp = 2 * dx - dy;                      /* 靠近Y轴 */       
??LCD_DrawLine_7:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        RSBS     R11,R5,R4, LSL #+1
// 1031       while( y0 != y1 )
??LCD_DrawLine_12:
        MOV      R0,R8
        MOV      R1,R10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BEQ.N    ??LCD_DrawLine_13
// 1032       {
// 1033         LCD_SetPoint(x0,y0,color);     
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1034         y0++;                 
        ADDS     R8,R8,#+1
// 1035         if( temp > 0 )           
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R11,#+1
        BLT.N    ??LCD_DrawLine_14
// 1036         {
// 1037           x0++;               
        ADDS     R7,R7,#+1
// 1038           temp+=2*dy-2*dx; 
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+1
        SXTAH    R11,R0,R11
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R11,R11,R4, LSL #+1
        B.N      ??LCD_DrawLine_12
// 1039         }
// 1040         else
// 1041         {
// 1042           temp += 2 * dy;
??LCD_DrawLine_14:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+1
        SXTAH    R11,R0,R11
        B.N      ??LCD_DrawLine_12
// 1043         }
// 1044      } 
// 1045   LCD_SetPoint(x0,y0,color);
??LCD_DrawLine_13:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1046   }
// 1047 } 
??LCD_DrawLine_11:
??LCD_DrawLine_4:
        POP      {R0,R4-R11,PC}   ;; return
// 1048 
// 1049 
// 1050 /*
// 1051  * LCD_DrawSquare
// 1052  * 在指定坐标显示正方形
// 1053  * 
// 1054  * 参数： 
// 1055  *    x0--正方形的起始横坐标 
// 1056  *    y0--正方形的起始纵坐标
// 1057  *    side_length--正方形的边长
// 1058  *    Line_color--正方形边的颜色
// 1059  *    Fill_color--正方形整体填充的颜色
// 1060  *
// 1061  * 输出:
// 1062  *    无
// 1063  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1064 void LCD_DrawSquare(uint16 x0,uint16 y0,uint16 side_length,uint16 Line_color,uint16 Fill_color)
// 1065 {
_Z14LCD_DrawSquarettttt:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
// 1066   uint16 i,j;
// 1067   if(side_length > MAX_X || side_length > MAX_Y)
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVW     R0,#+801
        CMP      R7,R0
        BGE.N    ??LCD_DrawSquare_0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVW     R0,#+481
        CMP      R7,R0
        BLT.N    ??LCD_DrawSquare_1
// 1068     return;
??LCD_DrawSquare_0:
        B.N      ??LCD_DrawSquare_2
// 1069   
// 1070   if(x0+side_length > MAX_X)
??LCD_DrawSquare_1:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTAH    R0,R7,R5
        MOVW     R1,#+801
        CMP      R0,R1
        BGE.N    ??LCD_DrawSquare_2
// 1071     return;
// 1072   else
// 1073     LCD_DrawLine(x0,y0,x0+side_length,y0,Line_color);
??LCD_DrawSquare_3:
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R7,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1074   
// 1075   if(y0+side_length > MAX_Y)
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTAH    R0,R7,R6
        MOVW     R1,#+481
        CMP      R0,R1
        BGE.N    ??LCD_DrawSquare_2
// 1076     return;
// 1077   else
// 1078     LCD_DrawLine(x0,y0,x0,y0+side_length,Line_color);
??LCD_DrawSquare_4:
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R7,R6
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1079   
// 1080   LCD_DrawLine(x0+side_length,y0,x0+side_length,y0+side_length,Line_color);
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R7,R6
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R7,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R7,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1081   LCD_DrawLine(x0,y0+side_length,x0+side_length,y0+side_length,Line_color);
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R7,R6
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R7,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R7,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1082   
// 1083   for(i=0;i<side_length-1;i++)
        MOVS     R10,#+0
??LCD_DrawSquare_5:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     R0,R7,#+1
        CMP      R10,R0
        BGE.N    ??LCD_DrawSquare_6
// 1084   {
// 1085     for(j=0;j<side_length-1;j++)
        MOVS     R0,#+0
        MOV      R9,R0
??LCD_DrawSquare_7:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     R0,R7,#+1
        CMP      R9,R0
        BGE.N    ??LCD_DrawSquare_8
// 1086     {
// 1087       LCD_SetPoint(x0+1+i,y0+1+j,Fill_color);
        MOVS     R2,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R9,R6
        ADDS     R1,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R10,R5
        ADDS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1088     }
        ADDS     R9,R9,#+1
        B.N      ??LCD_DrawSquare_7
// 1089   }
??LCD_DrawSquare_8:
        ADDS     R10,R10,#+1
        B.N      ??LCD_DrawSquare_5
// 1090 }
??LCD_DrawSquare_6:
??LCD_DrawSquare_2:
        POP      {R0,R1,R4-R10,PC}  ;; return
// 1091 
// 1092 /*
// 1093  * LCD_DrawRectangle
// 1094  * 在指定坐标显示矩形
// 1095  * 
// 1096  * 参数： 
// 1097  *    x0--长方形的起始横坐标 
// 1098  *    y0--长方形的起始纵坐标
// 1099  *    side_xlength--长
// 1100  *    side_ylength--宽
// 1101  *    Line_color--长方形边的颜色
// 1102  *    Fill_color--长方形整体填充的颜色
// 1103  *
// 1104  * 输出:
// 1105  *    无
// 1106  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1107 void LCD_DrawRectangle(uint16 x0,uint16 y0,uint16 side_xlength,uint16 side_ylength,uint16 Line_color,uint16 Fill_color)
// 1108 {
_Z17LCD_DrawRectangletttttt:
        PUSH     {R3-R11,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+44]
// 1109   uint16 i,j;
// 1110   if(side_xlength > MAX_X || side_ylength > MAX_Y)
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        MOVW     R0,#+801
        CMP      R8,R0
        BGE.N    ??LCD_DrawRectangle_0
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOVW     R0,#+481
        CMP      R9,R0
        BLT.N    ??LCD_DrawRectangle_1
// 1111     return;
??LCD_DrawRectangle_0:
        B.N      ??LCD_DrawRectangle_2
// 1112   
// 1113   if(x0+side_xlength > MAX_X)
??LCD_DrawRectangle_1:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTAH    R0,R8,R6
        MOVW     R1,#+801
        CMP      R0,R1
        BGE.N    ??LCD_DrawRectangle_2
// 1114     return;
// 1115   else
// 1116     LCD_DrawLine(x0,y0,x0+side_xlength,y0,Line_color);
??LCD_DrawRectangle_3:
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R8,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1117   
// 1118   if(y0+side_ylength > MAX_Y)
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTAH    R0,R9,R7
        MOVW     R1,#+481
        CMP      R0,R1
        BGE.N    ??LCD_DrawRectangle_2
// 1119     return;
// 1120   else
// 1121     LCD_DrawLine(x0,y0,x0,y0+side_ylength,Line_color);
??LCD_DrawRectangle_4:
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R9,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1122   
// 1123   LCD_DrawLine(x0+side_xlength,y0,x0+side_xlength,y0+side_ylength,Line_color);
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R9,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R8,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R8,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1124   LCD_DrawLine(x0,y0+side_ylength,x0+side_xlength,y0+side_ylength,Line_color);
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        ADDS     R3,R9,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R8,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R9,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_DrawLinettttt
// 1125   
// 1126   for(i=0;i<side_xlength-1;i++)
        MOVS     R11,#+0
??LCD_DrawRectangle_5:
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R8,#+1
        CMP      R11,R0
        BGE.N    ??LCD_DrawRectangle_6
// 1127   {
// 1128     for(j=0;j<side_ylength-1;j++)
        MOVS     R0,#+0
        MOV      R10,R0
??LCD_DrawRectangle_7:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        SUBS     R0,R9,#+1
        CMP      R10,R0
        BGE.N    ??LCD_DrawRectangle_8
// 1129     {
// 1130       LCD_SetPoint(x0+1+i,y0+1+j,Fill_color);
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R10,R7
        ADDS     R1,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R11,R6
        ADDS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1131     }
        ADDS     R10,R10,#+1
        B.N      ??LCD_DrawRectangle_7
// 1132   }
??LCD_DrawRectangle_8:
        ADDS     R11,R11,#+1
        B.N      ??LCD_DrawRectangle_5
// 1133 }
??LCD_DrawRectangle_6:
??LCD_DrawRectangle_2:
        POP      {R0,R4-R11,PC}   ;; return
// 1134 
// 1135 /*
// 1136  * LCD_GRAMFillRec
// 1137  * 填充指定颜色的矩形到LCD_GRAM
// 1138  * 
// 1139  * 参数： 
// 1140  *    x0--X轴起始坐标
// 1141  *    y0--Y轴起始坐标
// 1142  *    x1--X轴结束坐标
// 1143  *    y1--Y轴结束坐标
// 1144  *    Color--16位RGB颜色值
// 1145  *
// 1146  * 输出:
// 1147  *    无
// 1148  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1149 void LCD_GRAMFillRec(uint16 x0,uint16 y0,uint16 x1,uint16 y1,uint16 Color)
// 1150 {          
_Z15LCD_GRAMFillRecttttt:
        PUSH     {R4-R8,LR}
        LDR      R5,[SP, #+24]
// 1151   uint16 i,j;   
// 1152   for(i=y0;i<=y1;i++)
        MOVS     R7,R1
??LCD_GRAMFillRec_0:
        MOVS     R4,R3
        MOV      R12,R7
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R12,R12          ;; ZeroExt  R12,R12,#+16,#+16
        CMP      R4,R12
        BCC.N    ??LCD_GRAMFillRec_1
// 1153   {
// 1154     for(j=x0; j<x1; j++)
        MOVS     R6,R0
??LCD_GRAMFillRec_2:
        MOVS     R4,R6
        MOV      R12,R2
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R12,R12          ;; ZeroExt  R12,R12,#+16,#+16
        CMP      R4,R12
        BCS.N    ??LCD_GRAMFillRec_3
// 1155     {
// 1156       LCD_GRAM[MAX_X*MAX_Y - (j-1)*MAX_Y - (i)] = Color;
        LDR.W    R4,??DataTable20_3
        LDR      R12,[R4, #+0]
        LDR.W    LR,??DataTable20_2  ;; 0x5dc00
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        SUBS     R8,R6,#+1
        MOV      R4,#+480
        MLS      LR,R4,R8,LR
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     LR,LR,R7
        STRH     R5,[R12, LR, LSL #+1]
// 1157     }    
        ADDS     R6,R6,#+1
        B.N      ??LCD_GRAMFillRec_2
// 1158   }
??LCD_GRAMFillRec_3:
        ADDS     R7,R7,#+1
        B.N      ??LCD_GRAMFillRec_0
// 1159 } 
??LCD_GRAMFillRec_1:
        POP      {R4-R8,PC}       ;; return
// 1160 
// 1161 /*
// 1162  * LCD_GRAMDrawHLine
// 1163  * 填充指定颜色的横线到LCD_GRAM
// 1164  * 
// 1165  * 参数： 
// 1166  *    x0--X轴起始坐标
// 1167  *    y0--Y轴起始坐标
// 1168  *    len--横线长度
// 1169  *    Color--16位RGB颜色值
// 1170  *
// 1171  * 输出:
// 1172  *    无
// 1173  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1174 void LCD_GRAMDrawHLine(uint16 x0,uint16 y0,uint16 len,uint16 Color)
// 1175 {
_Z17LCD_GRAMDrawHLinetttt:
        PUSH     {R4-R7}
// 1176   uint16 i;
// 1177   for(i=0; i<len; i++)
        MOVS     R5,#+0
??LCD_GRAMDrawHLine_0:
        MOVS     R4,R5
        MOVS     R6,R2
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R4,R6
        BCS.N    ??LCD_GRAMDrawHLine_1
// 1178   {
// 1179     LCD_GRAM[MAX_X*MAX_Y - (x0+i-1)*MAX_Y - (y0)] = Color;
        LDR.N    R4,??DataTable20_3
        LDR      R6,[R4, #+0]
        LDR.N    R7,??DataTable20_2  ;; 0x5dc00
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTAH    R12,R5,R0
        SUBS     R12,R12,#+1
        MOV      R4,#+480
        MLS      R7,R4,R12,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R7,R7,R1
        STRH     R3,[R6, R7, LSL #+1]
// 1180   }
        ADDS     R5,R5,#+1
        B.N      ??LCD_GRAMDrawHLine_0
// 1181 }
??LCD_GRAMDrawHLine_1:
        POP      {R4-R7}
        BX       LR               ;; return
// 1182 
// 1183 /*
// 1184  * LCD_GRAMDrawHLine
// 1185  * 显示一幅指定大小的U8灰度图像
// 1186  * 
// 1187  * 参数： 
// 1188  *    *Color--8位灰度图像数组
// 1189  *    w--图像宽
// 1190  *    h--图像高
// 1191  *
// 1192  * 输出:
// 1193  *    无
// 1194  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1195 void LCD_DrawU8Gray(uint8 *Color, uint16 w, uint16 h)
// 1196 {
_Z14LCD_DrawU8GrayPhtt:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
// 1197   uint16 i=0, j=0;
        MOVS     R0,#+0
        MOVS     R6,#+0
// 1198  
// 1199   for(i=0; i<w; i++)
        MOVS     R7,#+0
??LCD_DrawU8Gray_0:
        MOVS     R0,R7
        MOV      R1,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawU8Gray_1
// 1200   {  
// 1201     LCD_SetCursor(w-i-1, 0); 
        MOVS     R1,#+0
        SUBS     R0,R8,R7
        SUBS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_SetCursorEtt
// 1202     LCD_WriteIndex(LCD_INFO.Write_GRAM);
        LDR.N    R0,??DataTable20_1
        LDRH     R0,[R0, #+2]
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX14LCD_WriteIndexEt
// 1203     for(j=0; j<h; j++)
        MOVS     R0,#+0
        MOVS     R6,R0
??LCD_DrawU8Gray_2:
        MOVS     R0,R6
        MOVS     R1,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??LCD_DrawU8Gray_3
// 1204     {
// 1205       LCD_WriteData(LCD_U8GRAY2RGB(Color[j*w+i]));
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MLA      R0,R8,R6,R7
        LDRB     R0,[R4, R0]
        BL       _Z14LCD_U8GRAY2RGBh
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _ZN26_INTERNAL_9_DEV_LCD_c_PreX13LCD_WriteDataEt
// 1206     }   
        ADDS     R6,R6,#+1
        B.N      ??LCD_DrawU8Gray_2
// 1207   }
??LCD_DrawU8Gray_3:
        ADDS     R7,R7,#+1
        B.N      ??LCD_DrawU8Gray_0
// 1208 }
??LCD_DrawU8Gray_1:
        POP      {R4-R8,PC}       ;; return
// 1209 
// 1210 /*
// 1211  * LCD_ShowChar
// 1212  * 在指定坐标显示字符
// 1213  * 
// 1214  * 参数： 
// 1215  *    Xpos--X轴坐标
// 1216  *    Ypos--Y轴坐标
// 1217  *    ASCI--ASCI码
// 1218  *    charColor--字符字体颜色
// 1219  *    bkColor--字符背景颜色
// 1220  *
// 1221  * 输出:
// 1222  *    无
// 1223  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1224 void LCD_ShowChar( uint16 Xpos, uint16 Ypos, uint8 ASCI, uint16 charColor, uint16 bkColor )
// 1225 {
_Z12LCD_ShowChartthtt:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
// 1226   uint16 i, j;
// 1227   uint8 tmp_char;
// 1228   for( i=0; i<16; i++ )
        MOVS     R11,#+0
??LCD_ShowChar_0:
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        CMP      R11,#+16
        BGE.N    ??LCD_ShowChar_1
// 1229   {
// 1230     tmp_char = asc2_1608[ASCI-32][i];
        LDR.N    R0,??DataTable20_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+4
        ADD      R0,R0,R1
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        ADD      R0,R0,R11
        SUBS     R0,R0,#+512
        LDRB     R0,[R0, #+0]
        MOV      R10,R0
// 1231     for( j=0; j<8; j++ )
        MOVS     R0,#+0
        MOV      R9,R0
??LCD_ShowChar_2:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+8
        BGE.N    ??LCD_ShowChar_3
// 1232     {
// 1233       if( (tmp_char >> j) & 0x01 == 0x01 )
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R0,R10
        ASRS     R0,R0,R9
        LSLS     R0,R0,#+31
        BPL.N    ??LCD_ShowChar_4
// 1234       {
// 1235         LCD_SetPoint( Xpos + j, Ypos + i, charColor );  /* 字符颜色 */
        MOV      R2,R8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R11,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R9,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
        B.N      ??LCD_ShowChar_5
// 1236       }
// 1237       else
// 1238       {
// 1239         LCD_SetPoint( Xpos + j, Ypos + i, bkColor );  /* 背景颜色 */
??LCD_ShowChar_4:
        MOVS     R2,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R1,R11,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R9,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_SetPointttt
// 1240       }
// 1241     }
??LCD_ShowChar_5:
        ADDS     R9,R9,#+1
        B.N      ??LCD_ShowChar_2
// 1242   }
??LCD_ShowChar_3:
        ADDS     R11,R11,#+1
        B.N      ??LCD_ShowChar_0
// 1243 }
??LCD_ShowChar_1:
        POP      {R0,R4-R11,PC}   ;; return
// 1244 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1245 uint32 mypow(uint8 m,uint8 n)
// 1246 {
_Z5mypowhh:
        MOVS     R3,R0
// 1247 	uint32 result=1;	 
        MOVS     R0,#+1
// 1248 	while(n--)result*=m;    
??mypow_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??mypow_1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MULS     R0,R3,R0
        B.N      ??mypow_0
// 1249 	return result;
??mypow_1:
        BX       LR               ;; return
// 1250 }
// 1251 
// 1252 /*
// 1253  * LCD_ShowNum
// 1254  * 在指定坐标显示数字
// 1255  * 
// 1256  * 参数： 
// 1257  *    Xpos--X轴坐标
// 1258  *    Ypos--Y轴坐标
// 1259  *    num--数字
// 1260  *    len--数字长度
// 1261  *    charColor--字符字体颜色
// 1262  *    bkColor--字符背景颜色
// 1263  *
// 1264  * 输出:
// 1265  *    无
// 1266  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1267 void LCD_ShowNum(uint16 Xpos, uint16 Ypos, uint16 num, uint8 len, uint16 charColor, uint16 bkColor )
// 1268 {         	
_Z11LCD_ShowNumttthtt:
        PUSH     {R3-R11,LR}
        MOVS     R6,R0
        MOV      R11,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+44]
// 1269   uint8 t,temp;						   
// 1270   for(t=0;t<len;t++)
        MOVS     R10,#+0
??LCD_ShowNum_0:
        MOV      R0,R10
        MOV      R1,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??LCD_ShowNum_1
// 1271   {
// 1272     temp=(num/mypow(10,len-t-1))%10;
        SUBS     R0,R8,R10
        SUBS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+10
        BL       _Z5mypowhh
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UDIV     R0,R7,R0
        MOVS     R1,#+10
        UDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOV      R9,R0
// 1273     LCD_ShowChar(Xpos+(8)*t,Ypos,temp+'0',charColor,bkColor); 
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADDS     R2,R9,#+48
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R11
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R0,R10,#+3
        UXTAH    R0,R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_ShowChartthtt
// 1274     CurX = CurX + 8;  
        LDR.N    R0,??DataTable20_5
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+8
        LDR.N    R1,??DataTable20_5
        STRH     R0,[R1, #+0]
// 1275   }
        ADDS     R10,R10,#+1
        B.N      ??LCD_ShowNum_0
// 1276 } 
??LCD_ShowNum_1:
        POP      {R0,R4-R11,PC}   ;; return
// 1277 
// 1278 /*
// 1279  * LCD_ShowString
// 1280  * 在指定坐标显示字符串
// 1281  * 
// 1282  * 参数： 
// 1283  *    Xpos--X轴坐标
// 1284  *    Ypos--Y轴坐标
// 1285  *    *str--字符串
// 1286  *    strColor--字符串字体颜色
// 1287  *    bkColor--字符背景颜色
// 1288  *
// 1289  * 输出:
// 1290  *    无
// 1291  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1292 void LCD_ShowString(uint16 Xpos, uint16 Ypos, uint8 *str,uint16 strColor, uint16 bkColor)
// 1293 {
_Z14LCD_ShowStringttPhtt:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOV      R9,R2
        MOVS     R7,R3
        LDR      R4,[SP, #+32]
// 1294   uint8 TempChar;
// 1295   do
// 1296   {
// 1297     TempChar = *str++;  
??LCD_ShowString_0:
        LDRB     R0,[R9, #+0]
        MOV      R8,R0
        ADDS     R9,R9,#+1
// 1298     LCD_ShowChar( Xpos, Ypos, TempChar, strColor, bkColor );    
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       _Z12LCD_ShowChartthtt
// 1299     if( Xpos <= MAX_X - 8 )
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R0,#+793
        CMP      R5,R0
        BGE.N    ??LCD_ShowString_1
// 1300     {
// 1301       Xpos += 8;
        ADDS     R5,R5,#+8
        B.N      ??LCD_ShowString_2
// 1302     } 
// 1303     else if ( Ypos <= MAX_Y - 16 )
??LCD_ShowString_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVW     R0,#+465
        CMP      R6,R0
        BGE.N    ??LCD_ShowString_3
// 1304     {
// 1305       Xpos = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 1306       Ypos += 16;
        ADDS     R6,R6,#+16
        B.N      ??LCD_ShowString_2
// 1307     }   
// 1308     else
// 1309     {
// 1310       Xpos = 0;
??LCD_ShowString_3:
        MOVS     R0,#+0
        MOVS     R5,R0
// 1311       Ypos = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
// 1312     } 
// 1313     CurX = CurX + 8;  
??LCD_ShowString_2:
        LDR.N    R0,??DataTable20_5
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+8
        LDR.N    R1,??DataTable20_5
        STRH     R0,[R1, #+0]
// 1314   }
// 1315   while ( *str != 0 );
        LDRB     R0,[R9, #+0]
        CMP      R0,#+0
        BNE.N    ??LCD_ShowString_0
// 1316 }
        POP      {R0,R4-R9,PC}    ;; return
// 1317 
// 1318 /*
// 1319  * LCD_PrintStringLine
// 1320  * 另起一行显示字符串
// 1321  * 
// 1322  * 参数： 
// 1323  *    *str--字符串
// 1324  *    strColor--字符串字体颜色
// 1325  *    bkColor--字符背景颜色
// 1326  *
// 1327  * 输出:
// 1328  *    无
// 1329  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1330 void LCD_PrintStringLine(uint8 *str,uint16 strColor, uint16 bkColor)
// 1331 {
_Z19LCD_PrintStringLinePhtt:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1332   CurX = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable20_5
        STRH     R0,[R1, #+0]
// 1333   LCD_ShowString(0, CurY*18, str, strColor, bkColor);
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R4
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+18
        SMULBB   R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       _Z14LCD_ShowStringttPhtt
// 1334   CurY++;
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable20_6
        STRH     R0,[R1, #+0]
// 1335   if((CurY+1)*18>MAX_Y)
        LDR.N    R0,??DataTable20_6
        LDRH     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        MOVS     R0,#+18
        MULS     R1,R0,R1
        MOVW     R0,#+481
        CMP      R1,R0
        BLT.N    ??LCD_PrintStringLine_0
// 1336   {
// 1337     CurY=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable20_6
        STRH     R0,[R1, #+0]
// 1338   }
// 1339 }
??LCD_PrintStringLine_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
// 1340 
// 1341 /*
// 1342  * LCD_PrintString
// 1343  * 接着当前行显示字符串
// 1344  * 
// 1345  * 参数： 
// 1346  *    *str--字符串
// 1347  *    strColor--字符串字体颜色
// 1348  *    bkColor--字符背景颜色
// 1349  *
// 1350  * 输出:
// 1351  *    无
// 1352  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1353 void LCD_PrintString(uint8 *str,uint16 Color, uint16 bkColor)
// 1354 {
_Z15LCD_PrintStringPhtt:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1355   LCD_ShowString(CurX, (CurY-1)*18, str, Color, bkColor);
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R4
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVS     R1,#+18
        SMULBB   R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable20_5
        LDRH     R0,[R0, #+0]
        BL       _Z14LCD_ShowStringttPhtt
// 1356 }
        POP      {R0,R1,R4-R6,PC}  ;; return
// 1357 
// 1358 /*
// 1359  * LCD_PrintNumLine
// 1360  * 另起一行显示数字
// 1361  * 
// 1362  * 参数： 
// 1363  *    num--数字
// 1364  *    len--数字长度
// 1365  *    numColor--字符字体颜色
// 1366  *    bkColor--字符背景颜色
// 1367  *
// 1368  * 输出:
// 1369  *    无
// 1370  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1371 void LCD_PrintNumLine(uint16 num,uint8 len,uint16 numColor, uint16 bkColor)
// 1372 {
_Z16LCD_PrintNumLinethtt:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R6,R3
// 1373   CurX = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable20_5
        STRH     R0,[R1, #+0]
// 1374   LCD_ShowNum(0, CurY*18, num, len, numColor, bkColor);
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+18
        SMULBB   R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       _Z11LCD_ShowNumttthtt
// 1375   CurY++;
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable20_6
        STRH     R0,[R1, #+0]
// 1376   if((CurY+1)*18>MAX_Y)
        LDR.N    R0,??DataTable20_6
        LDRH     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        MOVS     R0,#+18
        MULS     R1,R0,R1
        MOVW     R0,#+481
        CMP      R1,R0
        BLT.N    ??LCD_PrintNumLine_0
// 1377   {
// 1378     CurY=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable20_6
        STRH     R0,[R1, #+0]
// 1379   }
// 1380 }
??LCD_PrintNumLine_0:
        POP      {R0-R2,R4-R7,PC}  ;; return
// 1381 
// 1382 /*
// 1383  * LCD_PrintNum
// 1384  * 接着当前行显示数字
// 1385  * 
// 1386  * 参数： 
// 1387  *    num--数字
// 1388  *    len--数字长度
// 1389  *    numColor--字符字体颜色
// 1390  *    bkColor--字符背景颜色
// 1391  *
// 1392  * 输出:
// 1393  *    无
// 1394  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1395 void LCD_PrintNum(uint16 num,uint8 len,uint16 Color, uint16 bkColor)
// 1396 {
_Z12LCD_PrintNumthtt:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 1397   LCD_ShowNum(CurX, (CurY-1)*18, num,len, Color, bkColor);
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R0,??DataTable20_6
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVS     R1,#+18
        SMULBB   R1,R0,R1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable20_5
        LDRH     R0,[R0, #+0]
        BL       _Z11LCD_ShowNumttthtt
// 1398 }
        POP      {R0-R2,R4-R7,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     dID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     LCD_INFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0x5dc00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     LCD_GRAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     asc2_1608

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     CurX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     CurY

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN26_INTERNAL_9_DEV_LCD_c_PreX16LCD_FLEXBUS_InitEt
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN26_INTERNAL_9_DEV_LCD_c_PreX16LCD_FLEXBUS_InitEt))
        DC32 0x8005a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN26_INTERNAL_9_DEV_LCD_c_PreX10LCD_IO_CfgEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN26_INTERNAL_9_DEV_LCD_c_PreX10LCD_IO_CfgEv))
        DC32 0x80068400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8LCD_Initv
        SECTION_LINK _Z8LCD_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8LCD_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1399 
// 1400 
// 
//    24 bytes in section .ARM.exidx
//    28 bytes in section .bss
// 1 520 bytes in section .rodata
// 7 524 bytes in section .text
// 
// 7 524 bytes of CODE  memory
// 1 544 bytes of CONST memory
//    28 bytes of DATA  memory
//
//Errors: none
//Warnings: none
