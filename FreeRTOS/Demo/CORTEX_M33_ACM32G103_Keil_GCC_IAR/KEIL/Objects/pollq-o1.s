	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m33
	.eabi_attribute	6, 17	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 3	@ Tag_THUMB_ISA_use
	.fpu	fpv5-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	46, 1	@ Tag_DSP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 2	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 1	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"PollQ.c"
	.file	1 "D:\\Workspace\\Git\\AisinoChip\\FreeRTOSv10.1.1\\FreeRTOS\\Demo\\CORTEX_M33_ACM32G103_Keil_GCC_IAR\\KEIL" "../../../Source/include\\queue.h"
	.file	2 "D:\\Workspace\\Git\\AisinoChip\\FreeRTOSv10.1.1\\FreeRTOS\\Demo\\CORTEX_M33_ACM32G103_Keil_GCC_IAR\\KEIL" "../../Common/Minimal/PollQ.c"
	.file	3 "D:\\Workspace\\Git\\AisinoChip\\FreeRTOSv10.1.1\\FreeRTOS\\Demo\\CORTEX_M33_ACM32G103_Keil_GCC_IAR\\KEIL" "../../../Source/portable/GCC/ARM_CM4F\\portmacro.h"
	.file	4 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include" "stdint.h"
	.file	5 "D:\\Workspace\\Git\\AisinoChip\\FreeRTOSv10.1.1\\FreeRTOS\\Demo\\CORTEX_M33_ACM32G103_Keil_GCC_IAR\\KEIL" "../../../Source/include/task.h"
	.section	.text.vStartPolledQueueTasks,"ax",%progbits
	.hidden	vStartPolledQueueTasks          @ -- Begin function vStartPolledQueueTasks
	.globl	vStartPolledQueueTasks
	.p2align	2
	.type	vStartPolledQueueTasks,%function
	.code	16                              @ @vStartPolledQueueTasks
	.thumb_func
vStartPolledQueueTasks:
.Lfunc_begin0:
	.loc	2 89 0                          @ ../../Common/Minimal/PollQ.c:89:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: vStartPolledQueueTasks:uxPriority <- $r0
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r6, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 24
	mov	r4, r0
.Ltmp0:
	@DEBUG_VALUE: vStartPolledQueueTasks:uxPriority <- $r4
	@DEBUG_VALUE: vStartPolledQueueTasks:uxPriority <- $r4
	.loc	2 93 17 prologue_end            @ ../../Common/Minimal/PollQ.c:93:17
	movs	r0, #10
	movs	r1, #2
	movs	r2, #0
	movs	r6, #0
	bl	xQueueGenericCreate
	.loc	2 93 15 is_stmt 0               @ ../../Common/Minimal/PollQ.c:93:15
	movw	r1, :lower16:vStartPolledQueueTasks.xPolledQueue
	movt	r1, :upper16:vStartPolledQueueTasks.xPolledQueue
	str	r0, [r1]
	.loc	2 95 6 is_stmt 1                @ ../../Common/Minimal/PollQ.c:95:6
	cbz	r0, .LBB0_2
