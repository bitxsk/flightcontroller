/**
 * @file DEV_LCD.c
 * @version 0.2[By LPLD]
 * @date 2013-10-21
 * @brief LCD�豸��������
 *
 * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
 *
 * 0.2-2013-10-21 �Ż���ʼ���������ַ���������ʾ����
 */
#include "DEV_LCD.h"
#include "Font_ASC.h"

static void LCD_Reset(void);
static void LCD_FLEXBUS_Init(uint16 lcd_id);
static void LCD_IO_Cfg(void);
static void LCD_WriteIndex(uint16 index);
static void LCD_WriteData(uint16 data);
static uint16 LCD_ReadData(void);
static void LCD_WriteReg(uint16 LCD_Reg,uint16 LCD_RegValue);
static uint16 LCD_ReadReg(uint16 LCD_Reg);
static void LCD_SetCursor( uint16 Xpos, uint16 Ypos );
static void LCD_Delayms(uint16 ms);

LCD_Info_t LCD_INFO;
uint16 PreX=0, PreY=0;
uint16 *LCD_GRAM;
uint16 CurX=0, CurY=0;

/*
 * LCD_Delayms
 * LCD�ڲ���ʱ�������ڲ�����
 */
static void LCD_Delayms(uint16 n)
{
  uint16 i;
  while(n--)
  {
    for(i=0; i<400; i++)
    {
      asm("nop");
    }
  }
}

/*
 * LCD_FLEXBUS_Init
 * LCD FlexBus��ʼ���������ڲ�����
 * 
 * ˵��:
 *    ����ʼ��������������FlexBus��LCD������
 *    ����Ϊ16λ�˿ڴ�С
 *    ��ַ�������߸���
 *    ���ݼ���ַ��ΪFB_AD[15:0]
 *    RS:FB_AD[16]
 *    CS:FB_CS0
 *    RW:FB_FB_RW
 *    RD:FB_OE 
 */
static void LCD_FLEXBUS_Init(uint16 lcd_id)
{
  FB_InitTypeDef fb_init;
  fb_init.FB_Fbx = FB0;
  fb_init.FB_ChipSelAddress = LCD_CMD_ADDRESS;
  fb_init.FB_AutoAckEnable = TRUE;
  fb_init.FB_IsRightJustied = TRUE;
  fb_init.FB_WateStates = 0x02;
  fb_init.FB_PortSize = FB_SIZE_16BIT;
  fb_init.FB_AddressSpace = FB_SPACE_KB(128);   //128K
  fb_init.FB_ReadAddrHold = 0;
  fb_init.FB_WriteAddrHold = 0;
  FlexBus_Init(fb_init); 
}

/*
 * LCD_IO_Cfg
 * LCD IO���ų�ʼ�����ڲ�����
 *
 * ˵����
 * �˴���ʼ����λ���ţ��ɸ���ʵ��Ӳ������
 */
static void LCD_IO_Cfg(void)
{
  GPIO_InitTypeDef ptc_init;
  //RST 
  ptc_init.GPIO_PTx = PTD;
  ptc_init.GPIO_Pins = GPIO_Pin15;
  ptc_init.GPIO_Dir = DIR_OUTPUT;
  ptc_init.GPIO_Output = OUTPUT_H;
  ptc_init.GPIO_PinControl = IRQC_DIS; 
  GPIO_Init(ptc_init);    
}

/*
 * LCD_WriteIndex
 * LCDд��������ڲ�����
 */
static void LCD_WriteIndex(uint16 index)
{
  *(vuint16*)LCD_CMD_ADDRESS = index;  //write
}

/*
 * LCD_WriteData
 * LCDд���ݣ��ڲ�����
 */
void LCD_WriteData(uint16 data)
{
  *(vuint16*)LCD_DATA_ADDRESS = data;  //write
}

/*
 * LCD_ReadData
 * LCD�����ݣ��ڲ�����
 */
static uint16 LCD_ReadData(void)
{ 
  uint16 value;
  value = *(vuint16*)LCD_DATA_ADDRESS;  //read
  return value;
}

/*
 * LCD_WriteReg
 * LCDд�Ĵ������ڲ�����
 */
static void LCD_WriteReg(uint16 LCD_Reg,uint16 LCD_RegValue)
{ 
  /* Write 16-bit Index, then Write Reg */  
  LCD_WriteIndex(LCD_Reg);         
  /* Write 16-bit Reg */
  LCD_WriteData(LCD_RegValue);  
}

/*
 * LCD_ReadReg
 * LCD���Ĵ������ڲ�����
 */
static uint16 LCD_ReadReg(uint16 LCD_Reg)
{
  uint16 LCD_RAM;
  /* Write 16-bit Index (then Read Reg) */
  LCD_WriteIndex(LCD_Reg);
  /* Read 16-bit Reg */
  LCD_RAM = LCD_ReadData();      	
  return LCD_RAM;
}

/*
 * LCD_SetCursor
 * ����LCD�ڲ�GRAM���λ�ã��ڲ�����
 */
static void LCD_SetCursor( uint16 Xpos, uint16 Ypos )
{
#if(HORIZONTAL)
    
  uint16 temp = Xpos;
  Xpos = Ypos;
  Ypos = temp;  

#else
            
#endif
//  LCD_WriteReg(LCD_INFO.X_GRAM, Xpos );      
//  LCD_WriteReg(LCD_INFO.Y_GRAM, Ypos );          
   
  LCD_WriteIndex(LCD_INFO.X_GRAM); 
  LCD_WriteData(Xpos>>8); 
  LCD_WriteIndex(LCD_INFO.X_GRAM+1); 
  LCD_WriteData(Xpos&0XFF);	 
  LCD_WriteIndex(LCD_INFO.Y_GRAM); 
  LCD_WriteData(Ypos>>8); 
  LCD_WriteIndex(LCD_INFO.Y_GRAM+1); 
  LCD_WriteData(Ypos&0XFF);	
}


/*
 * LCD_Reset
 * ��λLCD���������ڲ�����
 */
static void LCD_Reset(void)
{
  LCD_CLR_RST;
  LCD_Delayms(10); //��ʱ
  LCD_SET_RST;
}

/*
 * LCD_Init
 * LCD��ʼ��
 * 
 * ����:
 *    ��
 *
 * ���:
 *    LCD�����ͺ�
 *    0x9320--9320
 *    0x8989--8989
 */
