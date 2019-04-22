///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:32:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLASH.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWEAFD.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLASH.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\FLASH.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC Flash_ByteProgram
        PUBLIC Flash_Init
        PUBLIC Flash_SectorErase

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLASH.c
//    1 /**
//    2  * @file HW_FLASH.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTFL�ײ�ģ����غ���
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
//   23 #include "FLASH.h"
//   24 
//   25 /*
//   26  * Flash_Init
//   27  * Flashģ���ʼ��
//   28  * 
//   29  * ����:
//   30  *    ��
//   31  *
//   32  * ���:
//   33  *    ��
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void Flash_Init(void)
//   36 {
//   37 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   38   //���Flash���ʴ���
//   39   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//   40   {
//   41     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
//   42   }
//   43   //��鱣������
//   44   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//   45   {
//   46     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//   47   }
//   48   //������ͻ����
//   49   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//   50   {
//   51     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//   52   }
//   53   
//   54   //����Flashģ������ݻ���
//   55   FMC->PFB0CR &= ~FMC_PFB0CR_B0DCE_MASK;
//   56   FMC->PFB1CR &= ~FMC_PFB1CR_B1DCE_MASK;
//   57 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)  
//   58   //���Flash���ʴ���
//   59   if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
Flash_Init:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Flash_Init_0
//   60   {
//   61     FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK;//��������־
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??Flash_Init_1
//   62   }
//   63   //��鱣������
//   64   else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??Flash_Init_0:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Flash_Init_2
//   65   {
//   66     FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??Flash_Init_1
//   67   }
//   68   else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??Flash_Init_2:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Flash_Init_1
//   69   {
//   70   //������ͻ����
//   71     FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable2  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   72   } /* EndIf */
//   73   //����Flashģ������ݻ���
//   74   FMC->PFB01CR &= ~FMC_PFB01CR_B01DCE_MASK;
??Flash_Init_1:
        LDR.N    R0,??DataTable2_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//   75   FMC->PFB23CR &= ~FMC_PFB23CR_B23DCE_MASK;
        LDR.N    R0,??DataTable2_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//   76 #endif
//   77 } 
        BX       LR               ;; return
//   78 
//   79 
//   80 /*
//   81  * Flash_SectorErase
//   82  * ����Flash����
//   83  * 
//   84  * ����:
//   85  *    FlashPtr--������ַָ�룬�������ų���2048
//   86  *
//   87  * ���:
//   88  *    �������
//   89  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 uint8 Flash_SectorErase(uint32 FlashPtr)
//   91 {
Flash_SectorErase:
        MOVS     R1,R0
//   92   uint8 Return = FLASH_OK;
        MOVS     R0,#+0
