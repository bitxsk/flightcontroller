///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:32:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FTM.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWEDEE.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FTM.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC FTM0_IRQHandler
        PUBLIC FTM1_IRQHandler
        PUBLIC FTM2_IRQHandler
        PUBLIC FTM3_IRQHandler
        PUBLIC FTM_Deinit
        PUBLIC FTM_DisableChn
        PUBLIC FTM_DisableIrq
        PUBLIC FTM_EnableIrq
        PUBLIC FTM_IC_Enable
        PUBLIC FTM_ISR
        PUBLIC FTM_Init
        PUBLIC FTM_PWM_ChangeDuty
        PUBLIC FTM_PWM_Enable
        PUBLIC FTM_QD_Disable
        PUBLIC FTM_QD_Enable

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FTM.c
//    1 /**
//    2  * @file FTM.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTM底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
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
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN26_INTERNAL_5_FTM_c_FTM_Init16__NVIC_EnableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable9  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN26_INTERNAL_5_FTM_c_FTM_Init17__NVIC_DisableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable9_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "FTM.h"
//   24 extern "C"{
//   25 //用户自定义中断服务函数数组
//   26 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   27 FTM_ISR_CALLBACK FTM_ISR[3];
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 FTM_ISR_CALLBACK FTM_ISR[4];
FTM_ISR:
        DS8 16
//   30 #endif
//   31 
//   32 static uint8 FTM_PWM_Init(FTM_InitTypeDef);
//   33 static uint8 FTM_IC_Init(FTM_InitTypeDef);
//   34 static uint8 FTM_QD_Init(FTM_InitTypeDef);
//   35 static uint8 FTM_DEC_Init(FTM_InitTypeDef);
//   36 static uint8 FTM_PinInit(FTM_Type *, FtmChnEnum_Type, PortPinsEnum_Type);
//   37 static uint8 FTM_PinDeinit(FTM_Type *, FtmChnEnum_Type);
//   38 
//   39 
//   40 /*
//   41  * FTM_Init
//   42  * FTM模块通用初始化，可初始化为PWM、输入捕获、正交解码、双边捕获模式
//   43  *
//   44  * 参数:
//   45  *    ftm_init_structure--FTM初始化结构体，
//   46  *                        具体定义见FTM_InitTypeDef
//   47  *
//   48  * 输出:
//   49  *    0--配置错误
//   50  *    1--配置成功
//   51  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 uint8 FTM_Init(FTM_InitTypeDef ftm_init_structure)
//   53 {
FTM_Init:
        PUSH     {R0-R3}
        PUSH     {R1-R5,LR}