uint16 dID[4];
uint16 LCD_Init(void)
{
  
   
  LCD_FLEXBUS_Init(0);
  LCD_IO_Cfg();
  LCD_Delayms(50);
  
  LCD_Reset();                 //Ӳ����λ
  
  dID[0] = LCD_ReadReg(0xda00);   //��ȡLCD�������豸ID
  dID[1] = LCD_ReadReg(0xdb00);
  dID[2] = LCD_ReadReg(0xdc00);
  dID[3]  = 0X8000;
  LCD_INFO.Lcd_Id = dID[3];
  
  if(dID[3] == 0X8000)
  {
    
    
		LCD_WriteReg(0xF000,0x55);
		LCD_WriteReg(0xF001,0xAA);
		LCD_WriteReg(0xF002,0x52);
		LCD_WriteReg(0xF003,0x08);
		LCD_WriteReg(0xF004,0x01);
		//AVDD Set AVDD 5.2V
		LCD_WriteReg(0xB000,0x0D);
		LCD_WriteReg(0xB001,0x0D);
		LCD_WriteReg(0xB002,0x0D);
		//AVDD ratio
		LCD_WriteReg(0xB600,0x34);
		LCD_WriteReg(0xB601,0x34);
		LCD_WriteReg(0xB602,0x34);
		//AVEE -5.2V
		LCD_WriteReg(0xB100,0x0D);
		LCD_WriteReg(0xB101,0x0D);
		LCD_WriteReg(0xB102,0x0D);
		//AVEE ratio
		LCD_WriteReg(0xB700,0x34);
		LCD_WriteReg(0xB701,0x34);
		LCD_WriteReg(0xB702,0x34);
		//VCL -2.5V
		LCD_WriteReg(0xB200,0x00);
		LCD_WriteReg(0xB201,0x00);
		LCD_WriteReg(0xB202,0x00);
		//VCL ratio
		LCD_WriteReg(0xB800,0x24);
		LCD_WriteReg(0xB801,0x24);
		LCD_WriteReg(0xB802,0x24);
		//VGH 15V (Free pump)
		LCD_WriteReg(0xBF00,0x01);
		LCD_WriteReg(0xB300,0x0F);
		LCD_WriteReg(0xB301,0x0F);
		LCD_WriteReg(0xB302,0x0F);
		//VGH ratio
		LCD_WriteReg(0xB900,0x34);
		LCD_WriteReg(0xB901,0x34);
		LCD_WriteReg(0xB902,0x34);
		//VGL_REG -10V
		LCD_WriteReg(0xB500,0x08);
		LCD_WriteReg(0xB501,0x08);
		LCD_WriteReg(0xB502,0x08);
		LCD_WriteReg(0xC200,0x03);
		//VGLX ratio
		LCD_WriteReg(0xBA00,0x24);
		LCD_WriteReg(0xBA01,0x24);
		LCD_WriteReg(0xBA02,0x24);
		//VGMP/VGSP 4.5V/0V
		LCD_WriteReg(0xBC00,0x00);
		LCD_WriteReg(0xBC01,0x78);
		LCD_WriteReg(0xBC02,0x00);
		//VGMN/VGSN -4.5V/0V
		LCD_WriteReg(0xBD00,0x00);
		LCD_WriteReg(0xBD01,0x78);
		LCD_WriteReg(0xBD02,0x00);
		//VCOM
		LCD_WriteReg(0xBE00,0x00);
		LCD_WriteReg(0xBE01,0x64);
		//Gamma Setting
		LCD_WriteReg(0xD100,0x00);
		LCD_WriteReg(0xD101,0x33);
		LCD_WriteReg(0xD102,0x00);
		LCD_WriteReg(0xD103,0x34);
		LCD_WriteReg(0xD104,0x00);
		LCD_WriteReg(0xD105,0x3A);
		LCD_WriteReg(0xD106,0x00);
		LCD_WriteReg(0xD107,0x4A);
		LCD_WriteReg(0xD108,0x00);
		LCD_WriteReg(0xD109,0x5C);
		LCD_WriteReg(0xD10A,0x00);
		LCD_WriteReg(0xD10B,0x81);
		LCD_WriteReg(0xD10C,0x00);
		LCD_WriteReg(0xD10D,0xA6);
		LCD_WriteReg(0xD10E,0x00);
		LCD_WriteReg(0xD10F,0xE5);
		LCD_WriteReg(0xD110,0x01);
		LCD_WriteReg(0xD111,0x13);
		LCD_WriteReg(0xD112,0x01);
		LCD_WriteReg(0xD113,0x54);
		LCD_WriteReg(0xD114,0x01);
		LCD_WriteReg(0xD115,0x82);
		LCD_WriteReg(0xD116,0x01);
		LCD_WriteReg(0xD117,0xCA);
		LCD_WriteReg(0xD118,0x02);
		LCD_WriteReg(0xD119,0x00);
		LCD_WriteReg(0xD11A,0x02);
		LCD_WriteReg(0xD11B,0x01);
		LCD_WriteReg(0xD11C,0x02);
		LCD_WriteReg(0xD11D,0x34);
		LCD_WriteReg(0xD11E,0x02);
		LCD_WriteReg(0xD11F,0x67);
		LCD_WriteReg(0xD120,0x02);
		LCD_WriteReg(0xD121,0x84);
		LCD_WriteReg(0xD122,0x02);
		LCD_WriteReg(0xD123,0xA4);
		LCD_WriteReg(0xD124,0x02);
		LCD_WriteReg(0xD125,0xB7);
		LCD_WriteReg(0xD126,0x02);
		LCD_WriteReg(0xD127,0xCF);
		LCD_WriteReg(0xD128,0x02);
		LCD_WriteReg(0xD129,0xDE);
		LCD_WriteReg(0xD12A,0x02);
		LCD_WriteReg(0xD12B,0xF2);
		LCD_WriteReg(0xD12C,0x02);
		LCD_WriteReg(0xD12D,0xFE);
		LCD_WriteReg(0xD12E,0x03);
		LCD_WriteReg(0xD12F,0x10);
		LCD_WriteReg(0xD130,0x03);
		LCD_WriteReg(0xD131,0x33);
		LCD_WriteReg(0xD132,0x03);
		LCD_WriteReg(0xD133,0x6D);
		LCD_WriteReg(0xD200,0x00);
		LCD_WriteReg(0xD201,0x33);
		LCD_WriteReg(0xD202,0x00);
		LCD_WriteReg(0xD203,0x34);
		LCD_WriteReg(0xD204,0x00);
		LCD_WriteReg(0xD205,0x3A);
		LCD_WriteReg(0xD206,0x00);
		LCD_WriteReg(0xD207,0x4A);
		LCD_WriteReg(0xD208,0x00);
		LCD_WriteReg(0xD209,0x5C);
		LCD_WriteReg(0xD20A,0x00);

		LCD_WriteReg(0xD20B,0x81);
		LCD_WriteReg(0xD20C,0x00);
		LCD_WriteReg(0xD20D,0xA6);
		LCD_WriteReg(0xD20E,0x00);
		LCD_WriteReg(0xD20F,0xE5);
		LCD_WriteReg(0xD210,0x01);
		LCD_WriteReg(0xD211,0x13);
		LCD_WriteReg(0xD212,0x01);
		LCD_WriteReg(0xD213,0x54);
		LCD_WriteReg(0xD214,0x01);
		LCD_WriteReg(0xD215,0x82);
		LCD_WriteReg(0xD216,0x01);
		LCD_WriteReg(0xD217,0xCA);
		LCD_WriteReg(0xD218,0x02);
		LCD_WriteReg(0xD219,0x00);
		LCD_WriteReg(0xD21A,0x02);
		LCD_WriteReg(0xD21B,0x01);
		LCD_WriteReg(0xD21C,0x02);
		LCD_WriteReg(0xD21D,0x34);
		LCD_WriteReg(0xD21E,0x02);
		LCD_WriteReg(0xD21F,0x67);
		LCD_WriteReg(0xD220,0x02);
		LCD_WriteReg(0xD221,0x84);
		LCD_WriteReg(0xD222,0x02);
		LCD_WriteReg(0xD223,0xA4);
		LCD_WriteReg(0xD224,0x02);
		LCD_WriteReg(0xD225,0xB7);
		LCD_WriteReg(0xD226,0x02);
		LCD_WriteReg(0xD227,0xCF);
		LCD_WriteReg(0xD228,0x02);
		LCD_WriteReg(0xD229,0xDE);
		LCD_WriteReg(0xD22A,0x02);
		LCD_WriteReg(0xD22B,0xF2);
		LCD_WriteReg(0xD22C,0x02);
		LCD_WriteReg(0xD22D,0xFE);
		LCD_WriteReg(0xD22E,0x03);
		LCD_WriteReg(0xD22F,0x10);
		LCD_WriteReg(0xD230,0x03);
		LCD_WriteReg(0xD231,0x33);
		LCD_WriteReg(0xD232,0x03);
		LCD_WriteReg(0xD233,0x6D);
		LCD_WriteReg(0xD300,0x00);
		LCD_WriteReg(0xD301,0x33);
		LCD_WriteReg(0xD302,0x00);
		LCD_WriteReg(0xD303,0x34);
		LCD_WriteReg(0xD304,0x00);
		LCD_WriteReg(0xD305,0x3A);
		LCD_WriteReg(0xD306,0x00);
		LCD_WriteReg(0xD307,0x4A);
		LCD_WriteReg(0xD308,0x00);
		LCD_WriteReg(0xD309,0x5C);
		LCD_WriteReg(0xD30A,0x00);

		LCD_WriteReg(0xD30B,0x81);
		LCD_WriteReg(0xD30C,0x00);
		LCD_WriteReg(0xD30D,0xA6);
		LCD_WriteReg(0xD30E,0x00);
		LCD_WriteReg(0xD30F,0xE5);
		LCD_WriteReg(0xD310,0x01);
		LCD_WriteReg(0xD311,0x13);
		LCD_WriteReg(0xD312,0x01);
		LCD_WriteReg(0xD313,0x54);
		LCD_WriteReg(0xD314,0x01);
		LCD_WriteReg(0xD315,0x82);
		LCD_WriteReg(0xD316,0x01);
		LCD_WriteReg(0xD317,0xCA);
		LCD_WriteReg(0xD318,0x02);
		LCD_WriteReg(0xD319,0x00);
		LCD_WriteReg(0xD31A,0x02);
		LCD_WriteReg(0xD31B,0x01);
		LCD_WriteReg(0xD31C,0x02);
		LCD_WriteReg(0xD31D,0x34);
		LCD_WriteReg(0xD31E,0x02);
		LCD_WriteReg(0xD31F,0x67);
		LCD_WriteReg(0xD320,0x02);
		LCD_WriteReg(0xD321,0x84);
		LCD_WriteReg(0xD322,0x02);
		LCD_WriteReg(0xD323,0xA4);
		LCD_WriteReg(0xD324,0x02);
		LCD_WriteReg(0xD325,0xB7);
		LCD_WriteReg(0xD326,0x02);
		LCD_WriteReg(0xD327,0xCF);
		LCD_WriteReg(0xD328,0x02);
		LCD_WriteReg(0xD329,0xDE);
		LCD_WriteReg(0xD32A,0x02);
		LCD_WriteReg(0xD32B,0xF2);
		LCD_WriteReg(0xD32C,0x02);
		LCD_WriteReg(0xD32D,0xFE);
		LCD_WriteReg(0xD32E,0x03);
		LCD_WriteReg(0xD32F,0x10);
		LCD_WriteReg(0xD330,0x03);
		LCD_WriteReg(0xD331,0x33);
		LCD_WriteReg(0xD332,0x03);
		LCD_WriteReg(0xD333,0x6D);
		LCD_WriteReg(0xD400,0x00);
		LCD_WriteReg(0xD401,0x33);
		LCD_WriteReg(0xD402,0x00);
		LCD_WriteReg(0xD403,0x34);
		LCD_WriteReg(0xD404,0x00);
		LCD_WriteReg(0xD405,0x3A);
		LCD_WriteReg(0xD406,0x00);
		LCD_WriteReg(0xD407,0x4A);
		LCD_WriteReg(0xD408,0x00);
		LCD_WriteReg(0xD409,0x5C);
		LCD_WriteReg(0xD40A,0x00);
		LCD_WriteReg(0xD40B,0x81);

		LCD_WriteReg(0xD40C,0x00);
		LCD_WriteReg(0xD40D,0xA6);
		LCD_WriteReg(0xD40E,0x00);
		LCD_WriteReg(0xD40F,0xE5);
		LCD_WriteReg(0xD410,0x01);
		LCD_WriteReg(0xD411,0x13);
		LCD_WriteReg(0xD412,0x01);
		LCD_WriteReg(0xD413,0x54);
		LCD_WriteReg(0xD414,0x01);
		LCD_WriteReg(0xD415,0x82);
		LCD_WriteReg(0xD416,0x01);
		LCD_WriteReg(0xD417,0xCA);
		LCD_WriteReg(0xD418,0x02);
		LCD_WriteReg(0xD419,0x00);
		LCD_WriteReg(0xD41A,0x02);
		LCD_WriteReg(0xD41B,0x01);
		LCD_WriteReg(0xD41C,0x02);
		LCD_WriteReg(0xD41D,0x34);
		LCD_WriteReg(0xD41E,0x02);
		LCD_WriteReg(0xD41F,0x67);
		LCD_WriteReg(0xD420,0x02);
		LCD_WriteReg(0xD421,0x84);
		LCD_WriteReg(0xD422,0x02);
		LCD_WriteReg(0xD423,0xA4);
		LCD_WriteReg(0xD424,0x02);
		LCD_WriteReg(0xD425,0xB7);
		LCD_WriteReg(0xD426,0x02);
		LCD_WriteReg(0xD427,0xCF);
		LCD_WriteReg(0xD428,0x02);
		LCD_WriteReg(0xD429,0xDE);
		LCD_WriteReg(0xD42A,0x02);
		LCD_WriteReg(0xD42B,0xF2);
		LCD_WriteReg(0xD42C,0x02);
		LCD_WriteReg(0xD42D,0xFE);
		LCD_WriteReg(0xD42E,0x03);
		LCD_WriteReg(0xD42F,0x10);
		LCD_WriteReg(0xD430,0x03);
		LCD_WriteReg(0xD431,0x33);
		LCD_WriteReg(0xD432,0x03);
		LCD_WriteReg(0xD433,0x6D);
		LCD_WriteReg(0xD500,0x00);
		LCD_WriteReg(0xD501,0x33);
		LCD_WriteReg(0xD502,0x00);
		LCD_WriteReg(0xD503,0x34);
		LCD_WriteReg(0xD504,0x00);
		LCD_WriteReg(0xD505,0x3A);
		LCD_WriteReg(0xD506,0x00);
		LCD_WriteReg(0xD507,0x4A);
		LCD_WriteReg(0xD508,0x00);
		LCD_WriteReg(0xD509,0x5C);
		LCD_WriteReg(0xD50A,0x00);
		LCD_WriteReg(0xD50B,0x81);

		LCD_WriteReg(0xD50C,0x00);
		LCD_WriteReg(0xD50D,0xA6);
		LCD_WriteReg(0xD50E,0x00);
		LCD_WriteReg(0xD50F,0xE5);
		LCD_WriteReg(0xD510,0x01);
		LCD_WriteReg(0xD511,0x13);
		LCD_WriteReg(0xD512,0x01);
		LCD_WriteReg(0xD513,0x54);
		LCD_WriteReg(0xD514,0x01);
		LCD_WriteReg(0xD515,0x82);
		LCD_WriteReg(0xD516,0x01);
		LCD_WriteReg(0xD517,0xCA);
		LCD_WriteReg(0xD518,0x02);
		LCD_WriteReg(0xD519,0x00);
		LCD_WriteReg(0xD51A,0x02);
		LCD_WriteReg(0xD51B,0x01);
		LCD_WriteReg(0xD51C,0x02);
		LCD_WriteReg(0xD51D,0x34);
		LCD_WriteReg(0xD51E,0x02);
		LCD_WriteReg(0xD51F,0x67);
		LCD_WriteReg(0xD520,0x02);
		LCD_WriteReg(0xD521,0x84);
		LCD_WriteReg(0xD522,0x02);
		LCD_WriteReg(0xD523,0xA4);
		LCD_WriteReg(0xD524,0x02);
		LCD_WriteReg(0xD525,0xB7);
		LCD_WriteReg(0xD526,0x02);
		LCD_WriteReg(0xD527,0xCF);
		LCD_WriteReg(0xD528,0x02);
		LCD_WriteReg(0xD529,0xDE);
		LCD_WriteReg(0xD52A,0x02);
		LCD_WriteReg(0xD52B,0xF2);
		LCD_WriteReg(0xD52C,0x02);
		LCD_WriteReg(0xD52D,0xFE);
		LCD_WriteReg(0xD52E,0x03);
		LCD_WriteReg(0xD52F,0x10);
		LCD_WriteReg(0xD530,0x03);
		LCD_WriteReg(0xD531,0x33);
		LCD_WriteReg(0xD532,0x03);
		LCD_WriteReg(0xD533,0x6D);
		LCD_WriteReg(0xD600,0x00);
		LCD_WriteReg(0xD601,0x33);
		LCD_WriteReg(0xD602,0x00);
		LCD_WriteReg(0xD603,0x34);
		LCD_WriteReg(0xD604,0x00);
		LCD_WriteReg(0xD605,0x3A);
		LCD_WriteReg(0xD606,0x00);
		LCD_WriteReg(0xD607,0x4A);
		LCD_WriteReg(0xD608,0x00);
		LCD_WriteReg(0xD609,0x5C);
		LCD_WriteReg(0xD60A,0x00);
		LCD_WriteReg(0xD60B,0x81);

		LCD_WriteReg(0xD60C,0x00);
		LCD_WriteReg(0xD60D,0xA6);
		LCD_WriteReg(0xD60E,0x00);
		LCD_WriteReg(0xD60F,0xE5);
		LCD_WriteReg(0xD610,0x01);
		LCD_WriteReg(0xD611,0x13);
		LCD_WriteReg(0xD612,0x01);
		LCD_WriteReg(0xD613,0x54);
		LCD_WriteReg(0xD614,0x01);
		LCD_WriteReg(0xD615,0x82);
		LCD_WriteReg(0xD616,0x01);
		LCD_WriteReg(0xD617,0xCA);
		LCD_WriteReg(0xD618,0x02);
		LCD_WriteReg(0xD619,0x00);
		LCD_WriteReg(0xD61A,0x02);
		LCD_WriteReg(0xD61B,0x01);
		LCD_WriteReg(0xD61C,0x02);
		LCD_WriteReg(0xD61D,0x34);
		LCD_WriteReg(0xD61E,0x02);
		LCD_WriteReg(0xD61F,0x67);
		LCD_WriteReg(0xD620,0x02);
		LCD_WriteReg(0xD621,0x84);
		LCD_WriteReg(0xD622,0x02);
		LCD_WriteReg(0xD623,0xA4);
		LCD_WriteReg(0xD624,0x02);
		LCD_WriteReg(0xD625,0xB7);
		LCD_WriteReg(0xD626,0x02);
		LCD_WriteReg(0xD627,0xCF);
		LCD_WriteReg(0xD628,0x02);
		LCD_WriteReg(0xD629,0xDE);
		LCD_WriteReg(0xD62A,0x02);
		LCD_WriteReg(0xD62B,0xF2);
		LCD_WriteReg(0xD62C,0x02);
		LCD_WriteReg(0xD62D,0xFE);
		LCD_WriteReg(0xD62E,0x03);
		LCD_WriteReg(0xD62F,0x10);
		LCD_WriteReg(0xD630,0x03);
		LCD_WriteReg(0xD631,0x33);
		LCD_WriteReg(0xD632,0x03);
		LCD_WriteReg(0xD633,0x6D);
		//LV2 Page 0 enable
		LCD_WriteReg(0xF000,0x55);
		LCD_WriteReg(0xF001,0xAA);
		LCD_WriteReg(0xF002,0x52);
		LCD_WriteReg(0xF003,0x08);
		LCD_WriteReg(0xF004,0x00);
		//Display control
		LCD_WriteReg(0xB100, 0xCC);
		LCD_WriteReg(0xB101, 0x00);
		//Source hold time
		LCD_WriteReg(0xB600,0x05);
		//Gate EQ control
		LCD_WriteReg(0xB700,0x70);
		LCD_WriteReg(0xB701,0x70);
		//Source EQ control (Mode 2)
		LCD_WriteReg(0xB800,0x01);
		LCD_WriteReg(0xB801,0x03);
		LCD_WriteReg(0xB802,0x03);
		LCD_WriteReg(0xB803,0x03);
		//Inversion mode (2-dot)
        //LCD_WriteReg(0xBC00,0x00);
		LCD_WriteReg(0xBC00,0x02);
		LCD_WriteReg(0xBC01,0x00);
		LCD_WriteReg(0xBC02,0x00);
		//Timing control 4H w/ 4-delay
		LCD_WriteReg(0xC900,0xD0);
		LCD_WriteReg(0xC901,0x02);
		LCD_WriteReg(0xC902,0x50);
		LCD_WriteReg(0xC903,0x50);
		LCD_WriteReg(0xC904,0x50);
		LCD_WriteReg(0x3500,0x00);
		LCD_WriteReg(0x3A00,0x55);  //16-bit/pixel
		//LCD_WR_REG(0x1100);
        LCD_WriteIndex(0x1100);
		LCD_Delayms(1);
		//LCD_WR_REG(0x2900);
        LCD_WriteIndex(0x2900);
        LCD_INFO.Write_GRAM = 0X2C00;
        LCD_INFO.Y_GRAM = 0X2A00;
        LCD_INFO.X_GRAM = 0X2B00;
        /*LCD_Delayms(50);
        LCD_WriteReg(0x0000,0x0001);
        LCD_Delayms(50);  */
	
  }
  else if(dID[3] == 0x9320)
  {
    LCD_INFO.Write_GRAM = 0x0022;
    LCD_INFO.X_GRAM = 0x0020;
    LCD_INFO.Y_GRAM = 0x0021;
    
    LCD_WriteReg(0x00,0x0001);   //����LCD�ڲ����񣬲��ȴ�10ms�ȶ�
    LCD_Delayms(10);
    
    LCD_WriteReg(0x01,0x0000);   //Driver Output Control
    LCD_WriteReg(0x02,0x0700);   //LCD Driving Wave Control
    LCD_WriteReg(0x03,0x1008);   //Entry Mode
    LCD_WriteReg(0x04,0x0000);   //Resizing Control
    LCD_WriteReg(0x08,0x0202);   //Display Control 2
    LCD_WriteReg(0x09,0x0000);   //Display Contral 3.(0x0000)
    LCD_WriteReg(0x0a,0x0000);//Frame Cycle Contal.(0x0000)
    LCD_WriteReg(0x0c,0x0001);//Extern Display Interface Contral 1.(0x0000)
    LCD_WriteReg(0x0d,0x0000);//Frame Maker Position.
    LCD_WriteReg(0x0f,0x0000);//Extern Display Interface Contral 2.
    
    LCD_WriteReg(0x10,0x0000);//Power Control 1.(0x16b0)
    LCD_WriteReg(0x11,0x0000);//Power Control 2.(0x0001)	
    LCD_WriteReg(0x12,0x0000);//Power Control 3.(0x0138)
    LCD_WriteReg(0x13,0x0000);
    //LCD_Delayms(200);	
    
    LCD_WriteReg(0x10,0x17b0);//Power Control 1.(0x16b0)
    LCD_WriteReg(0x11,0x0137);//Power Control 2.(0x0001)
    LCD_Delayms(50);
    LCD_WriteReg(0x12,0x0139);//Power Control 3.(0x0138)
    LCD_Delayms(50);	
    LCD_WriteReg(0x13,0x1700);	 
   
    LCD_WriteReg(0x29,0x0000);
    LCD_WriteReg(0x2B,0x0000);
    LCD_Delayms(50);						
    
    LCD_WriteReg(0x30,0x0000);					
    LCD_WriteReg(0x31,0x0507);
    LCD_WriteReg(0x32,0x0104);	
    LCD_WriteReg(0x35,0x0105);	
    LCD_WriteReg(0x36,0x0404);
    LCD_WriteReg(0x37,0x0603);	
    LCD_WriteReg(0x38,0x0004);	
    LCD_WriteReg(0x39,0x0007);
    LCD_WriteReg(0x3c,0x0501);	
    LCD_WriteReg(0x3d,0x0404);
    
    LCD_WriteReg(0x0050,0x0000);
    LCD_WriteReg(0x0051,239);
    LCD_WriteReg(0x0052,0x0000);
    LCD_WriteReg(0x0053,319);
  
    LCD_WriteReg(0x60,0x2700);//Driver Output Control.
    LCD_WriteReg(0x61,0x0001);//Driver Output Control.
    LCD_WriteReg(0x6a,0x0000);//Vertical Srcoll Control.
    
    LCD_WriteReg(0x80,0x0000);//Display Position? Partial Display 1.
    LCD_WriteReg(0x81,0x0000);//RAM Address Start? Partial Display 1.
    LCD_WriteReg(0x82,0x0000);//RAM Address End-Partial Display 1.
    LCD_WriteReg(0x83,0x0000);//Displsy Position? Partial Display 2.
    LCD_WriteReg(0x84,0x0000);//RAM Address Start? Partial Display 2.
    LCD_WriteReg(0x85,0x0000);//RAM Address End? Partial Display 2.
    
    LCD_WriteReg(0x90,0x0010);//Frame Cycle Contral.(0x0013)
    LCD_WriteReg(0x92,0x0000);//Panel Interface Contral 2.(0x0000)
    LCD_WriteReg(0x93,0x0003);//Panel Interface Contral 3.
    LCD_WriteReg(0x95,0x0110);//Frame Cycle Contral.(0x0110)
    LCD_WriteReg(0x97,0x0000);//
    LCD_WriteReg(0x98,0x0000);//Frame Cycle Contral.

    LCD_WriteReg(0x07,0x0133);
    LCD_Delayms(300);
  }  
  else if(dID[3] == 0x8989)
  {
    LCD_INFO.Write_GRAM = 0x0022;
    LCD_INFO.X_GRAM = 0x004e;
    LCD_INFO.Y_GRAM = 0x004f;
    
    //SSD1289;
    /* �򿪾��� */
    LCD_WriteReg(0x0000,0x0001);    LCD_Delayms(LCD_DELAY_TIME); 
    //����Ƶ������Ϊ���osc/16 ���Ĺ���������large��λ�������ʾ����
    //LCD_WriteReg(0x0003,0xF8F8);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0003,0xA8A4);    LCD_Delayms(LCD_DELAY_TIME);   //0210
    LCD_WriteReg(0x000C,0x0000);    LCD_Delayms(LCD_DELAY_TIME);   
    LCD_WriteReg(0x000D,0x080C);    LCD_Delayms(LCD_DELAY_TIME);   
    LCD_WriteReg(0x000E,0x2B00);    LCD_Delayms(LCD_DELAY_TIME);   
    LCD_WriteReg(0x001E,0x00B0);    LCD_Delayms(LCD_DELAY_TIME); 
    //�����������320*240 0x2B3F 
    LCD_WriteReg(0x0001,0x2B3F);    LCD_Delayms(LCD_DELAY_TIME); 
    //�����������320*240 0x233F ��ԭ���ĵ�11λBGR�������������RGB�Ͳ����ɫ����ɫ�ߵ� 
    //LCD_WriteReg(0x0001,0x233F);    LCD_Delayms(LCD_DELAY_TIME);   
    LCD_WriteReg(0x0002,0x0600);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0010,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    /* �������ݸ�ʽ 16λɫ ���� 0x6070 */
    // TY1��bit7�� TY0 ID1 ID0 AM LG2 LG1 LG0
    //   0          0   1   1   1  0   0   0
    // type A  0 0
    // type B  0 1
    // type C  1 1
    // AM   ָ���Զ�����
    // 65K��ɫ
    // �Ĵ��� 4f/4e ���崰�ڴ�С
    LCD_WriteReg(0x0011,0x6028);    LCD_Delayms(LCD_DELAY_TIME);   
    //LCD_WriteReg(0x0011,0x6070);    LCD_Delayms(LCD_DELAY_TIME);   
    //
    LCD_WriteReg(0x0005,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0006,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0016,0xEF1C);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0017,0x0003);    LCD_Delayms(LCD_DELAY_TIME);
    //PT1 PT0 VLE2 VLE1 SPT 0  0 GON DTE CM 0 D1 D0
    //  0   0        1   0  0  0  1   1  0  0  1  1
    LCD_WriteReg(0x0007,0x0233);    LCD_Delayms(LCD_DELAY_TIME);
    //LCD_WriteReg(0x0007,0x0133);    LCD_Delayms(LCD_DELAY_TIME);
    //NO1 NO0 SDT1 SDT0 0 EQ2 EQ1 EQ0 DIV1 DIV0 SDIV SRTN RTN3 RTN2 RTN1 RTN0
    //                                 1     1    0    0    0    0   0   0
    //��DIV���ó�2��Ƶ
    //
    //LCD_WriteReg(0x000B,0x0020);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x000B,0x0020);    LCD_Delayms(LCD_DELAY_TIME);
    //����ɨ��ģʽ
    LCD_WriteReg(0x000F,0x0000);    LCD_Delayms(LCD_DELAY_TIME);   
    /* ɨ�迪ʼ��ַ */
    //��ֱ����
    LCD_WriteReg(0x0041,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0042,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    //ˮƽRAMposition
    LCD_WriteReg(0x0048,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0049,0x013F);    LCD_Delayms(LCD_DELAY_TIME);
    
    LCD_WriteReg(0x004A,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x004B,0x0000);    LCD_Delayms(LCD_DELAY_TIME); 
    
    LCD_WriteReg(0x0030,0x0707);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0031,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0032,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0033,0x0502);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0034,0x0507);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0035,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0036,0x0204);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0037,0x0502);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x003A,0x0302);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x003B,0x0302);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0023,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0024,0x0000);    LCD_Delayms(LCD_DELAY_TIME);
    /*0000 390K  50 
      0010 430K  55 
      0101 470K  60 
      1000 510K  65 
      1010 548K  70 
      1100 587K  75 
      1110 626K  80 */
    //LCD_WriteReg(0x0025,0x8000);    LCD_Delayms(LCD_DELAY_TIME);
    LCD_WriteReg(0x0025,0xe000);    LCD_Delayms(LCD_DELAY_TIME);
    //�趨��ʾ����       
    //LCD_UpdateData();	//����д�������ʹ֮��Ч*/
    LCD_Delayms(20);         //�ȴ�LCD����
  }
  
  return dID[3];
}

