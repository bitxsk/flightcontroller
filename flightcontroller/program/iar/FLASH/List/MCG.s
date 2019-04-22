///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:56:54
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\MCG.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW72B0.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\MCG.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\MCG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_ALLOC 0x2
        #define SHF_EXECINSTR 0x4
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0

        PUBLIC PLL_Setup
        PUBLIC Set_SYS_DIV
        PUBLIC g_bus_clock
        PUBLIC g_core_clock
        PUBLIC g_flash_clock
        PUBLIC g_flexbus_clock

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\MCG.c
//    1 /**
//    2  * @file MCG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MCG�ײ�ģ����غ���
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
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"
//   23 #include "MCG.h"
//   24 
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   26 uint32 g_core_clock = -1ul;
g_core_clock:
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   27 uint32 g_bus_clock = -1ul;
g_bus_clock:
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   28 uint32 g_flash_clock = -1ul;
g_flash_clock:
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   29 uint32 g_flexbus_clock = -1ul;
g_flexbus_clock:
        DC32 4294967295
//   30 
//   31 /*
//   32  * PLL_Setup
//   33  * ��ʼ���ں�ʱ�Ӽ�����ϵͳʱ��
//   34  * 
//   35  * ����:
//   36  *    core_clk_mhz--�����ں�ʱ��Ƶ��
//   37  *      |__PLLx--�μ�HAL_MCG.h�е�PLL_option����
//   38  *
//   39  * ���:
//   40  *    �ں�Ƶ�ʣ���λMHz
//   41  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 uint8 PLL_Setup(PllOptionEnum_Type core_clk_mhz)
//   43 {
PLL_Setup:
        PUSH     {R4-R10,LR}
