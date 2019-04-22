///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:56:51
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW680B.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\I2C.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC I2C_Deinit
        PUBLIC I2C_DisableIrq
        PUBLIC I2C_EnableIrq
        PUBLIC I2C_ISR
        PUBLIC I2C_Init
        PUBLIC I2C_ReStart
        PUBLIC I2C_ReadByte
        PUBLIC I2C_SetMasterWR
        PUBLIC I2C_Start
        PUBLIC I2C_StartTrans
        PUBLIC I2C_Stop
        PUBLIC I2C_WaitAck
        PUBLIC I2C_WriteByte
        PUBLIC _Z15I2C0_IRQHandlerv
        PUBLIC _Z15I2C1_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
//    1 /*
//    2  * @file I2C.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-22
//    5  * @brief I2C�ײ�ģ����غ���
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
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable7  ;; 0xe000e100
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable7_1  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   24 #include "I2C.h"
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 I2C_ISR_CALLBACK I2C_ISR[2];
I2C_ISR:
        DS8 8
//   28 
//   29 /*
//   30  * I2C_Init
//   31  * I2Cͨ�ó�ʼ���������ڸú�����ѡ��I2Cͨ����ѡ��I2C SCK����Ƶ�ʣ�
//   32  * ѡ��I2C SDA �� I2C SCL�����ţ�����I2C���жϻص�����
//   33  * 
//   34  * ����:
//   35  *    I2C_InitTypeDef--i2c_init_structure
//   36  *                     ���嶨���I2C_InitTypeDef
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 I2C_Init(I2C_InitTypeDef i2c_init_structure)
//   42 {
I2C_Init:
        PUSH     {R0-R10,LR}
