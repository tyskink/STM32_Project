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
#include "LKML_Layers.h"
#include "LKML_FileIO_FATFS.h"
#include <stdlib.h>	/* malloc */
#include <string.h> /* memset */
//#include "LKML_DecisionTree.h"
SD_HandleTypeDef hsd1;



void LK_HEAP_ERROR()
{

printf_s("NULL From Heap Pointer!!");
}


void Model_CNN_ICRSF() 
{ 
	FIL File_X;
	FIL File_In;
	uint32_t byteswritten, bytesread;  
	LK_Accuarcy* Test_feature;	
	Test_feature=(LK_Accuarcy*)malloc(784*8);  	
	
			f_open(&File_X, (const TCHAR*)"DataSet/MNIST_train_features_60000_784_scale.lkf", FA_READ); 
			int input=100;
	uint32_t time1,time2;
	
			LK_Accuarcy h3[10] = {0};//18.13738780
			LK_Accuarcy F5W[10][864] = { 0 };  //   THIS Step require a large stack area, which may let the file system not work.
			LK_Accuarcy F5B[10];
			
			LK_UART(&huart1,"{A");	//printf_s("  start: %d",time=HAL_GetTick());
			time1=HAL_GetTick();
 while(input--)
	{
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/Zc.lkf", FA_READ); 
		LK_Accuarcy* ZeroCenter_Parameters;
		ZeroCenter_Parameters=(LK_Accuarcy*)malloc(784*4);  
		f_read(&File_X, Test_feature, 784*4, (UINT*)&bytesread); 
		f_read(&File_In, ZeroCenter_Parameters, 28*28*4, (UINT*)&bytesread); 
			
		LK_ZeroCenter(Test_feature, ZeroCenter_Parameters, 28 * 28); 
		free(ZeroCenter_Parameters); 
		f_close(&File_In); 
		

		LK_Accuarcy* h1;
		
		h1=(LK_Accuarcy*)malloc(576*4);  
		//memset(h1,0,578*8);
		LK_Accuarcy* C1K;
		LK_Accuarcy* C1B;
		C1K=(LK_Accuarcy*)malloc(25*4);  
		C1B=(LK_Accuarcy*)malloc(6*4); 
		LK_Accuarcy h2[6][12][12] = { 0 };//	
		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1B.lkf", FA_READ);//   
		f_read(&File_In, C1B, 6*4, (UINT*)&bytesread);// 
		f_close(&File_In);//	
		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K1.lkf", FA_READ);//	
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//15.007678920
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[0], h1, 24, 24, 0);//	
		LK_ReLu(h1,576);//	
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[0][0][0], 12, 12, 1, 0);//	
		f_close(&File_In);		//	

		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K2.lkf", FA_READ);//	
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//	
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[1], h1, 24, 24, 0);//	
		LK_ReLu(h1,576);//15.85027270
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[1][0][0], 12, 12, 1, 0);//	
		f_close(&File_In);			//	
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K3.lkf", FA_READ);//	
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//15.89225950
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[2], h1, 24, 24, 0);//	
		LK_ReLu(h1,576);//	
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[2][0][0], 12, 12, 1, 0);//	
		f_close(&File_In);	//	
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K4.lkf", FA_READ);//	
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//16.30548030
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[3], h1, 24, 24, 0);//16.32089860
		LK_ReLu(h1,576);//16.67162470
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[3][0][0], 12, 12, 1, 0);//16.67405460
		f_close(&File_In);	//16.67957950
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K5.lkf", FA_READ);//16.67989070
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//16.71324120
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[4], h1, 24, 24, 0);//16.72867150
		LK_ReLu(h1,576);//17.08500000
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[4][0][0], 12, 12, 1, 0);//17.08737350
		f_close(&File_In);	//17.09256030
		
			 
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/C1K6.lkf", FA_READ);//17.09287550
		f_read(&File_In, C1K, 25*4, (UINT*)&bytesread);//17.12623510
		LK_convolutional2D(Test_feature, 28, 28, C1K, 5, 5, C1B[5], h1, 24, 24, 0);//17.14163070
		LK_ReLu(h1,576);//17.48993250
		LK_Pooling_Max(h1, 24, 24, 2, 2, 2, 2, &h2[5][0][0], 12, 12, 1, 0);//17.49238840
		f_close(&File_In);	//17.49793380
		
		
		free(C1K);//17.49824430
		free(C1B);//17.49825310
		free(h1);//17.48826380

		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/F5W.lkf", FA_READ);//17.51211470
		f_read(&File_In, &F5W[0][0], 864*10*4, (UINT*)&bytesread);//17.54604290
		f_close(&File_In);//18.13709340
		
		
		f_open(&File_In, (const TCHAR*)"CNN_ZcCoReSuFuSm/F5B.lkf", FA_READ);
		f_read(&File_In, &F5B[0], 10*4, (UINT*)&bytesread);
		f_close(&File_In);
		
		//LK_matrix_multpile(&F5W[0][0],10,864,&h2[0][0][0],864,1,&h3[0]);//18.13741060
		
		LK_FullyConnect(&F5W[0][0],10,864,&h2[0][0][0],&h3[0],&F5B[0]);
		
		LK_Softmax(&h3[0], 10);//18.28499600
		printf_s("	Result is: %d",maxofMatrix(&h3[0], 10));//18.29939980
	}
		//
 time2=HAL_GetTick();
 LK_UART(&huart1,"{Z");	
