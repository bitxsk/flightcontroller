#ifndef _I_UWB_DECODE_H_
#define _I_UWB_DECODE_H_
#include "includes.h"

#define Byte16(Type, ByteH, ByteL)  ((Type)((((u16)(ByteH))<<8) | ((u16)(ByteL))))

#define RECIEVE_BUF_SIZE 24	//�������ݳ���,��õ���sizeof(TEXT_TO_SEND)+2��������.
#define TAG_NUM 1 		//����TAG����
#define ANCHOR_NUM 4  //����ANCHOR����

#endif
