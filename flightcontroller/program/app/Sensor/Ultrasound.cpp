#include  "Ultrasound.h"

Ultrasound__ *Ultrasound;


void Ultrasound_Init()
{
  static Ultrasound__ Ultrasound0;
  Ultrasound = &Ultrasound0;
}

/*��̬��Աһ��Ҫ��ʼ�� �������Ӵ�*/
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
  if(FTM_IsCHnF(FTM0, FTM_Ch6))                 //0ͨ��
  {
    if(flag==0)
    {
      rece = PIT->CHANNEL[PIT0].CVAL;//��¼�Ĵ�����ʼ��ʱ
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
    Ultrasound->filter.setNewDataTime(t); //һ��Ҫ���� ����D ����
      
    FTM_ClearCounter(FTM0);     //����
    FTM_ClearCHnF(FTM0, FTM_Ch6);       //����жϱ�־    
  }
}


void Ultrasound__::PIT_isr()
{
    if(t%50==0 && flag==1)//�ϴβ��ɹ� ��ʼ���� 100msһ��
    {
      send = PIT->CHANNEL[PIT0].CVAL;//��¼�Ĵ�����ʼֵ
      GPIO_Output_b(PTD,7,1);
      count  = 0;
      error  = 0;
      flag   = 0;
    }
    else if(count>48)//����ĩδ�յ� ��ʱ ��ʧ
    {
      error = 1;
      flag  = 1;
    }

    else if(flag==0)//δ�յ��½��� ������
    {
      GPIO_Output_b(PTD,7,0);
      count++;
    }
    else if(flag==1)                //���յ��������仯
    {
    }        
    else
    {
      error = 1;
    }
    this->filter.checkIsNewData(t);
}