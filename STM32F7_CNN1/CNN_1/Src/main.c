/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  * This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * Copyright (c) 2017 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f7xx_hal.h"

#include "LKML_Math.h"
#include "LK_fatfs.h"
#include "LK_STM32.h"
#include <stdlib.h>	/* malloc */
#include <string.h> /* memset */
SD_HandleTypeDef hsd1;



void LK_HEAP_ERROR()
{

printf_s("NULL From Heap Pointer!!");
}


void Model_CNN_ICRSF()//totally 3.5388613  3.5402541  
{//14.78360400   or 1.20109560	5533425 **11023410  **11926472
	FIL File_X;
	FIL File_In;
	uint32_t byteswritten, bytesread;  
	

	f_open(&File_X, (const TCHAR*)"DataSet/MNIST_test_features_60000_784_scale.lkd", FA_READ);//14.78360790
	
	

	f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/Zc.lkd", FA_READ);//14.81152310
	LK_Accuarcy* Test_feature;
	Test_feature=(LK_Accuarcy*)malloc(784*8); //14.84635600  14.84636850
	LK_Accuarcy* ZeroCenter_Parameters;
	ZeroCenter_Parameters=(LK_Accuarcy*)malloc(784*8); //14.84636970   14.84637540
	
		f_read(&File_X, Test_feature, 784*8, (UINT*)&bytesread);//14.84637660
		f_read(&File_In, ZeroCenter_Parameters, 28*28*8, (UINT*)&bytesread);//14.91707640
		
		LK_ZeroCenter(Test_feature, ZeroCenter_Parameters, 28 * 28);//14.98814430
		free(ZeroCenter_Parameters);//14.99282540
		f_close(&File_In);//14.99283300
		
	

		LK_Accuarcy* h1;
		
		h1=(LK_Accuarcy*)malloc(576*8); //14.99312850   14.99313690
		//memset(h1,0,578*8);
		LK_Accuarcy* C1K;
		LK_Accuarcy* C1B;
		C1K=(LK_Accuarcy*)malloc(25*8);//14.99313810   14.99314380
		C1B=(LK_Accuarcy*)malloc(6*8);//14.99314500   14.99315050
		LK_Accuarcy h2[6][12][12] = { 0 };//14.99315170
		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1B.lkd", FA_READ);//14.99454230
		f_read(&File_In, C1B, 6*8, (UINT*)&bytesread);//15.02785770
		f_close(&File_In);//15.004322320
		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K1.lkd", FA_READ);//15.04351140
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//15.007678920
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[0], h1, 24, 24, 0);//15.09223950
		LK_ReLu(h1,576);//15.44152680
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[0][0][0], 12, 12, 1, 0);//15.44395070
		f_close(&File_In);		//15.44975920

		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K2.lkd", FA_READ);//15.45007740
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//15.48397430
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[1], h1, 24, 24, 0);//15.49938040
		LK_ReLu(h1,576);//15.85027270
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[1][0][0], 12, 12, 1, 0);//15.85272620
		f_close(&File_In);			//15.85806490
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K3.lkd", FA_READ);//15.85836790
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//15.89225950
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[2], h1, 24, 24, 0);//15.90766840
		LK_ReLu(h1,576);//16.26293440
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[2][0][0], 12, 12, 1, 0);//16.26544590
		f_close(&File_In);	//16.27125520
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K4.lkd", FA_READ);//16.271556630
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//16.30548030
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[3], h1, 24, 24, 0);//16.32089860
		LK_ReLu(h1,576);//16.67162470
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[3][0][0], 12, 12, 1, 0);//16.67405460
		f_close(&File_In);	//16.67957950
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K5.lkd", FA_READ);//16.67989070
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//16.71324120
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[4], h1, 24, 24, 0);//16.72867150
		LK_ReLu(h1,576);//17.08500000
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[4][0][0], 12, 12, 1, 0);//17.08737350
		f_close(&File_In);	//17.09256030
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K6.lkd", FA_READ);//17.09287550
		f_read(&File_In, C1K, 25*8, (UINT*)&bytesread);//17.12623510
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[5], h1, 24, 24, 0);//17.14163070
		LK_ReLu(h1,576);//17.48993250
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[5][0][0], 12, 12, 1, 0);//17.49238840
		f_close(&File_In);	//17.49793380
		
		
		free(C1K);//17.49824430
		free(C1B);//17.49825310
		free(h1);//17.48826380
		
			LK_Accuarcy F5W[10][864] = { 0 };  // 17.49826970  THIS Step require a large stack area, which may let the file system not work.
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/F5W.lkd", FA_READ);//17.51211470
		f_read(&File_In, &F5W[0][0], 864*10*8, (UINT*)&bytesread);//17.54604290
		f_close(&File_In);//18.13709340
		
		LK_Accuarcy h3[10] = {0};//18.13738780
		LK_matrix_multpile(&F5W[0][0],10,864,&h2[0][0][0],864,1,&h3[0]);//18.13741060
		LK_Softmax(&h3[0], 10);//18.28499600
		printf_s("	Result is: %d",maxofMatrix(&h3[0], 10));//18.29939980
		
}//18.32246530   or 4.74134970  46486762  47366363   **46471409   **47359281

void heaptest()
{
	int *a;
	a=(int*)malloc(1024*4);
	
	int i=1024;
	while(i--)
	{
		
		*a=i;
		printf("%d",*a);
		a++;
	}

		free(a);
}
int main(void)
{
   SCB_EnableICache();
  SCB_EnableDCache();
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_SDMMC1_SD_Init();
	testSD_UART();
	
 
	
	
 // heaptest();
	 Model_CNN_ICRSF();

	
  while (1)
  {
 
  }
}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct;

    /**Configure the main internal regulator output voltage 
    */
  __HAL_RCC_PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 432;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Activate the Over-Drive mode 
    */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_USART1|RCC_PERIPHCLK_SDMMC1
                              |RCC_PERIPHCLK_CLK48;
  PeriphClkInitStruct.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK2;
  PeriphClkInitStruct.Clk48ClockSelection = RCC_CLK48SOURCE_PLL;
  PeriphClkInitStruct.Sdmmc1ClockSelection = RCC_SDMMC1CLKSOURCE_CLK48;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* SDMMC1 init function */
static void MX_SDMMC1_SD_Init(void)
{

  hsd1.Instance = SDMMC1;
  hsd1.Init.ClockEdge = SDMMC_CLOCK_EDGE_RISING;
  hsd1.Init.ClockBypass = SDMMC_CLOCK_BYPASS_DISABLE;
  hsd1.Init.ClockPowerSave = SDMMC_CLOCK_POWER_SAVE_DISABLE;
  hsd1.Init.BusWide = SDMMC_BUS_WIDE_1B;
  hsd1.Init.HardwareFlowControl = SDMMC_HARDWARE_FLOW_CONTROL_DISABLE;
  hsd1.Init.ClockDiv = 0;

}

/* USART1 init function */


/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler_Debug */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