//   43   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//   44   uint8 bus_speed = i2c_init_structure.I2C_ICR;
        LDRB     R5,[SP, #+4]
//   45   PortPinsEnum_Type scl_pin = i2c_init_structure.I2C_SclPin;
        LDRB     R6,[SP, #+6]
//   46   PortPinsEnum_Type sda_pin = i2c_init_structure.I2C_SdaPin;
        LDRB     R7,[SP, #+7]
//   47   I2C_ISR_CALLBACK isr_func = i2c_init_structure.I2C_Isr;
        LDR      R8,[SP, #+12]
//   48   boolean ode = i2c_init_structure.I2C_OpenDrainEnable;
        LDRB     R9,[SP, #+8]
//   49   uint8 ode_mask = 0;
        MOVS     R10,#+0
//   50 
//   51   //������飬�ж�SCLƵ��
//   52   ASSERT( bus_speed <= 0x3F);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+64
        BLT.N    ??I2C_Init_0
        MOVS     R1,#+52
        LDR.W    R0,??DataTable7_2
        BL       assert_failed
//   53   
//   54   if(ode == TRUE)
??I2C_Init_0:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??I2C_Init_1
//   55   {
//   56     ode_mask = PORT_PCR_ODE_MASK;
        MOVS     R0,#+32
        MOV      R10,R0
//   57   }
//   58 
//   59   if(i2cx == I2C0)
??I2C_Init_1:
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Init_2
//   60   {
//   61 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   62     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
//   63 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   64     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //����I2C0ʱ��
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x40
        STR      R2,[R1, #+0]
//   65 #endif 
//   66     if(scl_pin == PTD8)
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+100
        BNE.N    ??I2C_Init_3
//   67     {
//   68       PORTD->PCR[8] = PORT_PCR_MUX(2) | ode_mask;         
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_5  ;; 0x4004c020
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_4
//   69     }
//   70     else if(scl_pin == PTB0) 
??I2C_Init_3:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BNE.N    ??I2C_Init_5
//   71     {
//   72       PORTB->PCR[0] = PORT_PCR_MUX(2) | ode_mask;
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_6  ;; 0x4004a000
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_4
//   73     }
//   74     else //scl_pin = PTB2
//   75     {
//   76       PORTB->PCR[2] = PORT_PCR_MUX(2) | ode_mask;
??I2C_Init_5:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_7  ;; 0x4004a008
        STR      R1,[R2, #+0]
//   77     }
//   78 
//   79     if(sda_pin == PTD9)
??I2C_Init_4:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+101
        BNE.N    ??I2C_Init_6
//   80     {
//   81       PORTD->PCR[9] = PORT_PCR_MUX(2) | ode_mask;
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_8  ;; 0x4004c024
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_7
//   82     }
//   83     else if(sda_pin == PTB1) 
??I2C_Init_6:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+33
        BNE.N    ??I2C_Init_8
//   84     {
//   85       PORTB->PCR[1] = PORT_PCR_MUX(2) | ode_mask;
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_9  ;; 0x4004a004
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_7
//   86     }
//   87     else //sda_pin = PTB3
//   88     {
//   89       PORTB->PCR[3] = PORT_PCR_MUX(2) | ode_mask; 
??I2C_Init_8:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_10  ;; 0x4004a00c
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_7
//   90     }
//   91   }
//   92   else if(i2cx == I2C1)
??I2C_Init_2:
        LDR.N    R1,??DataTable7_11  ;; 0x40067000
        CMP      R4,R1
        BNE.N    ??I2C_Init_9
//   93   { 
//   94 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//   95     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //����I2C0ʱ��
//   96 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   97     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //����I2C0ʱ��
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x80
        STR      R2,[R1, #+0]
//   98 #endif
//   99 
//  100     if(scl_pin == PTE1)
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+125
        BNE.N    ??I2C_Init_10
//  101     {
//  102       PORTE->PCR[1] = PORT_PCR_MUX(6) | ode_mask;         
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x600
        LDR.N    R2,??DataTable7_12  ;; 0x4004d004
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_11
//  103     }
//  104     else //scl_pin = PTC10
//  105     {
//  106       PORTC->PCR[10] = PORT_PCR_MUX(2) | ode_mask;  
??I2C_Init_10:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_13  ;; 0x4004b028
        STR      R1,[R2, #+0]
//  107     }
//  108 
//  109     if(sda_pin == PTE0)
??I2C_Init_11:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+124
        BNE.N    ??I2C_Init_12
//  110     {
//  111       PORTE->PCR[0] = PORT_PCR_MUX(6) | ode_mask;
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x600
        LDR.N    R2,??DataTable7_14  ;; 0x4004d000
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_7
//  112     }
//  113     else //sda_pin = PTC11
//  114     {
//  115       PORTC->PCR[11] = PORT_PCR_MUX(2) | ode_mask; 
??I2C_Init_12:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable7_15  ;; 0x4004b02c
        STR      R1,[R2, #+0]
        B.N      ??I2C_Init_7
//  116     }
//  117   }
//  118   else
//  119     return 0;
??I2C_Init_9:
        MOVS     R0,#+0
        B.N      ??I2C_Init_13
//  120   
//  121   if(i2c_init_structure.I2C_IntEnable == TRUE && isr_func != NULL)
??I2C_Init_7:
        LDRB     R1,[SP, #+5]
        CMP      R1,#+1
        BNE.N    ??I2C_Init_14
        MOV      R1,R8
        CMP      R1,#+0
        BEQ.N    ??I2C_Init_14
//  122   {
//  123     //����I2C�жϵ��ж�Դ��
//  124     //1,���1���ֽڴ���ʱ��IICIF��λ�����ж�;
//  125     //2,��Calling Addressƥ��ɹ�ʱ�����жϣ��ο�K60�ĵ�1456ҳI2Cx_S�Ĵ���IAASλ;
//  126     //3,�ӻ�ģʽ�µ������ٲö�ʧʱ��IICIF��λ�����ж�;
//  127     //  ��Ҫͬʱд1���II2Cx_S��ARBL��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  128     //4,���SMB�Ĵ�����SHTF2 interruptʹ�ܣ���SHTF2 timeoutʱIICIF��λ�����ж�;
//  129     //  ��Ҫͬʱд1���I2Cx_SMB��SLTF��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  130     //5,��SLT�Ĵ�����Ϊ0ʱ��SMBus��SCL low timer��������SLT��ֵʱIICIF��λ�����ж�;
//  131     //  ��Ҫͬʱд1���I2Cx_SMB��SHTF2��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  132     //6,��Wakeup ʹ�ܣ�I2C��ֹͣģʽ�½��յ�Wakeup�źţ��������ж�.
//  133 
//  134     i2cx->C1 |= I2C_C1_IICIE_MASK;
        LDRB     R1,[R4, #+2]
        ORRS     R1,R1,#0x40
        STRB     R1,[R4, #+2]
//  135 
//  136     if(i2cx == I2C0)
        CMP      R4,R0
        BNE.N    ??I2C_Init_15
//  137     {
//  138       I2C_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+0]
        B.N      ??I2C_Init_14
//  139     }
//  140     else if(i2cx == I2C0)
??I2C_Init_15:
        CMP      R4,R0
        BNE.N    ??I2C_Init_16
//  141     {
//  142       I2C_ISR[1] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+4]
        B.N      ??I2C_Init_14
//  143     }
//  144     else 
//  145       return 0;
??I2C_Init_16:
        MOVS     R0,#+0
        B.N      ??I2C_Init_13
//  146   }
//  147 
//  148   //i2cx->C2 |= I2C_C2_HDRS_MASK;      //���I2C��������
//  149   i2cx->F  = I2C_F_ICR(bus_speed)|I2C_F_MULT(0);   //����I2Cx SCL BusSpeed
??I2C_Init_14:
        ANDS     R0,R5,#0x3F
        STRB     R0,[R4, #+1]
//  150   i2cx->C1 |= I2C_C1_IICEN_MASK;      //ʹ��I2Cx
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x80
        STRB     R0,[R4, #+2]
//  151   
//  152   return 1;
        MOVS     R0,#+1
??I2C_Init_13:
        ADD      SP,SP,#+16
        POP      {R4-R10,PC}      ;; return
//  153 }
//  154 
//  155 /*
//  156  * I2C_Deinit
//  157  * I2Cģ�鷴��ʼ���������ڸú����йر�I2Cx����������ʱ�ӣ��ر�I2Cģ���
//  158  * ʱ�ӣ���ֹ�����жϡ�
//  159  *
//  160  * ����:
//  161  *    I2C_InitTypeDef--i2c_init_structure
//  162  *                     ���嶨���I2C_InitTypeDef
//  163  *
//  164  * ���:
//  165  *    ��
//  166  *
//  167  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 uint8 I2C_Deinit(I2C_InitTypeDef i2c_init_structure)
//  169 {
I2C_Deinit:
        PUSH     {R0-R4,LR}
//  170   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  171 
//  172   i2cx->C1 &= ~I2C_C1_IICEN_MASK;      //I2Cx
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R4, #+2]
//  173   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Deinit_0
//  174   {
//  175 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  176     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
//  177 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  178     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //����I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x40
        STR      R1,[R0, #+0]
//  179 #endif
//  180     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_Deinit_1
//  181   }
//  182   else if (i2cx == I2C1)
??I2C_Deinit_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_Deinit_2
//  183   {
//  184 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  185     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //����I2C0ʱ��
//  186 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  187     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //����I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80
        STR      R1,[R0, #+0]
//  188 #endif
//  189     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_Deinit_1
//  190   }
//  191   else
//  192   {
//  193     return 0;
??I2C_Deinit_2:
        MOVS     R0,#+0
        B.N      ??I2C_Deinit_3
//  194   }
//  195   return 1;
??I2C_Deinit_1:
        MOVS     R0,#+1
??I2C_Deinit_3:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//  196 }
//  197 
//  198 /*
//  199  * I2C_EnableIrq
//  200  * I2C�����ж�ʹ��
//  201  *
//  202  * ����:
//  203  *    I2C_InitTypeDef--i2c_init_structure
//  204  *                     ���嶨���I2C_InitTypeDef
//  205  *
//  206  * ���:
//  207  *    ��
//  208  *
//  209  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 void I2C_EnableIrq(I2C_InitTypeDef i2c_init_structure)
//  211 {
I2C_EnableIrq:
        PUSH     {R0-R4,LR}
//  212   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx; 
        LDR      R4,[SP, #+0]
//  213 
//  214   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_EnableIrq_0
//  215   {
//  216     enable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??I2C_EnableIrq_1
//  217   }
//  218   else if (i2cx == I2C1)
??I2C_EnableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_EnableIrq_2
//  219   {
//  220     enable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??I2C_EnableIrq_1
//  221   }
//  222   else
//  223   {
//  224     return;
??I2C_EnableIrq_2:
        B.N      ??I2C_EnableIrq_3
//  225   }
//  226 }
??I2C_EnableIrq_1:
??I2C_EnableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  227 
//  228 /*
//  229  * I2C_DisableIrq
//  230  * ��ֹI2C�����ж�
//  231  *
//  232  * ����:
//  233  *    I2C_InitTypeDef--i2c_init_structure
//  234  *                     ���嶨���I2C_InitTypeDef
//  235  *
//  236  * ���:
//  237  *    ��
//  238  *
//  239  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  240 void I2C_DisableIrq(I2C_InitTypeDef i2c_init_structure)
//  241 {
I2C_DisableIrq:
        PUSH     {R0-R4,LR}
//  242   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  243   i2cx->C1 &= ~I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+2]
//  244 
//  245   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_DisableIrq_0
//  246   {
//  247     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_DisableIrq_1
//  248   }
//  249   else if (i2cx == I2C1)
??I2C_DisableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_DisableIrq_2
//  250   {
//  251     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_DisableIrq_1
//  252   }
//  253   else
//  254   {
//  255     return;
??I2C_DisableIrq_2:
        B.N      ??I2C_DisableIrq_3
//  256   }
//  257 }
??I2C_DisableIrq_1:
??I2C_DisableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  258 
//  259 /*
//  260  * I2C_Start
//  261  * ����I2C��ʼ�ź�
//  262  * 
//  263  * ����:
//  264  *    i2cx--ѡ��I2Cģ���ͨ��
//  265  *      |__I2C0           --I2Cͨ��0
//  266  *      |__I2C1           --I2Cͨ��1
//  267  * ���:
//  268  *    ��
//  269  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 void I2C_Start(I2C_Type *i2cx)
//  271 {
//  272   i2cx->C1 |= I2C_C1_TX_MASK ;
I2C_Start:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+2]
//  273   i2cx->C1 |= I2C_C1_MST_MASK ;
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+2]
//  274 }
        BX       LR               ;; return
//  275 
//  276 /*
//  277  * ReStart
//  278  * I2C�ٴβ�����ʼ�ź�
//  279  * 
//  280  * ����:
//  281  *    i2cx--ѡ��I2Cģ���ͨ��
//  282  *      |__I2C0           --I2Cͨ��0
//  283  *      |__I2C1           --I2Cͨ��1
//  284  * ���:
//  285  *    ��
//  286 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void I2C_ReStart(I2C_Type *i2cx)
//  288 {
//  289   i2cx->C1 |= I2C_C1_RSTA_MASK ;
I2C_ReStart:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+2]
//  290 }
        BX       LR               ;; return
//  291 
//  292 /*
//  293  * I2C_Stop
//  294  * ����I2Cֹͣ�ź�
//  295  * 
//  296  * ����:
//  297  *    i2cx--ѡ��I2Cģ���ͨ��
//  298  *      |__I2C0           --I2Cͨ��0
//  299  *      |__I2C1           --I2Cͨ��1
//  300  * ���:
//  301  *    ��
//  302  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  303 void I2C_Stop(I2C_Type *i2cx)
//  304 {
//  305   i2cx->C1 &=(~I2C_C1_MST_MASK);
I2C_Stop:
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+2]
//  306   i2cx->C1 &=(~I2C_C1_TX_MASK); 
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xEF
        STRB     R1,[R0, #+2]
//  307 }
        BX       LR               ;; return
//  308 
//  309 /*
//  310  * I2C_WaitAck
//  311  * I2C���õȴ�Ӧ���źţ�������ȴ����ر��򲻵ȴ�
//  312  * 
//  313  * ����:
//  314  *    i2cx--ѡ��I2Cģ���ͨ��
//  315  *      |__I2C0           --I2Cͨ��0
//  316  *      |__I2C1           --I2Cͨ��1
//  317  *    is_wait--ѡ���Ƿ�ȴ�Ӧ��
//  318  *      |__I2C_ACK_OFF    --�رյȴ�Ack
//  319  *      |__I2C_ACK_ON     --�����ȴ�Ack�����ȴ�ACK�ź�
//  320  * ���:
//  321  *    ��
//  322  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void I2C_WaitAck(I2C_Type *i2cx, uint8 is_wait)
//  324 {
I2C_WaitAck:
        PUSH     {R4}
//  325   uint16 time_out;
//  326   if(is_wait == I2C_ACK_ON)
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??I2C_WaitAck_0
//  327   {
//  328     while(!(i2cx->S & I2C_S_IICIF_MASK))
??I2C_WaitAck_1:
        LDRB     R3,[R0, #+3]
        LSLS     R3,R3,#+30
        BMI.N    ??I2C_WaitAck_2
//  329     {
//  330       if(time_out>60000) //����ȴ���ʱ��ǿ���˳�
        MOVS     R3,R2
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVW     R4,#+60001
        CMP      R3,R4
        BGE.N    ??I2C_WaitAck_2
//  331         break;
//  332       else time_out++;
??I2C_WaitAck_3:
        ADDS     R2,R2,#+1
        B.N      ??I2C_WaitAck_1
//  333     }
//  334     i2cx->S |= I2C_S_IICIF_MASK;
??I2C_WaitAck_2:
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x2
        STRB     R3,[R0, #+3]
        B.N      ??I2C_WaitAck_4
//  335   }
//  336   else
//  337   {
//  338     //�ر�I2C��ACK
//  339     i2cx->C1 |= I2C_C1_TXAK_MASK; 
??I2C_WaitAck_0:
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  340   }
//  341 }
??I2C_WaitAck_4:
        POP      {R4}
        BX       LR               ;; return
//  342 
//  343 /*
//  344  * I2C_Write
//  345  * I2C����һ���ֽڸ�Ŀ�ĵ�ַ�豸
//  346  * 
//  347  * ����:
//  348  *    i2cx--ѡ��I2Cģ���ͨ��
//  349  *      |__I2C0           --I2Cͨ��0
//  350  *      |__I2C1           --I2Cͨ��1
//  351  *    data8--Ҫ���͵��ֽ�����
//  352  * ���:
//  353  *    ��
//  354  *
//  355  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  356 void I2C_WriteByte(I2C_Type *i2cx, uint8 data8)
//  357 {
//  358   i2cx->D = data8; 
I2C_WriteByte:
        STRB     R1,[R0, #+4]
//  359 }
        BX       LR               ;; return
//  360 
//  361 /*
//  362  * I2C_Read
//  363  * I2C���ⲿ�豸��һ���ֽ�
//  364  * 
//  365  * ����:
//  366  *    i2cx--ѡ��I2Cģ���ͨ��
//  367  *      |__I2C0           --I2Cͨ��0
//  368  *      |__I2C1           --I2Cͨ��1
//  369  * ���:
//  370  *    I2C��ȡ���ֽ� 
//  371  */
//  372 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  373 uint8 I2C_ReadByte(I2C_Type *i2cx)
//  374 {
I2C_ReadByte:
        MOVS     R1,R0
//  375   uint8 temp;
//  376   temp = i2cx->D; 
        LDRB     R0,[R1, #+4]
//  377   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  378 }
//  379 
//  380 /*
//  381  * I2C_SetMasterWR
//  382  * I2C������дģʽ����
//  383  * 
//  384  * ����:
//  385  *    IICx--ѡ��I2Cģ���ͨ��
//  386  *      |__I2C0           --I2Cͨ��0
//  387  *      |__I2C1           --I2Cͨ��1
//  388  *    mode--��дģʽѡ��
//  389  *      |__I2C_MWSR         --����д
//  390  *      |__I2C_MRSW         --������
//  391  * ���:
//  392  *    ��
//  393  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  394 void I2C_SetMasterWR(I2C_Type *i2cx, uint8 mode)
//  395 {
//  396   if(mode==I2C_MRSW) 
I2C_SetMasterWR:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??I2C_SetMasterWR_0
//  397     i2cx->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R2,[R0, #+2]
        ANDS     R2,R2,#0xEF
        STRB     R2,[R0, #+2]
        B.N      ??I2C_SetMasterWR_1
//  398   else
//  399     i2cx->C1 |= ( I2C_C1_TX_MASK);
??I2C_SetMasterWR_0:
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
//  400 }
??I2C_SetMasterWR_1:
        BX       LR               ;; return
//  401 
//  402 /*
//  403  * I2C_StartTrans
//  404  * I2C��ʼ���亯������Ҫ������Χ�豸��ַ�Ͷ�дģʽ
//  405  * 
//  406  * ����:
//  407  *    IICx--ѡ��I2Cģ���ͨ��
//  408  *      |__I2C0           --I2Cͨ��0
//  409  *      |__I2C1           --I2Cͨ��1
//  410  *    addr--��Χ�豸��ַ     
//  411  *    mode--��дģʽѡ��
//  412  *      |__I2C_MWSR         --����д
//  413  *      |__I2C_MRSW         --������
//  414  * ���:
//  415  *    ��
//  416  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  417 void I2C_StartTrans(I2C_Type *i2cx, uint8 addr, uint8 mode)
//  418 {
I2C_StartTrans:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  419   //I2C����start�ź�
//  420   I2C_Start(i2cx);
        MOVS     R0,R4
        BL       I2C_Start
//  421   //���ӻ���ַ��������дλ�ϳ�һ���ֽ�д��
//  422   I2C_WriteByte(i2cx, (addr<<1)|mode );
        ORRS     R1,R6,R5, LSL #+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       I2C_WriteByte
//  423 }
        POP      {R4-R6,PC}       ;; return
//  424 
//  425 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  426 void I2C0_IRQHandler(void)
//  427 {
_Z15I2C0_IRQHandlerv:
        PUSH     {R4,LR}
//  428 #if (UCOS_II > 0u)
//  429   OS_CPU_SR  cpu_sr = 0u;
//  430   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  431   OSIntEnter();
//  432   OS_EXIT_CRITICAL();
//  433 #endif
//  434   if(I2C0->S & I2C_S_IICIF_MASK)
        LDR.N    R4,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_0
//  435   {
//  436     I2C_ISR[0]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+0]
        BLX      R0
//  437     if(I2C0->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+28
        BPL.N    ??I2C0_IRQHandler_1
//  438     {
//  439       I2C0->SMB |= I2C_SMB_SLTF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x8
        STRB     R1,[R0, #+0]
//  440     }
//  441     if(I2C0->SMB & I2C_SMB_SHTF2_MASK)
??I2C0_IRQHandler_1:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??I2C0_IRQHandler_2
//  442     {
//  443       I2C0->SMB |= I2C_SMB_SHTF2_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  444     }
//  445     if(I2C0->S & I2C_S_ARBL_MASK)
??I2C0_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C0_IRQHandler_3
//  446     {
//  447       I2C0->S |= I2C_S_ARBL_MASK;
        LDRB     R0,[R4, #+0]
        ORRS     R0,R0,#0x10
        STRB     R0,[R4, #+0]
//  448     }
//  449     I2C0->S |= I2C_S_IICIF_MASK;
??I2C0_IRQHandler_3:
        LDRB     R0,[R4, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+0]
//  450   }
//  451 #if (UCOS_II > 0u)
//  452   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  453 #endif
//  454 }
??I2C0_IRQHandler_0:
??I2C0_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  455 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  456 void I2C1_IRQHandler(void)
//  457 {
_Z15I2C1_IRQHandlerv:
        PUSH     {R4,LR}
//  458 
//  459 #if (UCOS_II > 0u)
//  460   OS_CPU_SR  cpu_sr = 0u;
//  461   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  462   OSIntEnter();
//  463   OS_EXIT_CRITICAL();
//  464 #endif
//  465 
//  466   if(I2C1->S & I2C_S_IICIF_MASK)
        LDR.N    R4,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_0
//  467   {
//  468     I2C_ISR[1]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+4]
        BLX      R0
//  469     if(I2C1->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+28
        BPL.N    ??I2C1_IRQHandler_1
//  470     {
//  471       I2C1->SMB |= I2C_SMB_SLTF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x8
        STRB     R1,[R0, #+0]
//  472     }
//  473     if(I2C1->SMB & I2C_SMB_SHTF2_MASK)
??I2C1_IRQHandler_1:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??I2C1_IRQHandler_2
//  474     {
//  475       I2C1->SMB |= I2C_SMB_SHTF2_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  476     }
//  477     if(I2C1->S & I2C_S_ARBL_MASK)
??I2C1_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_IRQHandler_3
//  478     {
//  479       I2C1->S |= I2C_S_ARBL_MASK;
        LDRB     R0,[R4, #+0]
        ORRS     R0,R0,#0x10
        STRB     R0,[R4, #+0]
//  480     }
//  481     I2C1->S |= I2C_S_IICIF_MASK;
??I2C1_IRQHandler_3:
        LDRB     R0,[R4, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[R4, #+0]
//  482   }
//  483   
//  484 #if (UCOS_II > 0u)
//  485   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  486 #endif
//  487 }
??I2C1_IRQHandler_0:
??I2C1_IRQHandler_4:
        POP      {R4,PC}          ;; return

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
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     I2C_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0x40066003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x40066008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     0x40067003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     0x40067008

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP I2C_Init
        SECTION_LINK I2C_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(I2C_Init))
        DC32 0x8003aeb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15I2C0_IRQHandlerv
        SECTION_LINK _Z15I2C0_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15I2C0_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15I2C1_IRQHandlerv
        SECTION_LINK _Z15I2C1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15I2C1_IRQHandlerv))
        DC32 0x80a8b0b0
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 49H
        DC8 32H, 43H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  488   
// 
//  24 bytes in section .ARM.exidx
//   8 bytes in section .bss
//  96 bytes in section .rodata
// 966 bytes in section .text
// 
// 966 bytes of CODE  memory
// 120 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