printf_s("  end: %d",time2-time1);
}//18.32246530   or 4.74134970  46486762  47366363   **46471409   **47359281


void Model_CNN_1_1()  //float parameter, float computation 
{
	#define DWT_SIZE 1000  //all size changed
	UINT bytesread;
	LK_Accuarcy_Data Test_feature[DWT_SIZE];
	LK_Data TestFeature = {.W=28,.H=28,.D=1,.Size=DWT_SIZE,.Matrix=&Test_feature[0] };

	LK_FILE FeaturesFILE;
	//f_open(FeaturesFILE, (const TCHAR*)"DataSet/MNIST_train_features_60000_784_scale.lkf", FA_READ); 
	LK_OpenFile(&FeaturesFILE, "DataSet/MNIST_train_features_60000_784_scale.lkf");  //MNIST_train_features_60000_784_scale MNIST_test_features_10000_784_scale
	 
	LK_FILE labelFILE;
	LK_OpenFile(&labelFILE, "DataSet/MNIST_train_label_60000_1.lkf");  //MNIST_train_label_60000_1  MNIST_test_label_10000_1

	//ImageInput: Zerocenter
	LK_Accuarcy_Data ZeroCenter_Parameters[784];
	 LK_Data ZeroCenterParameter = { .W = 28,.H = 28,.D = 1,.Size = DWT_SIZE,.Matrix = &ZeroCenter_Parameters[0] };
	LK_ReadData("CNN_ZcCoReSuFuSm/Zc.lkf", &ZeroCenter_Parameters[0], 784);
	//LK_displayMatrix(&ZeroCenter_Parameters[0],28,28,"ZC");
	 
	//Conv Relu MaxPoolling
	LK_Accuarcy_Data C1K[6][5][5]; 
	LK_Accuarcy_Data C1B[6];	
	 LK_Kernel Conv1Kernel={.W=5, .H=5, .D=6, .Matrix= &C1K[0][0][0], .Bias= &C1B[0] ,.KernelSize=25};
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K1.lkf", &C1K[0][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K2.lkf", &C1K[1][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K3.lkf", &C1K[2][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K4.lkf", &C1K[3][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K5.lkf", &C1K[4][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K6.lkf", &C1K[5][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1B.lkf", &C1B[0], 6);
	LK_Accuarcy_Calculate h2[6][12][12];
	 LK_Matrix H2={.W=12,.H=12,.D=6,.Size=864,.Matrix=&h2[0][0][0] };
	//LK_displayMatrix3D(&C1K[0][0][0], 6, 5, 5, "C1K");


	LK_Accuarcy F5W[10][864] ;	
	LK_Accuarcy F5B[10] ;
	LK_ReadData("CNN_ZcCoReSuFuSm/F5W.lkf", &F5W[0][0], 864 * 10);
	LK_ReadData("CNN_ZcCoReSuFuSm/F5B.lkf", &F5B[0], 10);
	 LK_Kernel FC = { .W = 864,.H = 10,.D = 1,.Matrix = &F5W[0][0],.Bias = &F5B[0] ,.KernelSize = 25 };

	LK_Accuarcy_Calculate h3[10] ;
	 LK_Matrix H3 = { .W = 1,.H = 10,.D = 1,.Size=10,.Matrix = &h3[0] };

//LK_displayMatrix(&F5W[0][0],10,864,"ZC");

	int index = 10000;
	int ERRORCOUNT = 0;
	 
	 
	while (index--)
	{
		float LABLE;
		LK_ReadDataLayer(&TestFeature, &FeaturesFILE);//H0
		//f_read(&FeaturesFILE, &Test_feature[0], 784*4, (UINT*)&bytesread); 
		//f_read(&labelFILE, &LABLE, 4, (UINT*)&bytesread); 		
		
	
		//--------------------------------DWT REST
uint32_t DWT_Counter;
DWT->CYCCNT = 0;   // sub 6
 DWT->CPICNT = 0;   // sub 2 
 DWT->EXCCNT = 0;	  // sub 0
 DWT->SLEEPCNT = 0; // sub 0
 DWT->LSUCNT = 0;		// sub 0
 DWT->FOLDCNT = 0;	// sub 0
//--------------------------------DWT				
		LK_ZeroCenterLayer(&TestFeature, &ZeroCenterParameter);//H1
	//--------------------------------DWT OUTPUT		
DWT_Counter=DWT->CYCCNT;	printf_s("  %d\r\n",DWT_Counter);		
//--------------------------------DWT END		
			
	
		
//		LK_ConvReluPoolLayer(&TestFeature,&Conv1Kernel,&H2);
//		LK_FullyConnectLayer(&FC, &H2,	&H3);
		//LK_Softmax(&h3[0], 10);
		//LK_SoftmaxLayer(&H3);
		//LK_displayMatrix(&h3[0], 10, 1, "h3");
//		maxofMatrix(&h3[0], 10);
		//printf_s("  label: %f result: %d	\r\n", LABLE,maxofMatrix(&h3[0], 10));
		//LK_CheckResultLayer(&labelFILE, maxofMatrix(&h3[0], 10),&ERRORCOUNT);	
	}
	
//printf_s("   Error: %d", (ERRORCOUNT));

}

void Model_CNN_1_1_int()  //float parameter, float computation 
{
	LK_Accuarcy_Data Test_feature[784];
	 LK_Data TestFeature = { .W = 28,.H = 28,.D = 1,.Size = 284,.Matrix = &Test_feature[0] };

	LK_FILE FeaturesFILE;
	LK_OpenFile(&FeaturesFILE, "DataSet/MNIST_train_features_60000_784.lki");  //MNIST_train_features_60000_784  MNIST_test_features_10000_784

	LK_FILE labelFILE;
	LK_OpenFile(&labelFILE, "DataSet/MNIST_train_label_60000_1.lki");   //MNIST_train_label_60000_1  MNIST_test_label_10000_1

	//ImageInput: Zerocenter
	LK_Accuarcy_Data ZeroCenter_Parameters[784];
	 LK_Data ZeroCenterParameter = { .W = 28,.H = 28,.D = 1,.Size = 784,.Matrix = &ZeroCenter_Parameters[0] };
	LK_ReadData("CNN_ZcCoReSuFuSm/Zc.lki", &ZeroCenter_Parameters[0], 784);

	//Conv Relu MaxPoolling
	LK_Accuarcy_Data C1K[6][5][5];
	LK_Accuarcy_Data C1B[6];
	 LK_Kernel Conv1Kernel = { .W = 5,.H = 5,.D = 6,.Matrix = &C1K[0][0][0],.Bias = &C1B[0] ,.KernelSize = 25 };
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K1.lki", &C1K[0][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K2.lki", &C1K[1][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K3.lki", &C1K[2][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K4.lki", &C1K[3][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K5.lki", &C1K[4][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1K6.lki", &C1K[5][0][0], 5 * 5);
	LK_ReadData("CNN_ZcCoReSuFuSm/C1B.lki", &C1B[0], 6);
	LK_Accuarcy_Calculate h2[6][12][12];
	 LK_Matrix H2 = { .W = 12,.H = 12,.D = 6,.Size = 864,.Matrix = &h2[0][0][0] };



	LK_Accuarcy F5W[10][864];
	LK_Accuarcy F5B[10];
	LK_ReadData("CNN_ZcCoReSuFuSm/F5W.lki", &F5W[0][0], 864 * 10);
	LK_ReadData("CNN_ZcCoReSuFuSm/F5B.lki", &F5B[0], 10);
	 LK_Kernel FC = { .W = 864,.H = 10,.D = 1,.Matrix = &F5W[0][0],.Bias = &F5B[0] ,.KernelSize = 25 };

	LK_Accuarcy_Calculate h3[10];
	 LK_Matrix H3 = { .W = 1,.H = 10,.D = 1,.Size = 10,.Matrix = &h3[0] };



	int index = 10000;
	int ERRORCOUNT = 0;
	while (index--)
	{
		LK_ReadDataLayer(&TestFeature, &FeaturesFILE);//H0

//--------------------------------DWT REST
uint32_t DWT_Counter;
DWT->CYCCNT = 0;   // sub 6
 DWT->CPICNT = 0;   // sub 2 
 DWT->EXCCNT = 0;	  // sub 0
 DWT->SLEEPCNT = 0; // sub 0
 DWT->LSUCNT = 0;		// sub 0
 DWT->FOLDCNT = 0;	// sub 0
//--------------------------------DWT			
		
		LK_ZeroCenterLayer(&TestFeature, &ZeroCenterParameter);//H1
//--------------------------------DWT OUTPUT		
DWT_Counter=DWT->CYCCNT;	printf_s("  %d\r\n",DWT_Counter);		
//--------------------------------DWT END		

		
//		LK_ConvReluPoolLayer(&TestFeature, &Conv1Kernel, &H2);
		//LK_displayMatrix3D(&h2[0][0][0], 6, 12, 12, "h2");
//		LK_FullyConnectLayer(&FC, &H2, &H3);
		//LK_displayMatrix(&h3[0], 10, 1, "h3+b");
		//LK_Softmax(&h3[0], 10);
		//LK_SoftmaxLayer(&H3);
		//LK_displayMatrix(&h3[0], 10, 1, "h3");
		//printf_s("%d	\r\n", maxofMatrix(&h3[0], 10));
//	LK_CheckResultLayer(&labelFILE, maxofMatrix(&h3[0], 10), &ERRORCOUNT);

	}
	printf_s("Error: %d", (ERRORCOUNT));
	getchar();
}
 
int main(void)
{
	
	
	
	    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk; 	  	// enable trace
      DWT->LAR = 0xC5ACCE55; 																// <-- added unlock access to DWT (ITM, etc.)registers 
      DWT->CYCCNT = 0;																			// clear DWT cycle counter
      DWT->CTRL |= 																					// enable DWT cycle counter
										DWT_CTRL_CYCCNTENA_Msk|				//DWT->CYCCNT;
										DWT_CTRL_CPIEVTENA_Msk|				//DWT->CPICNT;		// counts cycles per instruction
										DWT_CTRL_EXCEVTENA_Msk|				//DWT->EXCCNT;		// counts cycles during ISR entry and return
										DWT_CTRL_SLEEPEVTENA_Msk|			//DWT->SLEEPCNT;
										DWT_CTRL_LSUEVTENA_Msk|				//DWT->LSUCNT;
										DWT_CTRL_FOLDEVTENA_Msk;			//DWT->FOLDCNT;									
	
  SCB_EnableICache();
  SCB_EnableDCache();
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_SDMMC1_SD_Init();
	testSD_UART();
	
//Model_CNN_ICRSF();
Model_CNN_1_1();
 //Model_CNN_1_1_int();
 
 
 DWT->CYCCNT = 0;   // sub 6
 DWT->CPICNT = 0;   // sub 2 
 DWT->EXCCNT = 0;	  // sub 0
 DWT->SLEEPCNT = 0; // sub 0
 DWT->LSUCNT = 0;		// sub 0
 DWT->FOLDCNT = 0;	// sub 0
 
 
 

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