/*
 * LCD_FillBackground
 * ���LCD����ɫ
 * 
 * ����:
 *    Color--16λRGB��ɫֵ
 *
 * ���:
 *    ��
 */
void LCD_FillBackground(uint16 Color)
{
  uint32_t index=0;
  LCD_SetCursor(0,0); 
  LCD_WriteIndex(LCD_INFO.Write_GRAM);
  for( index = 0; index < MAX_X * MAX_Y; index++ )
  {
    LCD_WriteData(Color);
  }
}

/*
 * LCD_FillBackgroundGRAM
 * ���LCD����ɫ��LCD_GRAM
 * 
 * ����:
 *    *Color--16λRGB��ɫֵ���飬����ΪLCD_GRAM����ĳ���
 *
 * ���:
 *    ��
 */
void LCD_FillBackgroundGRAM(uint16 *Color)
{
  uint32_t index=0;
  LCD_SetCursor(0,0); 
  LCD_WriteIndex(LCD_INFO.Write_GRAM);
  for( index = 0; index < MAX_X * MAX_Y; index++ )
  {
    LCD_WriteData(Color[index]);
  }
}

/*
 * LCD_BGR2RGB
 * BGR��ɫתRGB��ɫ
 * 
 * ����:
 *    Color--16λBGR��ɫֵ
 *
 * ���:
 *    16λRGB��ɫֵ
 */
