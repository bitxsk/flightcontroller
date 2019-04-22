/**
 * @file assert.h
 * @version 3.0[By LPLD]
 * @date 2013-06-18
 * @brief ���Ժ�������
 *
 * ���Ľ���:�������޸�
 *
 * assert_failed()������assert.c�ж���
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
 */

#ifndef _ASSERT_H_
#define _ASSERT_H_

/********************************************************************/

//ASSERT�Ǻ��滻 �����б�ܱ�ʾ���е����ݽ�����
//__FILE__��ANSI��׼˵�������Ԥ�������
   
void assert_failed(char const*, int32);
//assert_failed(char *, int32); Warning[Pe2464]: conversion from a string literal to "char *" is deprecated .
//So, change it to: assert_failed(string, int32);

#if defined(DEBUG_PRINT) && defined(DEBUG_ASSERT)
#define ASSERT(expr) \
    if (!(expr)) \
        assert_failed(__FILE__, __LINE__)
#else
#define ASSERT(expr)
#endif

/********************************************************************/
#endif /* _ASSERT_H_ */

