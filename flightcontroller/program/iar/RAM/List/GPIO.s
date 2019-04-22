///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\GPIO.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1850.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\GPIO.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\GPIO.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC GPIO_DisableIrq
        PUBLIC GPIO_EnableIrq
        PUBLIC GPIO_ISR
        PUBLIC GPIO_Init
        PUBLIC _Z16PORTA_IRQHandlerv
        PUBLIC _Z16PORTB_IRQHandlerv
        PUBLIC _Z16PORTC_IRQHandlerv
        PUBLIC _Z16PORTD_IRQHandlerv
        PUBLIC _Z16PORTE_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\GPIO.c
//    1 /**
//    2  * @file GPIO.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-2-10
//    5  * @brief GPIO底层模块相关函数
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
_ZN27_INTERNAL_6_GPIO_c_db00cdf916__NVIC_EnableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable9  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN27_INTERNAL_6_GPIO_c_db00cdf917__NVIC_DisableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable9_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "GPIO.h"
//   24 
//   25 
//   26 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 GPIO_ISR_CALLBACK GPIO_ISR[5];
GPIO_ISR:
        DS8 20
//   28 
//   29 /*
//   30  * GPIO_Init
//   31  * GPIO通用初始化函数
//   32  * 
//   33  * 参数:
//   34  *    gpio_init_structure--GPIO初始化结构体，
//   35  *                        具体定义见GPIO_InitTypeDef
//   36  *
//   37  * 输出:
//   38  *    0--配置错误
//   39  *    1--配置成功
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 GPIO_Init(GPIO_InitTypeDef gpio_init_structure)
//   42 {
GPIO_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R9,LR}
//   43   uint8 i;
//   44   PORT_Type *portx;
//   45   uint32 pcr = PORT_PCR_MUX(1)| gpio_init_structure.GPIO_PinControl; 
        LDR      R4,[SP, #+40]
        ORRS     R4,R4,#0x100
//   46   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
        LDR      R5,[SP, #+32]
//   47   uint32 pins = gpio_init_structure.GPIO_Pins;
        LDR      R6,[SP, #+36]
//   48   uint8 dir = gpio_init_structure.GPIO_Dir;
        LDRB     R7,[SP, #+44]
//   49   uint8 output = gpio_init_structure.GPIO_Output;
        LDRB     R8,[SP, #+45]
//   50   GPIO_ISR_CALLBACK isr_func = gpio_init_structure.GPIO_Isr;
        LDR      R9,[SP, #+48]
//   51   
//   52   //参数检查
//   53   ASSERT( ptx <= PTE);                  //判断端口
        LDR.N    R0,??DataTable9_2  ;; 0x400ff101
        CMP      R5,R0
        BCC.N    ??GPIO_Init_0
        MOVS     R1,#+53
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//   54   ASSERT( dir <= 1 );                   //判断方向
??GPIO_Init_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BLT.N    ??GPIO_Init_1
        MOVS     R1,#+54
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//   55   ASSERT( output <= 1 );                //判断输出电平状态
??GPIO_Init_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BLT.N    ??GPIO_Init_2
        MOVS     R1,#+55
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//   56   
//   57   if(ptx == PTA)
??GPIO_Init_2:
        LDR.N    R0,??DataTable9_4  ;; 0x400ff000
        CMP      R5,R0
        BNE.N    ??GPIO_Init_3
//   58   {
//   59     portx = PORTA;  
        LDR.N    R2,??DataTable9_5  ;; 0x40049000
//   60     i = 0;
        MOVS     R1,#+0
        B.N      ??GPIO_Init_4
//   61   }
//   62   else if(ptx == PTB) 
??GPIO_Init_3:
        LDR.N    R0,??DataTable9_6  ;; 0x400ff040
        CMP      R5,R0
        BNE.N    ??GPIO_Init_5
//   63   {
//   64     portx = PORTB;
        LDR.N    R2,??DataTable9_7  ;; 0x4004a000
//   65     i = 1;
        MOVS     R1,#+1
        B.N      ??GPIO_Init_4
//   66   }
//   67   else if(ptx == PTC) 
??GPIO_Init_5:
        LDR.N    R0,??DataTable9_8  ;; 0x400ff080
        CMP      R5,R0
        BNE.N    ??GPIO_Init_6
//   68   {
//   69     portx = PORTC;
        LDR.N    R2,??DataTable9_9  ;; 0x4004b000
//   70     i = 2;
        MOVS     R1,#+2
        B.N      ??GPIO_Init_4
//   71   }
//   72   else if(ptx == PTD) 
??GPIO_Init_6:
        LDR.N    R0,??DataTable9_10  ;; 0x400ff0c0
        CMP      R5,R0
        BNE.N    ??GPIO_Init_7
//   73   {
//   74     portx = PORTD;
        LDR.N    R2,??DataTable9_11  ;; 0x4004c000
//   75     i = 3; 
        MOVS     R1,#+3
        B.N      ??GPIO_Init_4
//   76   }
//   77   else if(ptx == PTE) 
??GPIO_Init_7:
        LDR.N    R0,??DataTable9_12  ;; 0x400ff100
        CMP      R5,R0
        BNE.N    ??GPIO_Init_8
//   78   {
//   79     portx = PORTE;
        LDR.N    R2,??DataTable9_13  ;; 0x4004d000
//   80     i = 4;
        MOVS     R1,#+4
        B.N      ??GPIO_Init_4
//   81   }
//   82   else
//   83     return 0;
??GPIO_Init_8:
        MOVS     R0,#+0
        B.N      ??GPIO_Init_9
//   84   
//   85   //输入或输出设置
//   86   if(dir==DIR_OUTPUT)
??GPIO_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??GPIO_Init_10
//   87   {
//   88     ptx->PDDR |= pins;
        LDR      R0,[R5, #+20]
        ORRS     R0,R6,R0
        STR      R0,[R5, #+20]
//   89     //设置初始输出
//   90     if(output==OUTPUT_H)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??GPIO_Init_11
//   91     {
//   92       ptx->PSOR = pins; 
        STR      R6,[R5, #+4]
        B.N      ??GPIO_Init_12
//   93     }
//   94     else
//   95     {
//   96       ptx->PCOR = pins;
??GPIO_Init_11:
        STR      R6,[R5, #+8]
        B.N      ??GPIO_Init_12
//   97     }
//   98   }
//   99   else
//  100   { 
//  101     ptx->PDDR &= ~(pins);
??GPIO_Init_10:
        LDR      R0,[R5, #+20]
        BICS     R0,R0,R6
        STR      R0,[R5, #+20]
//  102   }
//  103   
//  104   //配置所选引脚的控制寄存器
//  105   for(uint8 i=0; i<32; i++)
??GPIO_Init_12:
        MOVS     R0,#+0
??GPIO_Init_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+32
        BGE.N    ??GPIO_Init_14
//  106   {
//  107     if(pins&(1ul<<i))
        MOVS     R3,R6
        LSRS     R3,R3,R0
        LSLS     R3,R3,#+31
        BPL.N    ??GPIO_Init_15
//  108     {
//  109       portx->PCR[i] = pcr;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R4,[R2, R0, LSL #+2]
//  110     }
//  111   }
??GPIO_Init_15:
        ADDS     R0,R0,#+1
        B.N      ??GPIO_Init_13
//  112 
//  113   if(isr_func!=NULL)
??GPIO_Init_14:
        MOV      R0,R9
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_16
//  114     GPIO_ISR[i] = isr_func;
        LDR.N    R0,??DataTable9_14
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R9,[R0, R1, LSL #+2]
//  115   
//  116   return 1;
??GPIO_Init_16:
        MOVS     R0,#+1
??GPIO_Init_9:
        POP      {R1,R4-R9}
        LDR      PC,[SP], #+20    ;; return
//  117 }
//  118 
//  119 /*
//  120  * GPIO_EnableIrq
//  121  * 使能GPIO外部中断
//  122  * 
//  123  * 参数:
//  124  *    gpio_init_structure--GPIO初始化结构体，
//  125  *                        具体定义见GPIO_InitTypeDef
//  126  *
//  127  * 输出:
//  128  *    0--配置错误
//  129  *    1--配置成功
//  130  *
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 uint8 GPIO_EnableIrq(GPIO_InitTypeDef gpio_init_structure)
//  133 {
GPIO_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  134   uint8 i;
//  135   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
        LDR      R5,[SP, #+16]
//  136   
//  137   //参数检查
//  138   ASSERT( ptx <= PTE);                  //判断端口
        LDR.N    R0,??DataTable9_2  ;; 0x400ff101
        CMP      R5,R0
        BCC.N    ??GPIO_EnableIrq_0
        MOVS     R1,#+138
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//  139   
//  140   if(ptx == PTA)
??GPIO_EnableIrq_0:
        LDR.N    R0,??DataTable9_4  ;; 0x400ff000
        CMP      R5,R0
        BNE.N    ??GPIO_EnableIrq_1
//  141     i = 0;
        MOVS     R4,#+0
        B.N      ??GPIO_EnableIrq_2
//  142   else if(ptx == PTB) 
??GPIO_EnableIrq_1:
        LDR.N    R0,??DataTable9_6  ;; 0x400ff040
        CMP      R5,R0
        BNE.N    ??GPIO_EnableIrq_3
//  143     i = 1;
        MOVS     R4,#+1
        B.N      ??GPIO_EnableIrq_2
//  144   else if(ptx == PTC) 
??GPIO_EnableIrq_3:
        LDR.N    R0,??DataTable9_8  ;; 0x400ff080
        CMP      R5,R0
        BNE.N    ??GPIO_EnableIrq_4
//  145     i = 2;
        MOVS     R4,#+2
        B.N      ??GPIO_EnableIrq_2
//  146   else if(ptx == PTD) 
??GPIO_EnableIrq_4:
        LDR.N    R0,??DataTable9_10  ;; 0x400ff0c0
        CMP      R5,R0
        BNE.N    ??GPIO_EnableIrq_5
//  147     i = 3;
        MOVS     R4,#+3
        B.N      ??GPIO_EnableIrq_2
//  148   else
//  149     i = 4;
??GPIO_EnableIrq_5:
        MOVS     R4,#+4
//  150 
//  151   enable_irq((IRQn_Type)(i + PORTA_IRQn));
??GPIO_EnableIrq_2:
        ADDS     R0,R4,#+87
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN27_INTERNAL_6_GPIO_c_db00cdf916__NVIC_EnableIRQE4IRQn
//  152   
//  153   return 1;
        MOVS     R0,#+1
??GPIO_EnableIrq_6:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  154 }
//  155 
//  156 /*
//  157  * GPIO_DisableIrq
//  158  * 禁用GPIO外部中断
//  159  * 
//  160  * 参数:
//  161  *    gpio_init_structure--GPIO初始化结构体，
//  162  *                        具体定义见GPIO_InitTypeDef
//  163  *
//  164  * 输出:
//  165  *    0--配置错误
//  166  *    1--配置成功
//  167  *
//  168  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 uint8 GPIO_DisableIrq(GPIO_InitTypeDef gpio_init_structure)
//  170 {
GPIO_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  171   uint8 i;
//  172   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
        LDR      R5,[SP, #+16]
//  173   
//  174   //参数检查
//  175   ASSERT( ptx <= PTE);                  //判断端口
        LDR.N    R0,??DataTable9_2  ;; 0x400ff101
        CMP      R5,R0
        BCC.N    ??GPIO_DisableIrq_0
        MOVS     R1,#+175
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//  176   
//  177   if(ptx == PTA)
??GPIO_DisableIrq_0:
        LDR.N    R0,??DataTable9_4  ;; 0x400ff000
        CMP      R5,R0
        BNE.N    ??GPIO_DisableIrq_1
//  178     i = 0;
        MOVS     R4,#+0
        B.N      ??GPIO_DisableIrq_2
//  179   else if(ptx == PTB) 
??GPIO_DisableIrq_1:
        LDR.N    R0,??DataTable9_6  ;; 0x400ff040
        CMP      R5,R0
        BNE.N    ??GPIO_DisableIrq_3
//  180     i = 1;
        MOVS     R4,#+1
        B.N      ??GPIO_DisableIrq_2
//  181   else if(ptx == PTC) 
??GPIO_DisableIrq_3:
        LDR.N    R0,??DataTable9_8  ;; 0x400ff080
        CMP      R5,R0
        BNE.N    ??GPIO_DisableIrq_4
//  182     i = 2;
        MOVS     R4,#+2
        B.N      ??GPIO_DisableIrq_2
//  183   else if(ptx == PTD) 
??GPIO_DisableIrq_4:
        LDR.N    R0,??DataTable9_10  ;; 0x400ff0c0
        CMP      R5,R0
        BNE.N    ??GPIO_DisableIrq_5
//  184     i = 3;
        MOVS     R4,#+3
        B.N      ??GPIO_DisableIrq_2
//  185   else
//  186     i = 4;
??GPIO_DisableIrq_5:
        MOVS     R4,#+4
//  187   
//  188   disable_irq((IRQn_Type)(i + PORTA_IRQn));
??GPIO_DisableIrq_2:
        ADDS     R0,R4,#+87
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN27_INTERNAL_6_GPIO_c_db00cdf917__NVIC_DisableIRQE4IRQn
//  189   
//  190   return 1;
        MOVS     R0,#+1
??GPIO_DisableIrq_6:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  191 }
//  192 
//  193 /*
//  194  * GPIO_Ouptut
//  195  * 设置GPIO端口0~31位的输出
//  196  * 
//  197  * 参数:
//  198  *    ptx--端口号
//  199  *      |__PTA        --Port A
//  200  *      |__PTB        --Port B
//  201  *      |__PTC        --Port C
//  202  *      |__PTD        --Port D
//  203  *      |__PTE        --Port E
//  204  *    data32--输出数据
//  205  *      |__0x00000000~0xFFFFFFFF--低到高代表GPIO口的第0~31位数据
//  206  *
//  207  * 输出:
//  208  *
//  209  */
//  210 __INLINE void GPIO_Output(GPIO_Type *ptx, uint32 data32)
//  211 { 
//  212   ptx->PDOR = data32;
//  213 }
//  214 
//  215 /*
//  216  * GPIO_Ouptut_b
//  217  * 设置GPIO端口一位的输出
//  218  * 
//  219  * 参数:
//  220  *    ptx--端口号
//  221  *      |__PTA        --Port A
//  222  *      |__PTB        --Port B
//  223  *      |__PTC        --Port C
//  224  *      |__PTD        --Port D
//  225  *      |__PTE        --Port E
//  226  *    lsb_num--端口引脚位数编号
//  227  *      |__0~31       --GPIO口的第0~31位
//  228  *    data1--输出数据
//  229  *      |__0          --输出低电平
//  230  *      |__1          --输出高电平
//  231  *
//  232  * 输出:
//  233  *
//  234  */
//  235 //inline 放到头文件中
//  236 
//  237 /*
//  238  * GPIO_Ouptut_8b
//  239  * 设置GPIO端口8位的输出
//  240  * 
//  241  * 参数:
//  242  *    ptx--端口号
//  243  *      |__PTA        --Port A
//  244  *      |__PTB        --Port B
//  245  *      |__PTC        --Port C
//  246  *      |__PTD        --Port D
//  247  *      |__PTE        --Port E
//  248  *    lsb_num--代表8个端口引脚的最低位数编号
//  249  *      |__0~24       --GPIO口的第0~24位
//  250  *    data8--输出数据
//  251  *      |__0x00~0xFF--代表GPIO口输出的8位数据
//  252  *
//  253  * 输出:
//  254  *
//  255  */
//  256 __INLINE void GPIO_Output_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  257 {
//  258   ptx->PDOR = (ptx->PDOR & ~(0xFFL<<lsb_num)) | (uint32)data8<<lsb_num;
//  259 }
//  260 
//  261 /*
//  262  * GPIO_Toggle
//  263  * 设置GPIO端口0~31的电平翻转
//  264  * 
//  265  * 参数:
//  266  *    ptx--端口号
//  267  *      |__PTA        --Port A
//  268  *      |__PTB        --Port B
//  269  *      |__PTC        --Port C
//  270  *      |__PTD        --Port D
//  271  *      |__PTE        --Port E
//  272  *    data32--翻转数据
//  273  *      |__0x00000000~0xFFFFFFFF--低到高代表GPIO口的第0~31位的翻转，1为反转，0为保持不变。
//  274  *
//  275  * 输出:
//  276  *
//  277  */
//  278 __INLINE void GPIO_Toggle(GPIO_Type *ptx, uint32 data32)
//  279 {  
//  280   ptx->PTOR = data32;
//  281 }
//  282 
//  283 /*
//  284  * GPIO_Toggle_b
//  285  * 设置GPIO端口一位的翻转
//  286  * 
//  287  * 参数:
//  288  *    ptx--端口号
//  289  *      |__PTA        --Port A
//  290  *      |__PTB        --Port B
//  291  *      |__PTC        --Port C
//  292  *      |__PTD        --Port D
//  293  *      |__PTE        --Port E
//  294  *    lsb_num--端口引脚位数编号
//  295  *      |__0~31       --GPIO口的第0~31位
//  296  *
//  297  * 输出:
//  298  *
//  299  */
//  300 
//  301 
//  302 /*
//  303  * GPIO_Toggle_8b
//  304  * 设置GPIO端口8位的翻转
//  305  * 
//  306  * 参数:
//  307  *    ptx--端口号
//  308  *      |__PTA        --Port A
//  309  *      |__PTB        --Port B
//  310  *      |__PTC        --Port C
//  311  *      |__PTD        --Port D
//  312  *      |__PTE        --Port E
//  313  *    lsb_num--代表8个端口引脚的最低位数编号
//  314  *      |__0~24       --GPIO口的第0~24位
//  315  *    data8--输出数据
//  316  *      |__0x00~0xFF--代表GPIO口输出的8位数据
//  317  *
//  318  * 输出:
//  319  *
//  320  */
//  321 __INLINE void GPIO_Toggle_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  322 {
//  323   ptx->PTOR = (uint32)data8<<lsb_num;
//  324 }
//  325 
//  326 /*
//  327  * GPIO_Input
//  328  * 取得GPIO口0~31位的数据
//  329  * 
//  330  * 参数:
//  331  *    ptx--端口号
//  332  *      |__PTA        --Port A
//  333  *      |__PTB        --Port B
//  334  *      |__PTC        --Port C
//  335  *      |__PTD        --Port D
//  336  *      |__PTE        --Port E
//  337  *
//  338  * 输出:
//  339  *    指定GPIO口的32位输入
//  340  *
//  341  */
//  342 __INLINE uint32 GPIO_Input(GPIO_Type *ptx)
//  343 {
//  344   return ptx->PDIR;
//  345 }
//  346 
//  347 /*
//  348  * GPIO_Input_b
//  349  * 取得GPIO口某一位的数据
//  350  * 
//  351  * 参数:
//  352  *    ptx--端口号
//  353  *      |__PTA        --Port A
//  354  *      |__PTB        --Port B
//  355  *      |__PTC        --Port C
//  356  *      |__PTD        --Port D
//  357  *      |__PTE        --Port E
//  358  *    lsb_num--端口引脚位数编号
//  359  *      |__0~31       --GPIO口的第0~31位
//  360  *
//  361  * 输出:
//  362  *    指定GPIO口的指定位数的电平
//  363  *
//  364  */
//  365 
//  366 
//  367 /*
//  368  * GPIO_Input_8b
//  369  * 取得GPIO端口8位数据的输入
//  370  * 
//  371  * 参数:
//  372  *    ptx--端口号
//  373  *      |__PTA        --Port A
//  374  *      |__PTB        --Port B
//  375  *      |__PTC        --Port C
//  376  *      |__PTD        --Port D
//  377  *      |__PTE        --Port E
//  378  *    lsb_num--代表8个端口引脚的最低位数编号
//  379  *      |__0~24       --GPIO口的第0~24位
//  380  *
//  381  * 输出:
//  382  *    指定GPIO口的8位数据的电平
//  383  *
//  384  */
//  385 __INLINE uint8 GPIO_Input_8b(GPIO_Type *ptx, uint8 lsb_num)
//  386 {
//  387   return (uint8)((ptx->PDIR>>lsb_num)&0xFFL);
//  388 }
//  389 
//  390 /*
//  391  * PORTA--PORTE中断处理函数
//  392  * 与启动文件startup_K60.s中的中断向量表关联
//  393  * 用户无需修改，程序自动进入对应通道中断函数
//  394  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 void PORTA_IRQHandler(void)
//  396 {
_Z16PORTA_IRQHandlerv:
        PUSH     {R7,LR}
//  397 #if (UCOS_II > 0u)
//  398   OS_CPU_SR  cpu_sr = 0u;
//  399   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  400   OSIntEnter();
//  401   OS_EXIT_CRITICAL();
//  402 #endif
//  403   
//  404   //调用用户自定义中断服务
//  405   GPIO_ISR[0](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+0]
        BLX      R0
//  406   PORTA->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_15  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  407   
//  408 #if (UCOS_II > 0u)
//  409   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  410 #endif
//  411 }//           ;87:  PORT A interrupt
??PORTA_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  412 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  413 void PORTB_IRQHandler(void)
//  414 {
_Z16PORTB_IRQHandlerv:
        PUSH     {R7,LR}
//  415 #if (UCOS_II > 0u)
//  416   OS_CPU_SR  cpu_sr = 0u;
//  417   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  418   OSIntEnter();
//  419   OS_EXIT_CRITICAL();
//  420 #endif
//  421   
//  422   //调用用户自定义中断服务
//  423   GPIO_ISR[1](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+4]
        BLX      R0
//  424   PORTB->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_16  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  425   
//  426 #if (UCOS_II > 0u)
//  427   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  428 #endif
//  429 }//           ;88:  PORT B interrupt
??PORTB_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  430 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  431 void PORTC_IRQHandler(void)
//  432 {
_Z16PORTC_IRQHandlerv:
        PUSH     {R7,LR}
//  433 #if (UCOS_II > 0u)
//  434   OS_CPU_SR  cpu_sr = 0u;
//  435   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  436   OSIntEnter();
//  437   OS_EXIT_CRITICAL();
//  438 #endif
//  439   
//  440   //调用用户自定义中断服务
//  441   GPIO_ISR[2](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+8]
        BLX      R0
//  442   PORTC->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_17  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  443   
//  444 #if (UCOS_II > 0u)
//  445   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  446 #endif
//  447 }//           ;89:  PORT C interrupt
??PORTC_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  448 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  449 void PORTD_IRQHandler(void)
//  450 {
_Z16PORTD_IRQHandlerv:
        PUSH     {R7,LR}
//  451 #if (UCOS_II > 0u)
//  452   OS_CPU_SR  cpu_sr = 0u;
//  453   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  454   OSIntEnter();
//  455   OS_EXIT_CRITICAL();
//  456 #endif
//  457   
//  458   //调用用户自定义中断服务
//  459   GPIO_ISR[3](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+12]
        BLX      R0
//  460   PORTD->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_18  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  461   
//  462 #if (UCOS_II > 0u)
//  463   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  464 #endif
//  465 }//           ;90:  PORT D interrupt
??PORTD_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  466 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  467 void PORTE_IRQHandler(void)
//  468 {
_Z16PORTE_IRQHandlerv:
        PUSH     {R7,LR}
//  469 #if (UCOS_II > 0u)
//  470   OS_CPU_SR  cpu_sr = 0u;
//  471   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  472   OSIntEnter();
//  473   OS_EXIT_CRITICAL();
//  474 #endif
//  475   
//  476   //调用用户自定义中断服务
//  477   GPIO_ISR[4](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+16]
        BLX      R0
//  478   PORTE->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_19  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  479   
//  480 #if (UCOS_II > 0u)
//  481   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  482 #endif
//  483 }//           ;91:  PORT E interrupt
??PORTE_IRQHandler_0:
        POP      {R0,PC}          ;; return

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
        DC32     0x400ff101

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     GPIO_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x4004d0a0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP GPIO_Init
        SECTION_LINK GPIO_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(GPIO_Init))
        DC32 0x8000ad03
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP GPIO_EnableIrq
        SECTION_LINK GPIO_EnableIrq
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(GPIO_EnableIrq))
        DC32 0x8000a903
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP GPIO_DisableIrq
        SECTION_LINK GPIO_DisableIrq
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(GPIO_DisableIrq))
        DC32 0x8000a903
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16PORTA_IRQHandlerv
        SECTION_LINK _Z16PORTA_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16PORTA_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16PORTB_IRQHandlerv
        SECTION_LINK _Z16PORTB_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16PORTB_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16PORTC_IRQHandlerv
        SECTION_LINK _Z16PORTC_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16PORTC_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16PORTD_IRQHandlerv
        SECTION_LINK _Z16PORTD_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16PORTD_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16PORTE_IRQHandlerv
        SECTION_LINK _Z16PORTE_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16PORTE_IRQHandlerv))
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 47H
        DC8 50H, 49H, 4FH, 2EH, 63H, 0
        DC8 0, 0

        END
// 
//  64 bytes in section .ARM.exidx
//  20 bytes in section .bss
//  96 bytes in section .rodata
// 610 bytes in section .text
// 
// 610 bytes of CODE  memory
// 160 bytes of CONST memory
//  20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