.Ltmp1:
@ %bb.1:
	@DEBUG_VALUE: vStartPolledQueueTasks:uxPriority <- $r4
	.loc	2 106 3                         @ ../../Common/Minimal/PollQ.c:106:3
	movw	r5, :lower16:vStartPolledQueueTasks.xPolledQueue
	movw	r0, :lower16:vPolledQueueConsumer
	movt	r5, :upper16:vStartPolledQueueTasks.xPolledQueue
	movt	r0, :upper16:vPolledQueueConsumer
	adr	r1, .LCPI0_0
	movs	r2, #64
	mov	r3, r5
	str	r4, [sp]
	str	r6, [sp, #4]
	bl	xTaskCreate
	.loc	2 107 3                         @ ../../Common/Minimal/PollQ.c:107:3
	movw	r0, :lower16:vPolledQueueProducer
	movt	r0, :upper16:vPolledQueueProducer
	adr	r1, .LCPI0_1
	movs	r2, #64
	mov	r3, r5
	str	r4, [sp]
	str	r6, [sp, #4]
	bl	xTaskCreate
.Ltmp2:
.LBB0_2:
	@DEBUG_VALUE: vStartPolledQueueTasks:uxPriority <- $r4
	.loc	2 109 1                         @ ../../Common/Minimal/PollQ.c:109:1
	add	sp, #8
	pop	{r4, r5, r6, pc}
.Ltmp3:
	.p2align	2
@ %bb.3:
	.loc	2 0 1 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:1
.LCPI0_0:
.L.str:
	.asciz	"QConsNB"
.LCPI0_1:
.L.str.1:
	.asciz	"QProdNB"
.Lfunc_end0:
	.size	vStartPolledQueueTasks, .Lfunc_end0-vStartPolledQueueTasks
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.vPolledQueueConsumer,"ax",%progbits
	.p2align	2                               @ -- Begin function vPolledQueueConsumer
	.type	vPolledQueueConsumer,%function
	.code	16                              @ @vPolledQueueConsumer
	.thumb_func
vPolledQueueConsumer:
.Lfunc_begin1:
	.loc	2 152 0 is_stmt 1               @ ../../Common/Minimal/PollQ.c:152:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r0
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	movw	r8, :lower16:xPollingConsumerCount
	mov	r4, r0
.Ltmp4:
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	movs	r7, #0
	add.w	r5, sp, #6
	movt	r8, :upper16:xPollingConsumerCount
.Ltmp5:
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- 0
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- 0
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	.loc	2 154 12 prologue_end           @ ../../Common/Minimal/PollQ.c:154:12
	movs	r6, #0
	b	.LBB1_2
.Ltmp6:
	.p2align	2
.LBB1_1:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- $r0
	.loc	2 0 0 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:0
	mov	r7, r0
.Ltmp7:
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	movs	r6, #1
.Ltmp8:
	.loc	2 186 20 is_stmt 1              @ ../../Common/Minimal/PollQ.c:186:20
	adds	r7, r0, #1
.Ltmp9:
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	.loc	2 159 34                        @ ../../Common/Minimal/PollQ.c:159:34
	ldr	r0, [r4]
	.loc	2 159 10 is_stmt 0              @ ../../Common/Minimal/PollQ.c:159:10
	bl	uxQueueMessagesWaiting
	.loc	2 159 3                         @ ../../Common/Minimal/PollQ.c:159:3
	cbz	r0, .LBB1_8
.Ltmp10:
@ %bb.3:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	.loc	2 161 23 is_stmt 1              @ ../../Common/Minimal/PollQ.c:161:23
	ldr	r0, [r4]
.Ltmp11:
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 161 8 is_stmt 0               @ ../../Common/Minimal/PollQ.c:161:8
	mov	r1, r5
	movs	r2, #0
	bl	xQueueReceive
.Ltmp12:
	.loc	2 161 8                         @ ../../Common/Minimal/PollQ.c:161:8
	cmp	r0, #1
	bne	.LBB1_2
.Ltmp13:
@ %bb.4:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 163 9 is_stmt 1               @ ../../Common/Minimal/PollQ.c:163:9
	ldrh.w	r0, [sp, #6]
.Ltmp14:
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- $r0
	.loc	2 163 16 is_stmt 0              @ ../../Common/Minimal/PollQ.c:163:16
	uxth	r1, r7
.Ltmp15:
	.loc	2 163 9                         @ ../../Common/Minimal/PollQ.c:163:9
	cmp	r0, r1
	bne	.LBB1_1
.Ltmp16:
@ %bb.5:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- $r0
	.loc	2 175 10 is_stmt 1              @ ../../Common/Minimal/PollQ.c:175:10
	cbz	r6, .LBB1_7
.Ltmp17:
@ %bb.6:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- $r0
	.loc	2 0 10 is_stmt 0                @ ../../Common/Minimal/PollQ.c:0:10
	movs	r6, #1
.Ltmp18:
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	.loc	2 186 20 is_stmt 1              @ ../../Common/Minimal/PollQ.c:186:20
	adds	r7, #1
.Ltmp19:
	.loc	2 0 20 is_stmt 0                @ ../../Common/Minimal/PollQ.c:0:20
	b	.LBB1_2
.Ltmp20:
.LBB1_7:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usData <- $r0
	.loc	2 179 7 is_stmt 1               @ ../../Common/Minimal/PollQ.c:179:7
	bl	vPortEnterCritical
.Ltmp21:
	.loc	2 180 29                        @ ../../Common/Minimal/PollQ.c:180:29
	ldr.w	r0, [r8]
	adds	r0, #1
	str.w	r0, [r8]
	.loc	2 181 7                         @ ../../Common/Minimal/PollQ.c:181:7
	bl	vPortExitCritical
	movs	r6, #0
.Ltmp22:
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	.loc	2 186 20                        @ ../../Common/Minimal/PollQ.c:186:20
	adds	r7, #1
.Ltmp23:
	.loc	2 0 20 is_stmt 0                @ ../../Common/Minimal/PollQ.c:0:20
	b	.LBB1_2
.Ltmp24:
.LBB1_8:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueConsumer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueConsumer:usExpectedValue <- $r7
	@DEBUG_VALUE: vPolledQueueConsumer:xError <- $r6
	.loc	2 192 3 is_stmt 1               @ ../../Common/Minimal/PollQ.c:192:3
	movs	r0, #180
	bl	vTaskDelay
	b	.LBB1_2
.Ltmp25:
.Lfunc_end1:
	.size	vPolledQueueConsumer, .Lfunc_end1-vPolledQueueConsumer
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.vPolledQueueProducer,"ax",%progbits
	.p2align	2                               @ -- Begin function vPolledQueueProducer
	.type	vPolledQueueProducer,%function
	.code	16                              @ @vPolledQueueProducer
	.thumb_func
vPolledQueueProducer:
.Lfunc_begin2:
	.loc	2 113 0                         @ ../../Common/Minimal/PollQ.c:113:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r0
	.pad	#8
	sub	sp, #8
	.cfi_def_cfa_offset 8
	movw	r8, :lower16:xPollingProducerCount
	mov	r4, r0
.Ltmp26:
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	movs	r7, #0
.Ltmp27:
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- 0
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	add.w	r5, sp, #6
	movt	r8, :upper16:xPollingProducerCount
	movs	r6, #0
.Ltmp28:
	.loc	2 114 10 prologue_end           @ ../../Common/Minimal/PollQ.c:114:10
	strh.w	r7, [sp, #6]
.Ltmp29:
	@DEBUG_VALUE: vPolledQueueProducer:xError <- 0
	.p2align	2
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	.loc	2 122 8                         @ ../../Common/Minimal/PollQ.c:122:8
	ldr	r0, [r4]
.Ltmp30:
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	mov	r1, r5
	movs	r2, #0
	movs	r3, #0
	bl	xQueueGenericSend
.Ltmp31:
	.loc	2 122 8 is_stmt 0               @ ../../Common/Minimal/PollQ.c:122:8
	cmp	r0, #1
	bne	.LBB2_5
.Ltmp32:
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 130 9 is_stmt 1               @ ../../Common/Minimal/PollQ.c:130:9
	cbnz	r6, .LBB2_4
.Ltmp33:
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 134 6                         @ ../../Common/Minimal/PollQ.c:134:6
	bl	vPortEnterCritical
	.loc	2 135 28                        @ ../../Common/Minimal/PollQ.c:135:28
	ldr.w	r0, [r8]
	adds	r0, #1
	str.w	r0, [r8]
	.loc	2 136 6                         @ ../../Common/Minimal/PollQ.c:136:6
	bl	vPortExitCritical
.Ltmp34:
.LBB2_4:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 140 12                        @ ../../Common/Minimal/PollQ.c:140:12
	ldrh.w	r0, [sp, #6]
.Ltmp35:
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- $r0
	adds	r0, #1
.Ltmp36:
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- $r0
	strh.w	r0, [sp, #6]
	b	.LBB2_6
.Ltmp37:
	.p2align	2
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:usValue <- [DW_OP_plus_uconst 6, DW_OP_deref] $sp
	.loc	2 0 12 is_stmt 0                @ ../../Common/Minimal/PollQ.c:0:12
	movs	r6, #1
.Ltmp38:
.LBB2_6:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	.loc	2 119 56 is_stmt 1              @ ../../Common/Minimal/PollQ.c:119:56
	adds	r7, #1
.Ltmp39:
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	.loc	2 119 3 is_stmt 0               @ ../../Common/Minimal/PollQ.c:119:3
	cmp	r7, #3
	bne	.LBB2_1
.Ltmp40:
@ %bb.7:                                @   in Loop: Header=BB2_1 Depth=1
	@DEBUG_VALUE: vPolledQueueProducer:xLoop <- $r7
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	@DEBUG_VALUE: vPolledQueueProducer:pvParameters <- $r4
	@DEBUG_VALUE: vPolledQueueProducer:xError <- $r6
	.loc	2 146 3 is_stmt 1               @ ../../Common/Minimal/PollQ.c:146:3
	movs	r0, #200
	bl	vTaskDelay
	movs	r7, #0
.Ltmp41:
	.loc	2 0 3 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:3
	b	.LBB2_1
.Ltmp42:
.Lfunc_end2:
	.size	vPolledQueueProducer, .Lfunc_end2-vPolledQueueProducer
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.xArePollingQueuesStillRunning,"ax",%progbits
	.hidden	xArePollingQueuesStillRunning   @ -- Begin function xArePollingQueuesStillRunning
	.globl	xArePollingQueuesStillRunning
	.p2align	2
	.type	xArePollingQueuesStillRunning,%function
	.code	16                              @ @xArePollingQueuesStillRunning
	.thumb_func
xArePollingQueuesStillRunning:
.Lfunc_begin3:
	.loc	2 199 0 is_stmt 1               @ ../../Common/Minimal/PollQ.c:199:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.loc	2 206 8 prologue_end            @ ../../Common/Minimal/PollQ.c:206:8
	movw	r1, :lower16:xPollingConsumerCount
	movt	r1, :upper16:xPollingConsumerCount
	ldr	r0, [r1]
	movw	r3, :lower16:xPollingProducerCount
	mov.w	r2, #0
	movt	r3, :upper16:xPollingProducerCount
	.loc	2 206 54 is_stmt 0              @ ../../Common/Minimal/PollQ.c:206:54
	cbz	r0, .LBB3_2
@ %bb.1:
	.loc	2 207 5 is_stmt 1               @ ../../Common/Minimal/PollQ.c:207:5
	ldr	r0, [r3]
	.loc	2 207 27 is_stmt 0              @ ../../Common/Minimal/PollQ.c:207:27
	cmp	r0, #0
	it	ne
	movne	r0, #1
	b	.LBB3_3
.LBB3_2:
	.loc	2 0 0                           @ ../../Common/Minimal/PollQ.c:0:0
	movs	r0, #0
.Ltmp43:
.LBB3_3:
	@DEBUG_VALUE: xArePollingQueuesStillRunning:xReturn <- $r0
	.loc	2 219 24 is_stmt 1              @ ../../Common/Minimal/PollQ.c:219:24
	str	r2, [r1]
	.loc	2 220 24                        @ ../../Common/Minimal/PollQ.c:220:24
	str	r2, [r3]
	.loc	2 222 2                         @ ../../Common/Minimal/PollQ.c:222:2
	bx	lr
.Ltmp44:
.Lfunc_end3:
	.size	xArePollingQueuesStillRunning, .Lfunc_end3-xArePollingQueuesStillRunning
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	vStartPolledQueueTasks.xPolledQueue,%object @ @vStartPolledQueueTasks.xPolledQueue
	.section	.bss.vStartPolledQueueTasks.xPolledQueue,"aw",%nobits
	.p2align	2
vStartPolledQueueTasks.xPolledQueue:
	.long	0
	.size	vStartPolledQueueTasks.xPolledQueue, 4

	.type	xPollingConsumerCount,%object   @ @xPollingConsumerCount
	.section	.bss.xPollingConsumerCount,"aw",%nobits
	.p2align	2
xPollingConsumerCount:
	.long	0                               @ 0x0
	.size	xPollingConsumerCount, 4

	.type	xPollingProducerCount,%object   @ @xPollingProducerCount
	.section	.bss.xPollingProducerCount,"aw",%nobits
	.p2align	2
xPollingProducerCount:
	.long	0                               @ 0x0
	.size	xPollingProducerCount, 4

	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	-1
	.long	.Lfunc_begin0                   @   base address
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Lfunc_begin1-.Lfunc_begin1
	.long	.Ltmp4-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp4-.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc2:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp5-.Lfunc_begin1
	.long	.Ltmp6-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	48                              @ DW_OP_lit0
	.long	.Ltmp6-.Lfunc_begin1
	.long	.Ltmp8-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.long	.Ltmp9-.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc3:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp5-.Lfunc_begin1
	.long	.Ltmp6-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	48                              @ DW_OP_lit0
	.long	.Ltmp6-.Lfunc_begin1
	.long	.Ltmp19-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.long	.Ltmp20-.Lfunc_begin1
	.long	.Ltmp23-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.long	.Ltmp24-.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc4:
	.long	-1
	.long	.Lfunc_begin1                   @   base address
	.long	.Ltmp6-.Lfunc_begin1
	.long	.Ltmp9-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp11-.Lfunc_begin1
	.long	.Ltmp14-.Lfunc_begin1
	.short	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	6                               @ 6
	.long	.Ltmp14-.Lfunc_begin1
	.long	.Ltmp21-.Lfunc_begin1
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc5:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Lfunc_begin2-.Lfunc_begin2
	.long	.Ltmp26-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp26-.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc6:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp27-.Lfunc_begin2
	.long	.Ltmp29-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	48                              @ DW_OP_lit0
	.long	.Ltmp30-.Lfunc_begin2
	.long	.Ltmp35-.Lfunc_begin2
	.short	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	6                               @ 6
	.long	.Ltmp35-.Lfunc_begin2
	.long	.Ltmp37-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp37-.Lfunc_begin2
	.long	.Ltmp38-.Lfunc_begin2
	.short	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	6                               @ 6
	.long	0
	.long	0
.Ldebug_loc7:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp29-.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc8:
	.long	-1
	.long	.Lfunc_begin2                   @   base address
	.long	.Ltmp29-.Lfunc_begin2
	.long	.Ltmp41-.Lfunc_begin2
	.short	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc9:
	.long	-1
	.long	.Lfunc_begin3                   @   base address
	.long	.Ltmp43-.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	14                              @ DW_FORM_strp
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	16                              @ DW_AT_stmt_list
	.byte	6                               @ DW_FORM_data4
	.byte	27                              @ DW_AT_comp_dir
	.byte	14                              @ DW_FORM_strp
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	85                              @ DW_AT_ranges
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_FORM_block1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	6                               @ DW_FORM_data4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	60                              @ DW_AT_declaration
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	6                               @ DW_FORM_data4
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	1                               @ DW_FORM_addr
	.byte	64                              @ DW_AT_frame_base
	.byte	10                              @ DW_FORM_block1
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	12                              @ DW_FORM_flag
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	12                              @ DW_FORM_flag
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	3                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x1d8 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string21                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	1                               @ DW_AT_external
	.byte	3                               @ Abbrev [3] 0x39:0x11 DW_TAG_variable
	.long	.Linfo_string3                  @ DW_AT_name
	.long	90                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	90                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	vStartPolledQueueTasks.xPolledQueue
	.byte	4                               @ Abbrev [4] 0x4a:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0                    @ DW_AT_location
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.long	169                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x5a:0xb DW_TAG_typedef
	.long	101                             @ DW_AT_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x65:0x5 DW_TAG_pointer_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x6a:0x6 DW_TAG_structure_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	1                               @ DW_AT_declaration
	.byte	3                               @ Abbrev [3] 0x70:0x11 DW_TAG_variable
	.long	.Linfo_string6                  @ DW_AT_name
	.long	129                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xPollingConsumerCount
	.byte	8                               @ Abbrev [8] 0x81:0x5 DW_TAG_volatile_type
	.long	134                             @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0x86:0xb DW_TAG_typedef
	.long	145                             @ DW_AT_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x91:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x98:0x11 DW_TAG_variable
	.long	.Linfo_string9                  @ DW_AT_name
	.long	129                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xPollingProducerCount
	.byte	5                               @ Abbrev [5] 0xa9:0xb DW_TAG_typedef
	.long	180                             @ DW_AT_type
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xb4:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0xbb:0xb DW_TAG_typedef
	.long	198                             @ DW_AT_type
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xc6:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xcd:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0xd4:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0xd5:0x5 DW_TAG_pointer_type
	.long	218                             @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0xda:0xb DW_TAG_typedef
	.long	229                             @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0xe5:0x5 DW_TAG_pointer_type
	.long	234                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0xea:0x6 DW_TAG_structure_type
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	1                               @ DW_AT_declaration
	.byte	5                               @ Abbrev [5] 0xf0:0xb DW_TAG_typedef
	.long	205                             @ DW_AT_type
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0xfb:0x5 DW_TAG_pointer_type
	.long	90                              @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0x100:0xb DW_TAG_typedef
	.long	267                             @ DW_AT_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x10b:0xb DW_TAG_typedef
	.long	278                             @ DW_AT_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x116:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0x11d:0x4f DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	4                               @ Abbrev [4] 0x12f:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1                    @ DW_AT_location
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.long	212                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x13e:0xf DW_TAG_variable
	.long	.Ldebug_loc2                    @ DW_AT_location
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	154                             @ DW_AT_decl_line
	.long	134                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x14d:0xf DW_TAG_variable
	.long	.Ldebug_loc3                    @ DW_AT_location
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.long	240                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x15c:0xf DW_TAG_variable
	.long	.Ldebug_loc4                    @ DW_AT_location
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.long	240                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x16c:0x4f DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	112                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	4                               @ Abbrev [4] 0x17e:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc5                    @ DW_AT_location
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	112                             @ DW_AT_decl_line
	.long	212                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x18d:0xf DW_TAG_variable
	.long	.Ldebug_loc6                    @ DW_AT_location
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	114                             @ DW_AT_decl_line
	.long	240                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x19c:0xf DW_TAG_variable
	.long	.Ldebug_loc7                    @ DW_AT_location
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.long	134                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x1ab:0xf DW_TAG_variable
	.long	.Ldebug_loc8                    @ DW_AT_location
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.long	134                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x1bb:0x27 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	198                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	134                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0x1d2:0xf DW_TAG_variable
	.long	.Ldebug_loc9                    @ DW_AT_location
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	200                             @ DW_AT_decl_line
	.long	134                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Component: ARM Compiler 6.15 Tool: armclang [5dd79400]" @ string offset=0
.Linfo_string1:
	.asciz	"../../Common/Minimal\\PollQ.c" @ string offset=55
.Linfo_string2:
	.asciz	"D:\\Workspace\\Git\\AisinoChip\\FreeRTOSv10.1.1\\FreeRTOS\\Demo\\CORTEX_M33_ACM32G103_Keil_GCC_IAR\\KEIL" @ string offset=84
.Linfo_string3:
	.asciz	"xPolledQueue"                  @ string offset=181
.Linfo_string4:
	.asciz	"QueueDefinition"               @ string offset=194
.Linfo_string5:
	.asciz	"QueueHandle_t"                 @ string offset=210
.Linfo_string6:
	.asciz	"xPollingConsumerCount"         @ string offset=224
.Linfo_string7:
	.asciz	"long int"                      @ string offset=246
.Linfo_string8:
	.asciz	"BaseType_t"                    @ string offset=255
.Linfo_string9:
	.asciz	"xPollingProducerCount"         @ string offset=266
.Linfo_string10:
	.asciz	"long unsigned int"             @ string offset=288
.Linfo_string11:
	.asciz	"UBaseType_t"                   @ string offset=306
.Linfo_string12:
	.asciz	"unsigned char"                 @ string offset=318
.Linfo_string13:
	.asciz	"uint8_t"                       @ string offset=332
.Linfo_string14:
	.asciz	"unsigned short"                @ string offset=340
.Linfo_string15:
	.asciz	"tskTaskControlBlock"           @ string offset=355
.Linfo_string16:
	.asciz	"TaskHandle_t"                  @ string offset=375
.Linfo_string17:
	.asciz	"uint16_t"                      @ string offset=388
.Linfo_string18:
	.asciz	"unsigned int"                  @ string offset=397
.Linfo_string19:
	.asciz	"uint32_t"                      @ string offset=410
.Linfo_string20:
	.asciz	"TickType_t"                    @ string offset=419
.Linfo_string21:
	.asciz	"vStartPolledQueueTasks"        @ string offset=430
.Linfo_string22:
	.asciz	"vPolledQueueConsumer"          @ string offset=453
.Linfo_string23:
	.asciz	"vPolledQueueProducer"          @ string offset=474
.Linfo_string24:
	.asciz	"xArePollingQueuesStillRunning" @ string offset=495
.Linfo_string25:
	.asciz	"uxPriority"                    @ string offset=525
.Linfo_string26:
	.asciz	"pvParameters"                  @ string offset=536
.Linfo_string27:
	.asciz	"xError"                        @ string offset=549
.Linfo_string28:
	.asciz	"usExpectedValue"               @ string offset=556
.Linfo_string29:
	.asciz	"usData"                        @ string offset=572
.Linfo_string30:
	.asciz	"usValue"                       @ string offset=579
.Linfo_string31:
	.asciz	"xLoop"                         @ string offset=587
.Linfo_string32:
	.asciz	"xReturn"                       @ string offset=593
	.ident	"Component: ARM Compiler 6.15 Tool: armclang [5dd79400]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
