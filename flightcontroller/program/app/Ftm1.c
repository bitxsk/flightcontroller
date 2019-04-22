
#include "Ftm1.h"
extern "C"{
  #include "GPIO.h"
static int Remote_Leftknob,Remote_Roll,accelerator,rotate,Remote_Throttle,rotaryknob,Remote_Yaw,
                Remote_Pitch,old0,old1,old2,old3,old4,old5,old6,old7;
FTM_InitTypeDef ftm_init_structure1;
uint32 cnt1,cnt11,cnt12,cnt0,cnt01,cnt02,cnt2,cnt21,cnt22,cnt3,cnt31,cnt32,cnt4,cnt41,cnt42,cnt5,cnt51,cnt52,cnt6,cnt61,cnt62,cnt7,cnt71,cnt72;
void ic_isr(void)	
{
  
  if(FTM_IsCHnF(FTM0, FTM_Ch0))	
  {
    //cnt1=FTM_GetChVal(FTM0, FTM_Ch0);
    //GPIO_Init(gpio_init_structure1);
    cnt0=GPIO_Input_b(PTC,1);
   
    if(cnt0==1)
    {
      cnt01=FTM_GetChVal(FTM0, FTM_Ch0); 
    }
    else if(cnt0==0)
    {
      cnt02=FTM_GetChVal(FTM0, FTM_Ch0); 
    }
    if(cnt02>=cnt01)
    {
      Remote_Leftknob=cnt02-cnt01;
      if(Remote_Leftknob>1000)Remote_Leftknob=old0;
      old0=Remote_Leftknob;
      
      Remote_Leftknob -= 700;
      Remote_Leftknob *= 3.157;
    }
    /*
    duty=cnt-cnt1;
    cyc=cnt-cnt2;
    cnt2=cnt1;
    cnt1=cnt;*/
    //Freq0=(g_bus_clock/FTM_GetClkDiv(FTM0))/cnt; 	
    //FTM_ClearCounter(FTM0);	
    FTM_ClearCHnF(FTM0, FTM_Ch0); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch1))	
  {
    cnt1=GPIO_Input_b(PTC,2);
    if(cnt1==1)
    {
      cnt11=FTM_GetChVal(FTM0, FTM_Ch1); 
    }
    else if(cnt1==0)
    {
      cnt12=FTM_GetChVal(FTM0, FTM_Ch1); 
    }
    if(cnt12>=cnt11) 
    {
      Remote_Roll=cnt12-cnt11;
      if(Remote_Roll>1000)Remote_Roll=old1;
      old1=Remote_Roll;
      
      Remote_Roll -= 700;
      Remote_Roll *= 3.157;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch1); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch2))	
  {	
    cnt2=GPIO_Input_b(PTC,3);
    if(cnt2==1)
    {
      cnt21=FTM_GetChVal(FTM0, FTM_Ch2); 
    }
    else if(cnt2==0)
    {
      cnt22=FTM_GetChVal(FTM0, FTM_Ch2); 
    }
    if(cnt22>=cnt21)
    {
      accelerator=cnt22-cnt21;
      if(accelerator>1000)accelerator=old2;
      old2=accelerator;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch2); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch3))	
  {
    cnt3=GPIO_Input_b(PTC,4);
    if(cnt3==1)
    {
      cnt31=FTM_GetChVal(FTM0, FTM_Ch3); 
    }
    else if(cnt3==0)
    {
      cnt32=FTM_GetChVal(FTM0, FTM_Ch3); 
    }
    if(cnt32>=cnt31) 
    {
      rotate=cnt32-cnt31;
      if(rotate>1000)rotate=old3;
      old3=rotate;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch3); 	
  }
   else if(FTM_IsCHnF(FTM0, FTM_Ch4))	
  {	
    cnt4=GPIO_Input_b(PTD,4);
    if(cnt4==1)
    {
      cnt41=FTM_GetChVal(FTM0, FTM_Ch4); 
    }
    else if(cnt4==0)
    {
      cnt42=FTM_GetChVal(FTM0, FTM_Ch4); 
    }
    if(cnt42>=cnt41) 
    {
      Remote_Throttle=cnt42-cnt41;
      if(Remote_Throttle>1000)Remote_Throttle=old4;
      old4=Remote_Throttle;
      
      Remote_Throttle -= 510;
      Remote_Throttle *=2.05;
      if(Remote_Throttle < 0) Remote_Throttle = 0;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch4); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch5))	
  {
    cnt5=GPIO_Input_b(PTD,5);
    if(cnt5==1)
    {
      cnt51=FTM_GetChVal(FTM0, FTM_Ch5); 
    }
    else if(cnt5==0)
    {
      cnt52=FTM_GetChVal(FTM0, FTM_Ch5); 
    }
    if(cnt52>=cnt51)
    {
      rotaryknob=cnt52-cnt51;
      if(rotaryknob>1000)rotaryknob=old5;
      old5=rotaryknob;
      
      rotaryknob -= 700;
      rotaryknob *= 3.157;
      
    }
    FTM_ClearCHnF(FTM0, FTM_Ch5); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch6))	
  {	
    cnt6=GPIO_Input_b(PTD,6);
    if(cnt6==1)
    {
      cnt61=FTM_GetChVal(FTM0, FTM_Ch6); 
    }
    else if(cnt6==0)
    {
      cnt62=FTM_GetChVal(FTM0, FTM_Ch6); 
    }
    if(cnt62>=cnt61) 
    {
      Remote_Yaw=cnt62-cnt61;
      if(Remote_Yaw>1000)Remote_Yaw=old6;
      old6=Remote_Yaw;
      
      Remote_Yaw -= 700;
      Remote_Yaw *= 3.157;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch6); 	
  }	
   else if(FTM_IsCHnF(FTM0, FTM_Ch7))	
  {
    cnt7=GPIO_Input_b(PTD,7);
    if(cnt7==1)
    {
      cnt71=FTM_GetChVal(FTM0, FTM_Ch7); 
    }
    else if(cnt7==0)
    {
      cnt72=FTM_GetChVal(FTM0, FTM_Ch7); 
    }
    if(cnt72>=cnt71) 
    {
      Remote_Pitch=cnt72-cnt71;
      if(Remote_Pitch>1000)Remote_Pitch=old7;
      old7=Remote_Pitch;
      
      Remote_Pitch -= 700;
      Remote_Pitch *= -3.157;
    }
    FTM_ClearCHnF(FTM0, FTM_Ch7); 	
  }      
