///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:32:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLEXBUS.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWEC08.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLEXBUS.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\FLEXBUS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC FB_PORT
        PUBLIC FlexBus_Init

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\FLEXBUS.c
//    1 /**
//    2  * @file FLEXBUS.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FLEXBUS底层模块相关函数
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
//   24 #include "FLEXBUS.h"
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   26 const uint32* FB_PORT[32] = {(uint32*)&PORTD->PCR[6], (uint32*)&PORTD->PCR[5], (uint32*)&PORTD->PCR[4], (uint32*)&PORTD->PCR[3],
FB_PORT:
        DC32 4004C018H, 4004C014H, 4004C010H, 4004C00CH, 4004C008H, 4004B028H
        DC32 4004B024H, 4004B020H, 4004B01CH, 4004B018H, 4004B014H, 4004B010H
        DC32 4004B008H, 4004B004H, 4004B000H, 4004A048H, 4004A044H, 4004A040H
        DC32 4004A02CH, 4004A028H, 4004A024H, 4004A020H, 4004A01CH, 4004A018H
        DC32 4004B03CH, 4004B038H, 4004B034H, 4004B030H, 4004A05CH, 4004A058H
        DC32 4004A054H, 4004A050H
//   27                              (uint32*)&PORTD->PCR[2], (uint32*)&PORTC->PCR[10], (uint32*)&PORTC->PCR[9], (uint32*)&PORTC->PCR[8],
//   28                              (uint32*)&PORTC->PCR[7], (uint32*)&PORTC->PCR[6], (uint32*)&PORTC->PCR[5], (uint32*)&PORTC->PCR[4],
//   29                              (uint32*)&PORTC->PCR[2], (uint32*)&PORTC->PCR[1], (uint32*)&PORTC->PCR[0], (uint32*)&PORTB->PCR[18],
//   30                              (uint32*)&PORTB->PCR[17], (uint32*)&PORTB->PCR[16], (uint32*)&PORTB->PCR[11], (uint32*)&PORTB->PCR[10],
//   31                              (uint32*)&PORTB->PCR[9], (uint32*)&PORTB->PCR[8], (uint32*)&PORTB->PCR[7], (uint32*)&PORTB->PCR[6],
//   32                              (uint32*)&PORTC->PCR[15], (uint32*)&PORTC->PCR[14], (uint32*)&PORTC->PCR[13], (uint32*)&PORTC->PCR[12],
//   33                              (uint32*)&PORTB->PCR[23], (uint32*)&PORTB->PCR[22], (uint32*)&PORTB->PCR[21], (uint32*)&PORTB->PCR[20]};
//   34 
//   35 /*
//   36  * FlexBus_Init
//   37  * FlexBux通用初始化函数
//   38  * 
//   39  * 参数:
//   40  *    fb_init_struct--FlexBus初始化结构体，
//   41  *                        具体定义见FB_InitTypeDef
//   42  *
//   43  * 输出:
//   44  *    0--配置错误
//   45  *    1--配置成功
//   46  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 uint8 FlexBus_Init(FB_InitTypeDef fb_init_struct)
//   48 {
FlexBus_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   49   FBx Fbx = fb_init_struct.FB_Fbx;
        LDRB     R5,[SP, #+40]
//   50   uint32 base_addr = fb_init_struct.FB_ChipSelAddress;
        LDR      R9,[SP, #+44]
//   51   uint32 addr_space = fb_init_struct.FB_AddressSpace;
        LDR      R6,[SP, #+48]
//   52   uint8 size = fb_init_struct.FB_PortSize;
        LDRB     R7,[SP, #+52]
//   53   boolean justied = fb_init_struct.FB_IsRightJustied;
        LDRB     R4,[SP, #+53]
//   54   boolean aa = fb_init_struct.FB_AutoAckEnable;
        LDRB     R0,[SP, #+54]
        STRB     R0,[SP, #+2]
//   55   uint8 ws = fb_init_struct.FB_WateStates;
        LDRB     R0,[SP, #+55]
        STRB     R0,[SP, #+1]
//   56   uint8 rah = fb_init_struct.FB_ReadAddrHold; 
        LDRB     R0,[SP, #+56]
        STRB     R0,[SP, #+0]
//   57   uint8 wah = fb_init_struct.FB_WriteAddrHold;
        LDRB     R10,[SP, #+57]
//   58   uint32* pcr;
//   59   uint8 n=0;
        MOVS     R11,#+0
//   60   
//   61   //参数检查
//   62   ASSERT( Fbx <= 5);    //判断FB通道号
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??FlexBus_Init_0
        MOVS     R1,#+62
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   63   ASSERT( base_addr >= 0x60000000 && base_addr <= 0xDFFFFFFF);    //判断基地址合法性
??FlexBus_Init_0:
        CMP      R9,#+1610612736
        BCC.N    ??FlexBus_Init_2
        CMP      R9,#-536870912
        BCC.N    ??FlexBus_Init_3
??FlexBus_Init_2:
        MOVS     R1,#+63
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   64   ASSERT( addr_space != 0);    //寻址空间大小
??FlexBus_Init_3:
        CMP      R6,#+0
        BNE.N    ??FlexBus_Init_4
        MOVS     R1,#+64
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   65   ASSERT( size <= 3);    //判断数据位宽
??FlexBus_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BLT.N    ??FlexBus_Init_5
        MOVS     R1,#+65
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   66   ASSERT( rah <= 3);     //判断读地址保持时间
??FlexBus_Init_5:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+4
        BLT.N    ??FlexBus_Init_6
        MOVS     R1,#+66
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   67   ASSERT( wah <= 3);     //判断写地址保持时间
??FlexBus_Init_6:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+4
        BLT.N    ??FlexBus_Init_7
        MOVS     R1,#+67
        LDR.N    R0,??FlexBus_Init_1
        BL       assert_failed
//   68   
//   69   FB->CS[Fbx].CSMR = 0;
??FlexBus_Init_7:
        MOVS     R0,#+0
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+4]
//   70       
//   71   //设置基地址
//   72   FB->CS[Fbx].CSAR = base_addr;
        LDR.N    R0,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R5
        STR      R9,[R0, R1]
//   73   //端口位宽
//   74   FB->CS[Fbx].CSCR  = FB_CSCR_PS(size);      
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+6
        ANDS     R0,R0,#0xC0
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   75   
//   76   if(justied)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FlexBus_Init_8
//   77   {
//   78     FB->CS[Fbx].CSCR |= FB_CSCR_BLS_MASK;   // 数据右对齐
        LDR.N    R0,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   79   }
//   80       
//   81   if(aa)    
??FlexBus_Init_8:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+0
        BEQ.N    ??FlexBus_Init_9
//   82   {
//   83     FB->CS[Fbx].CSCR |= FB_CSCR_AA_MASK;   //使能内部应答
        LDR.N    R0,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   84   }
//   85   
//   86   FB->CS[Fbx].CSCR |= FB_CSCR_WS(ws)    // 在内部应答信号之前加入ws个WS
//   87                      | FB_CSCR_RDAH(rah)
//   88                      | FB_CSCR_WRAH(wah);
??FlexBus_Init_9:
        LDR.N    R0,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        LDRB     R1,[SP, #+1]
        LSLS     R1,R1,#+10
        ANDS     R1,R1,#0xFC00
        LDRB     R2,[SP, #+0]
        LSLS     R2,R2,#+18
        ANDS     R2,R2,#0xC0000
        ORRS     R1,R2,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R2,R10,#+16
        ANDS     R2,R2,#0x30000
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   89   
//   90   //根据寻址空间大小计算基地址掩码
//   91   addr_space = (addr_space-1)>>16;
        SUBS     R6,R6,#+1
        LSRS     R6,R6,#+16
//   92   FB->CS[Fbx].CSMR = FB_CSMR_BAM(addr_space)  //设置基地址掩码为128K地址空间 =2^n(n=BAM+16)
//   93                 | FB_CSMR_V_MASK;    //使能CS信号
        LSLS     R0,R6,#+16
        ORRS     R0,R0,#0x1
        LDR.N    R1,??FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+12
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        STR      R0,[R1, #+4]
//   94   
//   95   //使能复用功能的FB_CSn及引脚复用
//   96   if(Fbx == FB0)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??FlexBus_Init_10
//   97   {
//   98     PORTD->PCR[1]  = PORT_PCR_MUX(5);       // FB_CS0     
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x8  ;; 0x4004c004
        STR      R0,[R1, #+0]
        B.N      ??FlexBus_Init_11
//   99   }
//  100   else if(Fbx == FB1)
??FlexBus_Init_10:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??FlexBus_Init_12
//  101   {
//  102     FB->CSPMCR &= ~(FB_CSPMCR_GROUP1_MASK);
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BIC      R0,R0,#0xF0000000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  103     FB->CSPMCR |= FB_CSPMCR_GROUP1(1);      
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  104     PORTD->PCR[0]  = PORT_PCR_MUX(5);       // FB_CS1  
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x10  ;; 0x4004c000
        STR      R0,[R1, #+0]
        B.N      ??FlexBus_Init_11
//  105   }
//  106   else if(Fbx == FB2)
??FlexBus_Init_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??FlexBus_Init_13
//  107   {
//  108     FB->CSPMCR &= ~(FB_CSPMCR_GROUP4_MASK);
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF0000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  109     FB->CSPMCR |= FB_CSPMCR_GROUP4(1);     
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  110     PORTC->PCR[18]  = PORT_PCR_MUX(5);       // FB_CS2
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x14  ;; 0x4004b048
        STR      R0,[R1, #+0]
        B.N      ??FlexBus_Init_11
//  111   }
//  112   else if(Fbx == FB3)
??FlexBus_Init_13:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??FlexBus_Init_14
//  113   {
//  114     FB->CSPMCR &= ~(FB_CSPMCR_GROUP5_MASK);
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  115     FB->CSPMCR |= FB_CSPMCR_GROUP5(1);     
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  116     PORTC->PCR[19]  = PORT_PCR_MUX(5);       // FB_CS3
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x18  ;; 0x4004b04c
        STR      R0,[R1, #+0]
        B.N      ??FlexBus_Init_11
//  117   }
//  118   else if(Fbx == FB4)
??FlexBus_Init_14:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FlexBus_Init_15
//  119   {
//  120     FB->CSPMCR &= ~(FB_CSPMCR_GROUP2_MASK);
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF000000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  121     FB->CSPMCR |= FB_CSPMCR_GROUP2(0);      
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  122     PORTC->PCR[17]  = PORT_PCR_MUX(5);       // FB_CS4
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x1C  ;; 0x4004b044
        STR      R0,[R1, #+0]
        B.N      ??FlexBus_Init_11
//  123   }
//  124   else if(Fbx == FB5)
??FlexBus_Init_15:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BNE.N    ??FlexBus_Init_11
//  125   {
//  126     FB->CSPMCR &= ~(FB_CSPMCR_GROUP3_MASK);
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF00000
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  127     FB->CSPMCR |= FB_CSPMCR_GROUP3(0);     
        LDR.N    R0,??FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        LDR.N    R1,??FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  128     PORTC->PCR[16]  = PORT_PCR_MUX(5);       // FB_CS5
        MOV      R0,#+1280
        LDR.N    R1,??FlexBus_Init_1+0x20  ;; 0x4004b040
        STR      R0,[R1, #+0]
//  129   }
//  130   
//  131   //使能总线地址、数据引脚复用功能
//  132   //先使能低16位地址总线
//  133   for(uint8 i=0; i<16; i++)
??FlexBus_Init_11:
        MOVS     R0,#+0
??FlexBus_Init_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??FlexBus_Init_17
//  134   {
//  135     pcr = (uint32 *)FB_PORT[i];
        LDR.N    R1,??FlexBus_Init_1+0x24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        MOV      R8,R1
//  136     *pcr = PORT_PCR_MUX(5);    
        MOV      R1,#+1280
        STR      R1,[R8, #+0]
//  137   }
        ADDS     R0,R0,#+1
        B.N      ??FlexBus_Init_16
//  138   //使能其余的地址总线
//  139   n=16;
??FlexBus_Init_17:
        MOVS     R0,#+16
//  140   for(uint8 i=0; i<16; i++)
        MOVS     R1,#+0
??FlexBus_Init_18:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BGE.N    ??FlexBus_Init_19
//  141   {
//  142     if((addr_space>>i)&0x01)
        MOVS     R2,R6
        LSRS     R2,R2,R1
        LSLS     R2,R2,#+31
        BPL.N    ??FlexBus_Init_20
//  143     {
//  144       pcr = (uint32 *)FB_PORT[n++];
        LDR.N    R2,??FlexBus_Init_1+0x24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        MOV      R8,R2
        ADDS     R0,R0,#+1
//  145       *pcr = PORT_PCR_MUX(5); 
        MOV      R2,#+1280
        STR      R2,[R8, #+0]
//  146     }
//  147   }
??FlexBus_Init_20:
        ADDS     R1,R1,#+1
        B.N      ??FlexBus_Init_18
//  148   //如果是32位宽，则使能高16位
//  149   n=0;
??FlexBus_Init_19:
        MOVS     R1,#+0
//  150   if(size == 0)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??FlexBus_Init_21
//  151   {   
//  152     n=16;
        MOVS     R0,#+16
        MOVS     R1,R0
        B.N      ??FlexBus_Init_22
//  153   }else if(justied==0 && size == 0x10)
??FlexBus_Init_21:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??FlexBus_Init_23
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BNE.N    ??FlexBus_Init_23
//  154   {
//  155     n=16;
        MOVS     R0,#+16
        MOVS     R1,R0
        B.N      ??FlexBus_Init_22
//  156   }else if(justied==0 && size == 0x01)
??FlexBus_Init_23:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??FlexBus_Init_22
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??FlexBus_Init_22
//  157   {
//  158     n=8;
        MOVS     R0,#+8
        MOVS     R1,R0
//  159   }
//  160   if(n!=0)
??FlexBus_Init_22:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FlexBus_Init_24
//  161   {
//  162     for(uint8 i=31; i>31-n; i--)
        MOVS     R0,#+31
??FlexBus_Init_25:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        RSBS     R2,R1,#+31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BGE.N    ??FlexBus_Init_24
//  163     {
//  164       pcr = (uint32 *)FB_PORT[i];
        LDR.N    R2,??FlexBus_Init_1+0x24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        MOV      R8,R2
//  165       *pcr = PORT_PCR_MUX(5);    
        MOV      R2,#+1280
        STR      R2,[R8, #+0]
//  166     }
        SUBS     R0,R0,#+1
        B.N      ??FlexBus_Init_25
//  167   }
//  168   
//  169   //控制信号线
//  170   PORTB->PCR[19] = PORT_PCR_MUX(5);          // fb_oe_b
??FlexBus_Init_24:
        MOV      R0,#+1280
        LDR.N    R2,??FlexBus_Init_1+0x28  ;; 0x4004a04c
        STR      R0,[R2, #+0]
//  171   PORTC->PCR[11] = PORT_PCR_MUX(5);          // fb_rw_b  
        MOV      R0,#+1280
        LDR.N    R2,??FlexBus_Init_1+0x2C  ;; 0x4004b02c
        STR      R0,[R2, #+0]
//  172               
//  173   return 1;
        MOVS     R0,#+1
??FlexBus_Init_26:
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
        DATA
??FlexBus_Init_1:
        DC32     ?_0
        DC32     0x4000c000
        DC32     0x4004c004
        DC32     0x4000c060
        DC32     0x4004c000
        DC32     0x4004b048
        DC32     0x4004b04c
        DC32     0x4004b044
        DC32     0x4004b040
        DC32     FB_PORT
        DC32     0x4004a04c
        DC32     0x4004b02c
//  174 }

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP FlexBus_Init
        SECTION_LINK FlexBus_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(FlexBus_Init))
        DC32 0x8000af03
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
        DC8 4CH, 45H, 58H, 42H, 55H, 53H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
// 
//   8 bytes in section .ARM.exidx
// 128 bytes in section .data
// 100 bytes in section .rodata
// 812 bytes in section .text
// 
// 812 bytes of CODE  memory
// 108 bytes of CONST memory
// 128 bytes of DATA  memory
//
//Errors: none
//Warnings: none
