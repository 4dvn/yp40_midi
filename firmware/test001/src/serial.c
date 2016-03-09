#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_usart.h"
#include "serial.h"








void comm_put(char d) {
	while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET) {
		;
	}
	USART_SendData(USART1, (uint16_t) d);
}


void comm_puts(const char* s) {
	char c;
	while ((c = *s++) != '\0') {
		comm_put(c);
	}
}

void uinit(u32 rate){

	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
//	USART_ClockInitTypeDef USART_ClockInitStructure;

	//enable bus clocks
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);

	//Configure USART1 Tx (PA.02) as alternate function push-pull
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//Configure USART1 Rx (PA.03) as input floating
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	/* USART1 and USART2 configuration ------------------------------------------------------*/
	/* USART and USART2 configured as follow:
	 - BaudRate = 115200 baud
	 - Word Length = 8 Bits
	 - One Stop Bit
	 - No parity
	 - Hardware flow control disabled (RTS and CTS signals)
	 - Receive and transmit enabled
	 */
	USART_InitStructure.USART_BaudRate = rate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	/* Configure USART1 */
	USART_Init(USART1, &USART_InitStructure);

	/* Enable the USART1 */
	USART_Cmd(USART1, ENABLE);
}