//   44   uint8 pll_freq;
//   45   uint8 prdiv, vdiv;
//   46   uint8 core_div, bus_div, flexbus_div, flash_div;
//   47 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)
//   48 /*
//   49  *************************************************
//   50   ��LPLDע�⡿MCG�ؼ�ϵ��
//   51   prdiv(PLL��Ƶϵ��): 0~31(1~32)
//   52   vdiv(PLL��Ƶϵ��): 0~31(24~55)
//   53   PLL�ο�ʱ�ӷ�Χ: 2MHz~4MHz
//   54   PLL�ο�ʱ�� = �ⲿ�ο�ʱ��(CANNED_OSC_CLK_HZ)/prdiv
//   55   CoreClk = PLL�ο�ʱ�� x PLL��Ƶϵ�� /OUTDIV1
//   56  *************************************************
//   57  */
//   58  
//   59   // ����MK60DZ10��˵��core_clk_mhz���鲻Ҫ����100����������Ϊ���200
//   60   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
//   61   
//   62   // ����������Ƶѡ���Ƶ�ͱ�Ƶϵ��
//   63   switch(core_clk_mhz)
//   64   {
//   65   case PLL_48:
//   66 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   67     prdiv = 24u; //50Mhz/ 25 = 2Mhz
//   68 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   69     prdiv = 3u;  //8Mhz/ 4 = 2Mhz
//   70 #endif
//   71     vdiv = 0u;  // 2Mhz * 24 = 48Mhz
//   72     break;
//   73   case PLL_50:
//   74 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   75     prdiv = 24u; //50Mhz/ 25 = 2Mhz
//   76 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   77     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   78 #endif
//   79     vdiv = 1u; // 2Mhz * 25 = 50Mhz
//   80     break;
//   81   case PLL_96:
//   82 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   83     prdiv = 24u; //50Mhz/ 25 = 2Mhz
//   84 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   85     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   86 #endif
//   87     vdiv = 24u; //2Mhz * 48 = 96Mhz
//   88     break;
//   89   case PLL_100:
//   90 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   91     prdiv = 24u; //50Mhz/ 25 = 2Mhz
//   92 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   93     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   94 #endif
//   95     vdiv = 26u; //2Mhz * 50 = 100Mhz
//   96     break;
//   97   case PLL_120:
//   98 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   99     prdiv = 19u; //50Mhz/ 20 = 2.5Mhz
//  100     vdiv = 24u;  //2.5Mhz * 48 = 120Mhz
//  101 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  102     prdiv = 1u; //8Mhz/ 2 = 4Mhz
//  103     vdiv  = 6u; //4Mhz * 30 = 120Mhz
//  104 #endif
//  105     break;
//  106   case PLL_150:
//  107 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  108     prdiv = 15u; //50Mhz/ 16 = 3.3Mhz
//  109     vdiv = 24u;  //3.3Mhz * 48 = 156.4Mhz
//  110 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  111     prdiv = 1u; //8Mhz/ 2 = 4Mhz
//  112     vdiv  = 13u; //4Mhz * 37 = 148Mhz
//  113 #endif
//  114     break;
//  115   case PLL_180:
//  116 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  117     prdiv = 14u; //50Mhz/ 15 = 3.3Mhz
//  118     vdiv = 30u;  //3.3Mhz * 54 = 178.2Mhz
//  119 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  120     prdiv = 1u;  //8Mhz/ 2 = 4Mhz
//  121     vdiv = 21u;  //4Mhz * 45 = 180Mhz
//  122 #endif
//  123     break;
//  124   case PLL_200:
//  125 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  126     prdiv = 12u; 
//  127     vdiv = 28u;
//  128 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  129     prdiv = 1u;  //8Mhz/ 2 = 4Mhz
//  130     vdiv = 26u;  //4Mhz * 50 = 200Mhz
//  131 #endif
//  132     break;
//  133   default:
//  134     return PLL_Setup(PLL_96);
//  135   }
//  136 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  137  /*
//  138  *************************************************
//  139   ��LPLDע�⡿MCG�ؼ�ϵ��
//  140   prdiv(PLL��Ƶϵ��): 0~7(1~8)
//  141   vdiv(PLL��Ƶϵ��): 0~31(16~47)
//  142   PLL�ο�ʱ�ӷ�Χ: 8MHz~16MHz
//  143   PLL�ο�ʱ�� = �ⲿ�ο�ʱ��(CANNED_OSC_CLK_HZ)/prdiv
//  144   PLL���ʱ�ӷ�Χ: 90MHz~180MHz
//  145   PLL���ʱ�� = PLL�ο�ʱ�� x vdiv��PLL��Ƶϵ����/2
//  146   CoreClk = PLL���ʱ�� /OUTDIV1
//  147  *************************************************
//  148 */
//  149   
//  150   // ����MK60F12��˵��core_clk_mhz���鲻Ҫ����120����������Ϊ���200
//  151   // ����MK60F15��˵��core_clk_mhz���鲻Ҫ����150����������Ϊ���200
//  152   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+201
        BCC.N    ??PLL_Setup_1
        MOVS     R4,#+200
        B.N      ??PLL_Setup_2
??PLL_Setup_1:
        MOVS     R4,R0
//  153   // ����������Ƶѡ���Ƶ�ͱ�Ƶϵ��
//  154   switch(core_clk_mhz)
??PLL_Setup_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+100
        BEQ.N    ??PLL_Setup_3
        CMP      R0,#+120
        BEQ.N    ??PLL_Setup_4
        CMP      R0,#+150
        BEQ.N    ??PLL_Setup_5
        CMP      R0,#+180
        BEQ.N    ??PLL_Setup_6
        CMP      R0,#+200
        BEQ.N    ??PLL_Setup_7
        B.N      ??PLL_Setup_8
//  155   {
//  156   case PLL_100:
//  157 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  158     prdiv = 4u; //50Mhz / 5 = 10Mhz
??PLL_Setup_3:
        MOVS     R1,#+4
//  159     vdiv = 4u;  //10Mhz * 20 /2 = 100Mhz
        MOVS     R2,#+4
//  160 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  161     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  162     vdiv = 9u;  //8Mhz * 25 /2 = 100Mhz
//  163 #endif
//  164     break;
        B.N      ??PLL_Setup_9
//  165   case PLL_120:
//  166 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  167     prdiv = 4u; //50Mhz / 5 = 10Mhz
??PLL_Setup_4:
        MOVS     R1,#+4
