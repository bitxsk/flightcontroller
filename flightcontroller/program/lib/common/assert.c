/**
 * @file assert.c
 * @version 3.0[By LPLD]
 * @date 2013-06-18
 * @brief 断言函数定义
 *
 * 更改建议:不建议修改
 *
 * 一般不直接调用这里的断言函数，需要调用assert.h中的ASSERT宏定义
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

const char ASSERT_FAILED_STR[] = "断言失败发生于 %s 代码的第 %d 行，请检查参数。\n";
int F_line;
char const *F_file;
/********************************************************************/
void assert_failed(char const *file, int32 line)
{
  F_file = file;
  F_line = line;
  printf(ASSERT_FAILED_STR, file, line);
  
  while (1)
  {}
}
/********************************************************************/
