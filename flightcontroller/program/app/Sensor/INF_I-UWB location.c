#include "INF_I-UWB location.h"
#include "math.h"
#include "INF_I-UWB kalman_filter.h"

volatile S_FLOAT_XYZ I_UWB_Position;    	//I_UWBλ��


volatile S_FLOAT_XYZ I_UWB_Position_Last;    //I_UWB��һ��λ��

volatile S_FLOAT_XYZ I_UWB_Position_;    	//��λ�ú��˲�I_UWBλ��


volatile S_FLOAT_XYZ ANCHOR0 = {0,0,1};   //ANCHOR0λ��
volatile S_FLOAT_XYZ ANCHOR1 = {0,10,1};  //ANCHOR1λ��
volatile S_FLOAT_XYZ ANCHOR2 = {10,10,1}; //ANCHOR2λ��
volatile S_FLOAT_XYZ ANCHOR3 = {10,0,1};  //ANCHOR3λ��

float dis[ANCHOR_NUM];//ԭʼ
float dis_[ANCHOR_NUM];
float Ts = 0.002;

//kalman2_state kalman2_state_dis0;
//kalman2_state kalman2_state_dis1;
//kalman2_state kalman2_state_dis2;
//kalman2_state kalman2_state_dis3;

void Kalman_Param_Init(void)
{
	//kalman2_init(&kalman2_state_dis0,kalman2_state_dis0.x,kalman2_state_dis0.p);
	//kalman2_init(&kalman2_state_dis1,kalman2_state_dis1.x,kalman2_state_dis1.p);
	//kalman2_init(&kalman2_state_dis2,kalman2_state_dis2.x,kalman2_state_dis2.p);
	//kalman2_init(&kalman2_state_dis3,kalman2_state_dis3.x,kalman2_state_dis3.p);
}

kalman2_state kalman2_state_dis0 =
{
	{0,0},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_dis1 =
{
	{0,0},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_dis2 =
{
	{0,0},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_dis3 =
{
	{0,0},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_x =
{
	{0,0.1},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_y =
{
	{0,00.1},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};

kalman2_state kalman2_state_z =
{
	{0,0.1},//λ�á��ٶ�
	{{1,Ts},{0,1}},//Ts�������ʱ�䣬�����ڽ�������ʱ����
	{1,0},//H
	{0.0001,0.0001},//��������
	0.018,//��������
	{{1,0},{0,1}},//p
	{0,0}//����������
};


void I_UWB_Position_Calculate(u8 flag)
{		
	static float temp;
	
	if(flag == 0)
	{
		dis_[0] = kalman2_filter(&kalman2_state_dis0,dis[0]);
		dis_[1] = kalman2_filter(&kalman2_state_dis1,dis[1]);
		dis_[2] = kalman2_filter(&kalman2_state_dis2,dis[2]);
		dis_[3] = kalman2_filter(&kalman2_state_dis3,dis[3]);
		
		I_UWB_Position.X = (pow(dis_[1],2) - pow(dis_[2],2) + 100) / 20;//�˴��޸�Ϊfilter�������
		I_UWB_Position.Y = (pow(dis_[0],2) - pow(dis_[1],2) + 100) / 20;
	 
		temp = pow(dis_[0],2) - ( pow(I_UWB_Position.X,2) + pow(I_UWB_Position.Y,2) );
		if(temp < 0) temp = 0;//��tempΪ��������˵���������������վ�ȸ�λ�ø���
		I_UWB_Position.Z = sqrt(temp) + 1;
	}
	else////////////////////�ȵ�λ�ú��˲�//////////////////////////////////////
	{
		dis_[0] = dis[0];dis_[1] = dis[1];dis_[2] = dis[2];dis_[3] = dis[3];
		
		I_UWB_Position.X = (pow(dis[1],2) - pow(dis[2],2) + 100) / 20;//�˴��޸�Ϊfilter�������
		I_UWB_Position.Y = (pow(dis[0],2) - pow(dis[1],2) + 100) / 20;
	 
		temp = pow(dis[0],2) - ( pow(I_UWB_Position.X,2) + pow(I_UWB_Position.Y,2) );
		if(temp < 0) temp = 0;//��tempΪ��������˵���������������վ�ȸ�λ�ø���
		I_UWB_Position.Z = sqrt(temp) + 1;  
	 
		I_UWB_Position_.X = kalman2_filter(&kalman2_state_x,I_UWB_Position.X);
		I_UWB_Position_.Y = kalman2_filter(&kalman2_state_y,I_UWB_Position.Y);
		I_UWB_Position_.Z = kalman2_filter(&kalman2_state_z,I_UWB_Position.Z);

	}
}