//  168     vdiv = 8u;  //10Mhz * 24 /2 = 120Mhz
        MOVS     R2,#+8
//  169 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  170     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  171     vdiv = 14u; //8Mhz * 30 /2 = 120Mhz
//  172 #endif
//  173     break;
        B.N      ??PLL_Setup_9
//  174   case PLL_150:
//  175 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  176     prdiv = 4u; //50Mhz / 5 = 10Mhz
??PLL_Setup_5:
        MOVS     R1,#+4
//  177     vdiv = 14u; //10Mhz * 30 /2 = 150Mhz
        MOVS     R2,#+14
//  178 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  179     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  180     vdiv = 22u; //8Mhz * 38 /2 = 152Mhz
//  181 #endif
//  182     break;
        B.N      ??PLL_Setup_9
//  183   case PLL_180:
//  184 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  185     prdiv = 4u; //50Mhz / 5 = 10Mhz
??PLL_Setup_6:
        MOVS     R1,#+4
//  186     vdiv = 20u; //10Mhz * 36 /2 = 180Mhz
        MOVS     R2,#+20
//  187 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  188     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  189     vdiv = 29u; //8Mhz * 45 /2 = 180Mhz    
//  190 #endif
//  191     break;
        B.N      ??PLL_Setup_9
//  192   case PLL_200:
//  193 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  194     prdiv = 3u;  //50Mhz / 4 = 12.5Mhz
??PLL_Setup_7:
        MOVS     R1,#+3
//  195     vdiv = 16u;  //12.5Mhz * 32 / 2 = 200
        MOVS     R2,#+16
//  196 #endif
//  197     break;
        B.N      ??PLL_Setup_9
//  198   default:
//  199     return PLL_Setup(PLL_120);
??PLL_Setup_8:
        MOVS     R0,#+120
        BL       PLL_Setup
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??PLL_Setup_10
//  200   } 
//  201 #endif
//  202   
//  203   pll_freq = core_clk_mhz * 1;
??PLL_Setup_9:
        MOVS     R0,R4
//  204   core_div = 0;
        MOVS     R3,#+0
//  205   if((bus_div = (uint8)(core_clk_mhz/BUS_CLK_MHZ - 1u)) == (uint8)-1)
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R6,#+60
        UDIV     R5,R5,R6
        SUBS     R5,R5,#+1
        MOVS     R6,R5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+255
        BNE.N    ??PLL_Setup_11
//  206   {
//  207     bus_div = 0;
        MOVS     R6,#+0
        MOVS     R5,R6
        B.N      ??PLL_Setup_12
//  208   }
//  209   else if(core_clk_mhz/(bus_div+1) > BUS_CLK_MHZ)
??PLL_Setup_11:
        MOVS     R6,R4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R7,R5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R7,R7,#+1
        SDIV     R6,R6,R7
        CMP      R6,#+61
        BCC.N    ??PLL_Setup_12
//  210   {
//  211     bus_div += 1;
        ADDS     R5,R5,#+1
//  212   }
//  213   if((flexbus_div = (core_clk_mhz/FLEXBUS_CLK_MHZ - 1u)) == (uint8)-1)
??PLL_Setup_12:
        MOVS     R6,R4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R7,#+50
        UDIV     R6,R6,R7
        SUBS     R6,R6,#+1
        MOVS     R7,R6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+255
        BNE.N    ??PLL_Setup_13
//  214   {
//  215     flexbus_div = 0;
        MOVS     R7,#+0
        MOVS     R6,R7
        B.N      ??PLL_Setup_14
//  216   }
//  217   else if(core_clk_mhz/(flexbus_div+1) > FLEXBUS_CLK_MHZ)
??PLL_Setup_13:
        MOVS     R7,R4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOV      R12,R6
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        ADDS     R12,R12,#+1
        SDIV     R7,R7,R12
        CMP      R7,#+51
        BCC.N    ??PLL_Setup_14
//  218   {
//  219     flexbus_div += 1;
        ADDS     R6,R6,#+1
