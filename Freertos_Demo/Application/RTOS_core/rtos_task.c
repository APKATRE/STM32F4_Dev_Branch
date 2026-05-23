/*
 * rtos_task.c
 *
 *  Created on: May 10, 2026
 *      Author: Aditya
 */

#include "rtos_task.h"
#include "main.h"

void StartDefaultTask(void *argument);
void StartTask02(void *argument);
void start_schedular(void);

osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for myTask02 */
osThreadId_t myTask02Handle;
const osThreadAttr_t myTask02_attributes = {
  .name = "myTask02",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};



void start_schedular(void)
{
	 osKernelInitialize();

	  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

	  /* creation of myTask02 */
	  myTask02Handle = osThreadNew(StartTask02, NULL, &myTask02_attributes);

	  osKernelStart();
	  while(1)
	  {

	  }
}


void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN 5 */
  /* Infinite loop */
  for(;;)
  {
	  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
	  printf("In StartDefaultTask \r\n");
    osDelay(100);
  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartTask02 */
/**
* @brief Function implementing the myTask02 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTask02 */
void StartTask02(void *argument)
{
  /* USER CODE BEGIN StartTask02 */
  /* Infinite loop */
  for(;;)
  {
	  printf("In Task2 \r\n");
	  osDelayUntil(550);
  }
  /* USER CODE END StartTask02 */
}
