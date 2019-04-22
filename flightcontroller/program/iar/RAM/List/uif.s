///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:07
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\uif.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1964.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\uif.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\uif.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN UIF_CMDTAB
        EXTERN UIF_NUM_CMD
        EXTERN UIF_NUM_SETCMD
        EXTERN UIF_SETCMDTAB
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN in_char
        EXTERN out_char
        EXTERN printf
        EXTERN strcasecmp
        EXTERN strcpy
        EXTERN strtoul

        PUBLIC HELPMSG
        PUBLIC INVALUE
        PUBLIC INVARG
        PUBLIC get_line
        PUBLIC get_value
        PUBLIC make_argv
        PUBLIC run_cmd
        PUBLIC uif_cmd_help
        PUBLIC uif_cmd_set
        PUBLIC uif_cmd_show


        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Valid 'set' options:\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%s\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "Error: Invalid argument list\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\012"
        DC8 0
// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\uif.c
//    1 /**
//    2  * @file uif.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief 提供简单的交互接口
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * The commands, set/show parameters, and prompt are configured 
//   10  * at the project level
//   11  *
//   12  * 版权所有:北京拉普兰德电子技术有限公司
//   13  * http://www.lpld.cn
//   14  * mail:support@lpld.cn
//   15  *
//   16  * @par
//   17  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   18  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   19  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   20  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   21  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   22  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   23  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   24  */
//   25 
//   26 #include "common.h"
//   27 #include "uif.h"
//   28 #include <string.h>
//   29 #include <stdlib.h>
//   30 
//   31 /********************************************************************/
//   32 /*
//   33  * Global messages -- constant strings
//   34  */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   35 const char HELPMSG[] =
HELPMSG:
        DC8 "Enter 'help' for help.\012"
//   36     "Enter 'help' for help.\n";
//   37 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   38 const char INVARG[] =
INVARG:
        DC8 "Error: Invalid argument: %s\012"
        DC8 0, 0, 0
//   39     "Error: Invalid argument: %s\n";
//   40 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   41 const char INVALUE[] = 
INVALUE:
        DC8 "Error: Invalid value: %s\012"
        DC8 0, 0
//   42     "Error: Invalid value: %s\n";
//   43 
//   44 /*
//   45  * Strings used by this file only
//   46  */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   47 static const char INVCMD[] =
INVCMD:
        DC8 "Error: No such command: %s\012"
//   48     "Error: No such command: %s\n";
//   49 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   50 static const char HELPFORMAT[] = 
HELPFORMAT:
        DC8 "%8s  %-25s %s %s\012"
        DC8 0, 0
//   51     "%8s  %-25s %s %s\n";
//   52 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   53 static const char SYNTAX[] = 
SYNTAX:
        DC8 "Error: Invalid syntax for: %s\012"
        DC8 0
//   54     "Error: Invalid syntax for: %s\n";
//   55 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   56 static const char INVOPT[] = 
INVOPT:
        DC8 "Error:  Invalid set/show option: %s\012"
        DC8 0, 0, 0
//   57     "Error:  Invalid set/show option: %s\n";
//   58 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   59 static const char OPTFMT[] = 
OPTFMT:
        DC8 "%12s: "
        DC8 0
//   60     "%12s: ";
//   61 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   62 static char cmdline1 [UIF_MAX_LINE];
cmdline1:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   63 static char cmdline2 [UIF_MAX_LINE];
cmdline2:
        DS8 80
//   64 
//   65 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 char *get_line (char *line)
//   67 {
get_line:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   68     int32 pos;
//   69     int32 ch;
//   70 
//   71     pos = 0;
        MOVS     R5,#+0
//   72     ch = (int32)in_char();
        BL       in_char
        MOVS     R6,R0
//   73     while ( (ch != 0x0D /* CR */) &&
//   74             (ch != 0x0A /* LF/NL */) &&
//   75             (pos < UIF_MAX_LINE))
??get_line_0:
        CMP      R6,#+13
        BEQ.N    ??get_line_1
        CMP      R6,#+10
        BEQ.N    ??get_line_1
        CMP      R5,#+80
        BGE.N    ??get_line_1
