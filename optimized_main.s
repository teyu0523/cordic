	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"optimized_main.c"
	.section	.rodata
	.align	2
	.type	C.0.2609, %object
	.size	C.0.2609, 116
C.0.2609:
	.word	188743680
	.word	111421900
	.word	58872272
	.word	29884485
	.word	15000234
	.word	7507429
	.word	3754631
	.word	1877430
	.word	938729
	.word	469366
	.word	234683
	.word	117342
	.word	58671
	.word	29335
	.word	14668
	.word	7334
	.word	3667
	.word	1833
	.word	917
	.word	458
	.word	229
	.word	115
	.word	57
	.word	29
	.word	14
	.word	7
	.word	4
	.word	2
	.word	1
	.text
	.align	2
	.global	vectoring_mode
	.type	vectoring_mode, %function
vectoring_mode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-136]
	str	r1, [fp, #-140]
	str	r2, [fp, #-144]
	ldr	r3, .L27
	sub	r2, fp, #132
	mov	ip, #116
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
	bl	memcpy
	ldr	r3, [fp, #-144]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-148]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L21:
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L3
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L4
.L3:
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-8]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L4:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L5
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L6
.L5:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L6:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L7
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L8
.L7:
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L8:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L9
	ldr	r3, [fp, #-8]
	add	r2, r3, #3
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #3
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L10
.L9:
	ldr	r3, [fp, #-8]
	add	r2, r3, #3
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #3
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L10:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L11
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L12
.L11:
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L12:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L13
	ldr	r3, [fp, #-8]
	add	r2, r3, #5
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #5
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L14
.L13:
	ldr	r3, [fp, #-8]
	add	r2, r3, #5
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #5
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L14:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L15
	ldr	r3, [fp, #-8]
	add	r2, r3, #6
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #6
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L16
.L15:
	ldr	r3, [fp, #-8]
	add	r2, r3, #6
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #6
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L16:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L17
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L18
.L17:
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L18:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L19
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L20
.L19:
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L20:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #26
	ble	.L21
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L22
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L23
.L22:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L23:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	blt	.L24
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	rsb	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	add	r2, r2, r3
	str	r2, [fp, #-148]
	b	.L25
.L24:
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-140]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-136]
	rsb	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r2, r3, #2
	ldr	r3, [fp, #-136]
	mov	r2, r3, asr r2
	ldr	r3, [fp, #-140]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-148]
	rsb	r2, r3, r2
	str	r2, [fp, #-148]
.L25:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-144]
	ldr	r1, [fp, #-148]
	str	r1, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	C.0.2609
	.size	vectoring_mode, .-vectoring_mode
	.section	.rodata
	.align	2
	.type	C.3.2789, %object
	.size	C.3.2789, 116
C.3.2789:
	.word	188743680
	.word	111421900
	.word	58872272
	.word	29884485
	.word	15000234
	.word	7507429
	.word	3754631
	.word	1877430
	.word	938729
	.word	469366
	.word	234683
	.word	117342
	.word	58671
	.word	29335
	.word	14668
	.word	7334
	.word	3667
	.word	1833
	.word	917
	.word	458
	.word	229
	.word	115
	.word	57
	.word	29
	.word	14
	.word	7
	.word	4
	.word	2
	.word	1
	.text
	.align	2
	.global	rotational_mode
	.type	rotational_mode, %function
rotational_mode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-136]
	str	r1, [fp, #-140]
	str	r2, [fp, #-144]
	ldr	r3, .L55
	sub	r2, fp, #132
	mov	ip, #116
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
	bl	memcpy
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-140]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-148]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L30
.L49:
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L31
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L32
.L31:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L32:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L33
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L34
.L33:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L34:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L35
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L36
.L35:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L36:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L37
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L38
.L37:
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L38:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L39
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L40
.L39:
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L40:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L41
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L42
.L41:
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L42:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L43
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L44
.L43:
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L44:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L45
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L46
.L45:
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L46:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L47
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L48
.L47:
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L48:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-8]
	add	r3, r3, #9
	str	r3, [fp, #-8]
.L30:
	ldr	r3, [fp, #-8]
	cmp	r3, #26
	ble	.L49
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L50
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L51
.L50:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L51:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bge	.L52
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r1, [fp, #-148]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-152]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r1, [fp, #-152]
	mov	r3, r1, asr r3
	ldr	r2, [fp, #-148]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	add	r3, r3, r2
	str	r3, [fp, #-144]
	b	.L53
.L52:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r2, [fp, #-148]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-152]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldr	r2, [fp, #-152]
	mov	r3, r2, asr r3
	ldr	r1, [fp, #-148]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	mvn	r2, #127
	mov	r3, r3, asl #2
	sub	r1, fp, #4
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	rsb	r3, r2, r3
	str	r3, [fp, #-144]
.L53:
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-152]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-136]
	ldr	r1, [fp, #-152]
	str	r1, [r3, #0]
	ldr	r3, [fp, #-140]
	ldr	r2, [fp, #-148]
	str	r2, [r3, #0]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	C.3.2789
	.size	rotational_mode, .-rotational_mode
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Vectoring mode: \000"
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
.LC1:
	.ascii	"x: 1, y: 1, arctan: %lf\012\000"
	.align	2
.LC2:
	.ascii	"x: 1, y: sqrt(3), arctan: %lf\012\000"
	.align	2
.LC3:
	.ascii	"\012Rotaional_mode: \000"
	.align	2
.LC4:
	.ascii	"z: 0, sine: %lf, cosine: %lf\012\000"
	.align	2
.LC5:
	.ascii	"z: 45, sine: %lf, cosine: %lf\012\000"
	.align	2
.LC6:
	.ascii	"z: 90, sine: %lf, cosine: %lf\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24
	sub	sp, sp, #36
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #4194304
	str	r3, [fp, #-36]
	mov	r3, #4194304
	str	r3, [fp, #-40]
	ldr	r0, .L59+8
	bl	puts
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	sub	ip, fp, #32
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	vectoring_mode
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L59+12
	mov	r2, r3
	mov	r3, r4
	bl	printf
	mov	r3, #4194304
	str	r3, [fp, #-36]
	mov	r3, #7208960
	add	r3, r3, #55552
	add	r3, r3, #235
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	sub	ip, fp, #32
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	vectoring_mode
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L59+16
	mov	r2, r3
	mov	r3, r4
	bl	printf
	ldr	r0, .L59+20
	bl	puts
	mov	r3, #4194304
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-32]
	sub	r3, fp, #36
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	rotational_mode
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r4
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L59+24
	mov	r2, r7
	mov	r3, r8
	bl	printf
	mov	r3, #4194304
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #188743680
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-32]
	sub	r3, fp, #36
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	rotational_mode
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r4
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L59+28
	mov	r2, r7
	mov	r3, r8
	bl	printf
	mov	r3, #4194304
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #377487360
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-32]
	sub	r3, fp, #36
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	rotational_mode
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r4
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1090519040
	add	r6, r6, #5242880
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	adr	r6, .L59
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L59+32
	mov	r2, r7
	mov	r3, r8
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L60:
	.align	3
.L59:
	.word	59098750
	.word	1073371425
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
