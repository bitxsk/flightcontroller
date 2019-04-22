///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:56:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\GPIO.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW6420.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\GPIO.c
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
//        D:\iar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\GPIO.s
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
//    5  * @brief GPIO�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN27_INTERNAL_6_GPIO_c_db00cdf916__NVIC_EnableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable9  ;; 0xe000e100
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN27_INTERNAL_6_GPIO_c_db00cdf917__NVIC_DisableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable9_1  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "GPIO.h"
//   24 
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 GPIO_ISR_CALLBACK GPIO_ISR[5];
GPIO_ISR:
        DS8 20
//   28 
//   29 /*
//   30  * GPIO_Init
//   31  * GPIOͨ�ó�ʼ������
//   32  * 
//   33  * ����:
//   34  *    gpio_init_structure--GPIO��ʼ���ṹ�壬
//   35  *                        ���嶨���GPIO_InitTypeDef
//   36  *
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
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
//   52   //�������
//   53   ASSERT( ptx <= PTE);                  //�ж϶˿�
        LDR.N    R0,??DataTable9_2  ;; 0x400ff101
        CMP      R5,R0
        BCC.N    ??GPIO_Init_0
        MOVS     R1,#+53
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//   54   ASSERT( dir <= 1 );                   //�жϷ���
??GPIO_Init_0:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BLT.N    ??GPIO_Init_1
        MOVS     R1,#+54
        LDR.N    R0,??DataTable9_3
        BL       assert_failed
