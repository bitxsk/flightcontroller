
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

Line 4：首先调用LPLD_FTM_IsCHnF()函数判断是不是FTM1的Ch0通道产生的捕获事件，因为每个FTMx的所有通道中断都是公用一个中断函数的，所以为了安全，必须在中断中判断是哪个通道产生的中断。
Line 6：获得Ch0通道的计数值，并存到临时变量cnt中。这个值就是C0V小朋友在事件来临的一瞬间，从CNT那里记录下来的计数值。
Line 7：用上将讲到的频率计算公式来计算出PWM的频率。这里LPLD_FTM_GetClkDiv()可以得到我们初始化时设置的计数器分频系数，g_bus_clock变量是总线频率的数值，用(g_bus_clock/LPLD_FTM_GetClkDiv(FTM1))就得到了计数器CNT的技术频率，在除以cnt计数值，得到的就是输入方波的频率。
Line 8：用LPLD_FTM_ClearCounter()函数清空CNT小朋友的计数值，以便我们下次中断获取的值是从0开始的，方便计算。
Line 9：用LPLD_FTM_ClearCHnF()函数清除Ch0通道的中断标志。

Line 2：配置FTM1为输入捕获模式。
Line 3：设置计数器的分频系数为128,刚才我们讲过要计算PWM的频率，就要知道CNT计数器的频率，在OSKinetis固件库中，CNT的时钟源为总线时钟，如果这里设置为FTM_CLK_DIV128，那么CNT的频率就是总线频率/128。
Line 4：设置FTM的中断函数，用于处理捕获事件。
Line 6：使能输入捕获的输入通道，和PWM的使能通道同理，这里要设置需要用到的通道号为FTM_Ch0，通道对应的物理引脚为PTB0，捕获边缘为上升沿CAPTURE_RI。关于此函数的参数的具体范围，请参考FTM模块的在线函数手册（点击进入）。
Line 7：一定要记住使能中断。

*/