#ifndef __LK_STM32L0_H
#define __LK_STM32L0_H

#ifdef __cplusplus
 extern "C" {
#endif


	#include "stm32l0xx_hal.h"	 


#define LK_UsingtheCubeMX 0	   //0 means disable the confilct function
	 
	 
typedef enum 
{
LED1 = 0,
LED_GREEN = LED1,
}Led_TypeDef;



	 
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



#if LK_UsingtheCubeMX
 void Error_Handler(void);
 void SystemClock_Config(void);
#endif







#ifdef __cplusplus
}
#endif

#endif /* __STM32746G_DISCOVERY_H */
