///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:56:57
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\printf.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW7E10.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\printf.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\printf.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN out_char
        EXTERN strlen

        PUBLIC _Z6printkP11PRINTK_INFOPKc9__va_list
        PUBLIC printf
        PUBLIC sprintf

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\printf.c
//    1 /**
//    2  * @file printf.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief C库标准printf()函数
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
//   24 #include <stdarg.h>
//   25 #include <string.h>
//   26 
//   27 /********************************************************************/
//   28 
//   29 typedef struct
//   30 {
//   31     int32 dest;
//   32     void (*func)(char);
//   33     char *loc;
//   34 } PRINTK_INFO;
//   35 
//   36 int32 
//   37 printk (PRINTK_INFO *, const char *, va_list);
//   38 
//   39 /********************************************************************/
//   40 
//   41 #define DEST_CONSOLE    (1)
//   42 #define DEST_STRING     (2)
//   43 
//   44 #define FLAGS_MINUS     (0x01)
//   45 #define FLAGS_PLUS      (0x02)
//   46 #define FLAGS_SPACE     (0x04)
//   47 #define FLAGS_ZERO      (0x08)
//   48 #define FLAGS_POUND     (0x10)
//   49 
//   50 #define IS_FLAG_MINUS(a)    (a & FLAGS_MINUS)
//   51 #define IS_FLAG_PLUS(a)     (a & FLAGS_PLUS)
//   52 #define IS_FLAG_SPACE(a)    (a & FLAGS_SPACE)
//   53 #define IS_FLAG_ZERO(a)     (a & FLAGS_ZERO)
//   54 #define IS_FLAG_POUND(a)    (a & FLAGS_POUND)
//   55 
//   56 #define LENMOD_h        (0x01)
//   57 #define LENMOD_l        (0x02)
//   58 #define LENMOD_L        (0x04)
//   59 
//   60 #define IS_LENMOD_h(a)  (a & LENMOD_h)
//   61 #define IS_LENMOD_l(a)  (a & LENMOD_l)
//   62 #define IS_LENMOD_L(a)  (a & LENMOD_L)
//   63 
//   64 #define FMT_d   (0x0001)
//   65 #define FMT_o   (0x0002)
//   66 #define FMT_x   (0x0004)
//   67 #define FMT_X   (0x0008)
//   68 #define FMT_u   (0x0010)
//   69 #define FMT_c   (0x0020)
//   70 #define FMT_s   (0x0040)
//   71 #define FMT_p   (0x0080)
//   72 #define FMT_n   (0x0100)
//   73 
//   74 #define IS_FMT_d(a)     (a & FMT_d)
//   75 #define IS_FMT_o(a)     (a & FMT_o)
//   76 #define IS_FMT_x(a)     (a & FMT_x)
//   77 #define IS_FMT_X(a)     (a & FMT_X)
//   78 #define IS_FMT_u(a)     (a & FMT_u)
//   79 #define IS_FMT_c(a)     (a & FMT_c)
//   80 #define IS_FMT_s(a)     (a & FMT_s)
//   81 #define IS_FMT_p(a)     (a & FMT_p)
//   82 #define IS_FMT_n(a)     (a & FMT_n)
//   83 
//   84 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 static void printk_putc (int32 c, int32 *count, PRINTK_INFO *info)
//   86 {
_ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   87     switch (info->dest)
        LDR      R0,[R6, #+0]
        CMP      R0,#+1
        BEQ.N    ??printk_putc_0
        CMP      R0,#+2
        BEQ.N    ??printk_putc_1
        B.N      ??printk_putc_2
//   88     {
//   89         case DEST_CONSOLE:
//   90             info->func((char)c);
??printk_putc_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R6, #+4]
        BLX      R1
//   91             break;
        B.N      ??printk_putc_3
//   92         case DEST_STRING:
//   93             *(info->loc) = (uint8)c;
??printk_putc_1:
        LDR      R0,[R6, #+8]
        STRB     R4,[R0, #+0]
//   94             ++(info->loc);
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+1
        STR      R0,[R6, #+8]
//   95             break;
        B.N      ??printk_putc_3
//   96         default:
//   97             break;
//   98     }
//   99     *count += 1;
??printk_putc_2:
??printk_putc_3:
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+0]
//  100 }
??printk_putc_4:
        POP      {R4-R6,PC}       ;; return
//  101 
//  102 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 static int32 printk_mknumstr (char *numstr, void *nump, int32 neg, int32 radix)
//  104 {
_ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii:
        PUSH     {R4-R10,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  105     int32 a,b,c;
//  106     uint32 ua,ub,uc;
//  107 
//  108     int32 nlen;
//  109     char *nstrp;
//  110 
//  111     nlen = 0;
        MOVS     R0,#+0
//  112     nstrp = numstr;
        MOV      R9,R6
//  113     *nstrp++ = '\0';
        MOVS     R10,#+0
        STRB     R10,[R9, #+0]
        ADDS     R9,R9,#+1
//  114 
//  115     if (neg)
        CMP      R4,#+0
        BEQ.N    ??printk_mknumstr_0
//  116     {
//  117         a = *(int32 *)nump;
        LDR      R10,[R5, #+0]
        MOV      R1,R10
//  118         if (a == 0)
        CMP      R1,#+0
        BNE.N    ??printk_mknumstr_1
//  119         {
//  120             *nstrp = '0';
        MOVS     R10,#+48
        STRB     R10,[R9, #+0]
//  121             ++nlen;
        ADDS     R0,R0,#+1
//  122             goto done;
        B.N      ??printk_mknumstr_2
//  123         }
//  124         while (a != 0)
??printk_mknumstr_1:
        CMP      R1,#+0
        BEQ.N    ??printk_mknumstr_2
//  125         {
//  126             b = (int32)a / (int32)radix;
        SDIV     R10,R1,R3
        MOV      R7,R10
//  127             c = (int32)a - ((int32)b * (int32)radix);
        MLS      R10,R3,R7,R1
//  128             if (c < 0)
        CMP      R10,#+0
        BPL.N    ??printk_mknumstr_3
//  129             {
//  130                 c = ~c + 1 + '0';
        MOV      R8,R10
        MVNS     R8,R8
        ADDS     R8,R8,#+49
        B.N      ??printk_mknumstr_4
//  131             }
//  132             else
//  133             {
//  134                 c = c + '0';
??printk_mknumstr_3:
        MOV      R8,R10
        ADDS     R8,R8,#+48
//  135             }
//  136             a = b;
??printk_mknumstr_4:
        MOVS     R1,R7
//  137             *nstrp++ = (char)c;
        STRB     R8,[R9, #+0]
        ADDS     R9,R9,#+1
//  138             ++nlen;
        ADDS     R0,R0,#+1
        B.N      ??printk_mknumstr_1
//  139         }
//  140     }
//  141     else
//  142     {
//  143         ua = *(uint32 *)nump;
??printk_mknumstr_0:
        LDR      R10,[R5, #+0]
        MOV      R2,R10
//  144         if (ua == 0)
        CMP      R2,#+0
        BNE.N    ??printk_mknumstr_5
//  145         {
//  146             *nstrp = '0';
        MOVS     R10,#+48
        STRB     R10,[R9, #+0]
//  147             ++nlen;
        ADDS     R0,R0,#+1
//  148             goto done;
        B.N      ??printk_mknumstr_2
//  149         }
//  150         while (ua != 0)
??printk_mknumstr_5:
        CMP      R2,#+0
        BEQ.N    ??printk_mknumstr_2
//  151         {
//  152             ub = (uint32)ua / (uint32)radix;
        UDIV     R10,R2,R3
        MOV      R12,R10
//  153             uc = (uint32)ua - ((uint32)ub * (uint32)radix);
        MLS      R10,R3,R12,R2
//  154             if (uc < 10)
        CMP      R10,#+10
        BCS.N    ??printk_mknumstr_6
//  155             {
//  156                 uc = uc + '0';
        MOV      LR,R10
        ADDS     LR,LR,#+48
        B.N      ??printk_mknumstr_7
//  157             }
//  158             else
//  159             {
//  160                 uc = uc - 10 + 'A';
??printk_mknumstr_6:
        MOV      LR,R10
        ADDS     LR,LR,#+55
//  161             }
//  162             ua = ub;
??printk_mknumstr_7:
        MOV      R2,R12
//  163             *nstrp++ = (char)uc;
        STRB     LR,[R9, #+0]
        ADDS     R9,R9,#+1
//  164             ++nlen;
        ADDS     R0,R0,#+1
        B.N      ??printk_mknumstr_5
//  165         }
//  166     }
//  167     done:
//  168     return nlen;
??printk_mknumstr_2:
        POP      {R4-R10,PC}      ;; return
//  169 }
//  170 
//  171 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 static void printk_pad_zero (int32 curlen, int32 field_width, int32 *count, PRINTK_INFO *info)
//  173 {
_ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  174     int32 i;
//  175 
//  176     for (i = curlen; i < field_width; i++)
        MOV      R8,R4
??printk_pad_zero_0:
        CMP      R8,R5
        BGE.N    ??printk_pad_zero_1
//  177     {
//  178         printk_putc('0',count, info);
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,#+48
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  179     }
        ADDS     R8,R8,#+1
        B.N      ??printk_pad_zero_0
//  180 }
??printk_pad_zero_1:
??printk_pad_zero_2:
        POP      {R4-R8,PC}       ;; return
//  181 
//  182 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  183 static void
//  184 printk_pad_space (int32 curlen, int32 field_width, int32 *count, PRINTK_INFO *info)
//  185 {
_ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  186     int32 i;
//  187 
//  188     for (i = curlen; i < field_width; i++)
        MOV      R8,R4
??printk_pad_space_0:
        CMP      R8,R5
        BGE.N    ??printk_pad_space_1
//  189     {
//  190         printk_putc(' ',count, info);
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,#+32
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  191     }
        ADDS     R8,R8,#+1
        B.N      ??printk_pad_space_0
//  192 }
??printk_pad_space_1:
??printk_pad_space_2:
        POP      {R4-R8,PC}       ;; return
//  193 
//  194 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 int32 printk (PRINTK_INFO *info, const char *fmt, va_list ap)
//  196 {
_Z6printkP11PRINTK_INFOPKc9__va_list:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+72
        MOVS     R5,R0
        MOV      R11,R2
//  197     /* va_list ap; */
//  198     char *p;
//  199     int32 c;
//  200 
//  201     char vstr[33];
//  202     char *vstrp;
//  203     int32 vlen;
//  204 
//  205     int32 done;
//  206     int32 count = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  207 
//  208     int32 flags_used;
//  209     int32 field_width;
//  210 #if 0
//  211     int32 precision_used;
//  212     int32 precision_width;
//  213     int32 length_modifier;
//  214 #endif
//  215 
//  216     int32 ival;
//  217     int32 schar, dschar;
//  218     int32 *ivalp;
//  219     char *sval;
//  220     int32 cval;
//  221     uint32 uval;
//  222 
//  223     /*
//  224      * Start parsing apart the format string and display appropriate
//  225      * formats and data.
//  226      */
//  227     for (p = (char *)fmt; (c = *p) != 0; p++)
        LDR      R8,[SP, #+72]
??printk_0:
        LDRB     R0,[R8, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.W    ??printk_1
//  228     {
//  229         /*
//  230          * All formats begin with a '%' marker.  Special chars like
//  231          * '\n' or '\t' are normally converted to the appropriate
//  232          * character by the __compiler__.  Thus, no need for this
//  233          * routine to account for the '\' character.
//  234          */
//  235         if (c != '%')
        LDR      R0,[SP, #+4]
        CMP      R0,#+37
        BEQ.N    ??printk_2
//  236         {
//  237             /*
//  238              * This needs to be replaced with something like
//  239              * 'out_char()' or call an OS routine.
//  240              */
//  241 #ifndef UNIX_DEBUG
//  242             if (c != '\n')
        LDR      R0,[SP, #+4]
        CMP      R0,#+10
        BEQ.N    ??printk_3
//  243             {
//  244                 printk_putc(c, &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+4]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
        B.N      ??printk_4
//  245             }
//  246             else
//  247             {
//  248                 printk_putc(0x0D /* CR */, &count, info);
??printk_3:
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+13
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  249                 printk_putc(0x0A /* LF */, &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+10
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  250             }
//  251 #else
//  252             printk_putc(c, &count, info);
//  253 #endif
//  254 
//  255             /*
//  256              * By using 'continue', the next iteration of the loop
//  257              * is used, skipping the code that follows.
//  258              */
//  259             continue;
??printk_4:
        B.N      ??printk_5
//  260         }
//  261 
//  262         /*
//  263          * First check for specification modifier flags.
//  264          */
//  265         flags_used = 0;
??printk_2:
        MOVS     R0,#+0
        MOVS     R6,R0
//  266         done = FALSE;
        MOVS     R0,#+0
//  267         while (!done)
??printk_6:
        CMP      R0,#+0
        BNE.N    ??printk_7
//  268         {
//  269             switch (/* c = */ *++p)
        ADDS     R8,R8,#+1
        LDRB     R1,[R8, #+0]
        CMP      R1,#+32
        BEQ.N    ??printk_8
        CMP      R1,#+35
        BEQ.N    ??printk_9
        CMP      R1,#+43
        BEQ.N    ??printk_10
        CMP      R1,#+45
        BEQ.N    ??printk_11
        CMP      R1,#+48
        BEQ.N    ??printk_12
        B.N      ??printk_13
//  270             {
//  271                 case '-':
//  272                     flags_used |= FLAGS_MINUS;
??printk_11:
        ORRS     R6,R6,#0x1
//  273                     break;
        B.N      ??printk_6
//  274                 case '+':
//  275                     flags_used |= FLAGS_PLUS;
??printk_10:
        ORRS     R6,R6,#0x2
//  276                     break;
        B.N      ??printk_6
//  277                 case ' ':
//  278                     flags_used |= FLAGS_SPACE;
??printk_8:
        ORRS     R6,R6,#0x4
//  279                     break;
        B.N      ??printk_6
//  280                 case '0':
//  281                     flags_used |= FLAGS_ZERO;
??printk_12:
        ORRS     R6,R6,#0x8
//  282                     break;
        B.N      ??printk_6
//  283                 case '#':
//  284                     flags_used |= FLAGS_POUND;
??printk_9:
        ORRS     R6,R6,#0x10
//  285                     break;
        B.N      ??printk_6
//  286                 default:
//  287                     /* we've gone one char too far */
//  288                     --p;
??printk_13:
        SUBS     R8,R8,#+1
//  289                     done = TRUE;
        MOVS     R1,#+1
        MOVS     R0,R1
//  290                     break;
        B.N      ??printk_6
//  291             }
//  292         }
//  293 
//  294         /*
//  295          * Next check for minimum field width.
//  296          */
//  297         field_width = 0;
??printk_7:
        MOVS     R1,#+0
        MOVS     R7,R1
//  298         done = FALSE;
        MOVS     R1,#+0
        STR      R1,[SP, #+20]
//  299         while (!done)
??printk_14:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??printk_15
//  300         {
//  301             switch (c = *++p)
        ADDS     R8,R8,#+1
        LDRB     R0,[R8, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,#+48
        CMP      R0,#+9
        BHI.N    ??printk_16
//  302             {
//  303                 case '0':
//  304                 case '1':
//  305                 case '2':
//  306                 case '3':
//  307                 case '4':
//  308                 case '5':
//  309                 case '6':
//  310                 case '7':
//  311                 case '8':
//  312                 case '9':
//  313                     field_width = (field_width * 10) + (c - '0');
??printk_17:
        MOVS     R1,#+10
        LDR      R0,[SP, #+4]
        MLA      R7,R1,R7,R0
        SUBS     R7,R7,#+48
//  314                     break;
        B.N      ??printk_14
//  315                 default:
//  316                     /* we've gone one char too far */
//  317                     --p;
??printk_16:
        SUBS     R8,R8,#+1
//  318                     done = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  319                     break;
        B.N      ??printk_14
//  320             }
//  321         }
//  322 
//  323         /*
//  324          * Next check for the width and precision field separator.
//  325          */
//  326         if (/* (c = *++p) */ *++p == '.')
??printk_15:
        ADDS     R1,R8,#+1
        LDRB     R0,[R1, #+0]
        CMP      R0,#+46
        BNE.N    ??printk_18
//  327         {
//  328             /* precision_used = TRUE; */
//  329 
//  330             /*
//  331              * Must get precision field width, if present.
//  332              */
//  333             /* precision_width = 0; */
//  334             done = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  335             while (!done)
??printk_19:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??printk_20
//  336             {
//  337                 switch (/* c = uncomment if used below */ *++p)
        ADDS     R1,R1,#+1
        LDRB     R0,[R1, #+0]
        SUBS     R0,R0,#+48
        CMP      R0,#+9
        BHI.N    ??printk_21
//  338                 {
//  339                     case '0':
//  340                     case '1':
//  341                     case '2':
//  342                     case '3':
//  343                     case '4':
//  344                     case '5':
//  345                     case '6':
//  346                     case '7':
//  347                     case '8':
//  348                     case '9':
//  349 #if 0
//  350                         precision_width = (precision_width * 10) +
//  351                             (c - '0');
//  352 #endif
//  353                         break;
??printk_22:
        B.N      ??printk_19
//  354                     default:
//  355                         /* we've gone one char too far */
//  356                         --p;
??printk_21:
        SUBS     R1,R1,#+1
//  357                         done = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  358                         break;
        B.N      ??printk_19
//  359                 }
//  360             }
//  361         }
//  362         else
//  363         {
//  364             /* we've gone one char too far */
//  365             --p;
??printk_18:
        SUBS     R1,R1,#+1
//  366 #if 0
//  367             precision_used = FALSE;
//  368             precision_width = 0;
//  369 #endif
//  370         }
//  371 
//  372         /*
//  373          * Check for the length modifier.
//  374          */
//  375         /* length_modifier = 0; */
//  376         switch (/* c = */ *++p)
??printk_20:
        ADDS     R0,R1,#+1
        LDRB     R1,[R0, #+0]
        CMP      R1,#+76
        BEQ.N    ??printk_23
        CMP      R1,#+104
        BEQ.N    ??printk_24
        CMP      R1,#+108
        BEQ.N    ??printk_25
        B.N      ??printk_26
//  377         {
//  378             case 'h':
//  379                 /* length_modifier |= LENMOD_h; */
//  380                 break;
??printk_24:
        B.N      ??printk_27
//  381             case 'l':
//  382                 /* length_modifier |= LENMOD_l; */
//  383                 break;
??printk_25:
        B.N      ??printk_27
//  384             case 'L':
//  385                 /* length_modifier |= LENMOD_L; */
//  386                 break;
??printk_23:
        B.N      ??printk_27
//  387             default:
//  388                 /* we've gone one char too far */
//  389                 --p;
??printk_26:
        SUBS     R0,R0,#+1
//  390                 break;
//  391         }
//  392 
//  393         /*
//  394          * Now we're ready to examine the format.
//  395          */
//  396         switch (c = *++p)
??printk_27:
        ADDS     R8,R0,#+1
        LDRB     R0,[R8, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        CMP      R0,#+88
        BEQ.N    ??printk_28
        CMP      R0,#+98
        BEQ.W    ??printk_29
        CMP      R0,#+99
        BEQ.W    ??printk_30
        CMP      R0,#+100
        BEQ.N    ??printk_31
        CMP      R0,#+105
        BEQ.N    ??printk_31
        CMP      R0,#+110
        BEQ.W    ??printk_32
        CMP      R0,#+111
        BEQ.W    ??printk_33
        CMP      R0,#+112
        BEQ.W    ??printk_34
        CMP      R0,#+115
        BEQ.W    ??printk_35
        CMP      R0,#+117
        BEQ.W    ??printk_36
        CMP      R0,#+120
        BEQ.N    ??printk_28
        B.N      ??printk_37
//  397         {
//  398             case 'd':
//  399             case 'i':
//  400                 ival = (int32)va_arg(ap, int32);
??printk_31:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+24]
//  401                 vlen = printk_mknumstr(vstr,&ival,TRUE,10);
        MOVS     R3,#+10
        MOVS     R2,#+1
        ADD      R1,SP,#+24
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  402                 vstrp = &vstr[vlen];
        ADD      R0,SP,#+36
        ADD      R0,R0,R9
        MOV      R10,R0
//  403 
//  404                 if (ival < 0)
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BPL.N    ??printk_38
//  405                 {
//  406                     schar = '-';
        MOVS     R0,#+45
        STR      R0,[SP, #+12]
//  407                     ++vlen;
        ADDS     R9,R9,#+1
        B.N      ??printk_39
//  408                 }
//  409                 else
//  410                 {
//  411                     if (IS_FLAG_PLUS(flags_used))
??printk_38:
        LSLS     R0,R6,#+30
        BPL.N    ??printk_40
//  412                     {
//  413                         schar = '+';
        MOVS     R0,#+43
        STR      R0,[SP, #+12]
//  414                         ++vlen;
        ADDS     R9,R9,#+1
        B.N      ??printk_39
//  415                     }
//  416                     else
//  417                     {
//  418                         if (IS_FLAG_SPACE(flags_used))
??printk_40:
        LSLS     R0,R6,#+29
        BPL.N    ??printk_41
//  419                         {
//  420                             schar = ' ';
        MOVS     R0,#+32
        STR      R0,[SP, #+12]
//  421                             ++vlen;
        ADDS     R9,R9,#+1
        B.N      ??printk_39
//  422                         }
//  423                         else
//  424                         {
//  425                             schar = 0;
??printk_41:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  426                         }
//  427                     }
//  428                 }
//  429                 dschar = FALSE;
??printk_39:
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  430             
//  431                 /*
//  432                  * do the ZERO pad.
//  433                  */
//  434                 if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R6,#+28
        BPL.N    ??printk_42
//  435                 {
//  436                     if (schar)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_43
//  437                         printk_putc(schar, &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+12]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  438                     dschar = TRUE;
??printk_43:
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  439             
//  440                     printk_pad_zero (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO
//  441                     vlen = field_width;
        MOV      R9,R7
        B.N      ??printk_44
//  442                 }
//  443                 else
//  444                 {
//  445                     if (!IS_FLAG_MINUS(flags_used))
??printk_42:
        LSLS     R0,R6,#+31
        BMI.N    ??printk_44
//  446                     {
//  447                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  448             
//  449                         if (schar)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_45
//  450                             printk_putc(schar, &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+12]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  451                         dschar = TRUE;
??printk_45:
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  452                     }
//  453                 }
//  454             
//  455                 /* the string was built in reverse order, now display in */
//  456                 /* correct order */
//  457                 if (!dschar && schar)
??printk_44:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE.N    ??printk_46
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_46
//  458                 {
//  459                     printk_putc(schar, &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+12]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  460                 }
//  461                 goto cont_xd;
??printk_46:
        B.N      ??printk_47
//  462 
//  463             case 'x':
//  464             case 'X':
//  465                 uval = (uint32)va_arg(ap, uint32);
??printk_28:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+8]
//  466                 vlen = printk_mknumstr(vstr,&uval,FALSE,16);
        MOVS     R3,#+16
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  467                 vstrp = &vstr[vlen];
        ADD      R0,SP,#+36
        ADD      R0,R0,R9
        MOV      R10,R0
//  468 
//  469                 dschar = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  470                 if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R6,#+28
        BPL.N    ??printk_48
//  471                 {
//  472                     if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R6,#+27
        BPL.N    ??printk_49
//  473                     {
//  474                         printk_putc('0', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+48
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  475                         printk_putc('x', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+120
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  476                         /*vlen += 2;*/
//  477                         dschar = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  478                     }
//  479                     printk_pad_zero (vlen, field_width, &count, info);
??printk_49:
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO
//  480                     vlen = field_width;
        MOV      R9,R7
        B.N      ??printk_50
//  481                 }
//  482                 else
//  483                 {
//  484                     if (!IS_FLAG_MINUS(flags_used))
??printk_48:
        LSLS     R0,R6,#+31
        BMI.N    ??printk_50
//  485                     {
//  486                         if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R6,#+27
        BPL.N    ??printk_51
//  487                         {
//  488                             vlen += 2;
        ADDS     R9,R9,#+2
//  489                         }
//  490                         printk_pad_space (vlen, field_width, &count, info);
??printk_51:
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  491                         if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R6,#+27
        BPL.N    ??printk_50
//  492                         {
//  493                             printk_putc('0', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+48
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  494                             printk_putc('x', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+120
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  495                             dschar = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  496                         }
//  497                     }
//  498                 }
//  499 
//  500                 if ((IS_FLAG_POUND(flags_used)) && !dschar)
??printk_50:
        LSLS     R0,R6,#+27
        BPL.N    ??printk_52
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE.N    ??printk_52
//  501                 {
//  502                     printk_putc('0', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+48
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  503                     printk_putc('x', &count, info);
        MOVS     R2,R5
        MOV      R1,SP
        MOVS     R0,#+120
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  504                     vlen += 2;
        ADDS     R9,R9,#+2
//  505                 }
//  506                 goto cont_xd;
??printk_52:
        B.N      ??printk_47
//  507 
//  508             case 'o':
//  509                 uval = (uint32)va_arg(ap, uint32);
??printk_33:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+8]
//  510                 vlen = printk_mknumstr(vstr,&uval,FALSE,8);
        MOVS     R3,#+8
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  511                 goto cont_u;
        B.N      ??printk_53
//  512             case 'b':
//  513                 uval = (uint32)va_arg(ap, uint32);
??printk_29:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+8]
//  514                 vlen = printk_mknumstr(vstr,&uval,FALSE,2);
        MOVS     R3,#+2
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  515                 goto cont_u;
        B.N      ??printk_53
//  516             case 'p':
//  517                 uval = (uint32)va_arg(ap, void *);
??printk_34:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+8]
//  518                 vlen = printk_mknumstr(vstr,&uval,FALSE,16);
        MOVS     R3,#+16
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  519                 goto cont_u;
        B.N      ??printk_53
//  520             case 'u':
//  521                 uval = (uint32)va_arg(ap, uint32);
??printk_36:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+8]
//  522                 vlen = printk_mknumstr(vstr,&uval,FALSE,10);
        MOVS     R3,#+10
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_mknumstrEPcPvii
        MOV      R9,R0
//  523 
//  524                 cont_u:
//  525                     vstrp = &vstr[vlen];
??printk_53:
        ADD      R0,SP,#+36
        ADD      R0,R0,R9
        MOV      R10,R0
//  526 
//  527                     if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R6,#+28
        BPL.N    ??printk_54
//  528                     {
//  529                         printk_pad_zero (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO
//  530                         vlen = field_width;
        MOV      R9,R7
        B.N      ??printk_47
//  531                     }
//  532                     else
//  533                     {
//  534                         if (!IS_FLAG_MINUS(flags_used))
??printk_54:
        LSLS     R0,R6,#+31
        BMI.N    ??printk_47
//  535                         {
//  536                             printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  537                         }
//  538                     }
//  539 
//  540                 cont_xd:
//  541                     while (*vstrp)
??printk_47:
        LDRB     R0,[R10, #+0]
        CMP      R0,#+0
        BEQ.N    ??printk_55
//  542                         printk_putc(*vstrp--, &count, info);
        MOV      R0,R10
        SUBS     R10,R0,#+1
        MOVS     R2,R5
        MOV      R1,SP
        LDRB     R0,[R0, #+0]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
        B.N      ??printk_47
//  543 
//  544                     if (IS_FLAG_MINUS(flags_used))
??printk_55:
        LSLS     R0,R6,#+31
        BPL.N    ??printk_56
//  545                     {
//  546                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  547                     }
//  548                 break;
??printk_56:
        B.N      ??printk_5
//  549 
//  550             case 'c':
//  551                 cval = (char)va_arg(ap, uint32);
??printk_30:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+28]
//  552                 printk_putc(cval,&count, info);
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+28]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  553                 break;
        B.N      ??printk_5
//  554             case 's':
//  555                 sval = (char *)va_arg(ap, char *);
??printk_35:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        MOVS     R4,R0
//  556                 if (sval)
        CMP      R4,#+0
        BEQ.N    ??printk_57
//  557                 {
//  558                     vlen = strlen(sval);
        MOVS     R0,R4
        BL       strlen
        MOV      R9,R0
//  559                     if (!IS_FLAG_MINUS(flags_used))
        LSLS     R0,R6,#+31
        BMI.N    ??printk_58
//  560                     {
//  561                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  562                     }
//  563                     while (*sval)
??printk_58:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??printk_59
//  564                         printk_putc(*sval++,&count, info);
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        MOVS     R2,R5
        MOV      R1,SP
        LDRB     R0,[R0, #+0]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
        B.N      ??printk_58
//  565                     if (IS_FLAG_MINUS(flags_used))
??printk_59:
        LSLS     R0,R6,#+31
        BPL.N    ??printk_57
//  566                     {
//  567                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R5
        MOV      R2,SP
        MOVS     R1,R7
        MOV      R0,R9
        BL       _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
//  568                     }
//  569                 }
//  570                 break;
??printk_57:
        B.N      ??printk_5
//  571             case 'n':
//  572                 ivalp = (int32 *)va_arg(ap, int32 *);
??printk_32:
        LDR      R0,[R11, #+0]
        ADDS     R11,R11,#+4
        STR      R0,[SP, #+32]
//  573                 *ivalp = count;
        LDR      R0,[SP, #+0]
        LDR      R1,[SP, #+32]
        STR      R0,[R1, #+0]
//  574                 break;
        B.N      ??printk_5
//  575             default:
//  576                 printk_putc(c,&count, info);
??printk_37:
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[SP, #+4]
        BL       _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
//  577                 break;
//  578         }
//  579     }
??printk_5:
        ADDS     R8,R8,#+1
        B.N      ??printk_0
//  580     return count;
??printk_1:
        LDR      R0,[SP, #+0]
??printk_60:
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return
//  581 }
//  582 
//  583 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  584 int32 printf (const char *fmt, ...)
//  585 {
printf:
        PUSH     {R1-R3}
        PUSH     {R0-R5,LR}
        MOVS     R4,R0
//  586     va_list ap;
//  587     int32 rvalue;
//  588     PRINTK_INFO info;
//  589 
//  590 
//  591     info.dest = DEST_CONSOLE;
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
//  592     info.func = &out_char;
        LDR.N    R0,??DataTable1
        STR      R0,[SP, #+4]
//  593     /*
//  594      * Initialize the pointer to the variable length argument list.
//  595      */
//  596     va_start(ap, fmt);
        ADD      R5,SP,#+28
//  597     rvalue = printk(&info, fmt, ap);
        MOVS     R2,R5
        MOVS     R1,R4
        MOV      R0,SP
        BL       _Z6printkP11PRINTK_INFOPKc9__va_list
//  598     /*
//  599      * Cleanup the variable length argument list.
//  600      */
//  601     va_end(ap);
//  602     return rvalue;
??printf_0:
        ADD      SP,SP,#+16
        POP      {R4,R5}
        LDR      PC,[SP], #+16    ;; return
//  603 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     out_char
//  604 
//  605 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  606 int32 sprintf (char *s, const char *fmt, ...)
//  607 {
sprintf:
        PUSH     {R2,R3}
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  608     va_list ap;
//  609     int32 rvalue = 0;
        MOVS     R7,#+0
//  610     PRINTK_INFO info;
//  611 
//  612     /*
//  613      * Initialize the pointer to the variable length argument list.
//  614      */
//  615     if (s != 0)
        CMP      R4,#+0
        BEQ.N    ??sprintf_0
//  616     {
//  617         info.dest = DEST_STRING;
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
//  618         info.loc = s;
        STR      R4,[SP, #+8]
//  619         va_start(ap, fmt);
        ADD      R0,SP,#+32
        MOVS     R6,R0
//  620         rvalue = printk(&info, fmt, ap);
        MOVS     R2,R6
        MOVS     R1,R5
        MOV      R0,SP
        BL       _Z6printkP11PRINTK_INFOPKc9__va_list
        MOVS     R7,R0
//  621         *info.loc = '\0';
        MOVS     R0,#+0
        LDR      R1,[SP, #+8]
        STRB     R0,[R1, #+0]
//  622         va_end(ap);
//  623     }
//  624     return rvalue;
??sprintf_0:
        MOVS     R0,R7
??sprintf_1:
        POP      {R1-R7}
        LDR      PC,[SP], #+12    ;; return
//  625 }

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN29_INTERNAL_8_printf_c_e69a582711printk_putcEiPiP11PRINTK_INFO))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN29_INTERNAL_8_printf_c_e69a582715printk_pad_zeroEiiPiP11PRINTK_INFO))
        DC32 0x80acb0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN29_INTERNAL_8_printf_c_e69a582716printk_pad_spaceEiiPiP11PRINTK_INFO))
        DC32 0x80acb0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z6printkP11PRINTK_INFOPKc9__va_list
        SECTION_LINK _Z6printkP11PRINTK_INFOPKc9__va_list
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z6printkP11PRINTK_INFOPKc9__va_list))
        DC32 0x8012afb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP printf
        SECTION_LINK printf
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(printf))
        DC32 0x8003a902
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP sprintf
        SECTION_LINK sprintf
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(sprintf))
        DC32 0x8002ab01
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  626 
//  627 /********************************************************************/
// 
//    48 bytes in section .ARM.exidx
// 1 428 bytes in section .text
// 
// 1 428 bytes of CODE  memory
//    48 bytes of CONST memory
//
//Errors: none
//Warnings: none
