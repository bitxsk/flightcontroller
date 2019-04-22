#include  "Ultrasound.h"

Ultrasound__ *Ultrasound;


void Ultrasound_Init()
{
  static Ultrasound__ Ultrasound0;
  Ultrasound = &Ultrasound0;
}

/*静态成员一定要初始化 否则链接错*/
int Ultrasound__::send = 0, Ultrasound__::rece = 0, Ultrasound__:: PIT_Period = 0;
int Ultrasound__::flag = 0, Ultrasound__:: count = 0;
float Ultrasound__::test = 0;
float Ultrasound__::time = 0, Ultrasound__::dis = 0, Ultrasound__::dis0 = 0;
bool Ultrasound__::error = false;
COutlierFilter Ultrasound__::filter;

void Ultrasound__::calculateD_partial(float newValue)
{
  for(int i=0; i<9; i++)
  {
    P_old[i] = P_old[i+1];
  }
    
   P_old[9] = newValue;
   D = D * D_smoother + (newValue - P_old[8]) / (t - filter.getNewDataTime()) * 1000 * (1 - D_smoother); 
   
   if(D > 2000) 
   {
     D = 2000;
   }
   else if(D < -2000) 
   {
     D = -2000;
   }
}

void Ultrasound__::IC_isr(void)
{
  if(FTM_IsCHnF(FTM0, FTM_Ch6))                 //0通道
  {
    if(flag==0)
    {
      rece = PIT->CHANNEL[PIT0].CVAL;//记录寄存器起始计时
      PIT_Period = PIT->CHANNEL[PIT0].LDVAL;
      flag  = 1;
    }
    else
    {
      flag  = 1;
      error = 1;
    }
      
    if(error==0)
    {
      test = 2.0*(send - rece)/PIT_Period;
      time  = 2.0 * count + 2.0 * (send - rece)/PIT_Period;
      dis   = (time-2.6) * 340/2000;
    }
    dis0 = dis;
    dis = filter.newData(dis, Ultrasound->vel_CF, t);
    Ultrasound->calculateD_partial(Ultrasound->dis);
    Ultrasound->filter.setNewDataTime(t); //一定要放在 计算D 后面
      
    FTM_ClearCounter(FTM0);     //清零
    FTM_ClearCHnF(FTM0, FTM_Ch6);       //清除中断标志    
  }
}


void Ultrasound__::PIT_isr()
{
    if(t%50==0 && flag==1)//上次测距成功 开始计数 100ms一次
    {
      send = PIT->CHANNEL[PIT0].CVAL;//记录寄存器起始值
      GPIO_Output_b(PTD,7,1);
      count  = 0;
      error  = 0;
      flag   = 0;
    }
    else if(count>48)//本场末未收到 超时 丢失
    {
      error = 1;
      flag  = 1;
    }

    else if(flag==0)//未收到下降沿 计数中
    {
      GPIO_Output_b(PTD,7,0);
      count++;
    }
    else if(flag==1)                //已收到，不作变化
    {
    }        
    else
    {
      error = 1;
    }
    this->filter.checkIsNewData(t);
}