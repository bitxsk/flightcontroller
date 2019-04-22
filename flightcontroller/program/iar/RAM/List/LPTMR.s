///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:01
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\LPTMR.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWFEF2.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\LPTMR.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\LPTMR.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC LPTMR_Deinit
        PUBLIC LPTMR_DelayMs
        PUBLIC LPTMR_DisableIrq
        PUBLIC LPTMR_EnableIrq
        PUBLIC LPTMR_GetPulseAcc
        PUBLIC LPTMR_ISR
        PUBLIC LPTMR_Init
        PUBLIC LPTMR_ResetCounter
        PUBLIC _Z14LPT_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\LPTMR.c
//    1 /**
//    2  * @file LPTMR.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief LPTMR底层模块相关函数
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
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN28_INTERNAL_7_LPTMR_c_5de9421b16__NVIC_EnableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable7  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN28_INTERNAL_7_LPTMR_c_5de9421b17__NVIC_DisableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable7_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   24 #include "LPTMR.h"
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 LPTMR_ISR_CALLBACK LPTMR_ISR[1];
LPTMR_ISR:
        DS8 4
//   27 
//   28 /*
//   29  * LPTMR_Init
//   30  * LPTMR初始化函数
//   31  * 
//   32  * 参数:
//   33  *    lptmr_init_structure--LPTMR初始化结构体，
//   34  *                         具体定义见LPTMR_InitTypeDef 
//   35  * 输出:
//   36  *    0--配置错误
//   37  *    1--配置成功
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 uint8 LPTMR_Init(LPTMR_InitTypeDef lptmr_init_structure)
//   40 {
LPTMR_Init:
        PUSH     {R0-R2,R4-R7,LR}
