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
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#32
	sub	sp, #32
	.cfi_def_cfa_offset 40
	str	r0, [sp, #28]
	movs	r0, #10
	movs	r1, #2
	movs	r2, #0
.Ltmp0:
	.loc	2 93 17 prologue_end            @ ../../Common/Minimal/PollQ.c:93:17
	bl	xQueueGenericCreate
	.loc	2 93 15 is_stmt 0               @ ../../Common/Minimal/PollQ.c:93:15
	movw	r1, :lower16:vStartPolledQueueTasks.xPolledQueue
	movt	r1, :upper16:vStartPolledQueueTasks.xPolledQueue
	str	r0, [r1]
.Ltmp1:
	.loc	2 95 6 is_stmt 1                @ ../../Common/Minimal/PollQ.c:95:6
	ldr	r0, [r1]
.Ltmp2:
	.loc	2 95 6 is_stmt 0                @ ../../Common/Minimal/PollQ.c:95:6
	cmp	r0, #0
	beq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
.Ltmp3:
	.loc	2 106 92 is_stmt 1              @ ../../Common/Minimal/PollQ.c:106:92
	ldr	r0, [sp, #28]
	.loc	2 106 3 is_stmt 0               @ ../../Common/Minimal/PollQ.c:106:3
	mov	r1, sp
	movs	r2, #0
	str	r2, [r1, #4]
	str	r0, [r1]
	movw	r0, :lower16:vPolledQueueConsumer
	movt	r0, :upper16:vPolledQueueConsumer
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r3, :lower16:vStartPolledQueueTasks.xPolledQueue
	movt	r3, :upper16:vStartPolledQueueTasks.xPolledQueue
	mov.w	r12, #64
	str	r2, [sp, #24]                   @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp, #20]                   @ 4-byte Spill
	str.w	r12, [sp, #16]                  @ 4-byte Spill
	bl	xTaskCreate
	.loc	2 107 92 is_stmt 1              @ ../../Common/Minimal/PollQ.c:107:92
	ldr	r1, [sp, #28]
	.loc	2 107 3 is_stmt 0               @ ../../Common/Minimal/PollQ.c:107:3
	mov	r2, sp
	ldr	r3, [sp, #24]                   @ 4-byte Reload
	str	r3, [r2, #4]
	str	r1, [r2]
	movw	r1, :lower16:vPolledQueueProducer
	movt	r1, :upper16:vPolledQueueProducer
	movw	r2, :lower16:.L.str.1
	movt	r2, :upper16:.L.str.1
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	bl	xTaskCreate
	.loc	2 108 2 is_stmt 1               @ ../../Common/Minimal/PollQ.c:108:2
	b	.LBB0_2
.Ltmp4:
.LBB0_2:
	.loc	2 109 1                         @ ../../Common/Minimal/PollQ.c:109:1
	add	sp, #32
	pop	{r7, pc}
.Ltmp5:
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
	.loc	2 152 0                         @ ../../Common/Minimal/PollQ.c:152:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#16
	sub	sp, #16
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	movs	r0, #0
.Ltmp6:
	.loc	2 153 18 prologue_end           @ ../../Common/Minimal/PollQ.c:153:18
	strh.w	r0, [sp, #8]
	.loc	2 154 12                        @ ../../Common/Minimal/PollQ.c:154:12
	str	r0, [sp, #4]
	.loc	2 156 2                         @ ../../Common/Minimal/PollQ.c:156:2
	b	.LBB1_1
.LBB1_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_2 Depth 2
.Ltmp7:
	.loc	2 159 3                         @ ../../Common/Minimal/PollQ.c:159:3
	b	.LBB1_2
.LBB1_2:                                @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 159 57 is_stmt 0              @ ../../Common/Minimal/PollQ.c:159:57
	ldr	r0, [sp, #12]
	.loc	2 159 34                        @ ../../Common/Minimal/PollQ.c:159:34
	ldr	r0, [r0]
	.loc	2 159 10                        @ ../../Common/Minimal/PollQ.c:159:10
	bl	uxQueueMessagesWaiting
	.loc	2 159 3                         @ ../../Common/Minimal/PollQ.c:159:3
	cmp	r0, #0
	beq	.LBB1_11
	b	.LBB1_3
.LBB1_3:                                @   in Loop: Header=BB1_2 Depth=2
.Ltmp8:
	.loc	2 161 46 is_stmt 1              @ ../../Common/Minimal/PollQ.c:161:46
	ldr	r0, [sp, #12]
	.loc	2 161 23 is_stmt 0              @ ../../Common/Minimal/PollQ.c:161:23
	ldr	r0, [r0]
	add.w	r1, sp, #10
	movs	r2, #0
	.loc	2 161 8                         @ ../../Common/Minimal/PollQ.c:161:8
	bl	xQueueReceive
.Ltmp9:
	.loc	2 161 8                         @ ../../Common/Minimal/PollQ.c:161:8
	cmp	r0, #1
	bne	.LBB1_10
	b	.LBB1_4
.LBB1_4:                                @   in Loop: Header=BB1_2 Depth=2
.Ltmp10:
	.loc	2 163 9 is_stmt 1               @ ../../Common/Minimal/PollQ.c:163:9
	ldrh.w	r0, [sp, #10]
	.loc	2 163 19 is_stmt 0              @ ../../Common/Minimal/PollQ.c:163:19
	ldrh.w	r1, [sp, #8]
.Ltmp11:
	.loc	2 163 9                         @ ../../Common/Minimal/PollQ.c:163:9
	cmp	r0, r1
	beq	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @   in Loop: Header=BB1_2 Depth=2
	.loc	2 0 9                           @ ../../Common/Minimal/PollQ.c:0:9
	movs	r0, #1
.Ltmp12:
	.loc	2 167 13 is_stmt 1              @ ../../Common/Minimal/PollQ.c:167:13
	str	r0, [sp, #4]
	.loc	2 171 24                        @ ../../Common/Minimal/PollQ.c:171:24
	ldrh.w	r0, [sp, #10]
	.loc	2 171 22 is_stmt 0              @ ../../Common/Minimal/PollQ.c:171:22
	strh.w	r0, [sp, #8]
	.loc	2 172 5 is_stmt 1               @ ../../Common/Minimal/PollQ.c:172:5
	b	.LBB1_9
.Ltmp13:
.LBB1_6:                                @   in Loop: Header=BB1_2 Depth=2
	.loc	2 175 10                        @ ../../Common/Minimal/PollQ.c:175:10
	ldr	r0, [sp, #4]
.Ltmp14:
	.loc	2 175 10 is_stmt 0              @ ../../Common/Minimal/PollQ.c:175:10
	cmp	r0, #0
	bne	.LBB1_8
	b	.LBB1_7
.LBB1_7:                                @   in Loop: Header=BB1_2 Depth=2
.Ltmp15:
	.loc	2 179 7 is_stmt 1               @ ../../Common/Minimal/PollQ.c:179:7
	bl	vPortEnterCritical
	.loc	2 180 29                        @ ../../Common/Minimal/PollQ.c:180:29
	movw	r0, :lower16:xPollingConsumerCount
	movt	r0, :upper16:xPollingConsumerCount
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
	.loc	2 181 7                         @ ../../Common/Minimal/PollQ.c:181:7
	bl	vPortExitCritical
	.loc	2 182 6                         @ ../../Common/Minimal/PollQ.c:182:6
	b	.LBB1_8
.Ltmp16:
.LBB1_8:                                @   in Loop: Header=BB1_2 Depth=2
	.loc	2 0 6 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:6
	b	.LBB1_9
.LBB1_9:                                @   in Loop: Header=BB1_2 Depth=2
	.loc	2 186 20 is_stmt 1              @ ../../Common/Minimal/PollQ.c:186:20
	ldrh.w	r0, [sp, #8]
	adds	r0, #1
	strh.w	r0, [sp, #8]
	.loc	2 187 4                         @ ../../Common/Minimal/PollQ.c:187:4
	b	.LBB1_10
.Ltmp17:
.LBB1_10:                               @   in Loop: Header=BB1_2 Depth=2
	.loc	2 159 3                         @ ../../Common/Minimal/PollQ.c:159:3
	b	.LBB1_2
.LBB1_11:                               @   in Loop: Header=BB1_1 Depth=1
	.loc	2 0 3 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:3
	movs	r0, #180
	.loc	2 192 3 is_stmt 1               @ ../../Common/Minimal/PollQ.c:192:3
	bl	vTaskDelay
.Ltmp18:
	.loc	2 156 2                         @ ../../Common/Minimal/PollQ.c:156:2
	b	.LBB1_1
.Ltmp19:
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
	.save	{r7, lr}
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.pad	#24
	sub	sp, #24
	.cfi_def_cfa_offset 32
	str	r0, [sp, #20]
	movs	r0, #0
.Ltmp20:
	.loc	2 114 10 prologue_end           @ ../../Common/Minimal/PollQ.c:114:10
	strh.w	r0, [sp, #18]
	.loc	2 115 12                        @ ../../Common/Minimal/PollQ.c:115:12
	str	r0, [sp, #12]
	.loc	2 117 2                         @ ../../Common/Minimal/PollQ.c:117:2
	b	.LBB2_1
.LBB2_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_2 Depth 2
	.loc	2 0 2 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:2
	movs	r0, #0
.Ltmp21:
	.loc	2 119 14 is_stmt 1              @ ../../Common/Minimal/PollQ.c:119:14
	str	r0, [sp, #8]
	.loc	2 119 8 is_stmt 0               @ ../../Common/Minimal/PollQ.c:119:8
	b	.LBB2_2
.LBB2_2:                                @   Parent Loop BB2_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp22:
	.loc	2 119 19                        @ ../../Common/Minimal/PollQ.c:119:19
	ldr	r0, [sp, #8]
.Ltmp23:
	.loc	2 119 3                         @ ../../Common/Minimal/PollQ.c:119:3
	cmp	r0, #2
	bgt	.LBB2_10
	b	.LBB2_3
.LBB2_3:                                @   in Loop: Header=BB2_2 Depth=2
.Ltmp24:
	.loc	2 122 8 is_stmt 1               @ ../../Common/Minimal/PollQ.c:122:8
	ldr	r0, [sp, #20]
	ldr	r0, [r0]
	add.w	r1, sp, #18
	movs	r2, #0
	str	r2, [sp, #4]                    @ 4-byte Spill
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	bl	xQueueGenericSend
.Ltmp25:
	.loc	2 122 8 is_stmt 0               @ ../../Common/Minimal/PollQ.c:122:8
	cmp	r0, #1
	beq	.LBB2_5
	b	.LBB2_4
.LBB2_4:                                @   in Loop: Header=BB2_2 Depth=2
	.loc	2 0 8                           @ ../../Common/Minimal/PollQ.c:0:8
	movs	r0, #1
.Ltmp26:
	.loc	2 126 12 is_stmt 1              @ ../../Common/Minimal/PollQ.c:126:12
	str	r0, [sp, #12]
	.loc	2 127 4                         @ ../../Common/Minimal/PollQ.c:127:4
	b	.LBB2_8
.Ltmp27:
.LBB2_5:                                @   in Loop: Header=BB2_2 Depth=2
	.loc	2 130 9                         @ ../../Common/Minimal/PollQ.c:130:9
	ldr	r0, [sp, #12]
.Ltmp28:
	.loc	2 130 9 is_stmt 0               @ ../../Common/Minimal/PollQ.c:130:9
	cmp	r0, #0
	bne	.LBB2_7
	b	.LBB2_6
.LBB2_6:                                @   in Loop: Header=BB2_2 Depth=2
.Ltmp29:
	.loc	2 134 6 is_stmt 1               @ ../../Common/Minimal/PollQ.c:134:6
	bl	vPortEnterCritical
	.loc	2 135 28                        @ ../../Common/Minimal/PollQ.c:135:28
	movw	r0, :lower16:xPollingProducerCount
	movt	r0, :upper16:xPollingProducerCount
	ldr	r1, [r0]
	adds	r1, #1
	str	r1, [r0]
	.loc	2 136 6                         @ ../../Common/Minimal/PollQ.c:136:6
	bl	vPortExitCritical
	.loc	2 137 5                         @ ../../Common/Minimal/PollQ.c:137:5
	b	.LBB2_7
.Ltmp30:
.LBB2_7:                                @   in Loop: Header=BB2_2 Depth=2
	.loc	2 140 12                        @ ../../Common/Minimal/PollQ.c:140:12
	ldrh.w	r0, [sp, #18]
	adds	r0, #1
	strh.w	r0, [sp, #18]
	b	.LBB2_8
.Ltmp31:
.LBB2_8:                                @   in Loop: Header=BB2_2 Depth=2
	.loc	2 142 3                         @ ../../Common/Minimal/PollQ.c:142:3
	b	.LBB2_9
.Ltmp32:
.LBB2_9:                                @   in Loop: Header=BB2_2 Depth=2
	.loc	2 119 56                        @ ../../Common/Minimal/PollQ.c:119:56
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	.loc	2 119 3 is_stmt 0               @ ../../Common/Minimal/PollQ.c:119:3
	b	.LBB2_2
.Ltmp33:
.LBB2_10:                               @   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 3                           @ ../../Common/Minimal/PollQ.c:0:3
	movs	r0, #200
	.loc	2 146 3 is_stmt 1               @ ../../Common/Minimal/PollQ.c:146:3
	bl	vTaskDelay
.Ltmp34:
	.loc	2 117 2                         @ ../../Common/Minimal/PollQ.c:117:2
	b	.LBB2_1
.Ltmp35:
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
	.loc	2 199 0                         @ ../../Common/Minimal/PollQ.c:199:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.pad	#4
	sub	sp, #4
	.cfi_def_cfa_offset 4
.Ltmp36:
	.loc	2 206 8 prologue_end            @ ../../Common/Minimal/PollQ.c:206:8
	movw	r0, :lower16:xPollingConsumerCount
	movt	r0, :upper16:xPollingConsumerCount
	ldr	r0, [r0]
	.loc	2 206 54 is_stmt 0              @ ../../Common/Minimal/PollQ.c:206:54
	cmp	r0, #0
	beq	.LBB3_2
	b	.LBB3_1
.LBB3_1:
	.loc	2 207 5 is_stmt 1               @ ../../Common/Minimal/PollQ.c:207:5
	movw	r0, :lower16:xPollingProducerCount
	movt	r0, :upper16:xPollingProducerCount
	ldr	r0, [r0]
.Ltmp37:
	.loc	2 206 6                         @ ../../Common/Minimal/PollQ.c:206:6
	cmp	r0, #0
	bne	.LBB3_3
	b	.LBB3_2
.LBB3_2:
	.loc	2 0 6 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:6
	movs	r0, #0
.Ltmp38:
	.loc	2 210 11 is_stmt 1              @ ../../Common/Minimal/PollQ.c:210:11
	str	r0, [sp]
	.loc	2 211 2                         @ ../../Common/Minimal/PollQ.c:211:2
	b	.LBB3_4
.Ltmp39:
.LBB3_3:
	.loc	2 0 2 is_stmt 0                 @ ../../Common/Minimal/PollQ.c:0:2
	movs	r0, #1
.Ltmp40:
	.loc	2 214 11 is_stmt 1              @ ../../Common/Minimal/PollQ.c:214:11
	str	r0, [sp]
	b	.LBB3_4
.Ltmp41:
.LBB3_4:
	.loc	2 219 24                        @ ../../Common/Minimal/PollQ.c:219:24
	movw	r0, :lower16:xPollingConsumerCount
	movt	r0, :upper16:xPollingConsumerCount
	movs	r1, #0
	str	r1, [r0]
	.loc	2 220 24                        @ ../../Common/Minimal/PollQ.c:220:24
	movw	r0, :lower16:xPollingProducerCount
	movt	r0, :upper16:xPollingProducerCount
	str	r1, [r0]
	.loc	2 222 9                         @ ../../Common/Minimal/PollQ.c:222:9
	ldr	r0, [sp]
	.loc	2 222 2 is_stmt 0               @ ../../Common/Minimal/PollQ.c:222:2
	add	sp, #4
	bx	lr
.Ltmp42:
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

	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"QConsNB"
	.size	.L.str, 8

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"QProdNB"
	.size	.L.str.1, 8

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
	.byte	10                              @ DW_FORM_block1
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
	.byte	10                              @ DW_FORM_block1
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
	.byte	1                               @ Abbrev [1] 0xb:0x1ce DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	0                               @ DW_AT_low_pc
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	2                               @ Abbrev [2] 0x26:0x33 DW_TAG_subprogram
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
	.long	89                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	90                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	vStartPolledQueueTasks.xPolledQueue
	.byte	4                               @ Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	28
	.long	.Linfo_string25                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	88                              @ DW_AT_decl_line
	.long	168                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x59:0xb DW_TAG_typedef
	.long	100                             @ DW_AT_type
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x64:0x5 DW_TAG_pointer_type
	.long	105                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x69:0x6 DW_TAG_structure_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	1                               @ DW_AT_declaration
	.byte	3                               @ Abbrev [3] 0x6f:0x11 DW_TAG_variable
	.long	.Linfo_string6                  @ DW_AT_name
	.long	128                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xPollingConsumerCount
	.byte	8                               @ Abbrev [8] 0x80:0x5 DW_TAG_volatile_type
	.long	133                             @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0x85:0xb DW_TAG_typedef
	.long	144                             @ DW_AT_type
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x90:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x97:0x11 DW_TAG_variable
	.long	.Linfo_string9                  @ DW_AT_name
	.long	128                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.byte	5                               @ DW_AT_location
	.byte	3
	.long	xPollingProducerCount
	.byte	5                               @ Abbrev [5] 0xa8:0xb DW_TAG_typedef
	.long	179                             @ DW_AT_type
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	57                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xb3:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0xba:0xb DW_TAG_typedef
	.long	197                             @ DW_AT_type
	.long	.Linfo_string13                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0xc5:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	9                               @ Abbrev [9] 0xcc:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0xd3:0x1 DW_TAG_pointer_type
	.byte	6                               @ Abbrev [6] 0xd4:0x5 DW_TAG_pointer_type
	.long	217                             @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0xd9:0xb DW_TAG_typedef
	.long	228                             @ DW_AT_type
	.long	.Linfo_string16                 @ DW_AT_name
	.byte	5                               @ DW_AT_decl_file
	.byte	62                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0xe4:0x5 DW_TAG_pointer_type
	.long	233                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0xe9:0x6 DW_TAG_structure_type
	.long	.Linfo_string15                 @ DW_AT_name
	.byte	1                               @ DW_AT_declaration
	.byte	5                               @ Abbrev [5] 0xef:0xb DW_TAG_typedef
	.long	204                             @ DW_AT_type
	.long	.Linfo_string17                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0xfa:0x5 DW_TAG_pointer_type
	.long	89                              @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0xff:0xb DW_TAG_typedef
	.long	266                             @ DW_AT_type
	.long	.Linfo_string20                 @ DW_AT_name
	.byte	3                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
	.byte	5                               @ Abbrev [5] 0x10a:0xb DW_TAG_typedef
	.long	277                             @ DW_AT_type
	.long	.Linfo_string19                 @ DW_AT_name
	.byte	4                               @ DW_AT_decl_file
	.byte	64                              @ DW_AT_decl_line
	.byte	9                               @ Abbrev [9] 0x115:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0x11c:0x4b DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string22                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	4                               @ Abbrev [4] 0x12e:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	151                             @ DW_AT_decl_line
	.long	211                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x13c:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	10
	.long	.Linfo_string27                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.long	239                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x14a:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string28                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	153                             @ DW_AT_decl_line
	.long	239                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x158:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	154                             @ DW_AT_decl_line
	.long	133                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x167:0x4b DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string23                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	112                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.byte	4                               @ Abbrev [4] 0x179:0xe DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string26                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	112                             @ DW_AT_decl_line
	.long	211                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x187:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	18
	.long	.Linfo_string30                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	114                             @ DW_AT_decl_line
	.long	239                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x195:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.long	.Linfo_string29                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.long	133                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x1a3:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.long	.Linfo_string31                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.long	133                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x1b2:0x26 DW_TAG_subprogram
	.long	.Lfunc_begin3                   @ DW_AT_low_pc
	.long	.Lfunc_end3                     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string24                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	198                             @ DW_AT_decl_line
	.byte	1                               @ DW_AT_prototyped
	.long	133                             @ DW_AT_type
	.byte	1                               @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0x1c9:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string32                 @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	200                             @ DW_AT_decl_line
	.long	133                             @ DW_AT_type
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
	.asciz	"usData"                        @ string offset=549
.Linfo_string28:
	.asciz	"usExpectedValue"               @ string offset=556
.Linfo_string29:
	.asciz	"xError"                        @ string offset=572
.Linfo_string30:
	.asciz	"usValue"                       @ string offset=579
.Linfo_string31:
	.asciz	"xLoop"                         @ string offset=587
.Linfo_string32:
	.asciz	"xReturn"                       @ string offset=593
	.ident	"Component: ARM Compiler 6.15 Tool: armclang [5dd79400]"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
	.ARM_attribute	16, 1	@ Tag_AV_eba
	.section	.debug_line,"",%progbits
.Lline_table_start0:
