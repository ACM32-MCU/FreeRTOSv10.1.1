/*
 * FreeRTOS Kernel V10.1.1
 * Copyright (C) 2018 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */


/*
 * This project contains an application demonstrating the use of the 
 * FreeRTOS.org mini real time scheduler on the Luminary Micro LM3S811 Eval
 * board.  See http://www.FreeRTOS.org for more information.
 *
 * main() simply sets up the hardware, creates all the demo application tasks, 
 * then starts the scheduler.  http://www.freertos.org/a00102.html provides
 * more information on the standard demo tasks. 
 *
 * In addition to a subset of the standard demo application tasks, main.c also
 * defines the following tasks: 
 *
 * + A 'Print' task.  The print task is the only task permitted to access the
 * UART - thus ensuring mutual exclusion and consistent access to the resource.
 * Other tasks do not access the UART directly, but instead send the text they
 * wish to display to the print task.  The print task spends most of its time
 * blocked - only waking when a message is queued for display.
 *
 * + A 'check' task.  The check task only executes every five seconds but has a
 * high priority so is guaranteed to get processor time.  Its function is to
 * check that all the other tasks are still operational and that no errors have
 * been detected at any time.  If no errors have every been detected 'PASS' is
 * written to the display (via the print task) - if an error has ever been
 * detected the message is changed to 'FAIL'.  The position of the message is
 * changed for each write.
 */



/* Environment includes. */
#include "ACM32Fxx_HAL.h"

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

/* Demo app includes. */
#include "integer.h"
#include "PollQ.h"
#include "semtest.h"
#include "BlockQ.h"

/* Delay between cycles of the 'check' task. */
#define mainCHECK_DELAY						( ( TickType_t ) 5000 / portTICK_PERIOD_MS )

/* UART configuration - note this does not use the FIFO so is not very 
efficient. */
#define mainBAUD_RATE				( 115200 )

/* Demo task priorities. */
#define mainQUEUE_POLL_PRIORITY		( tskIDLE_PRIORITY + 2 )
#define mainCHECK_TASK_PRIORITY		( tskIDLE_PRIORITY + 3 )
#define mainSEM_TEST_PRIORITY		( tskIDLE_PRIORITY + 1 )
#define mainBLOCK_Q_PRIORITY		( tskIDLE_PRIORITY + 2 )

/* Misc. */
#define mainQUEUE_SIZE				( 3 )
#define mainDEBOUNCE_DELAY			( ( TickType_t ) 150 / portTICK_PERIOD_MS )
#define mainNO_DELAY				( ( TickType_t ) 0 )
/*
 * Configure the processor and peripherals for this demo. 
 */
static void prvSetupHardware( void );

/*
 * The 'check' task, as described at the top of this file.
 */
static void vCheckTask( void *pvParameters );

/*
 * The task that controls access to the LCD.
 */
static void vPrintTask( void *pvParameter );

/* String that is transmitted on the UART. */
static volatile char *pcNextChar;
UART_HandleTypeDef UART1_Handle;
static void uart_init(void);

/* The queue used to send strings to the print task for display on the LCD. */
QueueHandle_t xPrintQueue;
/*-----------------------------------------------------------*/

int main( void )
{
	/* Configure the clocks, UART and GPIO. */
	prvSetupHardware();

	/* Create the queue used to pass message to vPrintTask. */
	xPrintQueue = xQueueCreate( mainQUEUE_SIZE, sizeof( char * ) );

	/* Start the standard demo tasks. */
	vStartIntegerMathTasks( tskIDLE_PRIORITY );
	vStartPolledQueueTasks( mainQUEUE_POLL_PRIORITY );
	vStartSemaphoreTasks( mainSEM_TEST_PRIORITY );
	vStartBlockingQueueTasks( mainBLOCK_Q_PRIORITY );

	/* Start the tasks defined within the file. */
	xTaskCreate( vCheckTask, "Check", configMINIMAL_STACK_SIZE, NULL, mainCHECK_TASK_PRIORITY, NULL );
	xTaskCreate( vPrintTask, "Print", configMINIMAL_STACK_SIZE, NULL, mainCHECK_TASK_PRIORITY - 1, NULL );

	/* Start the scheduler. */
	vTaskStartScheduler();

	/* Will only get here if there was insufficient heap to start the 
	scheduler. */

	return 0;
}
/*-----------------------------------------------------------*/

