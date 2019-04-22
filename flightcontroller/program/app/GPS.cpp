#include "GPS.h"
#include "string.h"

CGPS *GPS;
void GPS_Init()
{
  static CGPS GPS_0;
  GPS = &GPS_0;
  GPS->DMA_CHn_Rx = DMA_CH4;
  
//  GPS->latitude_reference  = 3.0849812550000002E+1; //赛场屏幕 单点精度
//  GPS->longitude_reference = 1.1961452616666665E+2;
//  GPS->altitude0           = 2.3269999999999999E+1;

//  GPS->latitude_reference  = 3.084906361666666544E+1;
//  GPS->longitude_reference = 1.1961322839999999E+2;
//  GPS->altitude0           = 3.2796999999999997E+1;
  GPS->positionFilterX.setParameter(10, 100);
  GPS->positionFilterY.setParameter(10, 100);
  
  GPS->positionFilterX.maxValue = 20;
  GPS->positionFilterX.minValue = -20;
  
  GPS->positionFilterY.maxValue = 20;
  GPS->positionFilterY.minValue = -20;
}


/*************获得对应序号逗号后的数据位置*****************/
int CGPS::GetComma(int num,char *str)
{
  int i,j = 0;
  int len = strlen(str);
  for(i=0;i<len;i++)
  {
    //for(;str[i]!='$';i++)
    //{}
    if(str[i]==',')
    {
      j++;
    }
    
    if(j==num)
      return i+1;
  }
  return 0;
}


/******************解析数据***************/
void CGPS::updateUart()
{
  velFilter_x1.checkIsNewData(t);
  velFilter_y1.checkIsNewData(t);
  
  
  bool newPackage = false;
  
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&GPS_BUF[0]);
  
  int moveLength = 0;
  
  bool loopFlag = false;
  //byteInterval = t - byte_lastTime;
  if(byte_lastAddress != address0)
  {
    byte_lastTime = t;
    byte_lastAddress = address0;
  }
  for(; i < address0; i++)
  {
    for(; GPS_BUF[i] != '\n'; i++)
    {
      if((GPS_BUF[i] == '$')&&(GPS_BUF[i+1] == 'G')&&(GPS_BUF[i+2] == 'N')&&(GPS_BUF[i+3] == 'G'))
      {
        start = i;
      }
      
      
      if(i >= address0)
      {
        
        loopFlag = true;
        break;
      }
    }
    
    if(loopFlag)
    {
      break;
    }
    
    //    char checkSum = 0; //注意每个包的checkSum都要清零
    //    for(int k = i - (packageLength - 1); k < i - 1; k++)
    //    {
    //      checkSum += uartData[k];
    //    }
    //    if(checkSum != uartData[i-1])
    //    {
    //      continue;
    //    }
    //byte_lastTime = t;
    i0 = i + 1; 
    end = i;
    
    // unpack(start, i);
    if(end-start > 1)unpack(start, i);
    
    byte_lastAddress = address0;
  }
  moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&GPS_BUF[0]) - i0;
  if(moveLength < 0) moveLength = 0;
  
  DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0] + moveLength);
  for(i = 0; i < moveLength; i++)
  {
    GPS_BUF[i] = GPS_BUF[i0 + i];
  }
  // memset(GPS_BUF + moveLength, 0, 500 * sizeof(char));
  if(address0 > 500)
  {
    DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&GPS_BUF[0]);
  }
  
  
  
}
//将获取文本信息转换为double型

double CGPS::get_double_number(char *s)
{
  char buf[128];
  int i;
  double rev;
  i=GetComma(1,s);
  strncpy(buf,s,i);
  buf[i]=0;
  rev=atof(buf);
  
  return rev;
}

double CGPS::get_locate(double temp)
{
  int m;
  double  n;
  m=(int)temp/100;
  n=(temp-m*100)/60;
  n=n+m;
  return n;
  
}


void CGPS::unpack(int start, int end)
{
  //int tmp;
  
  c = GPS_BUF[start+5];
  if(c=='A')
  {
    //"GNGGA"
    D.hour   =(GPS_BUF[start+ 7]-'0')*10+(GPS_BUF[start+ 8]-'0');
    D.minute =(GPS_BUF[start+ 9]-'0')*10+(GPS_BUF[start+10]-'0');
    D.second =(GPS_BUF[start+11]-'0')*10+(GPS_BUF[start+12]-'0');
    //tmp = GetComma(9,GPS_BUF);
    //D.day    =(GPS_BUF[tmp+0]-'0')*10+(GPS_BUF[tmp+1]-'0');
    //D.month  =(GPS_BUF[tmp+2]-'0')*10+(GPS_BUF[tmp+3]-'0');
    //D.year   =(GPS_BUF[tmp+4]-'0')*10+(GPS_BUF[tmp+5]-'0')+2000;
    
 //   status   = GPS_BUF[GetComma(6, GPS_BUF)];
    status   = '1';
    if(status == '1' || status == '4' || status == '5')
    {
      latitude = get_locate(get_double_number(&GPS_BUF[GetComma(2, GPS_BUF)]));
      NS       = GPS_BUF[GetComma(3, GPS_BUF)];
      longitude= get_locate(get_double_number(&GPS_BUF[GetComma(4, GPS_BUF)]));
      EW       = GPS_BUF[GetComma(5, GPS_BUF)];
      satqua   = get_double_number(&GPS_BUF[GetComma(7, GPS_BUF)]);
      altitude = get_double_number(&GPS_BUF[GetComma(9, GPS_BUF)]);
    }
    else
    {
      valid = false;
    }
    
    //UTC2BTC(&GPS->D);//世界时间 
    GPS->dy = (GPS->latitude - GPS->latitude_reference) * 111133;
    GPS->dx = (GPS->longitude - GPS->longitude_reference) * 111319 * arm_cos_f32((GPS->longitude - GPS->longitude_reference) / 57.2957795);
    
    
    dx_local = positionFilterX.newData3(dy * arm_cos_f32(angle / 57.2957795) - dx * arm_sin_f32(angle / 57.2957795), t);
    dy_local = positionFilterY.newData3(dy * arm_sin_f32(angle / 57.2957795) + dx * arm_cos_f32(angle / 57.2957795), t);
  }
}

void CGPS::TX_::startDMA_Transmit()
{
  //调整源地址
  DMA0->TCD[DMA_CH5].SADDR = DMA_SADDR_SADDR(GPS->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH5].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH5].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(GPS->TX.index);
  
  DMA_EnableReq(DMA_CH5);
  
}