uint16 LCD_BGR2RGB(uint16 Color)
{
  uint16  r, g, b, rgb;
  
  b = ( Color>>0 )  & 0x1f;
  g = ( Color>>5 )  & 0x3f;
  r = ( Color>>11 ) & 0x1f;
  
  rgb =  (b<<11) + (g<<5) + (r<<0);
  
  return( rgb );
}

/*
 * LCD_U8GRAY2RGB
 * U8�Ҷ���ɫתΪRGB��ɫ
 * 
 * ����:
 *    Color--8λ�Ҷ���ɫֵ
 *
 * ���:
 *    16λRGB��ɫֵ
 */
uint16 LCD_U8GRAY2RGB(uint8 Color)
{
  uint16  r, g, b, rgb;
  
  b = ( Color>>3 )  & 0x1f;
  g = ( Color>>2 )  & 0x3f;
  r = ( Color>>3 )  & 0x1f;
  
  rgb =  (b<<11) + (g<<5) + (r<<0);
  
  return( rgb );
}

/*
 * LCD_GetPoint
 * ȡ��LCDĳ���16λRGBֵ
 * 
 * ����:
 *    Xpos--X������
 *    Ypos--Y������
 *
 * ���:
 *    16λRGB��ɫֵ
 */
uint16 LCD_GetPoint(uint16 Xpos,uint16 Ypos)
{
  uint16 dummy;
  
  LCD_SetCursor(Xpos,Ypos);
  LCD_WriteIndex(LCD_INFO.Write_GRAM);  
 
  dummy = LCD_ReadData();   /* �ն�һ�� */
  dummy = LCD_ReadData(); 
  return  dummy;	          
}

