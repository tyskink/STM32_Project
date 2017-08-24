//"LK_STM32.h"
#ifndef __LK_STM32_H
#define __LK_STM32_H

#ifdef __cplusplus
 extern "C" {
#endif

//#ifdef STM32F746x
	 
#include <stdio.h>

		#include "stm32f7xx_hal.h"

//			#include "stm32l0xx_hal.h "


//#elsifdef STM32F407xxx
//#include "stm32f4xx_hal.h"	 
//#endif

#define LK_UsingtheCubeMX 0	   //0 means disable the confilct function

extern UART_HandleTypeDef huart1;

void MX_USART1_UART_Init(void);	 
	 
typedef enum 
{
LED1 = 0,
LED_GREEN = LED1,
}Led_TypeDef;

//---------------------- Enable printf to usart
//int fputc(int ch, FILE *f);
#define LK_Default_UARTPort huart1
#define printf_s printf

struct __FILE 
	{
    int dummy;
};

//FILE __stdout;
//----------------------------------------------

	 
void BSP_LED_Init(Led_TypeDef Led);	 
void BSP_LED_On(Led_TypeDef Led);
void LED1_Flash(void);

void LK_LED1_init(void);
void LK_LED1_on(void);
void LK_LED1_off(void);
void LK_LED1_toggle(void);


void LK_Key1_init(void);
void LK_Key1_scanf(void);


int LK_UART(UART_HandleTypeDef *huart,const char *dataString);
void LK_Printf(const char *dataString);


#if LK_UsingtheCubeMX
 void Error_Handler(void);
 void SystemClock_Config(void);
#endif

void FPUCheck(void);
void CORECheck(void);





#ifdef __cplusplus
}
#endif

#endif /* __STM32746G_DISCOVERY_H */
