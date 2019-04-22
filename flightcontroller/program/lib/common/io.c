/**
 * @file io.c
 * @version 3.01[By LPLD]
 * @date 2013-11-4
 * @brief 串行输入/输出函数
 *
 * 更改建议:不建议修改
 *
 * TERMINAL_PORT为串口号，在用户工程的k60_card.h中定义
 *
 * 版权所有:北京拉普兰德电子技术有限公司
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
 * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
 * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
 * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
 * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
 * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
 */

#include "common.h"
#include "UART.h"

/********************************************************************/
char in_char (void)
{
	return UART_GetChar(TERM_PORT);
}
/********************************************************************/
void out_char (char ch)
{
	UART_PutChar(TERM_PORT, ch);
}
/********************************************************************/
int32 char_present (void)
{
	return UART_GetChar_Present(TERM_PORT);
}
/********************************************************************/