/*
 * LCD_SetPoint
 * ����LCDĳ���16λRGBֵ
 * 
 * ����:
 *    Xpos--X������
 *    Ypos--Y������
 *    Color--16λRGB��ɫֵ
 *
 * ���:
 *    ��
 */
void LCD_SetPoint(uint16 Xpos,uint16 Ypos,uint16 Color)
{
  if( Xpos >= MAX_X || Ypos >= MAX_Y )
  {
    return;
  } 
  LCD_SetCursor(Xpos,Ypos);
  LCD_WriteReg(LCD_INFO.Write_GRAM,Color);
}

/*
 * LCD_DrawLine
 * ��ָ��������ʾֱ��
 * 
 * ����:
 *    x0--X����ʼ����
 *    y0--Y����ʼ����
 *    x1--X���������
 *    y1--Y���������
 *    Color--16λRGB��ɫֵ
 *
 * ���:
 *    ��
 */	 
void LCD_DrawLine( uint16 x0, uint16 y0, uint16 x1, uint16 y1 , uint16 color )
{
  short dx,dy;      /* ����X Y�������ӵı���ֵ */
  short temp;       /* ��� �յ��С�Ƚ� ��������ʱ���м���� */
  
  if( x0 > x1 )     /* X�����������յ� �������� */
  {
    temp = x1;
    x1 = x0;
    x0 = temp;   
  }
  if( y0 > y1 )     /* Y�����������յ� �������� */
  {
    temp = y1;
    y1 = y0;
    y0 = temp;   
  }
  
  dx = x1-x0;       /* X�᷽���ϵ����� */
  dy = y1-y0;       /* Y�᷽���ϵ����� */
  
  if( dx == 0 )     /* X����û������ ����ֱ�� */ 
  {
    do
    { 
      LCD_SetPoint(x0, y0, color);   /* �����ʾ �费ֱ�� */
      y0++;
    }
    while( y1 >= y0 ); 
      return; 
  }
  if( dy == 0 )     /* Y����û������ ��ˮƽֱ�� */ 
  {
    do
    {
      LCD_SetPoint(x0, y0, color);   /* �����ʾ ��ˮƽ�� */
      x0++;
    }
    while( x1 >= x0 ); 
      return;
  }
  /* ����ɭ��ķ(Bresenham)�㷨���� */
  if( dx > dy )                         /* ����X�� */
  {
    temp = 2 * dy - dx;               /* �����¸����λ�� */         
    while( x0 != x1 )
    {
      LCD_SetPoint(x0,y0,color);    /* ����� */ 
      x0++;                         /* X���ϼ�1 */
      if( temp > 0 )                /* �ж����¸����λ�� */
      {
        y0++;                     /* Ϊ�������ڵ㣬����x0+1,y0+1�� */ 
        temp += 2 * dy - 2 * dx; 
      }
      else         
      {
        temp += 2 * dy;           /* �ж����¸����λ�� */  
      }       
    }
    LCD_SetPoint(x0,y0,color);
    }  
    else
    {
      temp = 2 * dx - dy;                      /* ����Y�� */       
      while( y0 != y1 )
      {
        LCD_SetPoint(x0,y0,color);     
        y0++;                 
        if( temp > 0 )           
        {
          x0++;               
          temp+=2*dy-2*dx; 
        }
        else
        {
          temp += 2 * dy;
        }
     } 
  LCD_SetPoint(x0,y0,color);
  }
} 