//      EVB.Yaw       = Remote_Yaw; 
//      EVB.Roll      = Remote_Roll;
//      EVB.Pitch     = Remote_Pitch;
//      EVB.ConstSpd  = Remote_Throttle;
//      EVB.LeftKnob  = Remote_Leftknob;
}

}
/*

Line 4�����ȵ���LPLD_FTM_IsCHnF()�����ж��ǲ���FTM1��Ch0ͨ�������Ĳ����¼�����Ϊÿ��FTMx������ͨ���ж϶��ǹ���һ���жϺ����ģ�����Ϊ�˰�ȫ���������ж����ж����ĸ�ͨ���������жϡ�
Line 6�����Ch0ͨ���ļ���ֵ�����浽��ʱ����cnt�С����ֵ����C0VС�������¼����ٵ�һ˲�䣬��CNT�����¼�����ļ���ֵ��
Line 7�����Ͻ�������Ƶ�ʼ��㹫ʽ�������PWM��Ƶ�ʡ�����LPLD_FTM_GetClkDiv()���Եõ����ǳ�ʼ��ʱ���õļ�������Ƶϵ����g_bus_clock����������Ƶ�ʵ���ֵ����(g_bus_clock/LPLD_FTM_GetClkDiv(FTM1))�͵õ��˼�����CNT�ļ���Ƶ�ʣ��ڳ���cnt����ֵ���õ��ľ������뷽����Ƶ�ʡ�
Line 8����LPLD_FTM_ClearCounter()�������CNTС���ѵļ���ֵ���Ա������´��жϻ�ȡ��ֵ�Ǵ�0��ʼ�ģ�������㡣
Line 9����LPLD_FTM_ClearCHnF()�������Ch0ͨ�����жϱ�־��

Line 2������FTM1Ϊ���벶��ģʽ��
Line 3�����ü������ķ�Ƶϵ��Ϊ128,�ղ����ǽ���Ҫ����PWM��Ƶ�ʣ���Ҫ֪��CNT��������Ƶ�ʣ���OSKinetis�̼����У�CNT��ʱ��ԴΪ����ʱ�ӣ������������ΪFTM_CLK_DIV128����ôCNT��Ƶ�ʾ�������Ƶ��/128��
Line 4������FTM���жϺ��������ڴ������¼���
Line 6��ʹ�����벶�������ͨ������PWM��ʹ��ͨ��ͬ������Ҫ������Ҫ�õ���ͨ����ΪFTM_Ch0��ͨ����Ӧ����������ΪPTB0�������ԵΪ������CAPTURE_RI�����ڴ˺����Ĳ����ľ��巶Χ����ο�FTMģ������ߺ����ֲᣨ������룩��
Line 7��һ��Ҫ��סʹ���жϡ�

*/