static void vCheckTask( void *pvParameters )
{
portBASE_TYPE xErrorOccurred = pdFALSE;
TickType_t xLastExecutionTime;
const char *pcPassMessage = "PASS\r\n";
const char *pcFailMessage = "FAIL\r\n";

	/* Initialise xLastExecutionTime so the first call to vTaskDelayUntil()
	works correctly. */
	xLastExecutionTime = xTaskGetTickCount();

	for( ;; )
	{
		/* Perform this check every mainCHECK_DELAY milliseconds. */
		vTaskDelayUntil( &xLastExecutionTime, mainCHECK_DELAY );

		/* Has an error been found in any task? */

		if( xAreIntegerMathsTaskStillRunning() != pdTRUE )
		{
			xErrorOccurred = pdTRUE;
		}
	
		if( xArePollingQueuesStillRunning() != pdTRUE )
		{
			xErrorOccurred = pdTRUE;
		}
	
		if( xAreSemaphoreTasksStillRunning() != pdTRUE )
		{
			xErrorOccurred = pdTRUE;
		}

		if( xAreBlockingQueuesStillRunning() != pdTRUE )
		{
			xErrorOccurred = pdTRUE;
		}

		/* Send either a pass or fail message.  If an error is found it is
		never cleared again.  We do not write directly to the LCD, but instead
		queue a message for display by the print task. */
		if( xErrorOccurred == pdTRUE )
		{
			xQueueSend( xPrintQueue, &pcFailMessage, portMAX_DELAY );
		}
		else
		{
			xQueueSend( xPrintQueue, &pcPassMessage, portMAX_DELAY );
		}
	}
}
/*-----------------------------------------------------------*/

static void prvSetupHardware( void )
{
	/* Setup the System. */
	System_Init(); 

	/* Init the UART. Enable Tx interrupts. */
	uart_init();
}
/*-----------------------------------------------------------*/

void vUART_IRQHandler(void)
{
	UART_HandleTypeDef *uart = &UART1_Handle;
	
	if(uart->Instance->IE & UART_IE_RXI)
	{
			if(uart->Instance->RIS & UART_RIS_RXI)
			{
					/* read UART_DR and clear RXI flag */
			}
	}
 
  if (uart->Instance->IE & UART_IE_TXI && \
				uart->Instance->RIS & UART_RIS_TXI)
  {
    /* Clear TXI Status */
    uart->Instance->ICR = UART_ICR_TXI;
		
    /* Send the next character in the string.  We are not using the FIFO. */
		if( *pcNextChar != NULL )
		{
			uart->Instance->DR = *pcNextChar;
			pcNextChar++;
		}
  }
}

/*-----------------------------------------------------------*/

static void vPrintTask( void *pvParameters )
{
	char *pcMessage;
	UART_HandleTypeDef *uart = &UART1_Handle;

	for( ;; )
	{
		/* Wait for a message to arrive. */
		xQueueReceive( xPrintQueue, &pcMessage, portMAX_DELAY );

		pcNextChar = pcMessage;
		/* Write the message to the UART. */
		if( !(uart->Instance->FR & UART_FR_TXFF) )	//Tx FIFO/UART_DR not full
		{
			uart->Instance->DR = *pcNextChar;
			pcNextChar++;
		}
		/* Remain data will be sent in UART ISR */
		
	}
}

void uart_init(void)
{
		UART_HandleTypeDef *uart;

		uart = &UART1_Handle;
		uart->Instance        = UART1;    
    uart->Init.BaudRate   = 115200; 
    uart->Init.WordLength = UART_WORDLENGTH_8B;
    uart->Init.StopBits   = UART_STOPBITS_1;
    uart->Init.Parity     = UART_PARITY_NONE;
    uart->Init.Mode       = UART_MODE_TX_RX_DEBUG;
    uart->Init.HwFlowCtl  = UART_HWCONTROL_NONE;
		uart->Init.Mode       = UART_MODE_TX_RX_DEBUG;
    uart->Init.HwFlowCtl  = UART_HWCONTROL_NONE;
	
    HAL_UART_Init(uart);
	
	  /* Enable TX interrupt */
		uart->Instance->IE |= UART_IE_TXI;
}