/*
 * LCD_DrawSquare
 * ��ָ��������ʾ������
 * 
 * ������ 
 *    x0--�����ε���ʼ������ 
 *    y0--�����ε���ʼ������
 *    side_length--�����εı߳�
 *    Line_color--�����αߵ���ɫ
 *    Fill_color--����������������ɫ
 *
 * ���:
 *    ��
 */
void LCD_DrawSquare(uint16 x0,uint16 y0,uint16 side_length,uint16 Line_color,uint16 Fill_color)
{
  uint16 i,j;
  if(side_length > MAX_X || side_length > MAX_Y)
    return;
  
  if(x0+side_length > MAX_X)
    return;
  else
    LCD_DrawLine(x0,y0,x0+side_length,y0,Line_color);
  
  if(y0+side_length > MAX_Y)
    return;
  else
    LCD_DrawLine(x0,y0,x0,y0+side_length,Line_color);
  
  LCD_DrawLine(x0+side_length,y0,x0+side_length,y0+side_length,Line_color);
  LCD_DrawLine(x0,y0+side_length,x0+side_length,y0+side_length,Line_color);
  
  for(i=0;i<side_length-1;i++)
  {
    for(j=0;j<side_length-1;j++)
    {
      LCD_SetPoint(x0+1+i,y0+1+j,Fill_color);
    }
  }
}

/*
 * LCD_DrawRectangle
 * ��ָ��������ʾ����
 * 
 * ������ 
 *    x0--�����ε���ʼ������ 
 *    y0--�����ε���ʼ������
 *    side_xlength--��
 *    side_ylength--��
 *    Line_color--�����αߵ���ɫ
 *    Fill_color--����������������ɫ
 *
 * ���:
 *    ��
 */
void LCD_DrawRectangle(uint16 x0,uint16 y0,uint16 side_xlength,uint16 side_ylength,uint16 Line_color,uint16 Fill_color)
{
  uint16 i,j;
  if(side_xlength > MAX_X || side_ylength > MAX_Y)
    return;
  
  if(x0+side_xlength > MAX_X)
    return;
  else
    LCD_DrawLine(x0,y0,x0+side_xlength,y0,Line_color);
  
  if(y0+side_ylength > MAX_Y)
    return;
  else
    LCD_DrawLine(x0,y0,x0,y0+side_ylength,Line_color);
  
  LCD_DrawLine(x0+side_xlength,y0,x0+side_xlength,y0+side_ylength,Line_color);
  LCD_DrawLine(x0,y0+side_ylength,x0+side_xlength,y0+side_ylength,Line_color);
  
  for(i=0;i<side_xlength-1;i++)
  {
    for(j=0;j<side_ylength-1;j++)
    {
      LCD_SetPoint(x0+1+i,y0+1+j,Fill_color);
    }
  }
}