//   76     {
//   77         switch (ch)
        MOVS     R0,R6
        CMP      R0,#+8
        BEQ.N    ??get_line_2
        CMP      R0,#+127
        BNE.N    ??get_line_3
//   78         {
//   79             case 0x08:      /* Backspace */
//   80             case 0x7F:      /* Delete */
//   81                 if (pos > 0)
??get_line_2:
        CMP      R5,#+1
        BLT.N    ??get_line_4
//   82                 {
//   83                     pos -= 1;
        SUBS     R5,R5,#+1
//   84                     out_char(0x08);    /* backspace */
        MOVS     R0,#+8
        BL       out_char
//   85                     out_char(' ');
        MOVS     R0,#+32
        BL       out_char
//   86                     out_char(0x08);    /* backspace */
        MOVS     R0,#+8
        BL       out_char
//   87                 }
//   88                 break;
??get_line_4:
        B.N      ??get_line_5
//   89             default:
//   90                 if ((pos+1) < UIF_MAX_LINE)
??get_line_3:
        ADDS     R0,R5,#+1
        CMP      R0,#+80
        BGE.N    ??get_line_6
//   91                 {
//   92                     if ((ch > 0x1f) && (ch < 0x80))
        CMP      R6,#+32
        BLT.N    ??get_line_6
        CMP      R6,#+128
        BGE.N    ??get_line_6
//   93                     {
//   94                         line[pos++] = (char)ch;
        STRB     R6,[R4, R5]
        ADDS     R5,R5,#+1
//   95                         out_char((char)ch);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       out_char
//   96                     }
//   97                 }
//   98                 break;
//   99         }
//  100         ch = (int32)in_char();
??get_line_6:
??get_line_5:
        BL       in_char
        MOVS     R6,R0
        B.N      ??get_line_0
//  101     }
//  102     line[pos] = '\0';
??get_line_1:
        MOVS     R0,#+0
        STRB     R0,[R4, R5]
//  103     out_char(0x0D);    /* CR */
        MOVS     R0,#+13
        BL       out_char
//  104     out_char(0x0A);    /* LF */
        MOVS     R0,#+10
        BL       out_char
//  105 
//  106     return line;
        MOVS     R0,R4
??get_line_7:
        POP      {R4-R6,PC}       ;; return
//  107 }
//  108 
//  109 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 int32 make_argv (char *cmdline, char *argv[])
//  111 {
make_argv:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  112     int32 argc, i, in_text;
//  113 
//  114     /* 
//  115      * Break cmdline into strings and argv
//  116      * It is permissible for argv to be NULL, in which case
//  117      * the purpose of this routine becomes to count args
//  118      */
//  119     argc = 0;
        MOVS     R3,#+0
//  120     i = 0;
        MOVS     R5,#+0
//  121     in_text = FALSE;
        MOVS     R2,#+0
//  122     while (cmdline[i] != '\0')  /* getline() must place 0x00 on end */
??make_argv_0:
        LDRB     R0,[R4, R5]
        CMP      R0,#+0
        BEQ.N    ??make_argv_1
//  123     {
//  124         if (((cmdline[i] == ' ')   ||
//  125              (cmdline[i] == '\t')) )
        LDRB     R0,[R4, R5]
        CMP      R0,#+32
        BEQ.N    ??make_argv_2
        LDRB     R0,[R4, R5]
        CMP      R0,#+9
        BNE.N    ??make_argv_3
//  126         {
//  127             if (in_text)
??make_argv_2:
        CMP      R2,#+0
        BEQ.N    ??make_argv_4
//  128             {
//  129                 /* end of command line argument */
//  130                 cmdline[i] = '\0';
        MOVS     R0,#+0
        STRB     R0,[R4, R5]
//  131                 in_text = FALSE;
        MOVS     R0,#+0
        MOVS     R2,R0
        B.N      ??make_argv_4