//  220   }
//  221   if((flash_div = (core_clk_mhz/FLASH_CLK_MHZ - 1u)) == (uint8)-1)
??PLL_Setup_14:
        MOVS     R7,R4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R12,#+25
        UDIV     R7,R7,R12
        SUBS     R7,R7,#+1
        MOV      R12,R7
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+255
        BNE.N    ??PLL_Setup_15
//  222   {
//  223     flash_div = 0;
        MOVS     R12,#+0
        MOV      R7,R12
        B.N      ??PLL_Setup_16
//  224   }
//  225   else if(core_clk_mhz/(flash_div+1) > FLASH_CLK_MHZ)
??PLL_Setup_15:
        MOV      R12,R4
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        MOV      LR,R7
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        ADDS     LR,LR,#+1
        SDIV     R12,R12,LR
        CMP      R12,#+26
        BCC.N    ??PLL_Setup_16
//  226   {
//  227     flash_div += 1;
        ADDS     R7,R7,#+1
//  228   }
//  229  
//  230 #if defined(CPU_MK60DZ10)
//  231   
//  232   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  233   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  234   // �����ƶ��� FBE ģʽ
//  235   MCG->C2 = 0;
//  236   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//  237   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
//  238   LLWU->CS |= LLWU_CS_ACKISO_MASK;
//  239   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  240   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  241   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
//  242   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  243   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  244   // ����FBEģʽ
//  245   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  246   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  247   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  248   MCG->C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  249   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  250   MCG->C6 = 0x0;
//  251   //����ϵͳʱ�ӷ�Ƶϵ��
//  252   Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  253   //���ñ�Ƶϵ��
//  254   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
//  255   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  256   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
//  257   // �Ѿ�����PBEģʽ
//  258   // ����CLKS ����PEEģʽ
//  259   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  260   // Wait for clock status bits to update
//  261   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  262   // �Ѿ�����PEEģʽ
//  263   
//  264   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  265   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  266   // �����ƶ��� FBE ģʽ
//  267   MCG->C2 = MCG_C2_RANGE(0x01) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  268   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//  269   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
//  270   LLWU->CS |= LLWU_CS_ACKISO_MASK;
//  271   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  272   while (!(MCG->S & MCG_S_OSCINIT_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  273   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  274   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  275   // ����FBEģʽ
//  276   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  277   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  278   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  279   MCG->C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  280   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  281   MCG->C6 = 0x0;
//  282   //����ϵͳʱ�ӷ�Ƶϵ��
//  283   Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  284   //���ñ�Ƶϵ��
//  285   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
//  286   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  287   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
//  288   // �Ѿ�����PBEģʽ
//  289   // ����CLKS ����PEEģʽ
//  290   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  291   // Wait for clock status bits to update
//  292   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  293   #endif
//  294   
//  295 #elif (defined(CPU_MK60D10)) 
//  296   
//  297   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  298   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  299   // �����ƶ��� FBE ģʽ
//  300   MCG->C2 = 0;
//  301   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  302   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  303   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
//  304   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  305   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  306   // ����FBEģʽ
//  307   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  308   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  309   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  310   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  311   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  312   MCG->C6 = 0x0;
//  313   //����ϵͳʱ�ӷ�Ƶϵ��
//  314   Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  315   //���ñ�Ƶϵ��
//  316   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  317   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  318   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  319   // �Ѿ�����PBEģʽ
//  320   // ����CLKS ����PEEģʽ
//  321   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  322   // Wait for clock status bits to update
//  323   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  324   // �Ѿ�����PEEģʽ
//  325   
//  326   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  327   
//  328   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  329   // �����ƶ��� FBE ģʽ
//  330   MCG->C2 = MCG_C2_RANGE0(0x01) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK;
//  331 
//  332   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  333   while (!(MCG->S & MCG_S_OSCINIT0_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  334   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  335   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  336   // ����FBEģʽ
//  337   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  338   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  339   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  340   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  341   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  342   MCG->C6 = 0x0;
//  343   //����ϵͳʱ�ӷ�Ƶϵ��
//  344   Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  345   //���ñ�Ƶϵ��
//  346   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  347   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  348   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  349   // �Ѿ�����PBEģʽ
//  350   // ����CLKS ����PEEģʽ
//  351   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  352   // Wait for clock status bits to update
//  353   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  354   
//  355   #endif
//  356   
//  357 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  358   
//  359   if (PMC->REGSC &  PMC_REGSC_ACKISO_MASK)
??PLL_Setup_16:
        LDR.W    R12,??PLL_Setup_0  ;; 0x4007d002
        LDRB     LR,[R12, #+0]
        LSLS     LR,LR,#+28
        BPL.N    ??PLL_Setup_17
//  360         PMC->REGSC |= PMC_REGSC_ACKISO_MASK;
        LDRB     LR,[R12, #+0]
        ORRS     LR,LR,#0x8
        STRB     LR,[R12, #+0]
//  361   /*ע�⣺PLL��ʼ����������ϵͳʱ�ӷ�Ƶ��
//  362     ����ϵͳʱ�ӷ�Ƶ������PLL֮ǰ����*/ 
//  363   SIM->CLKDIV1 = ( 0
//  364                   | SIM_CLKDIV1_OUTDIV1(core_div)   //�����ں˷�Ƶ
//  365                   | SIM_CLKDIV1_OUTDIV2(bus_div)   //���������Ƶ
//  366                   | SIM_CLKDIV1_OUTDIV3(flexbus_div)   //����FlexBus��Ƶ
//  367                   | SIM_CLKDIV1_OUTDIV4(flash_div) );//����FLASH��Ƶ
??PLL_Setup_17:
        MOV      R12,R3
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        MOV      LR,R5
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LSLS     LR,LR,#+24
        ANDS     LR,LR,#0xF000000
        ORRS     LR,LR,R12, LSL #+28
        MOV      R12,R6
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        LSLS     R12,R12,#+20
        ANDS     R12,R12,#0xF00000
        ORRS     LR,R12,LR
        MOV      R12,R7
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        LSLS     R12,R12,#+16
        ANDS     R12,R12,#0xF0000
        ORRS     LR,R12,LR
        LDR.W    R12,??PLL_Setup_0+0x4  ;; 0x40048044
        STR      LR,[R12, #+0]
//  368   //��ʼ��������ʱ�ӣ�ϵͳ�ں���Ƶ������ʱ�ӡ�FlexBusʱ�ӡ�Flashʱ��
//  369   
//  370   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  371   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  372   // �����ƶ��� FBE ģʽ
//  373   MCG->C2 = MCG_C2_RANGE0(1);
        MOVS     R12,#+16
        LDR.W    LR,??PLL_Setup_0+0x8  ;; 0x40064001
        STRB     R12,[LR, #+0]
//  374   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  375   // CLKS=2, FRDIV=5, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  376   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(5);
        LDR.W    R12,??PLL_Setup_0+0xC  ;; 0x40064000
        MOVS     LR,#+168
        STRB     LR,[R12, #+0]
//  377   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
??PLL_Setup_18:
        LDR.W    LR,??PLL_Setup_0+0x10  ;; 0x40064006
        LDRB     R8,[LR, #+0]
        LSLS     R8,R8,#+27
        BMI.N    ??PLL_Setup_18
//  378   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
??PLL_Setup_19:
        LDRB     R8,[LR, #+0]
        UBFX     R8,R8,#+2,#+2
        CMP      R8,#+2
        BNE.N    ??PLL_Setup_19
//  379   // ����FBEģʽ
//  380   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV
//  381   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  382   // ���� 10MHz �Ĳο�ʱ�Ӹ� PLL.
//  383   MCG->C6 |= MCG_C6_CME0_MASK;
        LDR.W    R8,??PLL_Setup_0+0x14  ;; 0x40064005
        LDRB     R9,[R8, #+0]
        ORRS     R9,R9,#0x20
        STRB     R9,[R8, #+0]
//  384   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ��
        ANDS     R9,R1,#0x7
        LDR.W    R10,??PLL_Setup_0+0x18  ;; 0x40064004
        STRB     R9,[R10, #+0]
//  385   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
        ANDS     R9,R2,#0x1F
        ORRS     R9,R9,#0x40
        STRB     R9,[R8, #+0]
//  386   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??PLL_Setup_20:
        LDRB     R8,[LR, #+0]
        LSLS     R8,R8,#+26
        BPL.N    ??PLL_Setup_20
//  387   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
??PLL_Setup_21:
        LDRB     R8,[LR, #+0]
        LSLS     R8,R8,#+25
        BPL.N    ??PLL_Setup_21
//  388   // �Ѿ�����PBEģʽ
//  389   // ����CLKS ����PEEģʽ
//  390   MCG->C1 &= ~MCG_C1_CLKS_MASK;
        LDRB     R8,[R12, #+0]
        ANDS     R8,R8,#0x3F
        STRB     R8,[R12, #+0]
//  391   // Wait for clock status bits to update
//  392   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??PLL_Setup_22:
        LDRB     R12,[LR, #+0]
        UBFX     R12,R12,#+2,#+2
        CMP      R12,#+3
        BNE.N    ??PLL_Setup_22
//  393   // �Ѿ�����PEEģʽ
//  394   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  395   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  396   // �����ƶ��� FBE ģʽ
//  397   MCG->C2 = MCG_C2_RANGE0(1) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK;
//  398   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  399   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  400   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  401   while (!(MCG->S & MCG_S_OSCINIT0_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  402   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  403   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  404   // ����FBEģʽ
//  405   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV
//  406   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  407   // ���� 10MHz �Ĳο�ʱ�Ӹ� PLL.
//  408   MCG->C6 |= MCG_C6_CME0_MASK;
//  409   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ��
//  410   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  411   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  412   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  413   // �Ѿ�����PBEģʽ
//  414   // ����CLKS ����PEEģʽ
//  415   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  416   // Wait for clock status bits to update
//  417   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  418   // �Ѿ�����PEEģʽ
//  419   #endif
//  420 #endif  
//  421   return pll_freq;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??PLL_Setup_10:
        POP      {R4-R10,PC}      ;; return
        DATA
??PLL_Setup_0:
        DC32     0x4007d002
        DC32     0x40048044
        DC32     0x40064001
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064005
        DC32     0x40064004
//  422 } 
//  423 
//  424 /*
//  425  * Set_SYS_DIV
//  426  * ����ϵͳʼ�շ�Ƶ
//  427  *
//  428  * ˵��:
//  429  * ��δ�����������RAM�У�Ŀ���Ƿ�ֹ�����ܷɣ�����ٷ��ĵ�errata e2448.
//  430  * ��Flashʱ�ӷ�Ƶ�ı��ʱ��FlashԤ��ȡ�������.
//  431  * ��ֹ��Flash���������´���.
//  432  * ��Ԥ��ȡ������ʹ��֮ǰ������ʱ�ӷ�Ƶ�ı����һ��С����ʱ.
//  433  *
//  434  * ����:
//  435  *    outdiv1~outdiv4--�ֱ�Ϊcore, bus, FlexBus, Flashʱ�ӷ�Ƶϵ��
//  436  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  437 RAMFUNC void Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  438 {
Set_SYS_DIV:
        PUSH     {R4-R7}
//  439   uint32 temp_reg;
//  440   uint8 i;
//  441   
//  442   temp_reg = FMC->PFAPR; // ���� FMC_PFAPR �Ĵ���
        LDR.N    R6,??Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R4,[R6, #+0]
//  443   
//  444   // ���� M0PFD �� M7PFD Ϊ 1 ����Ԥ�ȶ�ȡ
//  445   FMC->PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  446              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  447              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR      R5,[R6, #+0]
        ORRS     R5,R5,#0xFF0000
        STR      R5,[R6, #+0]
//  448   
//  449   // ����ʱ�ӷ�ƵΪ����ֵ  
//  450   SIM->CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  451               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R5,R1,#+24
        ANDS     R5,R5,#0xF000000
        ORRS     R5,R5,R0, LSL #+28
        LSLS     R7,R2,#+20
        ANDS     R7,R7,#0xF00000
        ORRS     R5,R7,R5
        LSLS     R7,R3,#+16
        ANDS     R7,R7,#0xF0000
        ORRS     R5,R7,R5
        LDR.N    R7,??Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R5,[R7, #+0]
//  452 
//  453   // ��ʱһС��ʱ��ȴ��ı�
//  454   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R5,#+0
??Set_SYS_DIV_1:
        MOVS     R7,R5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R3
        BCS.N    ??Set_SYS_DIV_2
        ADDS     R5,R5,#+1
        B.N      ??Set_SYS_DIV_1
//  455   {}
//  456   
//  457   FMC->PFAPR = temp_reg; // �ظ�ԭ�ȵ� FMC_PFAPR �Ĵ���ֵ
??Set_SYS_DIV_2:
        STR      R4,[R6, #+0]
//  458   
//  459   return;
        POP      {R4-R7}
        BX       LR               ;; return
        DATA
??Set_SYS_DIV_0:
        DC32     0x4001f000
        DC32     0x40048044
//  460 } // set_sys_dividers

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP PLL_Setup
        SECTION_LINK PLL_Setup
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(PLL_Setup))
        DC32 0x80aeb0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  461 
//  462 /*******************************************
//  463 *         MK60F12 & 15
//  464 *  MCGOUT = PLL output frequency/2
//  465 *  PLL = (Crystal / PRDIV0 ) * VDIV0
//  466 ********************************************
//  467 PRDIV0 Divide Factor
//  468 ********************************************
//  469 PRDIV0  Va
//  470 ********************************************
//  471 000     1
//  472 001     2
//  473 010     3
//  474 011     4
//  475 100     5
//  476 101     6
//  477 110     7
//  478 111     8
//  479 ********************************************
//  480 VDIV0 MultiplyFactor
//  481 ********************************************
//  482 VDIV0 Va VDIV0 Va VDIV0 Va VDIV0 Va
//  483 ********************************************
//  484 00000 16 01000 24 10000 32 11000 40
//  485 00001 17 01001 25 10001 33 11001 41
//  486 00010 18 01010 26 10010 34 11010 42
//  487 00011 19 01011 27 10011 35 11011 43
//  488 00100 20 01100 28 10100 36 11100 44
//  489 00101 21 01101 29 10101 37 11101 45
//  490 00110 22 01110 30 10110 38 11110 46
//  491 00111 23 01111 31 10111 39 11111 47
//  492 ********************************************/
//  493 
//  494 /********************************************
//  495 *             MK60DZ10
//  496 *  MCGOUT = PLL output frequency
//  497 *  PLL = (Crystal / PRDIV0 ) * VDIV0
//  498 *********************************************
//  499 PRDIV DivideFactor
//  500 *********************************************
//  501 PRDIV0 Va PRDIV0 Va PRDIV0 Va PRDIV0 Va
//  502 *********************************************
//  503 00000  1  01000   9 10000  17 11000  25
//  504 00001  2  01001  10 10001  18 11001  Reserved
//  505 00010  3  01010  11 10010  19 11010  Reserved
//  506 00011  4  01011  12 10011  20 11011  Reserved
//  507 00100  5  01100  13 10100  21 11100  Reserved
//  508 00101  6  01101  14 10101  22 11101  Reserved
//  509 00110  7  01110  15 10110  23 11110  Reserved
//  510 00111  8  01111  16 10111  24 11111  Reserved
//  511 *********************************************
//  512 VDIV MultiplyFactor
//  513 *********************************************
//  514 VDIV0 Va VDIV0 Va VDIV0 Va VDIV0 Va
//  515 *********************************************
//  516 00000 24 01000 32 10000 40 11000 48
//  517 00001 25 01001 33 10001 41 11001 49
//  518 00010 26 01010 34 10010 42 11010 50
//  519 00011 27 01011 35 10011 43 11011 51
//  520 00100 28 01100 36 10100 44 11100 52
//  521 00101 29 01101 37 10101 45 11101 53
//  522 00110 30 01110 38 10110 46 11110 54
//  523 00111 31 01111 39 10111 47 11111 55
//  524 *********************************************/
// 
//   8 bytes in section .ARM.exidx
//  16 bytes in section .data
// 512 bytes in section .text
//  72 bytes in section .textrw
// 
// 584 bytes of CODE  memory
//   8 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none