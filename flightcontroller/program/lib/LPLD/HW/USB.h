/**
 * @file USB.c
 * @version 3.0[By LPLD]
 * @date 2013-06-18
 * @brief UART�ײ�ģ����غ���
 *
 * ���Ľ���:�������޸�
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
#ifndef __USB_H__
#define __USB_H__

/*����USB2.0��׼*/
/*����USB�豸������*/
#define USB_DEVICE_CLASS_AUDIO        1
#define USB_DEVICE_CLASS_CDC          2
#define USB_DEVICE_CLASS_HID          3
#define USB_DEVICE_CLASS_PHY          4
#define USB_DEVICE_CLASS_IMAGE        5
#define USB_DEVICE_CLASS_MASS_STORAGE 6
#define USB_DEVICE_CLASS_HUB          7
#define USB_DEVICE_CLASS_CDC_DATA     8
#define USB_DEVICE_CLASS_SMARTCARD    9
//.......
#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
typedef enum 
{
  MOUSE_BUTTON_CLICK,
  MOUSE_X_MOVEMENT,
  MOUSE_Y_MOVEMENT
}CAN_HID_Mouse_EnumType;

#define  MOUSE_LEFT_CLICK        (0x01) /* Left click */
#define  MOUSE_RIGHT_CLICK       (0x02) /* Right click */
#define  MOUSE_LEFT_MOVE         (0xF8) /* Left movement */
#define  MOUSE_RIGHT_MOVE        (0x08) /* Right movement */
#define  MOUSE_UP_MOVE           (0xF8) /* up movement */
#define  MOUSE_DOWN_MOVE         (0x08) /* down movement */
#endif
//USBģ���жϻص���������
typedef void (*USB_ISR_CALLBACK)(void);
typedef void (*USB_REV_ISR_CALLBACK)(void);
//USB��ʼ������
void USB_Init(void);
//USB����ʼ������
void USB_DeInit(void);

#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//USB���� ���⴮�� �����жϷ�����
void USB_SetRevIsr(USB_REV_ISR_CALLBACK);
//USB ���⴮�� ���պ���
uint8 USB_VirtualCom_Rx(uint8 *rx_buf);
//USB ���⴮�� ���ͺ���
uint8 USB_VirtualCom_Tx(uint8 *tx_buf,uint8_t len);
//USB�ָ����յ������ݵ��û��ڴ溯��
void USB_QueueData(void);
#endif

#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//HID�����ƺ���
void USB_HID_MouseControl(uint8 * buf);
//��main loop��ѭ�����������
void USB_HID_LoopTask(uint8 * buf);
#endif

#endif