//  132             }
//  133             else
//  134             {
//  135                 /* still looking for next argument */
//  136                 
//  137             }
//  138         }
//  139         else
//  140         {
//  141             /* got non-whitespace character */
//  142             if (in_text)
??make_argv_3:
        CMP      R2,#+0
        BNE.N    ??make_argv_4
//  143             {
//  144             }
//  145             else
//  146             {
//  147                 /* start of an argument */
//  148                 in_text = TRUE;
        MOVS     R0,#+1
        MOVS     R2,R0
//  149                 if (argc < UIF_MAX_ARGS)
        CMP      R3,#+10
        BGE.N    ??make_argv_5
//  150                 {
//  151                     if (argv != NULL)
        CMP      R1,#+0
        BEQ.N    ??make_argv_6
//  152                         argv[argc] = &cmdline[i];
        ADD      R0,R4,R5
        STR      R0,[R1, R3, LSL #+2]
//  153                     argc++;
??make_argv_6:
        ADDS     R3,R3,#+1
        B.N      ??make_argv_4
//  154                 }
//  155                 else
//  156                     /*return argc;*/
//  157                     break;
??make_argv_5:
        B.N      ??make_argv_1
//  158             }
//  159 
//  160         }
//  161         i++;    /* proceed to next character */
??make_argv_4:
        ADDS     R5,R5,#+1
        B.N      ??make_argv_0
//  162     }
//  163     if (argv != NULL)
??make_argv_1:
        CMP      R1,#+0
        BEQ.N    ??make_argv_7
//  164         argv[argc] = NULL;
        MOVS     R0,#+0
        STR      R0,[R1, R3, LSL #+2]
//  165     return argc;
??make_argv_7:
        MOVS     R0,R3
        POP      {R4,R5}
        BX       LR               ;; return
//  166 }
//  167 
//  168 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void run_cmd (void)
//  170 {
run_cmd:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
//  171     /*
//  172      * Global array of pointers to emulate C argc,argv interface
//  173      */
//  174     int32 argc;
//  175     char *argv[UIF_MAX_ARGS + 1];   /* one extra for null terminator */
//  176 
//  177     get_line(cmdline1);
        LDR.N    R0,??DataTable4_3
        BL       get_line
//  178 
//  179     if (!(argc = make_argv(cmdline1,argv)))
        MOV      R1,SP
        LDR.N    R0,??DataTable4_3
        BL       make_argv
        MOVS     R4,R0
        CMP      R4,#+0
        BNE.N    ??run_cmd_0
        MOVS     R0,#+1
        B.N      ??run_cmd_1
??run_cmd_0:
        MOVS     R0,#+0
??run_cmd_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??run_cmd_2
//  180     {
//  181         /* no command entered, just a blank line */
//  182         strcpy(cmdline1,cmdline2);
        LDR.N    R1,??DataTable4_4
        LDR.N    R0,??DataTable4_3
        BL       strcpy
//  183         argc = make_argv(cmdline1,argv);
        MOV      R1,SP
        BL       make_argv
        MOVS     R4,R0
//  184     }
//  185     cmdline2[0] = '\0';
??run_cmd_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_4
        STRB     R0,[R1, #+0]
//  186 
//  187     if (argc)
        CMP      R4,#+0
        BEQ.N    ??run_cmd_3
//  188     {
//  189         int32 i;
//  190         for (i = 0; i < UIF_NUM_CMD; i++)
        MOVS     R5,#+0
??run_cmd_4:
        LDR.N    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        CMP      R5,R0
        BGE.N    ??run_cmd_5
//  191         {
//  192             if (strcasecmp(UIF_CMDTAB[i].cmd,argv[0]) == 0)
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable4_6
        MOVS     R2,#+28
        MUL      R2,R2,R5
        LDR      R0,[R0, R2]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??run_cmd_6
//  193             {
//  194                 if (((argc-1) >= UIF_CMDTAB[i].min_args) &&
//  195                     ((argc-1) <= UIF_CMDTAB[i].max_args))
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable4_6
        MOVS     R2,#+28
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??run_cmd_7
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        SUBS     R1,R4,#+1
        CMP      R0,R1
        BLT.N    ??run_cmd_7
//  196                 {
//  197                     if (UIF_CMDTAB[i].flags & UIF_CMD_FLAG_REPEAT)
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+12]
        LSLS     R0,R0,#+31
        BPL.N    ??run_cmd_8
//  198                     {
//  199                         strcpy(cmdline2,argv[0]);
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable4_4
        BL       strcpy
//  200                     }
//  201                     UIF_CMDTAB[i].func(argc,argv);
??run_cmd_8:
        MOV      R1,SP
        MOVS     R0,R4
        LDR.N    R2,??DataTable4_6
        MOVS     R3,#+28
        MUL      R3,R3,R5
        ADD      R2,R2,R3
        LDR      R2,[R2, #+16]
        BLX      R2
//  202                     return;
        B.N      ??run_cmd_9
//  203                 }
//  204                 else
//  205                 {
//  206                     printf(SYNTAX,argv[0]);
??run_cmd_7:
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable4_7
        BL       printf
//  207                     return;
        B.N      ??run_cmd_9
//  208                 }
//  209             }
//  210         }
??run_cmd_6:
        ADDS     R5,R5,#+1
        B.N      ??run_cmd_4
//  211         printf(INVCMD,argv[0]);
??run_cmd_5:
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable4_8
        BL       printf
//  212         printf(HELPMSG);
        LDR.N    R0,??DataTable4_9
        BL       printf
//  213     }
//  214 }
??run_cmd_3:
??run_cmd_9:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
//  215 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 uint32 get_value (char *s, int32 *success, int32 base)
//  217 {
get_value:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  218     uint32 value;
//  219     char *p;
//  220 
//  221     value = strtoul(s,&p,base);
        MOVS     R2,R6
        MOV      R1,SP
        MOVS     R0,R4
        BL       strtoul
        MOVS     R1,R0
//  222     if ((value == 0) && (p == s))
        CMP      R1,#+0
        BNE.N    ??get_value_0
        LDR      R0,[SP, #+0]
        CMP      R0,R4
        BNE.N    ??get_value_0
//  223     {
//  224         *success = FALSE;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  225         return 0;
        MOVS     R0,#+0
        B.N      ??get_value_1
//  226     }
//  227     else
//  228     {
//  229         *success = TRUE;
??get_value_0:
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//  230         return value;
        MOVS     R0,R1
??get_value_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  231     }
//  232 }
//  233 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void uif_cmd_help (int32 argc, char **argv)
//  235 {
uif_cmd_help:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
//  236     int32 index;
//  237     
//  238     (void)argc;
//  239     (void)argv;
//  240     
//  241     printf("\n");
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  242     for (index = 0; index < UIF_NUM_CMD; index++)
        MOVS     R6,#+0
??uif_cmd_help_0:
        LDR.N    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_help_1
//  243     {
//  244         printf(HELPFORMAT,
//  245             UIF_CMDTAB[index].cmd,
//  246             UIF_CMDTAB[index].description,
//  247             UIF_CMDTAB[index].cmd,
//  248             UIF_CMDTAB[index].syntax);
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R6
        LDR      R3,[R0, R1]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDR      R2,[R0, #+20]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+28
        MUL      R1,R1,R6
        LDR      R1,[R0, R1]
        LDR.N    R0,??DataTable4_10
        BL       printf
//  249     }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_help_0
//  250     printf("\n");
??uif_cmd_help_1:
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  251 }
??uif_cmd_help_2:
        POP      {R0,R1,R4-R6,PC}  ;; return
//  252 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void uif_cmd_set (int32 argc, char **argv)
//  254 {
uif_cmd_set:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  255     int32 index;
//  256 
//  257     printf("\n");
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  258     if (argc == 1)
        CMP      R4,#+1
        BNE.N    ??uif_cmd_set_0
//  259     {
//  260         printf("Valid 'set' options:\n");
        LDR.N    R0,??DataTable4_11
        BL       printf
//  261         for (index = 0; index < UIF_NUM_SETCMD; ++index)
        MOVS     R6,#+0
??uif_cmd_set_1:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_set_2
//  262         {
//  263             printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R6
        LDR      R1,[R0, R1]
        LDR.N    R0,??DataTable4_14
        BL       printf
//  264             printf("%s\n",UIF_SETCMDTAB[index].syntax);
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDR      R1,[R0, #+16]
        ADR.N    R0,??DataTable4_1  ;; "%s\n"
        BL       printf
//  265         }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_set_1
//  266         printf("\n");
??uif_cmd_set_2:
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  267         return;
        B.N      ??uif_cmd_set_3
//  268     }
//  269 
//  270     if (argc != 3)
??uif_cmd_set_0:
        CMP      R4,#+3
        BEQ.N    ??uif_cmd_set_4
//  271     {
//  272         printf("Error: Invalid argument list\n");
        LDR.N    R0,??DataTable4_15
        BL       printf
//  273         return;
        B.N      ??uif_cmd_set_3
//  274     }
//  275 
//  276     for (index = 0; index < UIF_NUM_SETCMD; index++)
??uif_cmd_set_4:
        MOVS     R6,#+0
??uif_cmd_set_5:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_set_6
//  277     {
//  278         if (strcasecmp(UIF_SETCMDTAB[index].option,argv[1]) == 0)
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable4_13
        MOVS     R2,#+20
        MUL      R2,R2,R6
        LDR      R0,[R0, R2]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??uif_cmd_set_7
//  279         {
//  280             if (((argc-1-1) >= UIF_SETCMDTAB[index].min_args) &&
//  281                 ((argc-1-1) <= UIF_SETCMDTAB[index].max_args))
        SUBS     R0,R4,#+2
        LDR.N    R1,??DataTable4_13
        MOVS     R2,#+20
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??uif_cmd_set_8
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        SUBS     R1,R4,#+2
        CMP      R0,R1
        BLT.N    ??uif_cmd_set_8
//  282             {
//  283                 UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R5
        MOVS     R0,R4
        LDR.N    R2,??DataTable4_13
        MOVS     R3,#+20
        MUL      R3,R3,R6
        ADD      R2,R2,R3
        LDR      R2,[R2, #+12]
        BLX      R2
//  284                 return;
        B.N      ??uif_cmd_set_3
//  285             }
//  286             else
//  287             {
//  288                 printf(INVARG,argv[1]);
??uif_cmd_set_8:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable4_16
        BL       printf
//  289                 return;
        B.N      ??uif_cmd_set_3
//  290             }
//  291         }
//  292     }
??uif_cmd_set_7:
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_set_5
//  293     printf(INVOPT,argv[1]);
??uif_cmd_set_6:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable4_17
        BL       printf
//  294 }
??uif_cmd_set_3:
        POP      {R4-R6,PC}       ;; return
//  295 
//  296 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void uif_cmd_show (int32 argc, char **argv)
//  298 {
uif_cmd_show:
        PUSH     {R3-R7,LR}
        MOVS     R7,R0
        MOVS     R4,R1
//  299     int32 index;
//  300 
//  301     printf("\n");
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  302     if (argc == 1)
        CMP      R7,#+1
        BNE.N    ??uif_cmd_show_0
//  303     {
//  304         /*
//  305          * Show all Option settings
//  306          */
//  307         argc = 2;
        MOVS     R5,#+2
//  308         argv[2] = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//  309         for (index = 0; index < UIF_NUM_SETCMD; index++)
        MOVS     R6,#+0
??uif_cmd_show_1:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_show_2
//  310         {
//  311             printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R6
        LDR      R1,[R0, R1]
        LDR.N    R0,??DataTable4_14
        BL       printf
//  312             UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R4
        MOVS     R0,R5
        LDR.N    R2,??DataTable4_13
        MOVS     R3,#+20
        MUL      R3,R3,R6
        ADD      R2,R2,R3
        LDR      R2,[R2, #+12]
        BLX      R2
//  313             printf("\n");
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  314         }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_show_1
//  315         printf("\n");
??uif_cmd_show_2:
        ADR.N    R0,??DataTable4  ;; "\n"
        BL       printf
//  316         return;
        B.N      ??uif_cmd_show_3
//  317     }
//  318 
//  319     for (index = 0; index < UIF_NUM_SETCMD; index++)
??uif_cmd_show_0:
        MOVS     R5,#+0
??uif_cmd_show_4:
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        CMP      R5,R0
        BGE.N    ??uif_cmd_show_5
//  320     {
//  321         if (strcasecmp(UIF_SETCMDTAB[index].option,argv[1]) == 0)
        LDR      R1,[R4, #+4]
        LDR.N    R0,??DataTable4_13
        MOVS     R2,#+20
        MUL      R2,R2,R5
        LDR      R0,[R0, R2]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??uif_cmd_show_6
//  322         {
//  323             if (((argc-1-1) >= UIF_SETCMDTAB[index].min_args) &&
//  324                 ((argc-1-1) <= UIF_SETCMDTAB[index].max_args))
        SUBS     R0,R7,#+2
        LDR.N    R1,??DataTable4_13
        MOVS     R2,#+20
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??uif_cmd_show_7
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        SUBS     R1,R7,#+2
        CMP      R0,R1
        BLT.N    ??uif_cmd_show_7
//  325             {
//  326                 printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable4_13
        MOVS     R1,#+20
        MUL      R1,R1,R5
        LDR      R1,[R0, R1]
        LDR.N    R0,??DataTable4_14
        BL       printf
//  327                 UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R4
        MOVS     R0,R7
        LDR.N    R2,??DataTable4_13
        MOVS     R3,#+20
        MUL      R3,R3,R5
        ADD      R2,R2,R3
        LDR      R2,[R2, #+12]
        BLX      R2
//  328                 printf("\n\n");
        ADR.N    R0,??DataTable4_2  ;; 0x0A, 0x0A, 0x00, 0x00
        BL       printf
//  329                 return;
        B.N      ??uif_cmd_show_3
//  330             }
//  331             else
//  332             {
//  333                 printf(INVARG,argv[1]);
??uif_cmd_show_7:
        LDR      R1,[R4, #+4]
        LDR.N    R0,??DataTable4_16
        BL       printf
//  334                 return;
        B.N      ??uif_cmd_show_3
//  335             }
//  336         }
//  337     }
??uif_cmd_show_6:
        ADDS     R5,R5,#+1
        B.N      ??uif_cmd_show_4
//  338     printf(INVOPT,argv[1]);
??uif_cmd_show_5:
        LDR      R1,[R4, #+4]
        LDR.N    R0,??DataTable4_17
        BL       printf
//  339 }
??uif_cmd_show_3:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC8      "%s\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC8      0x0A, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     cmdline1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     cmdline2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     UIF_NUM_CMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     UIF_CMDTAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     SYNTAX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     INVCMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     HELPMSG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     HELPFORMAT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     UIF_NUM_SETCMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     UIF_SETCMDTAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     OPTFMT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     INVARG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     INVOPT

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP get_line
        SECTION_LINK get_line
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(get_line))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP run_cmd
        SECTION_LINK run_cmd
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(run_cmd))
        DC32 0x800aa9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP uif_cmd_help
        SECTION_LINK uif_cmd_help
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(uif_cmd_help))
        DC32 0x8001aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP uif_cmd_set
        SECTION_LINK uif_cmd_set
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(uif_cmd_set))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP uif_cmd_show
        SECTION_LINK uif_cmd_show
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(uif_cmd_show))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  340 
//  341 /********************************************************************/
// 
//    40 bytes in section .ARM.exidx
//   160 bytes in section .bss
//   278 bytes in section .rodata
// 1 034 bytes in section .text
// 
// 1 034 bytes of CODE  memory
//   318 bytes of CONST memory
//   160 bytes of DATA  memory
//
//Errors: none
//Warnings: none