/*
 * LCD_GRAMFillRec
 * ���ָ����ɫ�ľ��ε�LCD_GRAM
 * 
 * ������ 
 *    x0--X����ʼ����
 *    y0--Y����ʼ����
 *    x1--X���������
 *    y1--Y���������
 *    Color--16λRGB��ɫֵ
 *
 * ���:
 *    ��
 */
void LCD_GRAMFillRec(uint16 x0,uint16 y0,uint16 x1,uint16 y1,uint16 Color)
{          
  uint16 i,j;   
  for(i=y0;i<=y1;i++)
  {
    for(j=x0; j<x1; j++)
    {
      LCD_GRAM[MAX_X*MAX_Y - (j-1)*MAX_Y - (i)] = Color;
    }    
  }
} 

/*
 * LCD_GRAMDrawHLine
 * ���ָ����ɫ�ĺ��ߵ�LCD_GRAM
 * 
 * ������ 
 *    x0--X����ʼ����
 *    y0--Y����ʼ����
 *    len--���߳���
 *    Color--16λRGB��ɫֵ
 *
 * ���:
 *    ��
 */
void LCD_GRAMDrawHLine(uint16 x0,uint16 y0,uint16 len,uint16 Color)
{
  uint16 i;
  for(i=0; i<len; i++)
  {
    LCD_GRAM[MAX_X*MAX_Y - (x0+i-1)*MAX_Y - (y0)] = Color;
  }
}

/*
 * LCD_GRAMDrawHLine
 * ��ʾһ��ָ����С��U8�Ҷ�ͼ��
 * 
 * ������ 
 *    *Color--8λ�Ҷ�ͼ������
 *    w--ͼ���
 *    h--ͼ���
 *
 * ���:
 *    ��
 */
void LCD_DrawU8Gray(uint8 *Color, uint16 w, uint16 h)
{
  uint16 i=0, j=0;
 
  for(i=0; i<w; i++)
  {  
    LCD_SetCursor(w-i-1, 0); 
    LCD_WriteIndex(LCD_INFO.Write_GRAM);
    for(j=0; j<h; j++)
    {
      LCD_WriteData(LCD_U8GRAY2RGB(Color[j*w+i]));
    }   
  }
}

/*
 * LCD_ShowChar
 * ��ָ��������ʾ�ַ�
 * 
 * ������ 
 *    Xpos--X������
 *    Ypos--Y������
 *    ASCI--ASCI��
 *    charColor--�ַ�������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_ShowChar( uint16 Xpos, uint16 Ypos, uint8 ASCI, uint16 charColor, uint16 bkColor )
{
  uint16 i, j;
  uint8 tmp_char;
  for( i=0; i<16; i++ )
  {
    tmp_char = asc2_1608[ASCI-32][i];
    for( j=0; j<8; j++ )
    {
      if( (tmp_char >> j) & 0x01 == 0x01 )
      {
        LCD_SetPoint( Xpos + j, Ypos + i, charColor );  /* �ַ���ɫ */
      }
      else
      {
        LCD_SetPoint( Xpos + j, Ypos + i, bkColor );  /* ������ɫ */
      }
    }
  }
}

uint32 mypow(uint8 m,uint8 n)
{
	uint32 result=1;	 
	while(n--)result*=m;    
	return result;
}

/*
 * LCD_ShowNum
 * ��ָ��������ʾ����
 * 
 * ������ 
 *    Xpos--X������
 *    Ypos--Y������
 *    num--����
 *    len--���ֳ���
 *    charColor--�ַ�������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_ShowNum(uint16 Xpos, uint16 Ypos, uint16 num, uint8 len, uint16 charColor, uint16 bkColor )
{         	
  uint8 t,temp;						   
  for(t=0;t<len;t++)
  {
    temp=(num/mypow(10,len-t-1))%10;
    LCD_ShowChar(Xpos+(8)*t,Ypos,temp+'0',charColor,bkColor); 
    CurX = CurX + 8;  
  }
} 

/*
 * LCD_ShowString
 * ��ָ��������ʾ�ַ���
 * 
 * ������ 
 *    Xpos--X������
 *    Ypos--Y������
 *    *str--�ַ���
 *    strColor--�ַ���������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_ShowString(uint16 Xpos, uint16 Ypos, uint8 *str,uint16 strColor, uint16 bkColor)
{
  uint8 TempChar;
  do
  {
    TempChar = *str++;  
    LCD_ShowChar( Xpos, Ypos, TempChar, strColor, bkColor );    
    if( Xpos <= MAX_X - 8 )
    {
      Xpos += 8;
    } 
    else if ( Ypos <= MAX_Y - 16 )
    {
      Xpos = 0;
      Ypos += 16;
    }   
    else
    {
      Xpos = 0;
      Ypos = 0;
    } 
    CurX = CurX + 8;  
  }
  while ( *str != 0 );
}

/*
 * LCD_PrintStringLine
 * ����һ����ʾ�ַ���
 * 
 * ������ 
 *    *str--�ַ���
 *    strColor--�ַ���������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_PrintStringLine(uint8 *str,uint16 strColor, uint16 bkColor)
{
  CurX = 0;
  LCD_ShowString(0, CurY*18, str, strColor, bkColor);
  CurY++;
  if((CurY+1)*18>MAX_Y)
  {
    CurY=0;
  }
}

/*
 * LCD_PrintString
 * ���ŵ�ǰ����ʾ�ַ���
 * 
 * ������ 
 *    *str--�ַ���
 *    strColor--�ַ���������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_PrintString(uint8 *str,uint16 Color, uint16 bkColor)
{
  LCD_ShowString(CurX, (CurY-1)*18, str, Color, bkColor);
}

/*
 * LCD_PrintNumLine
 * ����һ����ʾ����
 * 
 * ������ 
 *    num--����
 *    len--���ֳ���
 *    numColor--�ַ�������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_PrintNumLine(uint16 num,uint8 len,uint16 numColor, uint16 bkColor)
{
  CurX = 0;
  LCD_ShowNum(0, CurY*18, num, len, numColor, bkColor);
  CurY++;
  if((CurY+1)*18>MAX_Y)
  {
    CurY=0;
  }
}

/*
 * LCD_PrintNum
 * ���ŵ�ǰ����ʾ����
 * 
 * ������ 
 *    num--����
 *    len--���ֳ���
 *    numColor--�ַ�������ɫ
 *    bkColor--�ַ�������ɫ
 *
 * ���:
 *    ��
 */
void LCD_PrintNum(uint16 num,uint8 len,uint16 Color, uint16 bkColor)
{
  LCD_ShowNum(CurX, (CurY-1)*18, num,len, Color, bkColor);
}