//   55   ASSERT( output <= 1 );                //�ж������ƽ״̬
??GPIO_Init_1:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
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
//   85   //������������
//   86   if(dir==DIR_OUTPUT)
??GPIO_Init_4:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??GPIO_Init_10
//   87   {
//   88     ptx->PDDR |= pins;
        LDR      R0,[R5, #+20]
        ORRS     R0,R6,R0
        STR      R0,[R5, #+20]
//   89     //���ó�ʼ���
//   90     if(output==OUTPUT_H)
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
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
//  104   //������ѡ���ŵĿ��ƼĴ���
//  105   for(uint8 i=0; i<32; i++)
??GPIO_Init_12:
        MOVS     R0,#+0
??GPIO_Init_13:
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+32
        BGE.N    ??GPIO_Init_14
//  106   {
//  107     if(pins&(1ul<<i))
        MOVS     R3,R6
        LSRS     R3,R3,R0
        LSLS     R3,R3,#+31
        BPL.N    ??GPIO_Init_15
//  108     {
//  109       portx->PCR[i] = pcr;
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        STR      R4,[R2, R3, LSL #+2]
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
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        STR      R9,[R0, R3, LSL #+2]
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
//  121  * ʹ��GPIO�ⲿ�ж�
//  122  * 
//  123  * ����:
//  124  *    gpio_init_structure--GPIO��ʼ���ṹ�壬
//  125  *                        ���嶨���GPIO_InitTypeDef
//  126  *
//  127  * ���:
//  128  *    0--���ô���
//  129  *    1--���óɹ�
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
//  137   //�������
//  138   ASSERT( ptx <= PTE);                  //�ж϶˿�
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
//  158  * ����GPIO�ⲿ�ж�
//  159  * 
//  160  * ����:
//  161  *    gpio_init_structure--GPIO��ʼ���ṹ�壬
//  162  *                        ���嶨���GPIO_InitTypeDef
//  163  *
//  164  * ���:
//  165  *    0--���ô���
//  166  *    1--���óɹ�
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
//  174   //�������
//  175   ASSERT( ptx <= PTE);                  //�ж϶˿�
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
//  195  * ����GPIO�˿�0~31λ�����
//  196  * 
//  197  * ����:
//  198  *    ptx--�˿ں�
//  199  *      |__PTA        --Port A
//  200  *      |__PTB        --Port B
//  201  *      |__PTC        --Port C
//  202  *      |__PTD        --Port D
//  203  *      |__PTE        --Port E
//  204  *    data32--�������
//  205  *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ����
//  206  *
//  207  * ���:
//  208  *
//  209  */
//  210 __INLINE void GPIO_Output(GPIO_Type *ptx, uint32 data32)
//  211 { 
//  212   ptx->PDOR = data32;
//  213 }
//  214 
//  215 /*
//  216  * GPIO_Ouptut_b
//  217  * ����GPIO�˿�һλ�����
//  218  * 
//  219  * ����:
//  220  *    ptx--�˿ں�
//  221  *      |__PTA        --Port A
//  222  *      |__PTB        --Port B
//  223  *      |__PTC        --Port C
//  224  *      |__PTD        --Port D
//  225  *      |__PTE        --Port E
//  226  *    lsb_num--�˿�����λ�����
//  227  *      |__0~31       --GPIO�ڵĵ�0~31λ
//  228  *    data1--�������
//  229  *      |__0          --����͵�ƽ
//  230  *      |__1          --����ߵ�ƽ
//  231  *
//  232  * ���:
//  233  *
//  234  */
//  235 //inline �ŵ�ͷ�ļ���
//  236 
//  237 /*
//  238  * GPIO_Ouptut_8b
//  239  * ����GPIO�˿�8λ�����
//  240  * 
//  241  * ����:
//  242  *    ptx--�˿ں�
//  243  *      |__PTA        --Port A
//  244  *      |__PTB        --Port B
//  245  *      |__PTC        --Port C
//  246  *      |__PTD        --Port D
//  247  *      |__PTE        --Port E
//  248  *    lsb_num--����8���˿����ŵ����λ�����
//  249  *      |__0~24       --GPIO�ڵĵ�0~24λ
//  250  *    data8--�������
//  251  *      |__0x00~0xFF--����GPIO�������8λ����
//  252  *
//  253  * ���:
//  254  *
//  255  */
//  256 __INLINE void GPIO_Output_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  257 {
//  258   ptx->PDOR = (ptx->PDOR & ~(0xFFL<<lsb_num)) | (uint32)data8<<lsb_num;
//  259 }
//  260 
//  261 /*
//  262  * GPIO_Toggle
//  263  * ����GPIO�˿�0~31�ĵ�ƽ��ת
//  264  * 
//  265  * ����:
//  266  *    ptx--�˿ں�
//  267  *      |__PTA        --Port A
//  268  *      |__PTB        --Port B
//  269  *      |__PTC        --Port C
//  270  *      |__PTD        --Port D
//  271  *      |__PTE        --Port E
//  272  *    data32--��ת����
//  273  *      |__0x00000000~0xFFFFFFFF--�͵��ߴ���GPIO�ڵĵ�0~31λ�ķ�ת��1Ϊ��ת��0Ϊ���ֲ��䡣
//  274  *
//  275  * ���:
//  276  *
//  277  */
//  278 __INLINE void GPIO_Toggle(GPIO_Type *ptx, uint32 data32)
//  279 {  
//  280   ptx->PTOR = data32;
//  281 }
//  282 
//  283 /*
//  284  * GPIO_Toggle_b
//  285  * ����GPIO�˿�һλ�ķ�ת
//  286  * 
//  287  * ����:
//  288  *    ptx--�˿ں�
//  289  *      |__PTA        --Port A
//  290  *      |__PTB        --Port B
//  291  *      |__PTC        --Port C
//  292  *      |__PTD        --Port D
//  293  *      |__PTE        --Port E
//  294  *    lsb_num--�˿�����λ�����
//  295  *      |__0~31       --GPIO�ڵĵ�0~31λ
//  296  *
//  297  * ���:
//  298  *
//  299  */
//  300 __INLINE void GPIO_Toggle_b(GPIO_Type *ptx, uint8 lsb_num)
//  301 {  
//  302   ptx->PTOR = 0x01L<<lsb_num;
//  303 }
//  304 
//  305 /*
//  306  * GPIO_Toggle_8b
//  307  * ����GPIO�˿�8λ�ķ�ת
//  308  * 
//  309  * ����:
//  310  *    ptx--�˿ں�
//  311  *      |__PTA        --Port A
//  312  *      |__PTB        --Port B
//  313  *      |__PTC        --Port C
//  314  *      |__PTD        --Port D
//  315  *      |__PTE        --Port E
//  316  *    lsb_num--����8���˿����ŵ����λ�����
//  317  *      |__0~24       --GPIO�ڵĵ�0~24λ
//  318  *    data8--�������
//  319  *      |__0x00~0xFF--����GPIO�������8λ����
//  320  *
//  321  * ���:
//  322  *
//  323  */
//  324 __INLINE void GPIO_Toggle_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  325 {
//  326   ptx->PTOR = (uint32)data8<<lsb_num;
//  327 }
//  328 
//  329 /*
//  330  * GPIO_Input
//  331  * ȡ��GPIO��0~31λ������
//  332  * 
//  333  * ����:
//  334  *    ptx--�˿ں�
//  335  *      |__PTA        --Port A
//  336  *      |__PTB        --Port B
//  337  *      |__PTC        --Port C
//  338  *      |__PTD        --Port D
//  339  *      |__PTE        --Port E
//  340  *
//  341  * ���:
//  342  *    ָ��GPIO�ڵ�32λ����
//  343  *
//  344  */
//  345 __INLINE uint32 GPIO_Input(GPIO_Type *ptx)
//  346 {
//  347   return ptx->PDIR;
//  348 }
//  349 
//  350 /*
//  351  * GPIO_Input_b
//  352  * ȡ��GPIO��ĳһλ������
//  353  * 
//  354  * ����:
//  355  *    ptx--�˿ں�
//  356  *      |__PTA        --Port A
//  357  *      |__PTB        --Port B
//  358  *      |__PTC        --Port C
//  359  *      |__PTD        --Port D
//  360  *      |__PTE        --Port E
//  361  *    lsb_num--�˿�����λ�����
//  362  *      |__0~31       --GPIO�ڵĵ�0~31λ
//  363  *
//  364  * ���:
//  365  *    ָ��GPIO�ڵ�ָ��λ���ĵ�ƽ
//  366  *
//  367  */
//  368 __INLINE uint8 GPIO_Input_b(GPIO_Type *ptx, uint8 lsb_num)
//  369 {  
//  370   return (uint8)((ptx->PDIR>>lsb_num)&0x01L);
//  371 }
//  372 
//  373 /*
//  374  * GPIO_Input_8b
//  375  * ȡ��GPIO�˿�8λ���ݵ�����
//  376  * 
//  377  * ����:
//  378  *    ptx--�˿ں�
//  379  *      |__PTA        --Port A
//  380  *      |__PTB        --Port B
//  381  *      |__PTC        --Port C
//  382  *      |__PTD        --Port D
//  383  *      |__PTE        --Port E
//  384  *    lsb_num--����8���˿����ŵ����λ�����
//  385  *      |__0~24       --GPIO�ڵĵ�0~24λ
//  386  *
//  387  * ���:
//  388  *    ָ��GPIO�ڵ�8λ���ݵĵ�ƽ
//  389  *
//  390  */
//  391 __INLINE uint8 GPIO_Input_8b(GPIO_Type *ptx, uint8 lsb_num)
//  392 {
//  393   return (uint8)((ptx->PDIR>>lsb_num)&0xFFL);
//  394 }
//  395 
//  396 /*
//  397  * PORTA--PORTE�жϴ�����
//  398  * �������ļ�startup_K60.s�е��ж����������
//  399  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  400  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  401 void PORTA_IRQHandler(void)
//  402 {
_Z16PORTA_IRQHandlerv:
        PUSH     {R7,LR}
//  403 #if (UCOS_II > 0u)
//  404   OS_CPU_SR  cpu_sr = 0u;
//  405   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  406   OSIntEnter();
//  407   OS_EXIT_CRITICAL();
//  408 #endif
//  409   
//  410   //�����û��Զ����жϷ���
//  411   GPIO_ISR[0](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+0]
        BLX      R0
//  412   PORTA->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_15  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  413   
//  414 #if (UCOS_II > 0u)
//  415   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  416 #endif
//  417 }//           ;87:  PORT A interrupt
??PORTA_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  418 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  419 void PORTB_IRQHandler(void)
//  420 {
_Z16PORTB_IRQHandlerv:
        PUSH     {R7,LR}
//  421 #if (UCOS_II > 0u)
//  422   OS_CPU_SR  cpu_sr = 0u;
//  423   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  424   OSIntEnter();
//  425   OS_EXIT_CRITICAL();
//  426 #endif
//  427   
//  428   //�����û��Զ����жϷ���
//  429   GPIO_ISR[1](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+4]
        BLX      R0
//  430   PORTB->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_16  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  431   
//  432 #if (UCOS_II > 0u)
//  433   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  434 #endif
//  435 }//           ;88:  PORT B interrupt
??PORTB_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  436 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  437 void PORTC_IRQHandler(void)
//  438 {
_Z16PORTC_IRQHandlerv:
        PUSH     {R7,LR}
//  439 #if (UCOS_II > 0u)
//  440   OS_CPU_SR  cpu_sr = 0u;
//  441   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  442   OSIntEnter();
//  443   OS_EXIT_CRITICAL();
//  444 #endif
//  445   
//  446   //�����û��Զ����жϷ���
//  447   GPIO_ISR[2](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+8]
        BLX      R0
//  448   PORTC->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_17  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  449   
//  450 #if (UCOS_II > 0u)
//  451   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  452 #endif
//  453 }//           ;89:  PORT C interrupt
??PORTC_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  454 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  455 void PORTD_IRQHandler(void)
//  456 {
_Z16PORTD_IRQHandlerv:
        PUSH     {R7,LR}
//  457 #if (UCOS_II > 0u)
//  458   OS_CPU_SR  cpu_sr = 0u;
//  459   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  460   OSIntEnter();
//  461   OS_EXIT_CRITICAL();
//  462 #endif
//  463   
//  464   //�����û��Զ����жϷ���
//  465   GPIO_ISR[3](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+12]
        BLX      R0
//  466   PORTD->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_18  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  467   
//  468 #if (UCOS_II > 0u)
//  469   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  470 #endif
//  471 }//           ;90:  PORT D interrupt
??PORTD_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  472 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  473 void PORTE_IRQHandler(void)
//  474 {
_Z16PORTE_IRQHandlerv:
        PUSH     {R7,LR}
//  475 #if (UCOS_II > 0u)
//  476   OS_CPU_SR  cpu_sr = 0u;
//  477   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  478   OSIntEnter();
//  479   OS_EXIT_CRITICAL();
//  480 #endif
//  481   
//  482   //�����û��Զ����жϷ���
//  483   GPIO_ISR[4](); 
        LDR.N    R0,??DataTable9_14
        LDR      R0,[R0, #+16]
        BLX      R0
//  484   PORTE->ISFR =0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable9_19  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  485   
//  486 #if (UCOS_II > 0u)
//  487   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  488 #endif
//  489 }//           ;91:  PORT E interrupt
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
// 628 bytes in section .text
// 
// 628 bytes of CODE  memory
// 160 bytes of CONST memory
//  20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