//   41   uint8  mode = lptmr_init_structure.LPTMR_Mode; 
        LDRB     R4,[SP, #+0]
//   42   uint16 period_ms = lptmr_init_structure.LPTMR_PeriodMs;
        LDRH     R5,[SP, #+2]
//   43   uint8  pluseacc_input = lptmr_init_structure.LPTMR_PluseAccInput;
        LDRB     R6,[SP, #+4]
//   44   LPTMR_ISR_CALLBACK isr_func = lptmr_init_structure.LPTMR_Isr;
        LDR      R7,[SP, #+8]
//   45 
//   46   ASSERT(mode <= LPTMR_MODE_PLACC );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BLT.N    ??LPTMR_Init_0
        MOVS     R1,#+46
        LDR.N    R0,??DataTable7_2
        BL       assert_failed
//   47   ASSERT(pluseacc_input <= LPTMR_ALT2 );
??LPTMR_Init_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BLT.N    ??LPTMR_Init_1
        MOVS     R1,#+47
        LDR.N    R0,??DataTable7_2
        BL       assert_failed
//   48 
//   49   //初始化LPTMR时钟
//   50   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK;  
??LPTMR_Init_1:
        LDR.N    R0,??DataTable7_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable7_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   51    
//   52   //清空寄存器
//   53   LPTMR0->CSR = 0x00;                   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   54   LPTMR0->PSR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//   55   LPTMR0->CMR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_6  ;; 0x40040008
        STR      R0,[R1, #+0]
//   56    
//   57   if(mode == LPTMR_MODE_TIMER)          // 配置成低功耗定时器功能
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPTMR_Init_2
//   58   {    
//   59     /* 配置LPTMR */
//   60     // LPO 1Khz
//   61     //设置比较的值
//   62     //使用内部时钟 分频系数Prescale为 2^(X+1)
//   63     //定时器的一个计数周期=时钟源(Clk_Src)/ 预分频值(Prescale)
//   64     //定时器的定时值=设置的比较值(compare_value)/定时器的一个计数周期
//   65     LPTMR0->CMR = LPTMR_CMR_COMPARE(period_ms);                 //设置比较值
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable7_6  ;; 0x40040008
        STR      R5,[R0, #+0]
//   66     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK;       //采用LPO时钟旁路使能
        MOVS     R0,#+5
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
        B.N      ??LPTMR_Init_3
//   67         
//   68   }
//   69   else if(mode == LPTMR_MODE_PLACC)             //配置成脉冲捕获模式
??LPTMR_Init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPTMR_Init_3
//   70   {
//   71     
//   72     if(pluseacc_input == LPTMR_ALT1)            //PTA19引脚
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPTMR_Init_4
//   73     {
//   74       PORTA->PCR[19] = PORT_PCR_MUX(0x6);       //设置PTA19为脉冲累加
        MOV      R0,#+1536
        LDR.N    R1,??DataTable7_7  ;; 0x4004904c
        STR      R0,[R1, #+0]
        B.N      ??LPTMR_Init_5
//   75     }
//   76     else if(pluseacc_input == LPTMR_ALT2)       //PTC5引脚
??LPTMR_Init_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BNE.N    ??LPTMR_Init_5
//   77     {
//   78       PORTC->PCR[5] = PORT_PCR_MUX(0x4);        //设置PTC5为脉冲累加  
        MOV      R0,#+1024
        LDR.N    R1,??DataTable7_8  ;; 0x4004b014
        STR      R0,[R1, #+0]
//   79     }
//   80 
//   81     //与所用的内部时钟无关
//   82     //外部输入的信号作为计数时钟
//   83     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK; 
??LPTMR_Init_5:
        MOVS     R0,#+5
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//   84     LPTMR0->CSR = LPTMR_CSR_TPS(pluseacc_input);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+4
        ANDS     R0,R0,#0x30
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   85     LPTMR0->CSR |= LPTMR_CSR_TMS_MASK; //捕获模式
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   86     LPTMR0->CSR |= LPTMR_CSR_TFC_MASK; //自由计数模式
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   87   }
//   88   
//   89   if(lptmr_init_structure.LPTMR_IntEnable == TRUE && isr_func != NULL)
??LPTMR_Init_3:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??LPTMR_Init_6
        MOVS     R0,R7
        CMP      R0,#+0
        BEQ.N    ??LPTMR_Init_6
//   90   {
//   91     LPTMR_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_9
        STR      R7,[R0, #+0]
//   92     LPTMR0->CSR |= LPTMR_CSR_TIE_MASK;
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   93   }
//   94 
//   95   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; //开启LPTMR
??LPTMR_Init_6:
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   96   return 1;
        MOVS     R0,#+1
??LPTMR_Init_7:
        POP      {R1-R7,PC}       ;; return
//   97 }
//   98 
//   99 /*
//  100  * LPTMR_DeInit
//  101  * LPTMR反初始化函数，关闭lptmrx
//  102  * 
//  103  * 参数:
//  104  *    无
//  105  *
//  106  * 输出:
//  107  *    0--配置错误
//  108  *    1--配置成功
//  109  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 uint8 LPTMR_Deinit(void)
//  111 {
LPTMR_Deinit:
        PUSH     {R7,LR}
//  112   //清空CSR寄存器
//  113   LPTMR0->CSR=0x00;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//  114   //清空PSR寄存器
//  115   LPTMR0->PSR=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//  116   //清空CMR寄存器
//  117   LPTMR0->CMR=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_6  ;; 0x40040008
        STR      R0,[R1, #+0]
//  118   //禁止LPTimer中断
//  119   disable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       _ZN28_INTERNAL_7_LPTMR_c_5de9421b17__NVIC_DisableIRQE4IRQn
//  120   
//  121    //关闭LPTMR时钟
//  122   SIM->SCGC5 &= ~(SIM_SCGC5_LPTIMER_MASK);  
        LDR.N    R0,??DataTable7_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//  123   
//  124   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  125 }
//  126 
//  127 /*
//  128  *  LPTMR_Reset
//  129  *  低功耗定时器复位，复位以后清空低功耗定时器Counter
//  130  * 
//  131  *  参数:
//  132  *      无
//  133  *  输出:
//  134  *      无
//  135  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void LPTMR_ResetCounter(void)
//  137 {
//  138   LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK);       //Reset LPTMR0 Counter
LPTMR_ResetCounter:
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//  139 }
        BX       LR               ;; return
//  140 /*
//  141  * LPTMR_EnableIrq
//  142  * 使能LPTMR中断功能，在该函数中使能TIE位和LPTMR模块中断
//  143  * 
//  144  * 参数:
//  145  *    无
//  146  *
//  147  * 输出:
//  148  *    0--配置错误
//  149  *    1--配置成功
//  150  *
//  151  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 uint8 LPTMR_EnableIrq(void)
//  153 {
LPTMR_EnableIrq:
        PUSH     {R7,LR}
//  154   enable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       _ZN28_INTERNAL_7_LPTMR_c_5de9421b16__NVIC_EnableIRQE4IRQn
//  155   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  156 }
//  157 
//  158 /*
//  159  * LPTMR_DisableIrq
//  160  * 禁止LPTMR中断
//  161  * 
//  162  * 参数:
//  163  *    无
//  164  *
//  165  * 输出:
//  166  *    0--配置错误
//  167  *    1--配置成功
//  168  *
//  169  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 uint8 LPTMR_DisableIrq(void)
//  171 {
LPTMR_DisableIrq:
        PUSH     {R7,LR}
//  172   disable_irq(LPTimer_IRQn); 
        MOVS     R0,#+85
        BL       _ZN28_INTERNAL_7_LPTMR_c_5de9421b17__NVIC_DisableIRQE4IRQn
//  173   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  174 }
//  175 
//  176 /*
//  177  *  LPTMR_GetPulseAcc
//  178  *  得到脉冲累加的值
//  179  * 
//  180  *  参数:
//  181  *      无
//  182  *  输出:
//  183  *      脉冲累加值
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint16 LPTMR_GetPulseAcc(void)
//  186 {
//  187    return (uint16)LPTMR0->CNR;
LPTMR_GetPulseAcc:
        LDR.N    R0,??DataTable7_10  ;; 0x4004000c
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  188 }
//  189 
//  190 /*
//  191  *  LPTMR_DelayMs
//  192  *  低功耗定时器延时n个ms
//  193  * 
//  194  * 参数:
//  195  *    period_ms--设定定时器的定时值 单位ms
//  196  *    最大65535ms
//  197  *
//  198  *  输出:
//  199  *      无
//  200  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void LPTMR_DelayMs(uint16 period_ms)
//  202 {
//  203   if(!period_ms)
LPTMR_DelayMs:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??LPTMR_DelayMs_0
//  204     return;
//  205   
//  206   /* 开启LPTMR时钟 */
//  207   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
??LPTMR_DelayMs_1:
        LDR.N    R1,??DataTable7_3  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable7_3  ;; 0x40048038
        STR      R1,[R2, #+0]
//  208   
//  209   /* 设置毫秒延时计数 */
//  210   LPTMR0->CMR = period_ms; 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable7_6  ;; 0x40040008
        STR      R0,[R1, #+0]
//  211   
//  212   /* 设置LPTMR不分频采用1kHz LPO为时钟源 */
//  213   LPTMR0->PSR = 0|LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
        MOVS     R1,#+5
        LDR.N    R2,??DataTable7_5  ;; 0x40040004
        STR      R1,[R2, #+0]
//  214   
//  215   /* 开启定时器 */
//  216   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; 
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable7_4  ;; 0x40040000
        STR      R1,[R2, #+0]
//  217 
//  218   /* 等待计数达到设定值 */
//  219   while (!(LPTMR0->CSR & LPTMR_CSR_TCF_MASK));
??LPTMR_DelayMs_2:
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPTMR_DelayMs_2
//  220   
//  221   /*清除定时比较标志 */
//  222   LPTMR0->CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable7_4  ;; 0x40040000
        STR      R1,[R2, #+0]
//  223   
//  224 }
??LPTMR_DelayMs_0:
        BX       LR               ;; return
//  225 
//  226 
//  227 /*
//  228  * LPTMR中断处理函数
//  229  * 与启动文件startup_K60.s中的中断向量表关联
//  230  * 用户无需修改，程序自动进入对应通道中断函数
//  231  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void LPT_IRQHandler(void)
//  233 {
_Z14LPT_IRQHandlerv:
        PUSH     {R7,LR}
//  234   LPTMR0->CSR|=LPTMR_CSR_TCF_MASK;  //清除LPT比较标志
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//  235   LPTMR_ISR[0]();
        LDR.N    R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        BLX      R0
//  236 }
??LPT_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     LPTMR_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x4004000c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP LPTMR_Init
        SECTION_LINK LPTMR_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(LPTMR_Init))
        DC32 0x8002abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z14LPT_IRQHandlerv
        SECTION_LINK _Z14LPT_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z14LPT_IRQHandlerv))
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 4CH
        DC8 50H, 54H, 4DH, 52H, 2EH, 63H, 0
        DC8 0

        END
// 
//  16 bytes in section .ARM.exidx
//   4 bytes in section .bss
//  96 bytes in section .rodata
// 492 bytes in section .text
// 
// 492 bytes of CODE  memory
// 112 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
