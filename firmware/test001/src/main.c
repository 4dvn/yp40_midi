

#include "stm32f10x.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_tim.h"
#include "serial.h"
#include "keypins.h"
#include "core_cm3.h"


GPIO_InitTypeDef GPIO_InitStructure;

void SysTick_Handler(void) {

	GPIOA ->ODR ^= GPIO_Pin_0; // bling bling toggle LED
	keypins_scan();
	sust_scan();
}

int main(int argc, char *argv[]) {


	SystemInit();

//DISABLE JTAG, Enable SWD
	RCC_APB2PeriphClockCmd(
			RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO,
			ENABLE);
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable, ENABLE); // Disable JTAG/SWD so pins are available

// GPIO Stuff for LED

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	GPIO_WriteBit(GPIOA, GPIO_Pin_0, Bit_SET);

// UART init
//	uinit(115200); // debug uart
	uinit(31250); // midi baudrate

	keypins_init();

	//keypins_set_u(0b01010101);// test-pattern




//	SysTick_Config(16777215); // standard
//	SysTick_Config(7200000); // 10 Hz interrupt
//	SysTick_Config(720000); // 100 hz
//	SysTick_Config(72000); // 1000 hz
	SysTick_Config(48000); // 1500 Hz < maximum sampling speed with 76 keys
//	SysTick_Config(36000); // 2000 hz
//	SysTick_Config(18000); // 4000 hz < maximum sampling speed with 24 keys
//	SysTick_Config(12000);
//	SysTick_Config(9000); // 8000 hz




	velotask(); // call velotask and never return (velotask loops forever)
	// the key scanning happens in a timer interrupt (SysTick_Handler)

	return 0;


}