//   93 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//   94   //�ȴ�CCIF��1
//   95   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
//   96   //д�������FCCOB�Ĵ���
//   97   FTFL->FCCOB0 = FLASH_CMD_ERSSCR;
//   98   FTFL->FCCOB1 = (uint8) (FlashPtr >> 16);
//   99   FTFL->FCCOB2 = (uint8)((FlashPtr >> 8 ) & 0xFF);
//  100   FTFL->FCCOB3 = (uint8)( FlashPtr & 0xFF);
//  101   
//  102   //ִ������
//  103   FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
//  104   //�ȴ��������
//  105   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
//  106   
//  107   //���Flash���ʴ���
//  108   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//  109   {
//  110     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
//  111     Return |= FLASH_FACCERR;                    //���·���ֵ
//  112   }
//  113   //���Flash������־
//  114   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//  115   {
//  116     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//  117     Return |= FLASH_FPVIOL;
//  118   }
//  119   //���Flash����ͻ����
//  120   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//  121   {
//  122     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//  123     Return |= FLASH_RDCOLERR;
//  124   }
//  125   //���MGSTAT0�ǿɾ�������
//  126   else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
//  127   {
//  128     Return |= FLASH_MGSTAT0;
//  129   } 
//  130 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  131   //�ȴ�CCIF��1
//  132   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)){};
??Flash_SectorErase_0:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??Flash_SectorErase_0
//  133   //д�������FCCOB�Ĵ���
//  134   FTFE->FCCOB0 = FlashCmd_SectorErase;
        MOVS     R2,#+9
        LDR.N    R3,??DataTable2_3  ;; 0x40020007
        STRB     R2,[R3, #+0]
//  135   FTFE->FCCOB1 = (uint8_t) (FlashPtr >> 16);
        MOVS     R2,R1
        LSRS     R2,R2,#+16
        LDR.N    R3,??DataTable2_4  ;; 0x40020006
        STRB     R2,[R3, #+0]
//  136   FTFE->FCCOB2 = (uint8_t)((FlashPtr >> 8 ) & 0xFF);
        MOVS     R2,R1
        LSRS     R2,R2,#+8
        LDR.N    R3,??DataTable2_5  ;; 0x40020005
        STRB     R2,[R3, #+0]
//  137   FTFE->FCCOB3 = (uint8_t)( FlashPtr & 0xFF);
        LDR.N    R2,??DataTable2_6  ;; 0x40020004
        STRB     R1,[R2, #+0]
//  138 
//  139   //ִ������
//  140   FTFE->FSTAT |= FTFE_FSTAT_CCIF_MASK;    
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.N    R3,??DataTable2  ;; 0x40020000
        STRB     R2,[R3, #+0]
//  141   //�ȴ��������
//  142   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)) {};
??Flash_SectorErase_1:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??Flash_SectorErase_1
//  143   //���Flash���ʴ���
//  144   if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BPL.N    ??Flash_SectorErase_2
//  145   {
//  146     FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK; //��������־
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x20
        LDR.N    R3,??DataTable2  ;; 0x40020000
        STRB     R2,[R3, #+0]
//  147     Return |= FLASH_FACCERR;              //���·���ֵ
        ORRS     R0,R0,#0x1
        B.N      ??Flash_SectorErase_3
//  148   }
//  149   //���Flash������־
//  150   else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??Flash_SectorErase_2:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL.N    ??Flash_SectorErase_4
//  151   {
//  152     FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x10
        LDR.N    R3,??DataTable2  ;; 0x40020000
        STRB     R2,[R3, #+0]
//  153     Return |= FLASH_FPVIOL;
        ORRS     R0,R0,#0x2
        B.N      ??Flash_SectorErase_3
//  154   }
//  155   else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??Flash_SectorErase_4:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+25
        BPL.N    ??Flash_SectorErase_5
//  156   {
//  157     FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable2  ;; 0x40020000
        STRB     R2,[R3, #+0]
//  158     Return |= FLASH_RDCOLERR;
        ORRS     R0,R0,#0x8
        B.N      ??Flash_SectorErase_3
//  159   }
//  160   //���Flash����ͻ����
//  161   else if (FTFE->FSTAT & FTFE_FSTAT_MGSTAT0_MASK)
??Flash_SectorErase_5:
        LDR.N    R2,??DataTable2  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??Flash_SectorErase_3
//  162   {
//  163     Return |= FLASH_MGSTAT0;
        ORRS     R0,R0,#0x4
//  164   } 
//  165 #endif
//  166   return  Return;
??Flash_SectorErase_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  167 }
//  168 
//  169 /*
//  170  * Flash_ByteProgram
//  171  * ���Flash
//  172  * 
//  173  * ����:
//  174  *    FlashStartAdd--Flash�����ʼ��ַ
//  175  *    *DataSrcPtr--����Դָ��
//  176  *    NumberOfBytes--�����ֽڳ���
//  177  *
//  178  * ���:
//  179  *    �������
//  180  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 uint8 Flash_ByteProgram(uint32 FlashStartAdd, uint32 *DataSrcPtr, uint32 NumberOfBytes)
//  182 {
Flash_ByteProgram:
        PUSH     {R4-R6}
        MOVS     R5,R0
        MOVS     R4,R1
//  183   uint8 Return = FLASH_OK;
        MOVS     R1,#+0
//  184   
//  185   uint32 size_buffer;
//  186   
//  187   if (NumberOfBytes == 0)
        CMP      R2,#+0
        BNE.N    ??Flash_ByteProgram_0
//  188   {
//  189     return FLASH_CONTENTERR;
        MOVS     R0,#+17
        B.N      ??Flash_ByteProgram_1
//  190   }
//  191   else
//  192   {
//  193     size_buffer = (NumberOfBytes - 1)/BYTE_DIV + 1;
??Flash_ByteProgram_0:
        SUBS     R3,R2,#+1
        LSRS     R3,R3,#+3
        ADDS     R3,R3,#+1
//  194   }
//  195 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)
//  196   //�ȴ�ֱ��CCIF����
//  197   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
//  198 
//  199   while ((size_buffer) && (Return == FLASH_OK))
//  200   {
//  201     //дFLASH���FCCOB
//  202     FTFL->FCCOB0 = FLASH_CMD_PGM4;
//  203     FTFL->FCCOB1 = (uint8)(FlashStartAdd >> 16);
//  204     FTFL->FCCOB2 = (uint8)((FlashStartAdd >> 8) & 0xFF);
//  205     FTFL->FCCOB3 = (uint8)(FlashStartAdd & 0xFF);
//  206     //���K60���ó�ΪС�˸�ʽ���������²���
//  207     FTFL->FCCOB4 = (uint8)(*((uint8*)DataSrcPtr+3));
//  208     FTFL->FCCOB5 = (uint8)(*((uint8*)DataSrcPtr+2));
//  209     FTFL->FCCOB6 = (uint8)(*((uint8*)DataSrcPtr+1));
//  210     FTFL->FCCOB7 = (uint8)(*((uint8*)DataSrcPtr+0));
//  211     //���K60���ó�Ϊ��˸�ʽ���������²���
//  212     //FTFL_FCCOB4 = (uint8)(*((uint_8*)DataSrcPtr+0));
//  213     //FTFL_FCCOB5 = (uint8)(*((uint_8*)DataSrcPtr+1));
//  214     //FTFL_FCCOB6 = (uint8)(*((uint_8*)DataSrcPtr+2));
//  215     //FTFL_FCCOB7 = (uint8)(*((uint_8*)DataSrcPtr+3));
//  216     //����FLASH��������
//  217     FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
//  218     //�ȴ��������
//  219     while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
//  220     
//  221     //���FLASH���ʴ���
//  222     if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
//  223     {
//  224         
//  225         FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;
//  226     
//  227         Return |= FLASH_FACCERR;
//  228     }
//  229     //���FLASH��������
//  230     else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
//  231     {
//  232         FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
//  233     
//  234         Return |= FLASH_FPVIOL;
//  235     }
//  236     
//  237     else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
//  238     {
//  239         FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
//  240     
//  241         Return |= FLASH_RDCOLERR;
//  242     }
//  243     else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
//  244     {
//  245         Return |= FLASH_MGSTAT0;
//  246     } 
//  247     size_buffer --;
//  248     (uint32*)DataSrcPtr++;
//  249     FlashStartAdd +=4;
//  250   }
//  251 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15) 
//  252   //�ȴ�ֱ��CCIF����
//  253   while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)){};
??Flash_ByteProgram_2:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Flash_ByteProgram_2
//  254 
//  255   while ((size_buffer) && (Return == FLASH_OK))
??Flash_ByteProgram_3:
        CMP      R3,#+0
        BEQ.N    ??Flash_ByteProgram_4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??Flash_ByteProgram_4
//  256   {
//  257     //дFLASH���FCCOB
//  258     FTFE->FCCOB0 = FlashCmd_ProgramPhrase;
        MOVS     R0,#+7
        LDR.N    R6,??DataTable2_3  ;; 0x40020007
        STRB     R0,[R6, #+0]
//  259     FTFE->FCCOB1 = (uint8_t)( FlashStartAdd >> 16);
        MOVS     R0,R5
        LSRS     R0,R0,#+16
        LDR.N    R6,??DataTable2_4  ;; 0x40020006
        STRB     R0,[R6, #+0]
//  260     FTFE->FCCOB2 = (uint8_t)((FlashStartAdd >>  8) & 0xFF);
        MOVS     R0,R5
        LSRS     R0,R0,#+8
        LDR.N    R6,??DataTable2_5  ;; 0x40020005
        STRB     R0,[R6, #+0]
//  261     FTFE->FCCOB3 = (uint8_t)( FlashStartAdd & 0xFF);
        LDR.N    R0,??DataTable2_6  ;; 0x40020004
        STRB     R5,[R0, #+0]
//  262     //���K60���ó�ΪС�˸�ʽ���������²���
//  263     FTFE->FCCOB4 = (uint8_t)(*((uint8_t*)DataSrcPtr+3));
        LDRB     R0,[R4, #+3]
        LDR.N    R6,??DataTable2_7  ;; 0x4002000b
        STRB     R0,[R6, #+0]
//  264     FTFE->FCCOB5 = (uint8_t)(*((uint8_t*)DataSrcPtr+2));
        LDRB     R0,[R4, #+2]
        LDR.N    R6,??DataTable2_8  ;; 0x4002000a
        STRB     R0,[R6, #+0]
//  265     FTFE->FCCOB6 = (uint8_t)(*((uint8_t*)DataSrcPtr+1));
        LDRB     R0,[R4, #+1]
        LDR.N    R6,??DataTable2_9  ;; 0x40020009
        STRB     R0,[R6, #+0]
//  266     FTFE->FCCOB7 = (uint8_t)(*((uint8_t*)DataSrcPtr+0));
        LDRB     R0,[R4, #+0]
        LDR.N    R6,??DataTable2_10  ;; 0x40020008
        STRB     R0,[R6, #+0]
//  267     FTFE->FCCOB8 = (uint8_t)(*((uint8_t*)DataSrcPtr+7));
        LDRB     R0,[R4, #+7]
        LDR.N    R6,??DataTable2_11  ;; 0x4002000f
        STRB     R0,[R6, #+0]
//  268     FTFE->FCCOB9 = (uint8_t)(*((uint8_t*)DataSrcPtr+6));
        LDRB     R0,[R4, #+6]
        LDR.N    R6,??DataTable2_12  ;; 0x4002000e
        STRB     R0,[R6, #+0]
//  269     FTFE->FCCOBA = (uint8_t)(*((uint8_t*)DataSrcPtr+5));
        LDRB     R0,[R4, #+5]
        LDR.N    R6,??DataTable2_13  ;; 0x4002000d
        STRB     R0,[R6, #+0]
//  270     FTFE->FCCOBB = (uint8_t)(*((uint8_t*)DataSrcPtr+4));
        LDRB     R0,[R4, #+4]
        LDR.N    R6,??DataTable2_14  ;; 0x4002000c
        STRB     R0,[R6, #+0]
//  271     //���K60���ó�Ϊ��˸�ʽ���������²���
//  272     //FTFE_FCCOB4 = (uint8_t)(*((uint_8*)DataSrcPtr+0));
//  273     //FTFE_FCCOB5 = (uint8_t)(*((uint_8*)DataSrcPtr+1));
//  274     //FTFE_FCCOB6 = (uint8_t)(*((uint_8*)DataSrcPtr+2));
//  275     //FTFE_FCCOB7 = (uint8_t)(*((uint_8*)DataSrcPtr+3));
//  276     //����FLASH��������
//  277     FTFE->FSTAT |= FTFE_FSTAT_CCIF_MASK;    
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R6,??DataTable2  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  278     //�ȴ��������
//  279     while (!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK)) {};
??Flash_ByteProgram_5:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Flash_ByteProgram_5
//  280 
//  281     //���FLASH���ʴ���
//  282     if (FTFE->FSTAT & FTFE_FSTAT_ACCERR_MASK)
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Flash_ByteProgram_6
//  283     {
//  284       FTFE->FSTAT |= FTFE_FSTAT_ACCERR_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R6,??DataTable2  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  285       Return |= FLASH_FACCERR;
        ORRS     R1,R1,#0x1
        B.N      ??Flash_ByteProgram_7
//  286     }
//  287     //���FLASH��������
//  288     else if (FTFE->FSTAT & FTFE_FSTAT_FPVIOL_MASK)
??Flash_ByteProgram_6:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Flash_ByteProgram_8
//  289     {
//  290       FTFE->FSTAT |= FTFE_FSTAT_FPVIOL_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable2  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  291       Return |= FLASH_FPVIOL;
        ORRS     R1,R1,#0x2
        B.N      ??Flash_ByteProgram_7
//  292     }
//  293     else if (FTFE->FSTAT & FTFE_FSTAT_RDCOLERR_MASK)
??Flash_ByteProgram_8:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Flash_ByteProgram_9
//  294     {
//  295       FTFE->FSTAT |= FTFE_FSTAT_RDCOLERR_MASK;
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R6,??DataTable2  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  296       Return |= FLASH_RDCOLERR;
        ORRS     R1,R1,#0x8
        B.N      ??Flash_ByteProgram_7
//  297     }
//  298     else if (FTFE->FSTAT & FTFE_FSTAT_MGSTAT0_MASK)
??Flash_ByteProgram_9:
        LDR.N    R0,??DataTable2  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Flash_ByteProgram_7
//  299     {
//  300         Return |= FLASH_MGSTAT0;
        ORRS     R1,R1,#0x4
//  301     } 
//  302     //����ƫ����
//  303     size_buffer --;
??Flash_ByteProgram_7:
        SUBS     R3,R3,#+1
//  304     DataSrcPtr += 2;     
        ADDS     R4,R4,#+8
//  305     FlashStartAdd +=BYTE_DIV;
        ADDS     R5,R5,#+8
        B.N      ??Flash_ByteProgram_3
//  306   }
//  307 #endif
//  308   return  Return;
??Flash_ByteProgram_4:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??Flash_ByteProgram_1:
        POP      {R4-R6}
        BX       LR               ;; return
//  309 } 

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4001f004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4001f008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x4002000e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x4002000d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x4002000c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 542 bytes in section .text
// 
// 542 bytes of CODE memory
//
//Errors: none
//Warnings: none
