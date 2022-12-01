/******************************************************************************
*@file  : acm32g103_it.c
*@brief : Main Interrupt Service Routines
*           This file provides template for all exceptions handler and
*           peripherals interrupt service routine.
******************************************************************************/

#include "hal.h"

void SVC_Handler(void)
{
    __asm volatile
    ( 
    "   B vPortSVCHandler"
    );
}

void PendSV_Handler(void)
{
    __asm volatile
    ( 
    "   B xPortPendSVHandler"
    );
}

void SysTick_Handler(void)
{
    __asm volatile
    ( 
    "   B xPortSysTickHandler"
    );
}

HAL_StatusTypeDef HAL_InitTick(uint32_t intPrio, uint32_t msPeriod)
{
    return HAL_OK;
}