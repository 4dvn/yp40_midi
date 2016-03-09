
#include "stm32f10x.h"

#define BOTTOM_KEY 25 // the midi note of key 0, has to be bigger than 2

// keys are pulldown
#define KEY01 GPIO_Pin_1
#define KEY01_PORT GPIOA
#define KEY02 GPIO_Pin_2
#define KEY02_PORT GPIOA
#define KEY03 GPIO_Pin_3
#define KEY03_PORT GPIOA
#define KEY04 GPIO_Pin_4
#define KEY04_PORT GPIOA
#define KEY05 GPIO_Pin_5
#define KEY05_PORT GPIOA
#define KEY06 GPIO_Pin_6
#define KEY06_PORT GPIOA
#define KEY07 GPIO_Pin_7
#define KEY07_PORT GPIOA
#define KEY08 GPIO_Pin_8
#define KEY08_PORT GPIOA
#define KEY09 GPIO_Pin_14
#define KEY09_PORT GPIOB
#define KEY10 GPIO_Pin_15
#define KEY10_PORT GPIOB
#define KEY11 GPIO_Pin_11
#define KEY11_PORT GPIOA
#define KEY12 GPIO_Pin_12
#define KEY12_PORT GPIOA

// sustain pin is pullup
#define SUST GPIO_Pin_15
#define SUST_PORT GPIOC

// up rails are push pull

#define U1 GPIO_Pin_0
#define U1_PORT GPIOB
#define U2 GPIO_Pin_1
#define U2_PORT GPIOB
#define U3 GPIO_Pin_15
#define U3_PORT GPIOA
#define U4 GPIO_Pin_3
#define U4_PORT GPIOB
#define U5 GPIO_Pin_4
#define U5_PORT GPIOB
#define U6 GPIO_Pin_5
#define U6_PORT GPIOB
#define U7 GPIO_Pin_6
#define U7_PORT GPIOB

// down rails are push pull

#define D1 GPIO_Pin_7
#define D1_PORT GPIOB
#define D2 GPIO_Pin_8
#define D2_PORT GPIOB
#define D3 GPIO_Pin_9
#define D3_PORT GPIOB
#define D4 GPIO_Pin_10
#define D4_PORT GPIOB
#define D5 GPIO_Pin_11
#define D5_PORT GPIOB
#define D6 GPIO_Pin_12
#define D6_PORT GPIOB
#define D7 GPIO_Pin_13
#define D7_PORT GPIOB

#define SUSTAIN_ON 1
#define SUSTAIN_OFF 0





void keypins_init(void);
void keypins_set_u(u16 word_in);
void keypins_set_d(u16 word_in);
void keypins_scan(void);
void sust_scan(void);
u16 keypins_read_keys(void);
void binstr(char* s, u16 word);
void Delay(unsigned int volatile nCount);
uint8_t BufferIn(u32 byte);
uint8_t BufferOut(u32 *pByte);
void velotask(void);

// ############################# buffer stuff ##############################
// basic buffer read and write functions

#define SUCCESS 1
#define FAIL 0

#define BUFFER_SIZE 32 // size has to be 2^n (8, 16, 32, 64 ...)
#define BUFFER_MASK (BUFFER_SIZE-1)


