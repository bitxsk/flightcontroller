///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:04
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\PIT.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWB30.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\PIT.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC PIT0_IRQHandler
        PUBLIC PIT_Deinit
        PUBLIC PIT_DisableIrq
        PUBLIC PIT_EnableIrq
        PUBLIC PIT_ISR
        PUBLIC PIT_Init
        PUBLIC _Z15PIT1_IRQHandlerv
        PUBLIC _Z15PIT2_IRQHandlerv
        PUBLIC _Z15PIT3_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\PIT.c
//    1 /**
//    2  * @file PIT.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PIT�ײ�ģ����غ���
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
_ZN26_INTERNAL_5_PIT_c_PIT_Init16__NVIC_EnableIRQE4IRQn:
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
_ZN26_INTERNAL_5_PIT_c_PIT_Init17__NVIC_DisableIRQE4IRQn:
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
//   23 #include "PIT.h"
//   24 #include "isr.h"
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 PIT_ISR_CALLBACK PIT_ISR[4];
PIT_ISR:
        DS8 16
//   28 
//   29 /*
//   30  * PIT_Init
//   31  * PITͨ�ó�ʼ��������ѡ��PITx�������ж����ڡ��жϺ���
//   32  * 
//   33  * ����:
//   34  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   35  *                        ���嶨���PIT_InitTypeDef
//   36  *
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 PIT_Init(PIT_InitTypeDef pit_init_structure)
//   42 { 
PIT_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R6,LR}
//   43   //���㶨ʱ����ֵ
//   44   uint32 ldval = pit_init_structure.PIT_PeriodUs*(g_bus_clock/1000000)
//   45                + pit_init_structure.PIT_PeriodMs*1000*(g_bus_clock/1000000)
//   46                + pit_init_structure.PIT_PeriodS*1000000*(g_bus_clock/1000000);
        LDR      R1,[SP, #+20]
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        LDR.N    R2,??DataTable9_3  ;; 0xf4240
        UDIV     R2,R0,R2
        LDR      R3,[SP, #+24]
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        LDR.N    R4,??DataTable9_3  ;; 0xf4240
        UDIV     R0,R0,R4
        MULS     R3,R0,R3
        MOV      R0,#+1000
        MULS     R3,R0,R3
        MLA      R1,R2,R1,R3
        LDR      R4,[SP, #+28]
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        LDR.N    R2,??DataTable9_3  ;; 0xf4240
        UDIV     R0,R0,R2
        MULS     R4,R0,R4
        LDR.N    R0,??DataTable9_3  ;; 0xf4240
        MLA      R4,R0,R4,R1
//   47   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R5,[SP, #+16]
//   48   PIT_ISR_CALLBACK isr_func = pit_init_structure.PIT_Isr;
        LDR      R6,[SP, #+32]
//   49   
//   50   //�������
//   51   ASSERT( pitx <= PIT3);        //�ж�ģ���
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BLT.N    ??PIT_Init_0
        MOVS     R1,#+51
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   52   ASSERT( ldval > 0);           //�ж�ʱ����ֵ                
??PIT_Init_0:
        CMP      R4,#+0
        BNE.N    ??PIT_Init_1
        MOVS     R1,#+52
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   53   
//   54   //������ʱģ��ʱ��
//   55   SIM->SCGC6 |= SIM_SCGC6_PIT_MASK;
??PIT_Init_1:
        LDR.N    R0,??DataTable9_5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable9_5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   56   
//   57   // ���� PIT
//   58   PIT->MCR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_6  ;; 0x40037000
        STR      R0,[R1, #+0]
//   59  
//   60   if(isr_func != NULL){
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??PIT_Init_2
//   61     PIT_ISR[pitx] = isr_func;
        LDR.N    R0,??DataTable9_7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R6,[R0, R5, LSL #+2]
//   62     //ʹ���ж�
//   63     PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   64     //��NVIC��ʹ��PIT�ж�
//   65     //enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
//   66   }
//   67   
//   68   //period = (period_ns/bus_period_ns)-1
//   69   PIT->CHANNEL[pitx].LDVAL = ldval-1;
??PIT_Init_2:
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        STR      R0,[R1, R2]
//   70   //ʹ���ж�
//   71   //PIT->CHANNEL[pitx].TCTRL = PIT_TCTRL_TIE_MASK;
//   72   //��ʼ��ʱ
//   73   PIT->CHANNEL[pitx].TCTRL |= PIT_TCTRL_TEN_MASK;
        LDR.N    R0,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   74   
//   75   return 1;
        MOVS     R0,#+1
??PIT_Init_3:
        POP      {R4-R6}
        LDR      PC,[SP], #+20    ;; return
//   76 }
//   77 
//   78 /*
//   79  * PIT_Deinit
//   80  * PIT����ʼ���������ر�ѡ���PITx
//   81  * 
//   82  * ����:
//   83  *    pit_init_structure--PIT��ʼ���ṹ�壬
//   84  *                        ���嶨���PIT_InitTypeDef
//   85  *
//   86  * ���:
//   87  *    ��
//   88  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 void PIT_Deinit(PIT_InitTypeDef pit_init_structure)
//   90 { 
PIT_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//   91   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//   92   
//   93   //�������
//   94   ASSERT( pitx <= PIT3);        //�ж�ģ���              
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??PIT_Deinit_0
        MOVS     R1,#+94
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//   95 
//   96   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
??PIT_Deinit_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_PIT_c_PIT_Init17__NVIC_DisableIRQE4IRQn
//   97 
//   98   //�����ж�\ֹͣ��ʱ
//   99   PIT->CHANNEL[pitx].TCTRL = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_8  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//  100 }
??PIT_Deinit_1:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  101 
//  102 /*
//  103  * PIT_EnableIrq
//  104  * ʹ��PITx�ж�
//  105  * 
//  106  * ����:
//  107  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  108  *                        ���嶨���PIT_InitTypeDef
//  109  *
//  110  * ���:
//  111  *    ��
//  112  *
//  113  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void PIT_EnableIrq(PIT_InitTypeDef pit_init_structure)
//  115 {
PIT_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  116   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//  117   
//  118   //�������
//  119   ASSERT( pitx <= PIT3);                //�ж�PITx
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??PIT_EnableIrq_0
        MOVS     R1,#+119
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//  120 
//  121   enable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx)); 
??PIT_EnableIrq_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_PIT_c_PIT_Init16__NVIC_EnableIRQE4IRQn
//  122 }
??PIT_EnableIrq_1:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  123 
//  124 /*
//  125  * PIT_DisableIrq
//  126  * ����PITx�ж�
//  127  * 
//  128  * ����:
//  129  *    pit_init_structure--PIT��ʼ���ṹ�壬
//  130  *                        ���嶨���PIT_InitTypeDef
//  131  *
//  132  * ���:
//  133  *    ��
//  134  *
//  135  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void PIT_DisableIrq(PIT_InitTypeDef pit_init_structure)
//  137 {
PIT_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  138   PITx pitx = pit_init_structure.PIT_Pitx;
        LDRB     R4,[SP, #+8]
//  139   
//  140   //�������
//  141   ASSERT( pitx <= PIT3);                //�ж�PITx
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??PIT_DisableIrq_0
        MOVS     R1,#+141
        LDR.N    R0,??DataTable9_4
        BL       assert_failed
//  142   
//  143   disable_irq((IRQn_Type)(PIT0_IRQn + (IRQn_Type)pitx));
??PIT_DisableIrq_0:
        ADDS     R0,R4,#+68
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_PIT_c_PIT_Init17__NVIC_DisableIRQE4IRQn
//  144 }
??PIT_DisableIrq_1:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  145 
//  146 
//  147 /*
//  148  * PIT0--PIT3�жϴ�����
//  149  * �������ļ�startup_K60.s�е��ж����������
//  150  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  151  */
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void PIT0_IRQHandler(void)
//  154 {
PIT0_IRQHandler:
        PUSH     {R7,LR}
//  155 #if (UCOS_II > 0u)
//  156   OS_CPU_SR  cpu_sr = 0u;
//  157   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  158   OSIntEnter();
//  159   OS_EXIT_CRITICAL();
//  160 #endif
//  161   
//  162   //�����û��Զ����жϷ���
//  163   PIT_ISR[0]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  164   //����жϱ�־λ
//  165   PIT->CHANNEL[0].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_9  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_9  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  166   
//  167 #if (UCOS_II > 0u)
//  168   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  169 #endif
//  170 }
??PIT0_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 void PIT1_IRQHandler(void)
//  172 {
_Z15PIT1_IRQHandlerv:
        PUSH     {R7,LR}
//  173 #if (UCOS_II > 0u)
//  174   OS_CPU_SR  cpu_sr = 0u;
//  175   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  176   OSIntEnter();
//  177   OS_EXIT_CRITICAL();
//  178 #endif
//  179   
//  180   //�����û��Զ����жϷ���
//  181   PIT_ISR[1]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+4]
        BLX      R0
//  182   //����жϱ�־λ
//  183   PIT->CHANNEL[1].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_10  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_10  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  184   
//  185 #if (UCOS_II > 0u)
//  186   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  187 #endif
//  188 }
??PIT1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  189 void PIT2_IRQHandler(void)
//  190 {
_Z15PIT2_IRQHandlerv:
        PUSH     {R7,LR}
//  191 #if (UCOS_II > 0u)
//  192   OS_CPU_SR  cpu_sr = 0u;
//  193   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  194   OSIntEnter();
//  195   OS_EXIT_CRITICAL();
//  196 #endif
//  197   
//  198   //�����û��Զ����жϷ���
//  199   PIT_ISR[2]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+8]
        BLX      R0
//  200   //����жϱ�־λ
//  201   PIT->CHANNEL[2].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_11  ;; 0x4003712c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_11  ;; 0x4003712c
        STR      R0,[R1, #+0]
//  202   
//  203 #if (UCOS_II > 0u)
//  204   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  205 #endif
//  206 }
??PIT2_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void PIT3_IRQHandler(void)
//  208 {
_Z15PIT3_IRQHandlerv:
        PUSH     {R7,LR}
//  209 #if (UCOS_II > 0u)
//  210   OS_CPU_SR  cpu_sr = 0u;
//  211   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  212   OSIntEnter();
//  213   OS_EXIT_CRITICAL();
//  214 #endif
//  215   
//  216   //�����û��Զ����жϷ���
//  217   PIT_ISR[3]();  
        LDR.N    R0,??DataTable9_7
        LDR      R0,[R0, #+12]
        BLX      R0
//  218   //����жϱ�־λ
//  219   PIT->CHANNEL[3].TFLG |= PIT_TFLG_TIF_MASK;
        LDR.N    R0,??DataTable9_12  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_12  ;; 0x4003713c
        STR      R0,[R1, #+0]
//  220   
//  221 #if (UCOS_II > 0u)
//  222   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  223 #endif
//  224 }
??PIT3_IRQHandler_0:
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
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     PIT_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x4003712c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x4003713c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PIT_Init
        SECTION_LINK PIT_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PIT_Init))
        DC32 0x80aa03b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PIT_Deinit
        SECTION_LINK PIT_Deinit
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PIT_Deinit))
        DC32 0x80a803b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PIT_EnableIrq
        SECTION_LINK PIT_EnableIrq
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PIT_EnableIrq))
        DC32 0x80a803b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PIT_DisableIrq
        SECTION_LINK PIT_DisableIrq
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PIT_DisableIrq))
        DC32 0x80a803b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PIT0_IRQHandler
        SECTION_LINK PIT0_IRQHandler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PIT0_IRQHandler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15PIT1_IRQHandlerv
        SECTION_LINK _Z15PIT1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15PIT1_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15PIT2_IRQHandlerv
        SECTION_LINK _Z15PIT2_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15PIT2_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15PIT3_IRQHandlerv
        SECTION_LINK _Z15PIT3_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15PIT3_IRQHandlerv))
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 50H
        DC8 49H, 54H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
// 
//  64 bytes in section .ARM.exidx
//  16 bytes in section .bss
//  96 bytes in section .rodata
// 500 bytes in section .text
// 
// 500 bytes of CODE  memory
// 160 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
