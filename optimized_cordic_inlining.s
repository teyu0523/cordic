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
	.file	"optimized_cordic_inlining.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Vectoring mode: \000"
	.align	2
.LC1:
	.ascii	"x: 1, y: 1\000"
	.align	2
.LC2:
	.ascii	"x: 1, y: sqrt(3)\000"
	.align	2
.LC3:
	.ascii	"x: sqrt(3), y: 1\000"
	.align	2
.LC4:
	.ascii	"x: 2, y: 1\000"
	.align	2
.LC5:
	.ascii	"x: 1, y: 2\000"
	.align	2
.LC6:
	.ascii	"\012Rotaional_mode: \000"
	.align	2
.LC7:
	.ascii	"z: 0\000"
	.align	2
.LC8:
	.ascii	"z: 30\000"
	.align	2
.LC9:
	.ascii	"z: 45\000"
	.align	2
.LC10:
	.ascii	"z: 70\000"
	.align	2
.LC11:
	.ascii	"z: 80\000"
	.align	2
.LC12:
	.ascii	"z: 90\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #4194304
	str	r3, [fp, #-8]
	ldr	r0, .L3
	bl	puts
	ldr	r0, .L3+4
	bl	puts
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
#APP
@ 26 "optimized_cordic_inlining.c" 1
	vec r3, r2, r3
@ 0 "" 2
	str	r3, [fp, #-16]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #7208960
	add	r3, r3, #55552
	add	r3, r3, #235
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r0, .L3+8
	bl	puts
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
#APP
@ 31 "optimized_cordic_inlining.c" 1
	vec r3, r2, r3
@ 0 "" 2
	str	r3, [fp, #-16]
	mov	r3, #7208960
	add	r3, r3, #55552
	add	r3, r3, #235
	str	r3, [fp, #-12]
	mov	r3, #4194304
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r0, .L3+12
	bl	puts
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
#APP
@ 36 "optimized_cordic_inlining.c" 1
	vec r3, r2, r3
@ 0 "" 2
	str	r3, [fp, #-16]
	mov	r3, #8388608
	str	r3, [fp, #-12]
	mov	r3, #4194304
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r0, .L3+16
	bl	puts
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
#APP
@ 41 "optimized_cordic_inlining.c" 1
	vec r3, r2, r3
@ 0 "" 2
	str	r3, [fp, #-16]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #8388608
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r0, .L3+20
	bl	puts
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
#APP
@ 46 "optimized_cordic_inlining.c" 1
	vec r3, r2, r3
@ 0 "" 2
	str	r3, [fp, #-16]
	ldr	r0, .L3+24
	bl	puts
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r0, .L3+28
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 54 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 55 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #125829120
	str	r3, [fp, #-16]
	ldr	r0, .L3+32
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 60 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 61 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #188743680
	str	r3, [fp, #-16]
	ldr	r0, .L3+36
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 66 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 67 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #293601280
	str	r3, [fp, #-16]
	ldr	r0, .L3+40
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 72 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 73 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #335544320
	str	r3, [fp, #-16]
	ldr	r0, .L3+44
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 78 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 79 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #4194304
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #377487360
	str	r3, [fp, #-16]
	ldr	r0, .L3+48
	bl	puts
	ldr	r3, [fp, #-16]
#APP
@ 84 "optimized_cordic_inlining.c" 1
	rox r3, r3
@ 0 "" 2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
#APP
@ 85 "optimized_cordic_inlining.c" 1
	roy r3, r3
@ 0 "" 2
	str	r3, [fp, #-8]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
