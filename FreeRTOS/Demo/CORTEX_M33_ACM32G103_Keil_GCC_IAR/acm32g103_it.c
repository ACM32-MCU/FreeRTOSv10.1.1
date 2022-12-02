/******************************************************************************
*@file  : acm32g103_it.c
*@brief : Main Interrupt Service Routines
*           This file provides template for all exceptions handler and
*           peripherals interrupt service routine.
******************************************************************************/

#include "hal.h"

extern void xPortSysTickHandler(void);
void SVC_Handler(void)
{
    __asm volatile
    ( 
    "   B vPortSVCHandler\n"
    );
}

void PendSV_Handler(void)
{
    __asm volatile
    ( 
    "   B xPortPendSVHandler\n"
    );
}

void SysTick_Handler(void)
{
    xPortSysTickHandler();
    HAL_IncTick();
}