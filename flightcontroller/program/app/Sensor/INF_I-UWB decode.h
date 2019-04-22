#ifndef _I_UWB_DECODE_H_
#define _I_UWB_DECODE_H_
#include "includes.h"

#define Byte16(Type, ByteH, ByteL)  ((Type)((((u16)(ByteH))<<8) | ((u16)(ByteL))))

#define RECIEVE_BUF_SIZE 24	//发送数据长度,最好等于sizeof(TEXT_TO_SEND)+2的整数倍.
#define TAG_NUM 1 		//定义TAG数量
#define ANCHOR_NUM 4  //定义ANCHOR数量

#endif