//   54   uint8 result, i;
//   55   //参数检查
//   56   ASSERT( ftm_init_structure.FTM_Mode & 
//   57          (FTM_MODE_PWM|FTM_MODE_IC|FTM_MODE_QD|FTM_MODE_DEC));  //判断模式选择
        LDRB     R0,[SP, #+28]
        TST      R0,#0xF
        BNE.N    ??FTM_Init_0
        MOVS     R1,#+57
        LDR.W    R0,??DataTable9_2
        BL       assert_failed
//   58   
//   59   // 使能FTM时钟模块
//   60   if(ftm_init_structure.FTM_Ftmx == FTM0)
??FTM_Init_0:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable9_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??FTM_Init_1
//   61   {
//   62     i=0; 
        MOVS     R5,#+0
//   63     SIM->SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable9_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable9_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??FTM_Init_2
//   64   }
//   65   else if(ftm_init_structure.FTM_Ftmx == FTM1)
??FTM_Init_1:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable9_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??FTM_Init_3
//   66   {
//   67     i=1;
        MOVS     R5,#+1
//   68     SIM->SCGC6 |= SIM_SCGC6_FTM1_MASK;
        LDR.W    R0,??DataTable9_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable9_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??FTM_Init_2
//   69   }
//   70   else if(ftm_init_structure.FTM_Ftmx == FTM2)
??FTM_Init_3:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable9_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??FTM_Init_4
//   71   {
//   72     i=2;
        MOVS     R5,#+2
//   73     SIM->SCGC3 |= SIM_SCGC3_FTM2_MASK;
        LDR.W    R0,??DataTable9_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable9_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??FTM_Init_2
//   74   }
//   75 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   76   else if(ftm_init_structure.FTM_Ftmx == FTM3)
??FTM_Init_4:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable9_8  ;; 0x400b9000
        CMP      R0,R1
        BNE.N    ??FTM_Init_5
//   77   {
//   78     i=3;
        MOVS     R5,#+3
//   79     SIM->SCGC3 |= SIM_SCGC3_FTM3_MASK;
        LDR.W    R0,??DataTable9_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable9_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??FTM_Init_2
//   80   }
//   81 #endif
//   82   else
//   83   {
//   84     return 0;
??FTM_Init_5:
        MOVS     R0,#+0
        B.N      ??FTM_Init_6
//   85   }
//   86   
//   87   if(ftm_init_structure.FTM_Mode & FTM_MODE_PWM)
??FTM_Init_2:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+31
        BPL.N    ??FTM_Init_7
//   88   {
//   89     result = FTM_PWM_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_PWM_InitE15FTM_InitTypeDef
        MOVS     R4,R0
        B.N      ??FTM_Init_8
//   90   }
//   91   else if(ftm_init_structure.FTM_Mode & FTM_MODE_IC)
??FTM_Init_7:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+30
        BPL.N    ??FTM_Init_9
//   92   {
//   93     result = FTM_IC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_IC_InitE15FTM_InitTypeDef
        MOVS     R4,R0
        B.N      ??FTM_Init_8
//   94   }
//   95   else if(ftm_init_structure.FTM_Mode & FTM_MODE_QD)
??FTM_Init_9:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+29
        BPL.N    ??FTM_Init_10
//   96   {
//   97     result = FTM_QD_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_QD_InitE15FTM_InitTypeDef
        MOVS     R4,R0
        B.N      ??FTM_Init_8
//   98   }
//   99   else if(ftm_init_structure.FTM_Mode & FTM_MODE_DEC)
??FTM_Init_10:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+28
        BPL.N    ??FTM_Init_8
//  100   {
//  101     result = FTM_DEC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_DEC_InitE15FTM_InitTypeDef
        MOVS     R4,R0
//  102   }
//  103   
//  104   if(result == 1)
??FTM_Init_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??FTM_Init_11
//  105   {    
//  106     //判断是否开启溢出中断
//  107     if(ftm_init_structure.FTM_Isr!=NULL)
        LDR      R0,[SP, #+48]
        CMP      R0,#+0
        BEQ.N    ??FTM_Init_11
//  108     {      
//  109       FTM_ISR[i] = ftm_init_structure.FTM_Isr;
        LDR      R0,[SP, #+48]
        LDR.W    R1,??DataTable9_9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//  110       if(ftm_init_structure.FTM_ToiEnable == TRUE)
        LDRB     R0,[SP, #+44]
        CMP      R0,#+1
        BNE.N    ??FTM_Init_11
//  111       {
//  112         ftm_init_structure.FTM_Ftmx->SC |= FTM_SC_TOIE_MASK;
        LDR      R0,[SP, #+24]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R1,[SP, #+24]
        STR      R0,[R1, #+0]
//  113       }
//  114     }
//  115   }
//  116   
//  117   return result;
??FTM_Init_11:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??FTM_Init_6:
        POP      {R1-R5}
        LDR      PC,[SP], #+20    ;; return
//  118 }
//  119 
//  120 /*
//  121  * FTM_Deinit
//  122  * FTM模块通用反初始化
//  123  *
//  124  * 参数:
//  125  *    ftm_init_structure--FTM初始化结构体，
//  126  *                        具体定义见FTM_InitTypeDef
//  127  *
//  128  * 输出:
//  129  *    0--配置错误
//  130  *    1--配置成功
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 uint8 FTM_Deinit(FTM_InitTypeDef ftm_init_structure)
//  133 {
FTM_Deinit:
        PUSH     {R0-R3}
        PUSH     {R5-R7,LR}
//  134   if(ftm_init_structure.FTM_Ftmx == FTM0)
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable9_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??FTM_Deinit_0
//  135   {
//  136     SIM->SCGC6 &= ~SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable9_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable9_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??FTM_Deinit_1
//  137   }
//  138   else if(ftm_init_structure.FTM_Ftmx == FTM1)
??FTM_Deinit_0:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable9_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??FTM_Deinit_2
//  139   {
//  140     SIM->SCGC6 &= ~SIM_SCGC6_FTM1_MASK;
        LDR.W    R0,??DataTable9_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable9_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??FTM_Deinit_1
//  141   }
//  142   else if(ftm_init_structure.FTM_Ftmx == FTM2)
??FTM_Deinit_2:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable9_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??FTM_Deinit_3
//  143   {
//  144     SIM->SCGC3 &= ~SIM_SCGC3_FTM2_MASK;
        LDR.W    R0,??DataTable9_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable9_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??FTM_Deinit_1
//  145   }
//  146 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  147   else if(ftm_init_structure.FTM_Ftmx == FTM3)
??FTM_Deinit_3:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable9_8  ;; 0x400b9000
        CMP      R0,R1
        BNE.N    ??FTM_Deinit_4
//  148   {
//  149     SIM->SCGC3 &= ~SIM_SCGC3_FTM3_MASK;
        LDR.W    R0,??DataTable9_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable9_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??FTM_Deinit_1
//  150   }
//  151 #endif
//  152   else
//  153   {
//  154     return 0;
??FTM_Deinit_4:
        MOVS     R0,#+0
        B.N      ??FTM_Deinit_5
//  155   }
//  156   
//  157   return FTM_DisableIrq(ftm_init_structure);
??FTM_Deinit_1:
        ADD      R1,SP,#+16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       FTM_DisableIrq
??FTM_Deinit_5:
        POP      {R1-R3}
        LDR      PC,[SP], #+20    ;; return
//  158 }
//  159 
//  160 /*
//  161  * FTM_PWM_Enable
//  162  * FTM模块PWM模式输出使能，配置输出通道、占空比、指定对应的引脚、对齐方式
//  163  * 
//  164  * 参数:
//  165  *    ftmx--FTMx模块号
//  166  *      |__FTM0          --FTM0
//  167  *      |__FTM1          --FTM1
//  168  *      |__FTM2          --FTM2
//  169  *      <注:只有MK60F系列含有FTM3>
//  170  *      |__FTM3          --FTM3
//  171  *    chn--PWM输出通道
//  172  *      <注:只有MK60F系列含有FTM3>
//  173  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  174  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  175  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  176  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  177  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  178  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  179  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  180  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  181  *    duty--PWM输出占空比
//  182  *      |__0~10000--占空比0.00%~100.00%
//  183  *    pin--FTMx通道对应的引脚
//  184  *      FTM0
//  185  *       FTM_Ch0-PTA3\PTC1
//  186  *       FTM_Ch1-PTA4\PTC2
//  187  *       FTM_Ch2-PTA5\PTC3
//  188  *       FTM_Ch3-PTA6\PTC4
//  189  *       FTM_Ch4-PTA7\PTD4
//  190  *       FTM_Ch5-PTA0\PTD5
//  191  *       FTM_Ch6-PTA1\PTD6
//  192  *       FTM_Ch7-PTA2\PTD7
//  193  *      FTM1
//  194  *       FTM_Ch0-PTA8\PTA12\PTB0
//  195  *       FTM_Ch1-PTA9\PTA13\PTB1
//  196  *      FTM2
//  197  *       FTM_Ch0-PTA10\PTB18
//  198  *       FTM_Ch1-PTA11\PTB19
//  199  *      <注:只有MK60F系列含有FTM3>
//  200  *      FTM3
//  201  *       FTM_Ch0-PTE5\PTD0
//  202  *       FTM_Ch1-PTE6\PTD1
//  203  *       FTM_Ch2-PTE7\PTD2
//  204  *       FTM_Ch3-PTE8\PTD3
//  205  *       FTM_Ch4-PTE9\PTC8
//  206  *       FTM_Ch5-PTE10\PTC9
//  207  *       FTM_Ch6-PTE11\PTC10
//  208  *       FTM_Ch7-PTE12\PTC11
//  209  *    align--脉冲对齐方式
//  210  *      |__ALIGN_LEFT    --左对齐
//  211  *      |__ALIGN_RIGHT   --右对齐
//  212  *
//  213  * 输出:
//  214  *    0--配置错误
//  215  *    1--配置成功
//  216  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 uint8 FTM_PWM_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty, PortPinsEnum_Type pin, uint8 align)
//  218 {
FTM_PWM_Enable:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  219   uint32 cv;
//  220   vuint32 mod;
//  221   
//  222   //参数检查
//  223   ASSERT( duty <= 10000 );                  //判断占空比
        MOVW     R0,#+10001
        CMP      R7,R0
        BCC.N    ??FTM_PWM_Enable_0
        MOVS     R1,#+223
        LDR.W    R0,??DataTable9_2
        BL       assert_failed
//  224   
//  225   if(!FTM_PinInit(ftmx, chn, pin))
??FTM_PWM_Enable_0:
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_PinInitEP8FTM_Type10FtmChnEnum12PortPinsEnum
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_Enable_1
        MOVS     R0,#+1
        B.N      ??FTM_PWM_Enable_2
??FTM_PWM_Enable_1:
        MOVS     R0,#+0
??FTM_PWM_Enable_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_PWM_Enable_3
//  226     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Enable_4
//  227   
//  228   //如果是右对齐，100%-占空比
//  229   if(align == ALIGN_RIGHT)
??FTM_PWM_Enable_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+36
        BNE.N    ??FTM_PWM_Enable_5
//  230   {
//  231     duty = 10000 - duty;
        MOVW     R0,#+10000
        SUBS     R7,R0,R7
//  232   }
//  233   
//  234   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  235   mod = ftmx->MOD;
??FTM_PWM_Enable_5:
        LDR      R0,[R5, #+8]
        STR      R0,[SP, #+0]
//  236   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        MUL      R0,R0,R7
        MOVW     R1,#+10000
        UDIV     R1,R0,R1
//  237   
//  238   // 配置FTM通道控制寄存器 
//  239   // 通道模式 MSB:MSA-1X, 通道边缘选择 左对齐 ELSB:ELSA-10
//  240   // 通道模式 MSB:MSA-1X, 通道边缘选择 右对齐 ELSB:ELSA-X1
//  241   ftmx->CONTROLS[chn].CnSC = align;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R5,R6, LSL #+3
        STR      R4,[R0, #+12]
//  242   // 配置FTM通道值
//  243   ftmx->CONTROLS[chn].CnV  = cv;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R5,R6, LSL #+3
        STR      R1,[R0, #+16]
//  244   
//  245   return 1;
        MOVS     R0,#+1
??FTM_PWM_Enable_4:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  246 }
//  247 
//  248 /*
//  249  * FTM_PWM_ChangeDuty
//  250  * 变更FTM模块PWM模式指定通道的输出占空比
//  251  *
//  252  * 参数:
//  253  *    ftmx--FTMx模块号
//  254  *      |__FTM0          --FTM0
//  255  *      |__FTM1          --FTM1
//  256  *      |__FTM2          --FTM2
//  257  *      <注:只有MK60F系列含有FTM3>
//  258  *      |__FTM3          --FTM3
//  259  *    chn--PWM输出通道
//  260  *      <注:只有MK60F系列含有FTM3>
//  261  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  262  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  263  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  264  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  265  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  266  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  267  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  268  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  269  *    duty--PWM输出占空比
//  270  *      |__0~10000--占空比0.00%~100.00%
//  271  *
//  272  * 输出:
//  273  *    0--配置错误
//  274  *    1--配置成功
//  275  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  276 uint8 FTM_PWM_ChangeDuty(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty)
//  277 {
FTM_PWM_ChangeDuty:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  278   uint32 cv;
//  279   vuint32 mod;
//  280   
//  281   //参数检查
//  282   ASSERT( duty <= 10000 );                  //判断占空比
        MOVW     R0,#+10001
        CMP      R6,R0
        BCC.N    ??FTM_PWM_ChangeDuty_0
        MOV      R1,#+282
        LDR.W    R0,??DataTable9_2
        BL       assert_failed
//  283   //if(duty < 0) duty = 0;      //Warning[Pe186]: pointless comparison of unsigned integer with zero.
//  284   
//  285   //如果是右对齐，100%-占空比
//  286   if(ftmx->CONTROLS[chn].CnSC & FTM_CnSC_ELSA_MASK)
??FTM_PWM_ChangeDuty_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+29
        BPL.N    ??FTM_PWM_ChangeDuty_1
//  287   {
//  288     duty = 10000 - duty;
        MOVW     R0,#+10000
        SUBS     R6,R0,R6
//  289   }
//  290   
//  291   //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  292   mod = ftmx->MOD;
??FTM_PWM_ChangeDuty_1:
        LDR      R0,[R4, #+8]
        STR      R0,[SP, #+0]
//  293   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        MUL      R0,R0,R6
        MOVW     R1,#+10000
        UDIV     R1,R0,R1
//  294  
//  295   // 配置FTM通道值
//  296   ftmx->CONTROLS[chn].CnV = cv;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        STR      R1,[R0, #+16]
//  297   
//  298   return 1;
        MOVS     R0,#+1
??FTM_PWM_ChangeDuty_2:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  299 }
//  300 
//  301 /*
//  302  * FTM_DisableChn
//  303  * 禁用FTM模块指定通道的输出、输入
//  304  *
//  305  * 参数:
//  306  *    ftmx--FTMx模块号
//  307  *      |__FTM0          --FTM0
//  308  *      |__FTM1          --FTM1
//  309  *      |__FTM2          --FTM2
//  310  *      <注:只有MK60F系列含有FTM3>
//  311  *      |__FTM3          --FTM3
//  312  *    chn--PWM输出通道
//  313  *      <注:只有MK60F系列含有FTM3>
//  314  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  315  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  316  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  317  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  318  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  319  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  320  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  321  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  322  *
//  323  * 输出:
//  324  *    0--配置错误
//  325  *    1--配置成功
//  326  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  327 uint8 FTM_DisableChn(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  328 {
FTM_DisableChn:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  329   FTM_PinDeinit(ftmx, chn);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init13FTM_PinDeinitEP8FTM_Type10FtmChnEnum
//  330   ftmx->CONTROLS[chn].CnSC = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  331   ftmx->CONTROLS[chn].CnV  = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+16]
//  332   
//  333   return 1;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  334 }
//  335 
//  336 
//  337 
//  338 /*
//  339  * FTM_IC_Enable
//  340  * FTM模块输入捕获模式输出使能，配置输入通道、指定对应的引脚、捕获边缘
//  341  *
//  342  * 参数:
//  343  *    ftmx--FTMx模块号
//  344  *      |__FTM0          --FTM0
//  345  *      |__FTM1          --FTM1
//  346  *      |__FTM2          --FTM2
//  347  *      <注:只有MK60F系列含有FTM3>
//  348  *      |__FTM3          --FTM3
//  349  *    chn--PWM输出通道
//  350  *      <注:只有MK60F系列含有FTM3>
//  351  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  352  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  353  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  354  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  355  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  356  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  357  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  358  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  359  *    duty--PWM输出占空比
//  360  *      |__0~10000--占空比0.00%~100.00%
//  361  *    pin--FTMx通道对应的引脚
//  362  *      FTM0
//  363  *       FTM_Ch0-PTA3\PTC1
//  364  *       FTM_Ch1-PTA4\PTC2
//  365  *       FTM_Ch2-PTA5\PTC3
//  366  *       FTM_Ch3-PTA6\PTC4
//  367  *       FTM_Ch4-PTA7\PTD4
//  368  *       FTM_Ch5-PTA0\PTD5
//  369  *       FTM_Ch6-PTA1\PTD6
//  370  *       FTM_Ch7-PTA2\PTD7
//  371  *      FTM1
//  372  *       FTM_Ch0-PTA8\PTA12\PTB0
//  373  *       FTM_Ch1-PTA9\PTA13\PTB1
//  374  *      FTM2
//  375  *       FTM_Ch0-PTA10\PTB18
//  376  *       FTM_Ch1-PTA11\PTB19
//  377  *      <注:只有MK60F系列含有FTM3>
//  378  *      FTM3
//  379  *       FTM_Ch0-PTE5\PTD0
//  380  *       FTM_Ch1-PTE6\PTD1
//  381  *       FTM_Ch2-PTE7\PTD2
//  382  *       FTM_Ch3-PTE8\PTD3
//  383  *       FTM_Ch4-PTE9\PTC8
//  384  *       FTM_Ch5-PTE10\PTC9
//  385  *       FTM_Ch6-PTE11\PTC10
//  386  *       FTM_Ch7-PTE12\PTC11
//  387  *    capture_edge--捕获边缘设置
//  388  *      |__CAPTURE_RI    --上升沿捕获
//  389  *      |__CAPTURE_FA    --下降沿捕获
//  390  *      |__CAPTURE_RIFA  --上升下降沿捕获
//  391  *
//  392  * 输出:
//  393  *    0--配置错误
//  394  *    1--配置成功
//  395  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 uint8 FTM_IC_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin, uint8 capture_edge)
//  397 {
FTM_IC_Enable:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  398   if(!FTM_PinInit(ftmx, chn, pin))
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_PinInitEP8FTM_Type10FtmChnEnum12PortPinsEnum
        CMP      R0,#+0
        BNE.N    ??FTM_IC_Enable_0
        MOVS     R0,#+1
        B.N      ??FTM_IC_Enable_1
??FTM_IC_Enable_0:
        MOVS     R0,#+0
??FTM_IC_Enable_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_IC_Enable_2
//  399     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_IC_Enable_3
//  400   
//  401   ftmx->CONTROLS[chn].CnSC = 0x00;
??FTM_IC_Enable_2:
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  402   
//  403   ftmx->CONTROLS[chn].CnSC |= capture_edge;        
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  404   
//  405   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_CHF_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x80
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  406   ftmx->CONTROLS[chn].CnSC |= FTM_CnSC_CHIE_MASK;         //使能通道捕获输入中断
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  407   
//  408   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSB_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x20
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  409   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSA_MASK);       //配置成Input capture模式
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  410   
//  411   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_DMA_MASK);       //关闭DMA
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  412   
//  413   return 1;
        MOVS     R0,#+1
??FTM_IC_Enable_3:
        POP      {R1,R4-R7,PC}    ;; return
//  414 }
//  415 
//  416 /*
//  417  * FTM_IsTOF
//  418  * 判断FTMx是否产生计数溢出中断标志
//  419  * 
//  420  * 参数:
//  421  *    ftmx--FTMx模块号
//  422  *      |__FTM0          --FTM0
//  423  *      |__FTM1          --FTM1
//  424  *      |__FTM2          --FTM2
//  425  *      <注:只有MK60F系列含有FTM3>
//  426  *      |__FTM3          --FTM3
//  427  *
//  428  * 输出:
//  429  *    TRUE、FALSE
//  430  *
//  431  */
//  432 __INLINE boolean FTM_IsTOF(FTM_Type *ftmx)
//  433 {
//  434   return (boolean)((ftmx->SC & FTM_SC_TOF_MASK)>>FTM_SC_TOF_SHIFT);
//  435 }
//  436 
//  437 /*
//  438  * FTM_ClearTOF
//  439  * 清除FTMx计数器溢出中断标志
//  440  * 
//  441  * 参数:
//  442  *    ftmx--FTMx模块号
//  443  *      |__FTM0          --FTM0
//  444  *      |__FTM1          --FTM1
//  445  *      |__FTM2          --FTM2
//  446  *      <注:只有MK60F系列含有FTM3>
//  447  *      |__FTM3          --FTM3
//  448  *
//  449  * 输出:
//  450  *    无
//  451  *
//  452  */
//  453 __INLINE void FTM_ClearTOF(FTM_Type *ftmx)
//  454 {
//  455   ftmx->SC = ftmx->SC & ~FTM_SC_TOF_MASK;
//  456 }
//  457 
//  458 /*
//  459  * FTM_IsCHnF
//  460  * 判断通道n是否产生中断标志
//  461  * 
//  462  * 参数:
//  463  *    ftmx--FTMx模块号
//  464  *      |__FTM0          --FTM0
//  465  *      |__FTM1          --FTM1
//  466  *      |__FTM2          --FTM2
//  467  *      <注:只有MK60F系列含有FTM3>
//  468  *      |__FTM3          --FTM3
//  469  *    chn--PWM输出通道
//  470  *      <注:只有MK60F系列含有FTM3>
//  471  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  472  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  473  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  474  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  475  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  476  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  477  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  478  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  479  *
//  480  * 输出:
//  481  *    TRUE、FALSE
//  482  *
//  483  */
//  484 
//  485 
//  486 /*
//  487  * FTM_ClearCHnF
//  488  * 清除通道n中断标志
//  489  * 
//  490  * 参数:
//  491  *    ftmx--FTMx模块号
//  492  *      |__FTM0          --FTM0
//  493  *      |__FTM1          --FTM1
//  494  *      |__FTM2          --FTM2
//  495  *      <注:只有MK60F系列含有FTM3>
//  496  *      |__FTM3          --FTM3
//  497  *    chn--PWM输出通道
//  498  *      <注:只有MK60F系列含有FTM3>
//  499  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  500  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  501  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  502  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  503  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  504  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  505  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  506  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  507  *
//  508  * 输出:
//  509  *    无
//  510  *
//  511  */
//  512 
//  513 
//  514 /*
//  515  * FTM_GetChVal
//  516  * 获取FTMx通道n捕获的FTMx计数值
//  517  * 
//  518  * 参数:
//  519  *    ftmx--FTMx模块号
//  520  *      |__FTM0          --FTM0
//  521  *      |__FTM1          --FTM1
//  522  *      |__FTM2          --FTM2
//  523  *      <注:只有MK60F系列含有FTM3>
//  524  *      |__FTM3          --FTM3
//  525  *    chn--PWM输出通道
//  526  *      <注:只有MK60F系列含有FTM3>
//  527  *      |__FTM_Ch0          --FTMx通道0(FTM0\FTM1\FTM2\FTM3)
//  528  *      |__FTM_Ch1          --FTMx通道1(FTM0\FTM1\FTM2\FTM3)
//  529  *      |__FTM_Ch2          --FTMx通道2(FTM0\FTM3)
//  530  *      |__FTM_Ch3          --FTMx通道3(FTM0\FTM3)
//  531  *      |__FTM_Ch4          --FTMx通道4(FTM0\FTM3)
//  532  *      |__FTM_Ch5          --FTMx通道5(FTM0\FTM3)
//  533  *      |__FTM_Ch6          --FTMx通道6(FTM0\FTM3)
//  534  *      |__FTM_Ch7          --FTMx通道7(FTM0\FTM3)
//  535  *
//  536  * 输出:
//  537  *    0x1~0xFFFF
//  538  *
//  539  */
//  540 
//  541 
//  542 /*
//  543  * FTM_GetClkDiv
//  544  * 获取FTMx时钟分频系数
//  545  * 
//  546  * 参数:
//  547  *    ftmx--FTMx模块号
//  548  *      |__FTM0          --FTM0
//  549  *      |__FTM1          --FTM1
//  550  *      |__FTM2          --FTM2
//  551  *      <注:只有MK60F系列含有FTM3>
//  552  *      |__FTM3          --FTM3
//  553  *
//  554  * 输出:
//  555  *    1、2、4、8、16、32、64、128
//  556  *
//  557  */
//  558 __INLINE uint8 FTM_GetClkDiv(FTM_Type *ftmx)
//  559 {
//  560   return 1u<<((ftmx->SC & FTM_SC_PS_MASK)>>FTM_SC_PS_SHIFT);    //获得时钟分频系数
//  561 }
//  562 
//  563 /*
//  564  * FTM_GetCounter
//  565  * 获取FTMx计数器值
//  566  * 
//  567  * 参数:
//  568  *    ftmx--FTMx模块号
//  569  *      |__FTM0          --FTM0
//  570  *      |__FTM1          --FTM1
//  571  *      |__FTM2          --FTM2
//  572  *      <注:只有MK60F系列含有FTM3>
//  573  *      |__FTM3          --FTM3
//  574  *
//  575  * 输出:
//  576  *    16位整形计数值
//  577  *
//  578  */
//  579 __INLINE uint16 FTM_GetCounter(FTM_Type *ftmx)
//  580 {
//  581   return ftmx->CNT;        //获取FTMx计数器值
//  582 }
//  583 
//  584 /*
//  585  * FTM_ClearCounter
//  586  * 清空FTMx计数器
//  587  * 
//  588  * 参数:
//  589  *    ftmx--FTMx模块号
//  590  *      |__FTM0          --FTM0
//  591  *      |__FTM1          --FTM1
//  592  *      |__FTM2          --FTM2
//  593  *      <注:只有MK60F系列含有FTM3>
//  594  *      |__FTM3          --FTM3
//  595  *
//  596  * 输出:
//  597  *    无
//  598  *
//  599  */
//  600 
//  601 
//  602 /*
//  603  * FTM_EnableIrq
//  604  * 使能FTMx中断
//  605  * 
//  606  * 参数:
//  607  *    ftm_init_structure--FTM初始化结构体，
//  608  *                        具体定义见FTM_InitTypeDef
//  609  *
//  610  * 输出:
//  611  *    0--配置错误
//  612  *    1--配置成功
//  613  *
//  614  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  615 uint8 FTM_EnableIrq(FTM_InitTypeDef ftm_init_structure)
//  616 {
FTM_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  617   uint8 i;
//  618   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R5,[SP, #+16]
//  619   
//  620   if(ftmx == FTM0)
        LDR.N    R0,??DataTable9_3  ;; 0x40038000
        CMP      R5,R0
        BNE.N    ??FTM_EnableIrq_0
//  621     i=0;
        MOVS     R4,#+0
        B.N      ??FTM_EnableIrq_1
//  622   else if(ftmx == FTM1)
??FTM_EnableIrq_0:
        LDR.N    R0,??DataTable9_5  ;; 0x40039000
        CMP      R5,R0
        BNE.N    ??FTM_EnableIrq_2
//  623     i=1;
        MOVS     R4,#+1
        B.N      ??FTM_EnableIrq_1
//  624   else if(ftmx == FTM2)
??FTM_EnableIrq_2:
        LDR.N    R0,??DataTable9_6  ;; 0x400b8000
        CMP      R5,R0
        BNE.N    ??FTM_EnableIrq_3
//  625     i=2;
        MOVS     R4,#+2
        B.N      ??FTM_EnableIrq_1
//  626 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  627   else if(ftmx == FTM3)
??FTM_EnableIrq_3:
        LDR.N    R0,??DataTable9_8  ;; 0x400b9000
        CMP      R5,R0
        BNE.N    ??FTM_EnableIrq_4
//  628     i=3;
        MOVS     R4,#+3
        B.N      ??FTM_EnableIrq_1
//  629 #endif
//  630   else
//  631     return 0;
??FTM_EnableIrq_4:
        MOVS     R0,#+0
        B.N      ??FTM_EnableIrq_5
//  632 
//  633   enable_irq((IRQn_Type)(FTM0_IRQn + i));
??FTM_EnableIrq_1:
        ADDS     R0,R4,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init16__NVIC_EnableIRQE4IRQn
//  634   
//  635   return 1;
        MOVS     R0,#+1
??FTM_EnableIrq_5:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  636 }
//  637 
//  638 /*
//  639  * FTM_DisableIrq
//  640  * 禁用FTMx中断
//  641  * 
//  642  * 参数:
//  643  *    ftm_init_structure--FTM初始化结构体，
//  644  *                        具体定义见FTM_InitTypeDef
//  645  *
//  646  * 输出:
//  647  *    0--配置错误
//  648  *    1--配置成功
//  649  *
//  650  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  651 uint8 FTM_DisableIrq(FTM_InitTypeDef ftm_init_structure)
//  652 {
FTM_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  653   uint8 i;
//  654   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R5,[SP, #+16]
//  655   
//  656   if(ftmx == FTM0)
        LDR.N    R0,??DataTable9_3  ;; 0x40038000
        CMP      R5,R0
        BNE.N    ??FTM_DisableIrq_0
//  657     i=0;
        MOVS     R4,#+0
        B.N      ??FTM_DisableIrq_1
//  658   else if(ftmx == FTM1)
??FTM_DisableIrq_0:
        LDR.N    R0,??DataTable9_5  ;; 0x40039000
        CMP      R5,R0
        BNE.N    ??FTM_DisableIrq_2
//  659     i=1;
        MOVS     R4,#+1
        B.N      ??FTM_DisableIrq_1
//  660   else if(ftmx == FTM2)
??FTM_DisableIrq_2:
        LDR.N    R0,??DataTable9_6  ;; 0x400b8000
        CMP      R5,R0
        BNE.N    ??FTM_DisableIrq_3
//  661     i=2;
        MOVS     R4,#+2
        B.N      ??FTM_DisableIrq_1
//  662 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  663   else if(ftmx == FTM3)
??FTM_DisableIrq_3:
        LDR.N    R0,??DataTable9_8  ;; 0x400b9000
        CMP      R5,R0
        BNE.N    ??FTM_DisableIrq_4
//  664     i=3;
        MOVS     R4,#+3
        B.N      ??FTM_DisableIrq_1
//  665 #endif
//  666   else
//  667     return 0;
??FTM_DisableIrq_4:
        MOVS     R0,#+0
        B.N      ??FTM_DisableIrq_5
//  668 
//  669   disable_irq((IRQn_Type)(FTM0_IRQn + i));
??FTM_DisableIrq_1:
        ADDS     R0,R4,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init17__NVIC_DisableIRQE4IRQn
//  670   
//  671   return 1;
        MOVS     R0,#+1
??FTM_DisableIrq_5:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  672 }
//  673 
//  674 /*
//  675  * FTM_QD_Enable
//  676  * FTM模块正交解码模式输入使能，配置输入通道PHA和PHB
//  677  *
//  678  * 参数:
//  679  *    ftmx--FTMx模块号
//  680  *      |__FTM1          --FTM1
//  681  *      |__FTM2          --FTM2
//  682  *    pha--PHA输入通道引脚
//  683  *      FTM1
//  684  *        PTA8\PTA12\PTB0
//  685  *      FTM2
//  686  *        PTA10\PTB18
//  687  *    phb--PHB输入通道引脚
//  688  *      FTM1
//  689  *        PTA9\PTA13\PTB1
//  690  *      FTM2
//  691  *        PTA11\PTB19
//  692  *
//  693  * 输出:
//  694  *    0--配置错误
//  695  *    1--配置成功
//  696  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  697 uint8 FTM_QD_Enable(FTM_Type *ftmx, PortPinsEnum_Type pha, PortPinsEnum_Type phb)
//  698 {
FTM_QD_Enable:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  699   if(!FTM_PinInit(ftmx, FTM_PhA, pha))
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_PinInitEP8FTM_Type10FtmChnEnum12PortPinsEnum
        CMP      R0,#+0
        BNE.N    ??FTM_QD_Enable_0
        MOVS     R0,#+1
        B.N      ??FTM_QD_Enable_1
??FTM_QD_Enable_0:
        MOVS     R0,#+0
??FTM_QD_Enable_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_QD_Enable_2
//  700     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_QD_Enable_3
//  701   if(!FTM_PinInit(ftmx, FTM_PhB, phb))
??FTM_QD_Enable_2:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_PinInitEP8FTM_Type10FtmChnEnum12PortPinsEnum
        CMP      R0,#+0
        BNE.N    ??FTM_QD_Enable_4
        MOVS     R0,#+1
        B.N      ??FTM_QD_Enable_5
??FTM_QD_Enable_4:
        MOVS     R0,#+0
??FTM_QD_Enable_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_QD_Enable_6
//  702     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_QD_Enable_3
//  703   
//  704   return 1;
??FTM_QD_Enable_6:
        MOVS     R0,#+1
??FTM_QD_Enable_3:
        POP      {R4-R6,PC}       ;; return
//  705 }
//  706 
//  707 /*
//  708  * FTM_QD_Disable
//  709  * FTM模块正交解码模式输入禁用
//  710  *
//  711  * 参数:
//  712  *    ftmx--FTMx模块号
//  713  *      |__FTM1          --FTM1
//  714  *      |__FTM2          --FTM2
//  715  *
//  716  * 输出:
//  717  *    0--配置错误
//  718  *    1--配置成功
//  719  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  720 uint8 FTM_QD_Disable(FTM_Type *ftmx)
//  721 {
FTM_QD_Disable:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  722   if(!FTM_PinDeinit(ftmx, FTM_PhA))
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init13FTM_PinDeinitEP8FTM_Type10FtmChnEnum
        CMP      R0,#+0
        BNE.N    ??FTM_QD_Disable_0
        MOVS     R0,#+1
        B.N      ??FTM_QD_Disable_1
??FTM_QD_Disable_0:
        MOVS     R0,#+0
??FTM_QD_Disable_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_QD_Disable_2
//  723     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_QD_Disable_3
//  724   if(!FTM_PinDeinit(ftmx, FTM_PhB))
??FTM_QD_Disable_2:
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       _ZN26_INTERNAL_5_FTM_c_FTM_Init13FTM_PinDeinitEP8FTM_Type10FtmChnEnum
        CMP      R0,#+0
        BNE.N    ??FTM_QD_Disable_4
        MOVS     R0,#+1
        B.N      ??FTM_QD_Disable_5
??FTM_QD_Disable_4:
        MOVS     R0,#+0
??FTM_QD_Disable_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FTM_QD_Disable_6
//  725     return 0;
        MOVS     R0,#+0
        B.N      ??FTM_QD_Disable_3
//  726   
//  727   return 1;
??FTM_QD_Disable_6:
        MOVS     R0,#+1
??FTM_QD_Disable_3:
        POP      {R4,PC}          ;; return
//  728 }
//  729 
//  730 /*
//  731  * FTM_PWM_Init
//  732  * FTM模块PWM模式初始化，内部调用
//  733  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  734 static uint8 FTM_PWM_Init(FTM_InitTypeDef ftm_init_structure)
//  735 {
_ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_PWM_InitE15FTM_InitTypeDef:
        PUSH     {R0-R3}
        PUSH     {R4-R8,LR}
//  736   uint32 bus_clk_hz;
//  737   uint32 mod, mod2;
//  738   uint8 ps;
//  739   uint32 freq = ftm_init_structure.FTM_PwmFreq;
        LDR      R4,[SP, #+32]
//  740   uint32 dt_en = ftm_init_structure.FTM_PwmDeadtimeCfg;
        LDR      R5,[SP, #+36]
//  741   uint8 dt_div = ftm_init_structure.FTM_PwmDeadtimeDiv;
        LDRB     R6,[SP, #+40]
//  742   uint8 dt_val = ftm_init_structure.FTM_PwmDeadtimeVal;
        LDRB     R7,[SP, #+41]
//  743   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R8,[SP, #+24]
//  744   
//  745   //参数检查
//  746   ASSERT( freq );                  //判断频率
        CMP      R4,#+0
        BNE.N    ??FTM_PWM_Init_0
        MOVW     R1,#+746
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  747   ASSERT( dt_val<=63 );            //判断死区插入值
??FTM_PWM_Init_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+64
        BLT.N    ??FTM_PWM_Init_1
        MOVW     R1,#+747
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  748   
//  749   bus_clk_hz = g_bus_clock;
??FTM_PWM_Init_1:
        LDR.W    R0,??DataTable10
        LDR      R1,[R0, #+0]
//  750   
//  751   if(freq>bus_clk_hz) return 0;
        CMP      R1,R4
        BCS.N    ??FTM_PWM_Init_2
        MOVS     R0,#+0
        B.N      ??FTM_PWM_Init_3
//  752   
//  753   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??FTM_PWM_Init_2:
        MOVS     R0,#+128
        MUL      R0,R0,R4
        UDIV     R2,R1,R0
        MOVW     R0,#+65535
        CMP      R2,R0
        BCS.N    ??FTM_PWM_Init_4
//  754   {
//  755     ps = 7;
        MOVS     R3,#+7
//  756     mod2=mod;
//  757     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R0,#+64
        MUL      R0,R0,R4
        UDIV     R12,R1,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  758     {
//  759       ps = 6;  
        MOVS     R0,#+6
        MOVS     R3,R0
//  760       mod2=mod;  
        MOV      R2,R12
//  761       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R0,R4,#+5
        UDIV     R0,R1,R0
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  762       {
//  763         ps = 5;  
        MOVS     R0,#+5
        MOVS     R3,R0
//  764         mod2=mod;
        MOV      R2,R12
//  765         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R0,R4,#+4
        UDIV     R0,R1,R0
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  766         {
//  767           ps = 4;  
        MOVS     R0,#+4
        MOVS     R3,R0
//  768           mod2=mod;   
        MOV      R2,R12
//  769           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R0,R4,#+3
        UDIV     R0,R1,R0
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  770           {
//  771             ps = 3;
        MOVS     R0,#+3
        MOVS     R3,R0
//  772             mod2=mod;
        MOV      R2,R12
//  773             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R0,R4,#+2
        UDIV     R0,R1,R0
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  774             {
//  775               ps = 2;
        MOVS     R0,#+2
        MOVS     R3,R0
//  776               mod2=mod;
        MOV      R2,R12
//  777               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R0,R4,#+1
        UDIV     R0,R1,R0
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  778               {
//  779                 ps = 1;
        MOVS     R0,#+1
        MOVS     R3,R0
//  780                 mod2=mod;
        MOV      R2,R12
//  781                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R0,R1,R4
        MOV      R12,R0
        MOVW     R0,#+65535
        CMP      R12,R0
        BCS.N    ??FTM_PWM_Init_5
//  782                 {
//  783                   ps = 0;
        MOVS     R0,#+0
        MOVS     R3,R0
//  784                   mod2=mod;
        MOV      R2,R12
//  785                 }
//  786               }
//  787             }
//  788           }
//  789         }  
//  790       }
//  791     }
//  792   }
//  793   else
//  794   {
//  795     return 0;
//  796   }
//  797   
//  798   ftmx->SC = 0;
??FTM_PWM_Init_5:
        MOVS     R0,#+0
        STR      R0,[R8, #+0]
//  799   
//  800   // 设置PWM周期及占空比
//  801   //    PWM周期 = (MOD-CNTIN+1)*FTM时钟周期 :
//  802   // 配置FTM计数初始值
//  803   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R8, #+4]
//  804   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R8, #+76]
//  805   // 配置FTM计数MOD值
//  806   ftmx->MOD = mod2;
        STR      R2,[R8, #+8]
//  807   
//  808   ftmx->DEADTIME = FTM_DEADTIME_DTPS(dt_div) | FTM_DEADTIME_DTVAL(dt_val);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     LR,R6,#+6
        ANDS     LR,LR,#0xC0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R0,R7,#0x3F
        ORRS     LR,R0,LR
        STR      LR,[R8, #+104]
//  809   ftmx->COMBINE = dt_en;        //使能死区
        STR      R5,[R8, #+100]
//  810   
//  811   // 配置FTM控制寄存器
//  812   // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:8
//  813   // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  814   ftmx->SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R0,R3,#0x7
        ORRS     R0,R0,#0x8
        STR      R0,[R8, #+0]
//  815   
//  816   return 1;
        MOVS     R0,#+1
        B.N      ??FTM_PWM_Init_3
??FTM_PWM_Init_4:
        MOVS     R0,#+0
??FTM_PWM_Init_3:
        POP      {R4-R8}
        LDR      PC,[SP], #+20    ;; return
//  817 }
//  818 
//  819 /*
//  820  * FTM_IC_Init
//  821  * FTM模块输入捕获模式初始化，内部调用
//  822  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  823 static uint8 FTM_IC_Init(FTM_InitTypeDef ftm_init_structure)
//  824 {
_ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_IC_InitE15FTM_InitTypeDef:
        PUSH     {R0-R3}
        PUSH     {R3-R7,LR}
//  825   uint8 i;
//  826   uint8 ps = ftm_init_structure.FTM_ClkDiv;
        LDRB     R5,[SP, #+43]
//  827   FTM_ISR_CALLBACK isr_func = ftm_init_structure.FTM_Isr;
        LDR      R6,[SP, #+48]
//  828   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R7,[SP, #+24]
//  829   
//  830   //参数检查
//  831   ASSERT( ps <= 7);             //时钟分频系数
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BLT.N    ??FTM_IC_Init_0
        MOVW     R1,#+831
        LDR.N    R0,??DataTable9_2
        BL       assert_failed
//  832   
//  833   ftmx->CONF=FTM_CONF_BDMMODE(0x3);
??FTM_IC_Init_0:
        MOVS     R0,#+192
        STR      R0,[R7, #+132]
//  834   
//  835   ftmx->SC = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
//  836   
//  837   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+4]
//  838   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+76]
//  839   ftmx->MOD = 0;                           
        MOVS     R0,#+0
        STR      R0,[R7, #+8]
//  840   ftmx->QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //关闭正交解码
        MVNS     R0,#+1
        STR      R0,[R7, #+128]
//  841   ftmx->FILTER = 0x00;                      //关过虑器
        MOVS     R0,#+0
        STR      R0,[R7, #+120]
//  842   
//  843   // 配置FTM控制寄存器
//  844   // 将FTM Counter配置成Free Counter
//  845   // 禁用中断, 加计数模式, 时钟源:System clock（Bus Clk）, 分频系数:PS
//  846   // 假设SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  847   ftmx->SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR      R0,[R7, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R1,R5,#0x7
        ORRS     R1,R1,#0x8
        ORRS     R0,R1,R0
        STR      R0,[R7, #+0]
//  848   //ftmx->SC |= FTM_SC_TOIE_MASK;             //使能计数溢出中断
//  849   ftmx->SC &= (~FTM_SC_CPWMS_MASK);         //FTM加计数
        LDR      R0,[R7, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R7, #+0]
//  850 
//  851   //设置中断函数入口地址并开启中断
//  852   if(isr_func!=NULL)
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??FTM_IC_Init_1
//  853   {
//  854     if(ftmx == FTM0)
        LDR.N    R0,??DataTable9_3  ;; 0x40038000
        CMP      R7,R0
        BNE.N    ??FTM_IC_Init_2
//  855       i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??FTM_IC_Init_3
//  856     else if(ftmx == FTM1)
??FTM_IC_Init_2:
        LDR.N    R0,??DataTable9_5  ;; 0x40039000
        CMP      R7,R0
        BNE.N    ??FTM_IC_Init_4
//  857       i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??FTM_IC_Init_3
//  858     else if(ftmx == FTM2)
??FTM_IC_Init_4:
        LDR.N    R0,??DataTable9_6  ;; 0x400b8000
        CMP      R7,R0
        BNE.N    ??FTM_IC_Init_5
//  859       i=2;
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??FTM_IC_Init_3
//  860 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  861     else if(ftmx == FTM3)
??FTM_IC_Init_5:
        LDR.N    R0,??DataTable9_8  ;; 0x400b9000
        CMP      R7,R0
        BNE.N    ??FTM_IC_Init_6
//  862       i=3;
        MOVS     R0,#+3
        MOVS     R4,R0
        B.N      ??FTM_IC_Init_3
//  863 #endif   
//  864     else
//  865       return 0;
??FTM_IC_Init_6:
        MOVS     R0,#+0
        B.N      ??FTM_IC_Init_7
//  866     FTM_ISR[i] = isr_func;
??FTM_IC_Init_3:
        LDR.N    R0,??DataTable9_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R0, R4, LSL #+2]
//  867   }
//  868 
//  869   return 1;
??FTM_IC_Init_1:
        MOVS     R0,#+1
??FTM_IC_Init_7:
        POP      {R1,R4-R7}
        LDR      PC,[SP], #+20    ;; return
//  870 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     FTM_ISR
//  871 
//  872 /*
//  873  * FTM_PinInit
//  874  * 初始化通道n指定引脚的FTM复用功能，内部调用
//  875  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  876 static uint8 FTM_PinInit(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin)
//  877 { 
_ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_PinInitEP8FTM_Type10FtmChnEnum12PortPinsEnum:
        PUSH     {R4}
        MOVS     R3,R0
//  878   //根据ftmx使能相应pin的ftm功能
//  879   if(ftmx == FTM0)
        LDR.W    R0,??DataTable10_1  ;; 0x40038000
        CMP      R3,R0
        BNE.W    ??FTM_PinInit_0
//  880   {
//  881     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PinInit_1
        CMP      R1,#+2
        BEQ.N    ??FTM_PinInit_2
        BCC.N    ??FTM_PinInit_3
        CMP      R1,#+4
        BEQ.W    ??FTM_PinInit_4
        BCC.N    ??FTM_PinInit_5
        CMP      R1,#+6
        BEQ.W    ??FTM_PinInit_6
        BCC.W    ??FTM_PinInit_7
        CMP      R1,#+7
        BEQ.W    ??FTM_PinInit_8
        B.N      ??FTM_PinInit_9
//  882     {
//  883     case FTM_Ch0:
//  884       if(pin == PTA3)
??FTM_PinInit_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??FTM_PinInit_10
//  885         PORTA->PCR[3] = PORTA->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_2  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_2  ;; 0x4004900c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_11
//  886       else if(pin == PTC1)
??FTM_PinInit_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+61
        BNE.N    ??FTM_PinInit_12
//  887         PORTC->PCR[1] = PORTC->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_3  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_3  ;; 0x4004b004
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_11
//  888       else
//  889         return 0;
??FTM_PinInit_12:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  890       break;
??FTM_PinInit_11:
        B.N      ??FTM_PinInit_14
//  891     case FTM_Ch1:
//  892       if(pin == PTA4)
??FTM_PinInit_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??FTM_PinInit_15
//  893         PORTA->PCR[4] = PORTA->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_4  ;; 0x40049010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_4  ;; 0x40049010
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_16
//  894       else if(pin == PTC2)
??FTM_PinInit_15:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+62
        BNE.N    ??FTM_PinInit_17
//  895         PORTC->PCR[2] = PORTC->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_5  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_5  ;; 0x4004b008
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_16
//  896       else
//  897         return 0;
??FTM_PinInit_17:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  898       break;
??FTM_PinInit_16:
        B.N      ??FTM_PinInit_14
//  899     case FTM_Ch2:
//  900       if(pin == PTA5)
??FTM_PinInit_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??FTM_PinInit_18
//  901         PORTA->PCR[5] = PORTA->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_6  ;; 0x40049014
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_19
//  902       else if(pin == PTC3)
??FTM_PinInit_18:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+63
        BNE.N    ??FTM_PinInit_20
//  903         PORTC->PCR[3] = PORTC->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_7  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_7  ;; 0x4004b00c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_19
//  904       else
//  905         return 0;
??FTM_PinInit_20:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  906       break;
??FTM_PinInit_19:
        B.N      ??FTM_PinInit_14
//  907     case FTM_Ch3:
//  908       if(pin == PTA6)
??FTM_PinInit_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??FTM_PinInit_21
//  909         PORTA->PCR[6] = PORTA->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_8  ;; 0x40049018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_8  ;; 0x40049018
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_22
//  910       else if(pin == PTC4)
??FTM_PinInit_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+64
        BNE.N    ??FTM_PinInit_23
//  911         PORTC->PCR[4] = PORTC->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_9  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_9  ;; 0x4004b010
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_22
//  912       else
//  913         return 0;
??FTM_PinInit_23:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  914       break;
??FTM_PinInit_22:
        B.N      ??FTM_PinInit_14
//  915     case FTM_Ch4:
//  916       if(pin == PTA7)
??FTM_PinInit_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.N    ??FTM_PinInit_24
//  917         PORTA->PCR[7] = PORTA->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_10  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_10  ;; 0x4004901c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_25
//  918       else if(pin == PTD4)
??FTM_PinInit_24:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+96
        BNE.N    ??FTM_PinInit_26
//  919         PORTD->PCR[4] = PORTD->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_11  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_11  ;; 0x4004c010
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_25
//  920       else
//  921         return 0;
??FTM_PinInit_26:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  922       break;
??FTM_PinInit_25:
        B.N      ??FTM_PinInit_14
//  923     case FTM_Ch5:
//  924       if(pin == PTA0)
??FTM_PinInit_7:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??FTM_PinInit_27
//  925         PORTA->PCR[0] = PORTA->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_12  ;; 0x40049000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_12  ;; 0x40049000
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_28
//  926       else if(pin == PTD5)
??FTM_PinInit_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+97
        BNE.N    ??FTM_PinInit_29
//  927         PORTD->PCR[5] = PORTD->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_13  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_13  ;; 0x4004c014
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_28
//  928       else
//  929         return 0;
??FTM_PinInit_29:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  930       break;
??FTM_PinInit_28:
        B.N      ??FTM_PinInit_14
//  931     case FTM_Ch6:
//  932       if(pin == PTA1)
??FTM_PinInit_6:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??FTM_PinInit_30
//  933         PORTA->PCR[1] = PORTA->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_14  ;; 0x40049004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_14  ;; 0x40049004
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_31
//  934       else if(pin == PTD6)
??FTM_PinInit_30:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+98
        BNE.N    ??FTM_PinInit_32
//  935         PORTD->PCR[6] = PORTD->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_15  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_15  ;; 0x4004c018
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_31
//  936       else
//  937         return 0;
??FTM_PinInit_32:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  938       break;
??FTM_PinInit_31:
        B.N      ??FTM_PinInit_14
//  939     case FTM_Ch7:
//  940       if(pin == PTA2)
??FTM_PinInit_8:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??FTM_PinInit_33
//  941         PORTA->PCR[2] = PORTA->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable10_16  ;; 0x40049008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable10_16  ;; 0x40049008
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_34
//  942       else if(pin == PTD7)
??FTM_PinInit_33:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+99
        BNE.N    ??FTM_PinInit_35
//  943         PORTD->PCR[7] = PORTD->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable10_17  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable10_17  ;; 0x4004c01c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_34
//  944       else
//  945         return 0;
??FTM_PinInit_35:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  946       break;
??FTM_PinInit_34:
        B.N      ??FTM_PinInit_14
//  947     default:
//  948       return 0;     
??FTM_PinInit_9:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  949     }
//  950   }
//  951   else if(ftmx == FTM1)
??FTM_PinInit_0:
        LDR.W    R0,??DataTable10_18  ;; 0x40039000
        CMP      R3,R0
        BNE.W    ??FTM_PinInit_36
//  952   {
//  953     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??FTM_PinInit_37
        CMP      R0,#+1
        BEQ.N    ??FTM_PinInit_38
        CMP      R0,#+8
        BEQ.N    ??FTM_PinInit_39
        CMP      R0,#+9
        BEQ.W    ??FTM_PinInit_40
        B.N      ??FTM_PinInit_41
//  954     {
//  955     case FTM_Ch0:
//  956       if(pin == PTA8)
??FTM_PinInit_37:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??FTM_PinInit_42
//  957         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable11  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable11  ;; 0x40049020
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_43
//  958       else if(pin == PTA12)
??FTM_PinInit_42:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??FTM_PinInit_44
//  959         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable11_1  ;; 0x40049030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable11_1  ;; 0x40049030
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_43
//  960       else if(pin == PTB0)
??FTM_PinInit_44:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??FTM_PinInit_45
//  961         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable12  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable12  ;; 0x4004a000
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_43
//  962       else
//  963         return 0;
??FTM_PinInit_45:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  964       break;
??FTM_PinInit_43:
        B.N      ??FTM_PinInit_14
//  965     case FTM_Ch1:
//  966       if(pin == PTA9)
??FTM_PinInit_38:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??FTM_PinInit_46
//  967         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14  ;; 0x40049024
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_47
//  968       else if(pin == PTA13)
??FTM_PinInit_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??FTM_PinInit_48
//  969         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15  ;; 0x40049034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15  ;; 0x40049034
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_47
//  970       else if(pin == PTB1)
??FTM_PinInit_48:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??FTM_PinInit_49
//  971         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_1  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_1  ;; 0x4004a004
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_47
//  972       else
//  973         return 0;
??FTM_PinInit_49:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  974       break;
??FTM_PinInit_47:
        B.N      ??FTM_PinInit_14
//  975     case FTM_PhA:
//  976       if(pin == PTA8)
??FTM_PinInit_39:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??FTM_PinInit_50
//  977         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable11  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable11  ;; 0x40049020
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_51
//  978       else if(pin == PTA12)
??FTM_PinInit_50:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??FTM_PinInit_52
//  979         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
        LDR.W    R0,??DataTable11_1  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R4,??DataTable11_1  ;; 0x40049030
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_51
//  980       else if(pin == PTB0)
??FTM_PinInit_52:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??FTM_PinInit_53
//  981         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable12  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable12  ;; 0x4004a000
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_51
//  982       else
//  983         return 0;
??FTM_PinInit_53:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  984       break;
??FTM_PinInit_51:
        B.N      ??FTM_PinInit_14
//  985     case FTM_PhB:
//  986       if(pin == PTA9)
??FTM_PinInit_40:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??FTM_PinInit_54
//  987         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable14  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14  ;; 0x40049024
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_41
//  988       else if(pin == PTA13)
??FTM_PinInit_54:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??FTM_PinInit_55
//  989         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
        LDR.W    R0,??DataTable15  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R4,??DataTable15  ;; 0x40049034
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_41
//  990       else if(pin == PTB1)
??FTM_PinInit_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??FTM_PinInit_56
//  991         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable15_1  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_1  ;; 0x4004a004
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_41
//  992       else
//  993         return 0;
??FTM_PinInit_56:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  994     default:
//  995       return 0;   
??FTM_PinInit_41:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
//  996     }
//  997   }
//  998   else if(ftmx == FTM2)
??FTM_PinInit_36:
        LDR.W    R0,??DataTable10_19  ;; 0x400b8000
        CMP      R3,R0
        BNE.W    ??FTM_PinInit_57
//  999   {
// 1000     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??FTM_PinInit_58
        CMP      R0,#+1
        BEQ.N    ??FTM_PinInit_59
        CMP      R0,#+8
        BEQ.N    ??FTM_PinInit_60
        CMP      R0,#+9
        BEQ.N    ??FTM_PinInit_61
        B.N      ??FTM_PinInit_62
// 1001     {
// 1002     case FTM_Ch0:
// 1003       if(pin == PTA10)
??FTM_PinInit_58:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??FTM_PinInit_63
// 1004         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable15_2  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_2  ;; 0x40049028
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_64
// 1005       else if(pin == PTB18)
??FTM_PinInit_63:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??FTM_PinInit_65
// 1006         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_3  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_3  ;; 0x4004a048
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_64
// 1007       else
// 1008         return 0;
??FTM_PinInit_65:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1009       break;
??FTM_PinInit_64:
        B.N      ??FTM_PinInit_14
// 1010     case FTM_Ch1:
// 1011       if(pin == PTA11)
??FTM_PinInit_59:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??FTM_PinInit_66
// 1012         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable15_4  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_4  ;; 0x4004902c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_67
// 1013       else if(pin == PTB19)
??FTM_PinInit_66:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??FTM_PinInit_68
// 1014         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_5  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_5  ;; 0x4004a04c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_67
// 1015       else
// 1016         return 0;
??FTM_PinInit_68:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1017       break;
??FTM_PinInit_67:
        B.N      ??FTM_PinInit_14
// 1018     case FTM_PhA:
// 1019       if(pin == PTA10)
??FTM_PinInit_60:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??FTM_PinInit_69
// 1020         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_2  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_2  ;; 0x40049028
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_70
// 1021       else if(pin == PTB18)
??FTM_PinInit_69:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??FTM_PinInit_71
// 1022         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable15_3  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_3  ;; 0x4004a048
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_70
// 1023       else
// 1024         return 0;
??FTM_PinInit_71:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1025       break;
??FTM_PinInit_70:
        B.N      ??FTM_PinInit_14
// 1026     case FTM_PhB:
// 1027       if(pin == PTA11)
??FTM_PinInit_61:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??FTM_PinInit_72
// 1028         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_4  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_4  ;; 0x4004902c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_73
// 1029       else if(pin == PTB19)
??FTM_PinInit_72:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??FTM_PinInit_74
// 1030         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable15_5  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_5  ;; 0x4004a04c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_73
// 1031       else
// 1032         return 0;
??FTM_PinInit_74:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1033       break;
??FTM_PinInit_73:
        B.N      ??FTM_PinInit_14
// 1034     default:
// 1035       return 0;   
??FTM_PinInit_62:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1036     }
// 1037   }
// 1038   
// 1039 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
// 1040   else if(ftmx == FTM3)
??FTM_PinInit_57:
        LDR.W    R0,??DataTable15_6  ;; 0x400b9000
        CMP      R3,R0
        BNE.W    ??FTM_PinInit_75
// 1041   {
// 1042     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PinInit_76
        CMP      R1,#+2
        BEQ.N    ??FTM_PinInit_77
        BCC.N    ??FTM_PinInit_78
        CMP      R1,#+4
        BEQ.W    ??FTM_PinInit_79
        BCC.N    ??FTM_PinInit_80
        CMP      R1,#+6
        BEQ.W    ??FTM_PinInit_81
        BCC.W    ??FTM_PinInit_82
        CMP      R1,#+7
        BEQ.W    ??FTM_PinInit_83
        B.N      ??FTM_PinInit_84
// 1043     {
// 1044     case FTM_Ch0:
// 1045       if(pin == PTE5)
??FTM_PinInit_76:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+129
        BNE.N    ??FTM_PinInit_85
// 1046         PORTE->PCR[5] = PORTE->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_7  ;; 0x4004d014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_7  ;; 0x4004d014
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_86
// 1047       else if(pin == PTD0)
??FTM_PinInit_85:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+92
        BNE.N    ??FTM_PinInit_87
// 1048         PORTD->PCR[0] = PORTD->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable15_8  ;; 0x4004c000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable15_8  ;; 0x4004c000
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_86
// 1049       else
// 1050         return 0;
??FTM_PinInit_87:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1051       break;
??FTM_PinInit_86:
        B.N      ??FTM_PinInit_14
// 1052     case FTM_Ch1:
// 1053       if(pin == PTE6)
??FTM_PinInit_78:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+130
        BNE.N    ??FTM_PinInit_88
// 1054         PORTE->PCR[6] = PORTE->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_9  ;; 0x4004d018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_9  ;; 0x4004d018
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_89
// 1055       else if(pin == PTD1)
??FTM_PinInit_88:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+93
        BNE.N    ??FTM_PinInit_90
// 1056         PORTD->PCR[1] = PORTD->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable15_10  ;; 0x4004c004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable15_10  ;; 0x4004c004
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_89
// 1057       else
// 1058         return 0;
??FTM_PinInit_90:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1059       break;
??FTM_PinInit_89:
        B.N      ??FTM_PinInit_14
// 1060     case FTM_Ch2:
// 1061       if(pin == PTE7)
??FTM_PinInit_77:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+131
        BNE.N    ??FTM_PinInit_91
// 1062         PORTE->PCR[7] = PORTE->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_11  ;; 0x4004d01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_11  ;; 0x4004d01c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_92
// 1063       else if(pin == PTD2)
??FTM_PinInit_91:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+94
        BNE.N    ??FTM_PinInit_93
// 1064         PORTD->PCR[2] = PORTD->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable15_12  ;; 0x4004c008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable15_12  ;; 0x4004c008
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_92
// 1065       else
// 1066         return 0;
??FTM_PinInit_93:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1067       break;
??FTM_PinInit_92:
        B.N      ??FTM_PinInit_14
// 1068     case FTM_Ch3:
// 1069       if(pin == PTE8)
??FTM_PinInit_80:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+132
        BNE.N    ??FTM_PinInit_94
// 1070         PORTE->PCR[8] = PORTE->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_13  ;; 0x4004d020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_13  ;; 0x4004d020
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_95
// 1071       else if(pin == PTD3)
??FTM_PinInit_94:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+95
        BNE.N    ??FTM_PinInit_96
// 1072         PORTD->PCR[3] = PORTD->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable15_14  ;; 0x4004c00c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable15_14  ;; 0x4004c00c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_95
// 1073       else
// 1074         return 0;
??FTM_PinInit_96:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1075       break;
??FTM_PinInit_95:
        B.N      ??FTM_PinInit_14
// 1076     case FTM_Ch4:
// 1077       if(pin == PTE9)
??FTM_PinInit_79:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+133
        BNE.N    ??FTM_PinInit_97
// 1078         PORTE->PCR[9] = PORTE->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_15  ;; 0x4004d024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_15  ;; 0x4004d024
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_98
// 1079       else if(pin == PTC8)
??FTM_PinInit_97:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+68
        BNE.N    ??FTM_PinInit_99
// 1080         PORTC->PCR[8] = PORTC->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_16  ;; 0x4004b020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_16  ;; 0x4004b020
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_98
// 1081       else
// 1082         return 0;
??FTM_PinInit_99:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1083       break;
??FTM_PinInit_98:
        B.N      ??FTM_PinInit_14
// 1084     case FTM_Ch5:
// 1085       if(pin == PTE10)
??FTM_PinInit_82:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+134
        BNE.N    ??FTM_PinInit_100
// 1086         PORTE->PCR[10] = PORTE->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_17  ;; 0x4004d028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_17  ;; 0x4004d028
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_101
// 1087       else if(pin == PTC9)
??FTM_PinInit_100:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+69
        BNE.N    ??FTM_PinInit_102
// 1088         PORTC->PCR[9] = PORTC->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_18  ;; 0x4004b024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_18  ;; 0x4004b024
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_101
// 1089       else
// 1090         return 0;
??FTM_PinInit_102:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1091       break;
??FTM_PinInit_101:
        B.N      ??FTM_PinInit_14
// 1092     case FTM_Ch6:
// 1093       if(pin == PTE11)
??FTM_PinInit_81:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+135
        BNE.N    ??FTM_PinInit_103
// 1094         PORTE->PCR[11] = PORTE->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_19  ;; 0x4004d02c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_19  ;; 0x4004d02c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_104
// 1095       else if(pin == PTC10)
??FTM_PinInit_103:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+70
        BNE.N    ??FTM_PinInit_105
// 1096         PORTC->PCR[10] = PORTC->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_20  ;; 0x4004b028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_20  ;; 0x4004b028
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_104
// 1097       else
// 1098         return 0;
??FTM_PinInit_105:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1099       break;
??FTM_PinInit_104:
        B.N      ??FTM_PinInit_14
// 1100     case FTM_Ch7:
// 1101       if(pin == PTE12)
??FTM_PinInit_83:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+136
        BNE.N    ??FTM_PinInit_106
// 1102         PORTE->PCR[12] = PORTE->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable15_21  ;; 0x4004d030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable15_21  ;; 0x4004d030
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_107
// 1103       else if(pin == PTC11)
??FTM_PinInit_106:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+71
        BNE.N    ??FTM_PinInit_108
// 1104         PORTC->PCR[11] = PORTC->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable15_22  ;; 0x4004b02c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable15_22  ;; 0x4004b02c
        STR      R0,[R4, #+0]
        B.N      ??FTM_PinInit_107
// 1105       else
// 1106         return 0;
??FTM_PinInit_108:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1107       break;
??FTM_PinInit_107:
        B.N      ??FTM_PinInit_14
// 1108     default:
// 1109       return 0;     
??FTM_PinInit_84:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1110     }
// 1111   }
// 1112 #endif
// 1113   else
// 1114   {
// 1115     return 0;
??FTM_PinInit_75:
        MOVS     R0,#+0
        B.N      ??FTM_PinInit_13
// 1116   }
// 1117   return 1;
??FTM_PinInit_14:
        MOVS     R0,#+1
??FTM_PinInit_13:
        POP      {R4}
        BX       LR               ;; return
// 1118 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x4004900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x40049010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     0x400b8000
// 1119 
// 1120 /*
// 1121  * FTM_PinInit
// 1122  * 反初始化通道n指定引脚的FTM复用功能，内部调用
// 1123  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1124 static uint8 FTM_PinDeinit(FTM_Type *ftmx, FtmChnEnum_Type chn)
// 1125 {
_ZN26_INTERNAL_5_FTM_c_FTM_Init13FTM_PinDeinitEP8FTM_Type10FtmChnEnum:
        MOVS     R2,R0
// 1126   //根据ftmx禁用相应pin的ftm功能，回复到默认功能
// 1127   if(ftmx == FTM0)
        LDR.W    R0,??DataTable15_23  ;; 0x40038000
        CMP      R2,R0
        BNE.W    ??FTM_PinDeinit_0
// 1128   {
// 1129     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PinDeinit_1
        CMP      R1,#+2
        BEQ.N    ??FTM_PinDeinit_2
        BCC.N    ??FTM_PinDeinit_3
        CMP      R1,#+4
        BEQ.N    ??FTM_PinDeinit_4
        BCC.N    ??FTM_PinDeinit_5
        CMP      R1,#+6
        BEQ.W    ??FTM_PinDeinit_6
        BCC.W    ??FTM_PinDeinit_7
        CMP      R1,#+7
        BEQ.W    ??FTM_PinDeinit_8
        B.N      ??FTM_PinDeinit_9
// 1130     {
// 1131     case FTM_Ch0:
// 1132       if((PORTA->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_1:
        LDR.W    R0,??DataTable15_24  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_10
// 1133         PORTA->PCR[3] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_24  ;; 0x4004900c
        STR      R0,[R3, #+0]
// 1134       if((PORTC->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_10:
        LDR.W    R0,??DataTable15_25  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_11
// 1135         PORTC->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_25  ;; 0x4004b004
        STR      R0,[R3, #+0]
// 1136       break;
??FTM_PinDeinit_11:
        B.N      ??FTM_PinDeinit_12
// 1137     case FTM_Ch1:
// 1138       if((PORTA->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_3:
        LDR.W    R0,??DataTable15_26  ;; 0x40049010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_13
// 1139         PORTA->PCR[4] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_26  ;; 0x40049010
        STR      R0,[R3, #+0]
// 1140       if((PORTC->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_13:
        LDR.W    R0,??DataTable15_27  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_14
// 1141         PORTC->PCR[2] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_27  ;; 0x4004b008
        STR      R0,[R3, #+0]
// 1142       break;
??FTM_PinDeinit_14:
        B.N      ??FTM_PinDeinit_12
// 1143     case FTM_Ch2:
// 1144       if((PORTA->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_2:
        LDR.W    R0,??DataTable15_28  ;; 0x40049014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_15
// 1145         PORTA->PCR[5] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_28  ;; 0x40049014
        STR      R0,[R3, #+0]
// 1146       if((PORTC->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_15:
        LDR.W    R0,??DataTable15_29  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_16
// 1147         PORTC->PCR[3] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_29  ;; 0x4004b00c
        STR      R0,[R3, #+0]
// 1148       break;
??FTM_PinDeinit_16:
        B.N      ??FTM_PinDeinit_12
// 1149     case FTM_Ch3:
// 1150       if((PORTA->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_5:
        LDR.W    R0,??DataTable15_30  ;; 0x40049018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_17
// 1151         PORTA->PCR[6] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_30  ;; 0x40049018
        STR      R0,[R3, #+0]
// 1152       if((PORTC->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_17:
        LDR.W    R0,??DataTable15_31  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_18
// 1153         PORTC->PCR[4] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_31  ;; 0x4004b010
        STR      R0,[R3, #+0]
// 1154       break;
??FTM_PinDeinit_18:
        B.N      ??FTM_PinDeinit_12
// 1155     case FTM_Ch4:
// 1156       if((PORTA->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_4:
        LDR.W    R0,??DataTable15_32  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_19
// 1157         PORTA->PCR[7] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_32  ;; 0x4004901c
        STR      R0,[R3, #+0]
// 1158       if((PORTD->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_19:
        LDR.W    R0,??DataTable15_33  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_20
// 1159         PORTD->PCR[4] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_33  ;; 0x4004c010
        STR      R0,[R3, #+0]
// 1160       break;
??FTM_PinDeinit_20:
        B.N      ??FTM_PinDeinit_12
// 1161     case FTM_Ch5:
// 1162       if((PORTA->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_7:
        LDR.W    R0,??DataTable15_34  ;; 0x40049000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_21
// 1163         PORTA->PCR[0] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_34  ;; 0x40049000
        STR      R0,[R3, #+0]
// 1164       if((PORTD->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_21:
        LDR.W    R0,??DataTable15_35  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_22
// 1165         PORTD->PCR[5] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_35  ;; 0x4004c014
        STR      R0,[R3, #+0]
// 1166       break;
??FTM_PinDeinit_22:
        B.N      ??FTM_PinDeinit_12
// 1167     case FTM_Ch6:
// 1168       if((PORTA->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_6:
        LDR.W    R0,??DataTable15_36  ;; 0x40049004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_23
// 1169         PORTA->PCR[1] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_36  ;; 0x40049004
        STR      R0,[R3, #+0]
// 1170       if((PORTD->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_23:
        LDR.W    R0,??DataTable15_37  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_24
// 1171         PORTD->PCR[6] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_37  ;; 0x4004c018
        STR      R0,[R3, #+0]
// 1172       break;
??FTM_PinDeinit_24:
        B.N      ??FTM_PinDeinit_12
// 1173     case FTM_Ch7:
// 1174       if((PORTA->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_8:
        LDR.W    R0,??DataTable15_38  ;; 0x40049008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_25
// 1175         PORTA->PCR[2] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_38  ;; 0x40049008
        STR      R0,[R3, #+0]
// 1176       if((PORTD->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_25:
        LDR.W    R0,??DataTable15_39  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_26
// 1177         PORTD->PCR[7] = PORT_PCR_MUX(0);      
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_39  ;; 0x4004c01c
        STR      R0,[R3, #+0]
// 1178       break;
??FTM_PinDeinit_26:
        B.N      ??FTM_PinDeinit_12
// 1179     default:
// 1180       return 0;     
??FTM_PinDeinit_9:
        MOVS     R0,#+0
        B.N      ??FTM_PinDeinit_27
// 1181     }
// 1182   }
// 1183   else if(ftmx == FTM1)
??FTM_PinDeinit_0:
        LDR.W    R0,??DataTable15_40  ;; 0x40039000
        CMP      R2,R0
        BNE.W    ??FTM_PinDeinit_28
// 1184   {
// 1185     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??FTM_PinDeinit_29
        CMP      R0,#+1
        BEQ.N    ??FTM_PinDeinit_30
        CMP      R0,#+8
        BEQ.N    ??FTM_PinDeinit_31
        CMP      R0,#+9
        BEQ.N    ??FTM_PinDeinit_32
        B.N      ??FTM_PinDeinit_33
// 1186     {
// 1187     case FTM_Ch0:
// 1188       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_29:
        LDR.W    R0,??DataTable11  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_34
// 1189         PORTA->PCR[8] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable11  ;; 0x40049020
        STR      R0,[R3, #+0]
// 1190       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_34:
        LDR.W    R0,??DataTable11_1  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_35
// 1191         PORTA->PCR[12] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable11_1  ;; 0x40049030
        STR      R0,[R3, #+0]
// 1192       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_35:
        LDR.W    R0,??DataTable12  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_36
// 1193         PORTB->PCR[0] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable12  ;; 0x4004a000
        STR      R0,[R3, #+0]
// 1194       break;
??FTM_PinDeinit_36:
        B.N      ??FTM_PinDeinit_12
// 1195     case FTM_Ch1:
// 1196       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_30:
        LDR.W    R0,??DataTable14  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_37
// 1197         PORTA->PCR[9] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14  ;; 0x40049024
        STR      R0,[R3, #+0]
// 1198       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_37:
        LDR.W    R0,??DataTable15  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_38
// 1199         PORTA->PCR[13] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15  ;; 0x40049034
        STR      R0,[R3, #+0]
// 1200       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_38:
        LDR.W    R0,??DataTable15_1  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_39
// 1201         PORTB->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_1  ;; 0x4004a004
        STR      R0,[R3, #+0]
// 1202       break;
??FTM_PinDeinit_39:
        B.N      ??FTM_PinDeinit_12
// 1203     case FTM_PhA:
// 1204       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_31:
        LDR.W    R0,??DataTable11  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_40
// 1205         PORTA->PCR[8] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable11  ;; 0x40049020
        STR      R0,[R3, #+0]
// 1206       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
??FTM_PinDeinit_40:
        LDR.W    R0,??DataTable11_1  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??FTM_PinDeinit_41
// 1207         PORTA->PCR[12] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable11_1  ;; 0x40049030
        STR      R0,[R3, #+0]
// 1208       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_41:
        LDR.W    R0,??DataTable12  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_42
// 1209         PORTB->PCR[0] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable12  ;; 0x4004a000
        STR      R0,[R3, #+0]
// 1210       break;
??FTM_PinDeinit_42:
        B.N      ??FTM_PinDeinit_12
// 1211     case FTM_PhB:
// 1212       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_32:
        LDR.W    R0,??DataTable14  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_43
// 1213         PORTA->PCR[9] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14  ;; 0x40049024
        STR      R0,[R3, #+0]
// 1214       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
??FTM_PinDeinit_43:
        LDR.W    R0,??DataTable15  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??FTM_PinDeinit_44
// 1215         PORTA->PCR[13] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15  ;; 0x40049034
        STR      R0,[R3, #+0]
// 1216       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_44:
        LDR.W    R0,??DataTable15_1  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_45
// 1217         PORTB->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable15_1  ;; 0x4004a004
        STR      R0,[R3, #+0]
// 1218       break;
??FTM_PinDeinit_45:
        B.N      ??FTM_PinDeinit_12
// 1219     default:
// 1220       return 0;   
??FTM_PinDeinit_33:
        MOVS     R0,#+0
        B.N      ??FTM_PinDeinit_27
// 1221     }
// 1222   }
// 1223   else if(ftmx == FTM2)
??FTM_PinDeinit_28:
        LDR.W    R0,??DataTable15_41  ;; 0x400b8000
        CMP      R2,R0
        BNE.N    ??FTM_PinDeinit_46
// 1224   {
// 1225     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??FTM_PinDeinit_47
        CMP      R0,#+1
        BEQ.N    ??FTM_PinDeinit_48
        CMP      R0,#+8
        BEQ.N    ??FTM_PinDeinit_49
        CMP      R0,#+9
        BEQ.N    ??FTM_PinDeinit_50
        B.N      ??FTM_PinDeinit_51
// 1226     {
// 1227     case FTM_Ch0:
// 1228       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_47:
        LDR.N    R0,??DataTable15_2  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_52
// 1229         PORTA->PCR[10] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_2  ;; 0x40049028
        STR      R0,[R3, #+0]
// 1230       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_52:
        LDR.N    R0,??DataTable15_3  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_53
// 1231         PORTB->PCR[18] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_3  ;; 0x4004a048
        STR      R0,[R3, #+0]
// 1232       break;
??FTM_PinDeinit_53:
        B.N      ??FTM_PinDeinit_12
// 1233     case FTM_Ch1:
// 1234       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_48:
        LDR.N    R0,??DataTable15_4  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_54
// 1235         PORTA->PCR[11] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_4  ;; 0x4004902c
        STR      R0,[R3, #+0]
// 1236       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_54:
        LDR.N    R0,??DataTable15_5  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_55
// 1237         PORTB->PCR[19] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_5  ;; 0x4004a04c
        STR      R0,[R3, #+0]
// 1238       break;
??FTM_PinDeinit_55:
        B.N      ??FTM_PinDeinit_12
// 1239     case FTM_PhA:
// 1240       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_49:
        LDR.N    R0,??DataTable15_2  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_56
// 1241         PORTA->PCR[10] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_2  ;; 0x40049028
        STR      R0,[R3, #+0]
// 1242       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_56:
        LDR.N    R0,??DataTable15_3  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_57
// 1243         PORTB->PCR[18] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_3  ;; 0x4004a048
        STR      R0,[R3, #+0]
// 1244       break;
??FTM_PinDeinit_57:
        B.N      ??FTM_PinDeinit_12
// 1245     case FTM_PhB:
// 1246       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_50:
        LDR.N    R0,??DataTable15_4  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_58
// 1247         PORTA->PCR[11] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_4  ;; 0x4004902c
        STR      R0,[R3, #+0]
// 1248       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_58:
        LDR.N    R0,??DataTable15_5  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_59
// 1249         PORTB->PCR[19] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_5  ;; 0x4004a04c
        STR      R0,[R3, #+0]
// 1250       break;
??FTM_PinDeinit_59:
        B.N      ??FTM_PinDeinit_12
// 1251     default:
// 1252       return 0;   
??FTM_PinDeinit_51:
        MOVS     R0,#+0
        B.N      ??FTM_PinDeinit_27
// 1253     }
// 1254   }
// 1255 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
// 1256   else if(ftmx == FTM3)
??FTM_PinDeinit_46:
        LDR.N    R0,??DataTable15_6  ;; 0x400b9000
        CMP      R2,R0
        BNE.W    ??FTM_PinDeinit_60
// 1257   {
// 1258     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FTM_PinDeinit_61
        CMP      R1,#+2
        BEQ.N    ??FTM_PinDeinit_62
        BCC.N    ??FTM_PinDeinit_63
        CMP      R1,#+4
        BEQ.N    ??FTM_PinDeinit_64
        BCC.N    ??FTM_PinDeinit_65
        CMP      R1,#+6
        BEQ.W    ??FTM_PinDeinit_66
        BCC.N    ??FTM_PinDeinit_67
        CMP      R1,#+7
        BEQ.W    ??FTM_PinDeinit_68
        B.N      ??FTM_PinDeinit_69
// 1259     {
// 1260     case FTM_Ch0:
// 1261       if((PORTE->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_61:
        LDR.N    R0,??DataTable15_7  ;; 0x4004d014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_70
// 1262         PORTE->PCR[5] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_7  ;; 0x4004d014
        STR      R0,[R3, #+0]
// 1263       if((PORTD->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_70:
        LDR.N    R0,??DataTable15_8  ;; 0x4004c000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_71
// 1264         PORTD->PCR[0] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_8  ;; 0x4004c000
        STR      R0,[R3, #+0]
// 1265       break;
??FTM_PinDeinit_71:
        B.N      ??FTM_PinDeinit_12
// 1266     case FTM_Ch1:
// 1267       if((PORTE->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_63:
        LDR.N    R0,??DataTable15_9  ;; 0x4004d018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_72
// 1268         PORTE->PCR[6] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_9  ;; 0x4004d018
        STR      R0,[R3, #+0]
// 1269       if((PORTD->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_72:
        LDR.N    R0,??DataTable15_10  ;; 0x4004c004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_73
// 1270         PORTD->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_10  ;; 0x4004c004
        STR      R0,[R3, #+0]
// 1271       break;
??FTM_PinDeinit_73:
        B.N      ??FTM_PinDeinit_12
// 1272     case FTM_Ch2:
// 1273       if((PORTE->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_62:
        LDR.N    R0,??DataTable15_11  ;; 0x4004d01c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_74
// 1274         PORTE->PCR[7] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_11  ;; 0x4004d01c
        STR      R0,[R3, #+0]
// 1275       if((PORTD->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_74:
        LDR.N    R0,??DataTable15_12  ;; 0x4004c008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_75
// 1276         PORTD->PCR[2] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_12  ;; 0x4004c008
        STR      R0,[R3, #+0]
// 1277       break;
??FTM_PinDeinit_75:
        B.N      ??FTM_PinDeinit_12
// 1278     case FTM_Ch3:
// 1279       if((PORTE->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_65:
        LDR.N    R0,??DataTable15_13  ;; 0x4004d020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_76
// 1280         PORTE->PCR[8] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_13  ;; 0x4004d020
        STR      R0,[R3, #+0]
// 1281       if((PORTD->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??FTM_PinDeinit_76:
        LDR.N    R0,??DataTable15_14  ;; 0x4004c00c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??FTM_PinDeinit_77
// 1282         PORTD->PCR[3] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_14  ;; 0x4004c00c
        STR      R0,[R3, #+0]
// 1283       break;
??FTM_PinDeinit_77:
        B.N      ??FTM_PinDeinit_12
// 1284     case FTM_Ch4:
// 1285       if((PORTE->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_64:
        LDR.N    R0,??DataTable15_15  ;; 0x4004d024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_78
// 1286         PORTE->PCR[9] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_15  ;; 0x4004d024
        STR      R0,[R3, #+0]
// 1287       if((PORTC->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_78:
        LDR.N    R0,??DataTable15_16  ;; 0x4004b020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_79
// 1288         PORTC->PCR[8] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_16  ;; 0x4004b020
        STR      R0,[R3, #+0]
// 1289       break;
??FTM_PinDeinit_79:
        B.N      ??FTM_PinDeinit_12
// 1290     case FTM_Ch5:
// 1291       if((PORTE->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_67:
        LDR.N    R0,??DataTable15_17  ;; 0x4004d028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_80
// 1292         PORTE->PCR[10] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_17  ;; 0x4004d028
        STR      R0,[R3, #+0]
// 1293       if((PORTC->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_80:
        LDR.N    R0,??DataTable15_18  ;; 0x4004b024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_81
// 1294         PORTC->PCR[9] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_18  ;; 0x4004b024
        STR      R0,[R3, #+0]
// 1295       break;
??FTM_PinDeinit_81:
        B.N      ??FTM_PinDeinit_12
// 1296     case FTM_Ch6:
// 1297       if((PORTE->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_66:
        LDR.N    R0,??DataTable15_19  ;; 0x4004d02c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_82
// 1298         PORTE->PCR[11] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_19  ;; 0x4004d02c
        STR      R0,[R3, #+0]
// 1299       if((PORTC->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_82:
        LDR.N    R0,??DataTable15_20  ;; 0x4004b028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_83
// 1300         PORTC->PCR[10] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_20  ;; 0x4004b028
        STR      R0,[R3, #+0]
// 1301       break;
??FTM_PinDeinit_83:
        B.N      ??FTM_PinDeinit_12
// 1302     case FTM_Ch7:
// 1303       if((PORTE->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??FTM_PinDeinit_68:
        LDR.N    R0,??DataTable15_21  ;; 0x4004d030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??FTM_PinDeinit_84
// 1304         PORTE->PCR[12] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_21  ;; 0x4004d030
        STR      R0,[R3, #+0]
// 1305       if((PORTC->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??FTM_PinDeinit_84:
        LDR.N    R0,??DataTable15_22  ;; 0x4004b02c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??FTM_PinDeinit_85
// 1306         PORTC->PCR[11] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable15_22  ;; 0x4004b02c
        STR      R0,[R3, #+0]
// 1307       break;
??FTM_PinDeinit_85:
        B.N      ??FTM_PinDeinit_12
// 1308     default:
// 1309       return 0;     
??FTM_PinDeinit_69:
        MOVS     R0,#+0
        B.N      ??FTM_PinDeinit_27
// 1310     }
// 1311   }
// 1312 #endif
// 1313   else
// 1314   {
// 1315     return 0;
??FTM_PinDeinit_60:
        MOVS     R0,#+0
        B.N      ??FTM_PinDeinit_27
// 1316   }
// 1317   return 1;
??FTM_PinDeinit_12:
        MOVS     R0,#+1
??FTM_PinDeinit_27:
        BX       LR               ;; return
// 1318 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40049030
// 1319 
// 1320 /*
// 1321  * FTM_QD_Init
// 1322  * FTM模块正交解码模式初始化，内部调用
// 1323  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1324 static uint8 FTM_QD_Init(FTM_InitTypeDef ftm_init_structure)
// 1325 {
_ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_QD_InitE15FTM_InitTypeDef:
        PUSH     {R0-R3}
// 1326   uint8 mode = ftm_init_structure.FTM_QdMode;
        LDRB     R1,[SP, #+18]
// 1327   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R2,[SP, #+0]
// 1328  
// 1329   ftmx->MODE |= FTM_MODE_FTMEN_MASK;    //FTM2EN=1   
        LDR      R0,[R2, #+84]
        ORRS     R0,R0,#0x1
        STR      R0,[R2, #+84]
// 1330   
// 1331   ftmx->CNTIN = 0;//FTM0计数器初始值为0  
        MOVS     R0,#+0
        STR      R0,[R2, #+76]
// 1332   ftmx->CNT=0;  
        MOVS     R0,#+0
        STR      R0,[R2, #+4]
// 1333   ftmx->MOD = 0xFFFF;//结束值  
        MOVW     R0,#+65535
        STR      R0,[R2, #+8]
// 1334   
// 1335   ftmx->QDCTRL |= mode;     //解码模式选择
        LDR      R0,[R2, #+128]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
        STR      R0,[R2, #+128]
// 1336   ftmx->QDCTRL |= FTM_QDCTRL_QUADEN_MASK;       //使能正交解码模式 
        LDR      R0,[R2, #+128]
        ORRS     R0,R0,#0x1
        STR      R0,[R2, #+128]
// 1337 
// 1338   return 1;
        MOVS     R0,#+1
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1339 }
// 1340 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1341 static uint8 FTM_DEC_Init(FTM_InitTypeDef ftm_init_structure)
// 1342 {
_ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_DEC_InitE15FTM_InitTypeDef:
        PUSH     {R0-R3}
// 1343   
// 1344   return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1345 }
// 1346 
// 1347 /*
// 1348  * FTM0--FTM1中断处理函数
// 1349  * 与启动文件startup_K60.s中的中断向量表关联
// 1350  * 用户无需修改，程序自动进入对应通道中断函数
// 1351  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1352 void FTM0_IRQHandler(void)
// 1353 {
FTM0_IRQHandler:
        PUSH     {R7,LR}
// 1354 #if (UCOS_II > 0u)
// 1355   OS_CPU_SR  cpu_sr = 0u;
// 1356   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1357   OSIntEnter();
// 1358   OS_EXIT_CRITICAL();
// 1359 #endif
// 1360   
// 1361   FTM_ISR[0]();
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+0]
        BLX      R0
// 1362   
// 1363 #if (UCOS_II > 0u)
// 1364   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1365 #endif
// 1366 }
??FTM0_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x4004a000
// 1367 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1368 void FTM1_IRQHandler(void)
// 1369 {
FTM1_IRQHandler:
        PUSH     {R7,LR}
// 1370 #if (UCOS_II > 0u)
// 1371   OS_CPU_SR  cpu_sr = 0u;
// 1372   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1373   OSIntEnter();
// 1374   OS_EXIT_CRITICAL();
// 1375 #endif
// 1376   
// 1377   FTM_ISR[1]();
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+4]
        BLX      R0
// 1378   
// 1379 #if (UCOS_II > 0u)
// 1380   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1381 #endif
// 1382 }
??FTM1_IRQHandler_0:
        POP      {R0,PC}          ;; return
// 1383 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1384 void FTM2_IRQHandler(void)
// 1385 {
FTM2_IRQHandler:
        PUSH     {R7,LR}
// 1386 #if (UCOS_II > 0u)
// 1387   OS_CPU_SR  cpu_sr = 0u;
// 1388   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1389   OSIntEnter();
// 1390   OS_EXIT_CRITICAL();
// 1391 #endif
// 1392   
// 1393   FTM_ISR[2]();
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+8]
        BLX      R0
// 1394   
// 1395 #if (UCOS_II > 0u)
// 1396   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1397 #endif
// 1398 }
??FTM2_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40049024
// 1399 
// 1400 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1401 void FTM3_IRQHandler(void)
// 1402 {
FTM3_IRQHandler:
        PUSH     {R7,LR}
// 1403 #if (UCOS_II > 0u)
// 1404   OS_CPU_SR  cpu_sr = 0u;
// 1405   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1406   OSIntEnter();
// 1407   OS_EXIT_CRITICAL();
// 1408 #endif
// 1409   
// 1410   FTM_ISR[3]();
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+12]
        BLX      R0
// 1411   
// 1412 #if (UCOS_II > 0u)
// 1413   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1414 #endif
// 1415 }
??FTM3_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x400b9000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     0x4004d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DC32     0x4004d028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_18:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_19:
        DC32     0x4004d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_20:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_21:
        DC32     0x4004d030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_22:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_23:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_24:
        DC32     0x4004900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_25:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_26:
        DC32     0x40049010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_27:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_28:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_29:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_30:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_31:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_32:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_33:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_34:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_35:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_36:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_37:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_38:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_39:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_40:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_41:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_42:
        DC32     FTM_ISR

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM_Init
        SECTION_LINK FTM_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM_Init))
        DC32 0x8002a903
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM_PWM_Enable
        SECTION_LINK FTM_PWM_Enable
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM_PWM_Enable))
        DC32 0x8001acb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM_PWM_ChangeDuty
        SECTION_LINK FTM_PWM_ChangeDuty
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM_PWM_ChangeDuty))
        DC32 0x8001aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_PWM_InitE15FTM_InitTypeDef
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN26_INTERNAL_5_FTM_c_FTM_Init12FTM_PWM_InitE15FTM_InitTypeDef))
        DC32 0x80ac03b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_IC_InitE15FTM_InitTypeDef
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN26_INTERNAL_5_FTM_c_FTM_Init11FTM_IC_InitE15FTM_InitTypeDef))
        DC32 0x8000ab03
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM0_IRQHandler
        SECTION_LINK FTM0_IRQHandler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM0_IRQHandler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM1_IRQHandler
        SECTION_LINK FTM1_IRQHandler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM1_IRQHandler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM2_IRQHandler
        SECTION_LINK FTM2_IRQHandler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM2_IRQHandler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FTM3_IRQHandler
        SECTION_LINK FTM3_IRQHandler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FTM3_IRQHandler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 78H, 73H, 6BH, 31H, 39H, 39H, 34H
        DC8 30H, 39H, 31H, 30H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 66H, 6CH, 69H
        DC8 67H, 68H, 74H, 43H, 6FH, 6EH, 74H, 72H
        DC8 6FH, 6CH, 6CH, 65H, 72H, 2DH, 31H, 5CH
        DC8 66H, 6CH, 69H, 67H, 68H, 74H, 43H, 6FH
        DC8 6EH, 74H, 72H, 6FH, 6CH, 6CH, 65H, 72H
        DC8 2DH, 31H, 5CH, 70H, 72H, 6FH, 67H, 72H
        DC8 61H, 6DH, 5CH, 6CH, 69H, 62H, 5CH, 4CH
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 46H
        DC8 54H, 4DH, 2EH, 63H, 0
        DC8 0, 0, 0

        END
// 1416 #endif
// 1417 }
// 
//    72 bytes in section .ARM.exidx
//    16 bytes in section .bss
//    96 bytes in section .rodata
// 5 274 bytes in section .text
// 
// 5 274 bytes of CODE  memory
//   168 bytes of CONST memory
//    16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
