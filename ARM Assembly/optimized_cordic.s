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
@ GNU C (Sourcery G++ Lite 2008q3-72) version 4.3.2 (arm-none-linux-gnueabi)
@	compiled by GNU C version 3.4.4, GMP version 4.2.2, MPFR version 2.3.1.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib armv4t -iprefix
@ /opt/arm/4.3.2/bin/../lib/gcc/arm-none-linux-gnueabi/4.3.2/ -isysroot
@ /opt/arm/4.3.2/bin/../arm-none-linux-gnueabi/libc optimized_main.c
@ -march=armv4t -auxbase-strip main.s -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcommon -fearly-inlining
@ -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fident -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno
@ -fmerge-debug-strings -fmove-loop-invariants -fpeephole
@ -freg-struct-return -fsched-interblock -fsched-spec
@ -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
@ -ftoplevel-reorder -ftrapping-math -ftree-cselim -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-reassoc -ftree-scev-cprop -ftree-vect-loop-version -fverbose-asm
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog
@ -mthumb-interwork

@ Compiler executable checksum: d3429b3d44dc83ee8ef5b80b6a06f8ca

	.section	.rodata
	.align	2
	.type	C.0.2608, %object
	.size	C.0.2608, 116
C.0.2608:
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
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.align	2
.LC0:
	.ascii	"arctan: %lf\012\000"
	.text
	.align	2
	.global	vectoring_mode
	.type	vectoring_mode, %function
vectoring_mode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}	@,
	add	fp, sp, #16	@,,
	sub	sp, sp, #148	@,,
	str	r0, [fp, #-152]	@ x, x
	str	r1, [fp, #-156]	@ y, y
	str	r2, [fp, #-160]	@ z, z
	ldr	r3, .L27+8	@ tmp260,
	sub	r2, fp, #148	@ tmp261,,
	mov	ip, #116	@ tmp263,
	mov	r0, r2	@, tmp261
	mov	r1, r3	@, tmp262
	mov	r2, ip	@, tmp263
	bl	memcpy	@
	mov	r3, #0	@ tmp265,
	str	r3, [fp, #-24]	@ tmp265, i
	b	.L2	@
.L21:
	ldr	r3, [fp, #-156]	@ tmp266, y
	cmp	r3, #0	@ tmp266,
	blt	.L3	@,
	ldr	r2, [fp, #-156]	@ tmp267, y
	ldr	r3, [fp, #-24]	@ tmp268, i
	mov	r2, r2, asr r3	@ D.2609, tmp267,
	ldr	r3, [fp, #-152]	@ tmp269, x
	add	r3, r2, r3	@ tmp270, D.2609, tmp269
	str	r3, [fp, #-32]	@ tmp270, x_new
	ldr	r2, [fp, #-152]	@ tmp271, x
	ldr	r3, [fp, #-24]	@ tmp272, i
	mov	r2, r2, asr r3	@ D.2610, tmp271,
	ldr	r3, [fp, #-156]	@ tmp273, y
	rsb	r3, r2, r3	@ tmp274, D.2610, tmp273
	str	r3, [fp, #-28]	@ tmp274, y_new
	ldr	r3, [fp, #-24]	@ i.1, i
	mvn	r2, #127	@ tmp275,
	mov	r3, r3, asl #2	@ tmp276, i.1,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp277,, tmp276
	add	r3, r3, r2	@ tmp278, tmp277, tmp275
	ldr	r2, [r3, #0]	@ D.2612, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp279, z
	add	r3, r3, r2	@ tmp280, tmp279, D.2612
	str	r3, [fp, #-160]	@ tmp280, z
	b	.L4	@
.L3:
	ldr	r2, [fp, #-156]	@ tmp281, y
	ldr	r3, [fp, #-24]	@ tmp282, i
	mov	r2, r2, asr r3	@ D.2613, tmp281,
	ldr	r3, [fp, #-152]	@ tmp283, x
	rsb	r3, r2, r3	@ tmp284, D.2613, tmp283
	str	r3, [fp, #-32]	@ tmp284, x_new
	ldr	r2, [fp, #-152]	@ tmp285, x
	ldr	r3, [fp, #-24]	@ tmp286, i
	mov	r2, r2, asr r3	@ D.2614, tmp285,
	ldr	r3, [fp, #-156]	@ tmp287, y
	add	r3, r2, r3	@ tmp288, D.2614, tmp287
	str	r3, [fp, #-28]	@ tmp288, y_new
	ldr	r3, [fp, #-24]	@ i.2, i
	mvn	r2, #127	@ tmp289,
	mov	r3, r3, asl #2	@ tmp290, i.2,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp291,, tmp290
	add	r3, r3, r2	@ tmp292, tmp291, tmp289
	ldr	r2, [r3, #0]	@ D.2616, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp293, z
	rsb	r3, r2, r3	@ tmp294, D.2616, tmp293
	str	r3, [fp, #-160]	@ tmp294, z
.L4:
	ldr	r3, [fp, #-32]	@ tmp295, x_new
	str	r3, [fp, #-152]	@ tmp295, x
	ldr	r3, [fp, #-28]	@ tmp296, y_new
	str	r3, [fp, #-156]	@ tmp296, y
	ldr	r3, [fp, #-156]	@ tmp297, y
	cmp	r3, #0	@ tmp297,
	blt	.L5	@,
	ldr	r3, [fp, #-24]	@ tmp298, i
	add	r2, r3, #1	@ D.2617, tmp298,
	ldr	r3, [fp, #-156]	@ tmp299, y
	mov	r2, r3, asr r2	@ D.2618, tmp299,
	ldr	r3, [fp, #-152]	@ tmp300, x
	add	r3, r2, r3	@ tmp301, D.2618, tmp300
	str	r3, [fp, #-32]	@ tmp301, x_new
	ldr	r3, [fp, #-24]	@ tmp302, i
	add	r2, r3, #1	@ D.2619, tmp302,
	ldr	r3, [fp, #-152]	@ tmp303, x
	mov	r2, r3, asr r2	@ D.2620, tmp303,
	ldr	r3, [fp, #-156]	@ tmp304, y
	rsb	r3, r2, r3	@ tmp305, D.2620, tmp304
	str	r3, [fp, #-28]	@ tmp305, y_new
	ldr	r3, [fp, #-24]	@ tmp306, i
	add	r3, r3, #1	@ D.2621, tmp306,
	mvn	r2, #127	@ tmp307,
	mov	r3, r3, asl #2	@ tmp308, D.2621,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp309,, tmp308
	add	r3, r3, r2	@ tmp310, tmp309, tmp307
	ldr	r2, [r3, #0]	@ D.2622, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp311, z
	add	r3, r3, r2	@ tmp312, tmp311, D.2622
	str	r3, [fp, #-160]	@ tmp312, z
	b	.L6	@
.L5:
	ldr	r3, [fp, #-24]	@ tmp313, i
	add	r2, r3, #1	@ D.2623, tmp313,
	ldr	r3, [fp, #-156]	@ tmp314, y
	mov	r2, r3, asr r2	@ D.2624, tmp314,
	ldr	r3, [fp, #-152]	@ tmp315, x
	rsb	r3, r2, r3	@ tmp316, D.2624, tmp315
	str	r3, [fp, #-32]	@ tmp316, x_new
	ldr	r3, [fp, #-24]	@ tmp317, i
	add	r2, r3, #1	@ D.2625, tmp317,
	ldr	r3, [fp, #-152]	@ tmp318, x
	mov	r2, r3, asr r2	@ D.2626, tmp318,
	ldr	r3, [fp, #-156]	@ tmp319, y
	add	r3, r2, r3	@ tmp320, D.2626, tmp319
	str	r3, [fp, #-28]	@ tmp320, y_new
	ldr	r3, [fp, #-24]	@ tmp321, i
	add	r3, r3, #1	@ D.2627, tmp321,
	mvn	r2, #127	@ tmp322,
	mov	r3, r3, asl #2	@ tmp323, D.2627,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp324,, tmp323
	add	r3, r3, r2	@ tmp325, tmp324, tmp322
	ldr	r2, [r3, #0]	@ D.2628, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp326, z
	rsb	r3, r2, r3	@ tmp327, D.2628, tmp326
	str	r3, [fp, #-160]	@ tmp327, z
.L6:
	ldr	r3, [fp, #-32]	@ tmp328, x_new
	str	r3, [fp, #-152]	@ tmp328, x
	ldr	r3, [fp, #-28]	@ tmp329, y_new
	str	r3, [fp, #-156]	@ tmp329, y
	ldr	r3, [fp, #-156]	@ tmp330, y
	cmp	r3, #0	@ tmp330,
	blt	.L7	@,
	ldr	r3, [fp, #-24]	@ tmp331, i
	add	r2, r3, #2	@ D.2629, tmp331,
	ldr	r3, [fp, #-156]	@ tmp332, y
	mov	r2, r3, asr r2	@ D.2630, tmp332,
	ldr	r3, [fp, #-152]	@ tmp333, x
	add	r3, r2, r3	@ tmp334, D.2630, tmp333
	str	r3, [fp, #-32]	@ tmp334, x_new
	ldr	r3, [fp, #-24]	@ tmp335, i
	add	r2, r3, #2	@ D.2631, tmp335,
	ldr	r3, [fp, #-152]	@ tmp336, x
	mov	r2, r3, asr r2	@ D.2632, tmp336,
	ldr	r3, [fp, #-156]	@ tmp337, y
	rsb	r3, r2, r3	@ tmp338, D.2632, tmp337
	str	r3, [fp, #-28]	@ tmp338, y_new
	ldr	r3, [fp, #-24]	@ tmp339, i
	add	r3, r3, #2	@ D.2633, tmp339,
	mvn	r2, #127	@ tmp340,
	mov	r3, r3, asl #2	@ tmp341, D.2633,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp342,, tmp341
	add	r3, r3, r2	@ tmp343, tmp342, tmp340
	ldr	r2, [r3, #0]	@ D.2634, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp344, z
	add	r3, r3, r2	@ tmp345, tmp344, D.2634
	str	r3, [fp, #-160]	@ tmp345, z
	b	.L8	@
.L7:
	ldr	r3, [fp, #-24]	@ tmp346, i
	add	r2, r3, #2	@ D.2635, tmp346,
	ldr	r3, [fp, #-156]	@ tmp347, y
	mov	r2, r3, asr r2	@ D.2636, tmp347,
	ldr	r3, [fp, #-152]	@ tmp348, x
	rsb	r3, r2, r3	@ tmp349, D.2636, tmp348
	str	r3, [fp, #-32]	@ tmp349, x_new
	ldr	r3, [fp, #-24]	@ tmp350, i
	add	r2, r3, #2	@ D.2637, tmp350,
	ldr	r3, [fp, #-152]	@ tmp351, x
	mov	r2, r3, asr r2	@ D.2638, tmp351,
	ldr	r3, [fp, #-156]	@ tmp352, y
	add	r3, r2, r3	@ tmp353, D.2638, tmp352
	str	r3, [fp, #-28]	@ tmp353, y_new
	ldr	r3, [fp, #-24]	@ tmp354, i
	add	r3, r3, #2	@ D.2639, tmp354,
	mvn	r2, #127	@ tmp355,
	mov	r3, r3, asl #2	@ tmp356, D.2639,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp357,, tmp356
	add	r3, r3, r2	@ tmp358, tmp357, tmp355
	ldr	r2, [r3, #0]	@ D.2640, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp359, z
	rsb	r3, r2, r3	@ tmp360, D.2640, tmp359
	str	r3, [fp, #-160]	@ tmp360, z
.L8:
	ldr	r3, [fp, #-32]	@ tmp361, x_new
	str	r3, [fp, #-152]	@ tmp361, x
	ldr	r3, [fp, #-28]	@ tmp362, y_new
	str	r3, [fp, #-156]	@ tmp362, y
	ldr	r3, [fp, #-156]	@ tmp363, y
	cmp	r3, #0	@ tmp363,
	blt	.L9	@,
	ldr	r3, [fp, #-24]	@ tmp364, i
	add	r2, r3, #3	@ D.2641, tmp364,
	ldr	r3, [fp, #-156]	@ tmp365, y
	mov	r2, r3, asr r2	@ D.2642, tmp365,
	ldr	r3, [fp, #-152]	@ tmp366, x
	add	r3, r2, r3	@ tmp367, D.2642, tmp366
	str	r3, [fp, #-32]	@ tmp367, x_new
	ldr	r3, [fp, #-24]	@ tmp368, i
	add	r2, r3, #3	@ D.2643, tmp368,
	ldr	r3, [fp, #-152]	@ tmp369, x
	mov	r2, r3, asr r2	@ D.2644, tmp369,
	ldr	r3, [fp, #-156]	@ tmp370, y
	rsb	r3, r2, r3	@ tmp371, D.2644, tmp370
	str	r3, [fp, #-28]	@ tmp371, y_new
	ldr	r3, [fp, #-24]	@ tmp372, i
	add	r3, r3, #3	@ D.2645, tmp372,
	mvn	r2, #127	@ tmp373,
	mov	r3, r3, asl #2	@ tmp374, D.2645,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp375,, tmp374
	add	r3, r3, r2	@ tmp376, tmp375, tmp373
	ldr	r2, [r3, #0]	@ D.2646, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp377, z
	add	r3, r3, r2	@ tmp378, tmp377, D.2646
	str	r3, [fp, #-160]	@ tmp378, z
	b	.L10	@
.L9:
	ldr	r3, [fp, #-24]	@ tmp379, i
	add	r2, r3, #3	@ D.2647, tmp379,
	ldr	r3, [fp, #-156]	@ tmp380, y
	mov	r2, r3, asr r2	@ D.2648, tmp380,
	ldr	r3, [fp, #-152]	@ tmp381, x
	rsb	r3, r2, r3	@ tmp382, D.2648, tmp381
	str	r3, [fp, #-32]	@ tmp382, x_new
	ldr	r3, [fp, #-24]	@ tmp383, i
	add	r2, r3, #3	@ D.2649, tmp383,
	ldr	r3, [fp, #-152]	@ tmp384, x
	mov	r2, r3, asr r2	@ D.2650, tmp384,
	ldr	r3, [fp, #-156]	@ tmp385, y
	add	r3, r2, r3	@ tmp386, D.2650, tmp385
	str	r3, [fp, #-28]	@ tmp386, y_new
	ldr	r3, [fp, #-24]	@ tmp387, i
	add	r3, r3, #3	@ D.2651, tmp387,
	mvn	r2, #127	@ tmp388,
	mov	r3, r3, asl #2	@ tmp389, D.2651,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp390,, tmp389
	add	r3, r3, r2	@ tmp391, tmp390, tmp388
	ldr	r2, [r3, #0]	@ D.2652, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp392, z
	rsb	r3, r2, r3	@ tmp393, D.2652, tmp392
	str	r3, [fp, #-160]	@ tmp393, z
.L10:
	ldr	r3, [fp, #-32]	@ tmp394, x_new
	str	r3, [fp, #-152]	@ tmp394, x
	ldr	r3, [fp, #-28]	@ tmp395, y_new
	str	r3, [fp, #-156]	@ tmp395, y
	ldr	r3, [fp, #-156]	@ tmp396, y
	cmp	r3, #0	@ tmp396,
	blt	.L11	@,
	ldr	r3, [fp, #-24]	@ tmp397, i
	add	r2, r3, #4	@ D.2653, tmp397,
	ldr	r3, [fp, #-156]	@ tmp398, y
	mov	r2, r3, asr r2	@ D.2654, tmp398,
	ldr	r3, [fp, #-152]	@ tmp399, x
	add	r3, r2, r3	@ tmp400, D.2654, tmp399
	str	r3, [fp, #-32]	@ tmp400, x_new
	ldr	r3, [fp, #-24]	@ tmp401, i
	add	r2, r3, #4	@ D.2655, tmp401,
	ldr	r3, [fp, #-152]	@ tmp402, x
	mov	r2, r3, asr r2	@ D.2656, tmp402,
	ldr	r3, [fp, #-156]	@ tmp403, y
	rsb	r3, r2, r3	@ tmp404, D.2656, tmp403
	str	r3, [fp, #-28]	@ tmp404, y_new
	ldr	r3, [fp, #-24]	@ tmp405, i
	add	r3, r3, #4	@ D.2657, tmp405,
	mvn	r2, #127	@ tmp406,
	mov	r3, r3, asl #2	@ tmp407, D.2657,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp408,, tmp407
	add	r3, r3, r2	@ tmp409, tmp408, tmp406
	ldr	r2, [r3, #0]	@ D.2658, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp410, z
	add	r3, r3, r2	@ tmp411, tmp410, D.2658
	str	r3, [fp, #-160]	@ tmp411, z
	b	.L12	@
.L11:
	ldr	r3, [fp, #-24]	@ tmp412, i
	add	r2, r3, #4	@ D.2659, tmp412,
	ldr	r3, [fp, #-156]	@ tmp413, y
	mov	r2, r3, asr r2	@ D.2660, tmp413,
	ldr	r3, [fp, #-152]	@ tmp414, x
	rsb	r3, r2, r3	@ tmp415, D.2660, tmp414
	str	r3, [fp, #-32]	@ tmp415, x_new
	ldr	r3, [fp, #-24]	@ tmp416, i
	add	r2, r3, #4	@ D.2661, tmp416,
	ldr	r3, [fp, #-152]	@ tmp417, x
	mov	r2, r3, asr r2	@ D.2662, tmp417,
	ldr	r3, [fp, #-156]	@ tmp418, y
	add	r3, r2, r3	@ tmp419, D.2662, tmp418
	str	r3, [fp, #-28]	@ tmp419, y_new
	ldr	r3, [fp, #-24]	@ tmp420, i
	add	r3, r3, #4	@ D.2663, tmp420,
	mvn	r2, #127	@ tmp421,
	mov	r3, r3, asl #2	@ tmp422, D.2663,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp423,, tmp422
	add	r3, r3, r2	@ tmp424, tmp423, tmp421
	ldr	r2, [r3, #0]	@ D.2664, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp425, z
	rsb	r3, r2, r3	@ tmp426, D.2664, tmp425
	str	r3, [fp, #-160]	@ tmp426, z
.L12:
	ldr	r3, [fp, #-32]	@ tmp427, x_new
	str	r3, [fp, #-152]	@ tmp427, x
	ldr	r3, [fp, #-28]	@ tmp428, y_new
	str	r3, [fp, #-156]	@ tmp428, y
	ldr	r3, [fp, #-156]	@ tmp429, y
	cmp	r3, #0	@ tmp429,
	blt	.L13	@,
	ldr	r3, [fp, #-24]	@ tmp430, i
	add	r2, r3, #5	@ D.2665, tmp430,
	ldr	r3, [fp, #-156]	@ tmp431, y
	mov	r2, r3, asr r2	@ D.2666, tmp431,
	ldr	r3, [fp, #-152]	@ tmp432, x
	add	r3, r2, r3	@ tmp433, D.2666, tmp432
	str	r3, [fp, #-32]	@ tmp433, x_new
	ldr	r3, [fp, #-24]	@ tmp434, i
	add	r2, r3, #5	@ D.2667, tmp434,
	ldr	r3, [fp, #-152]	@ tmp435, x
	mov	r2, r3, asr r2	@ D.2668, tmp435,
	ldr	r3, [fp, #-156]	@ tmp436, y
	rsb	r3, r2, r3	@ tmp437, D.2668, tmp436
	str	r3, [fp, #-28]	@ tmp437, y_new
	ldr	r3, [fp, #-24]	@ tmp438, i
	add	r3, r3, #5	@ D.2669, tmp438,
	mvn	r2, #127	@ tmp439,
	mov	r3, r3, asl #2	@ tmp440, D.2669,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp441,, tmp440
	add	r3, r3, r2	@ tmp442, tmp441, tmp439
	ldr	r2, [r3, #0]	@ D.2670, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp443, z
	add	r3, r3, r2	@ tmp444, tmp443, D.2670
	str	r3, [fp, #-160]	@ tmp444, z
	b	.L14	@
.L13:
	ldr	r3, [fp, #-24]	@ tmp445, i
	add	r2, r3, #5	@ D.2671, tmp445,
	ldr	r3, [fp, #-156]	@ tmp446, y
	mov	r2, r3, asr r2	@ D.2672, tmp446,
	ldr	r3, [fp, #-152]	@ tmp447, x
	rsb	r3, r2, r3	@ tmp448, D.2672, tmp447
	str	r3, [fp, #-32]	@ tmp448, x_new
	ldr	r3, [fp, #-24]	@ tmp449, i
	add	r2, r3, #5	@ D.2673, tmp449,
	ldr	r3, [fp, #-152]	@ tmp450, x
	mov	r2, r3, asr r2	@ D.2674, tmp450,
	ldr	r3, [fp, #-156]	@ tmp451, y
	add	r3, r2, r3	@ tmp452, D.2674, tmp451
	str	r3, [fp, #-28]	@ tmp452, y_new
	ldr	r3, [fp, #-24]	@ tmp453, i
	add	r3, r3, #5	@ D.2675, tmp453,
	mvn	r2, #127	@ tmp454,
	mov	r3, r3, asl #2	@ tmp455, D.2675,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp456,, tmp455
	add	r3, r3, r2	@ tmp457, tmp456, tmp454
	ldr	r2, [r3, #0]	@ D.2676, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp458, z
	rsb	r3, r2, r3	@ tmp459, D.2676, tmp458
	str	r3, [fp, #-160]	@ tmp459, z
.L14:
	ldr	r3, [fp, #-32]	@ tmp460, x_new
	str	r3, [fp, #-152]	@ tmp460, x
	ldr	r3, [fp, #-28]	@ tmp461, y_new
	str	r3, [fp, #-156]	@ tmp461, y
	ldr	r3, [fp, #-156]	@ tmp462, y
	cmp	r3, #0	@ tmp462,
	blt	.L15	@,
	ldr	r3, [fp, #-24]	@ tmp463, i
	add	r2, r3, #6	@ D.2677, tmp463,
	ldr	r3, [fp, #-156]	@ tmp464, y
	mov	r2, r3, asr r2	@ D.2678, tmp464,
	ldr	r3, [fp, #-152]	@ tmp465, x
	add	r3, r2, r3	@ tmp466, D.2678, tmp465
	str	r3, [fp, #-32]	@ tmp466, x_new
	ldr	r3, [fp, #-24]	@ tmp467, i
	add	r2, r3, #6	@ D.2679, tmp467,
	ldr	r3, [fp, #-152]	@ tmp468, x
	mov	r2, r3, asr r2	@ D.2680, tmp468,
	ldr	r3, [fp, #-156]	@ tmp469, y
	rsb	r3, r2, r3	@ tmp470, D.2680, tmp469
	str	r3, [fp, #-28]	@ tmp470, y_new
	ldr	r3, [fp, #-24]	@ tmp471, i
	add	r3, r3, #6	@ D.2681, tmp471,
	mvn	r2, #127	@ tmp472,
	mov	r3, r3, asl #2	@ tmp473, D.2681,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp474,, tmp473
	add	r3, r3, r2	@ tmp475, tmp474, tmp472
	ldr	r2, [r3, #0]	@ D.2682, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp476, z
	add	r3, r3, r2	@ tmp477, tmp476, D.2682
	str	r3, [fp, #-160]	@ tmp477, z
	b	.L16	@
.L15:
	ldr	r3, [fp, #-24]	@ tmp478, i
	add	r2, r3, #6	@ D.2683, tmp478,
	ldr	r3, [fp, #-156]	@ tmp479, y
	mov	r2, r3, asr r2	@ D.2684, tmp479,
	ldr	r3, [fp, #-152]	@ tmp480, x
	rsb	r3, r2, r3	@ tmp481, D.2684, tmp480
	str	r3, [fp, #-32]	@ tmp481, x_new
	ldr	r3, [fp, #-24]	@ tmp482, i
	add	r2, r3, #6	@ D.2685, tmp482,
	ldr	r3, [fp, #-152]	@ tmp483, x
	mov	r2, r3, asr r2	@ D.2686, tmp483,
	ldr	r3, [fp, #-156]	@ tmp484, y
	add	r3, r2, r3	@ tmp485, D.2686, tmp484
	str	r3, [fp, #-28]	@ tmp485, y_new
	ldr	r3, [fp, #-24]	@ tmp486, i
	add	r3, r3, #6	@ D.2687, tmp486,
	mvn	r2, #127	@ tmp487,
	mov	r3, r3, asl #2	@ tmp488, D.2687,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp489,, tmp488
	add	r3, r3, r2	@ tmp490, tmp489, tmp487
	ldr	r2, [r3, #0]	@ D.2688, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp491, z
	rsb	r3, r2, r3	@ tmp492, D.2688, tmp491
	str	r3, [fp, #-160]	@ tmp492, z
.L16:
	ldr	r3, [fp, #-32]	@ tmp493, x_new
	str	r3, [fp, #-152]	@ tmp493, x
	ldr	r3, [fp, #-28]	@ tmp494, y_new
	str	r3, [fp, #-156]	@ tmp494, y
	ldr	r3, [fp, #-156]	@ tmp495, y
	cmp	r3, #0	@ tmp495,
	blt	.L17	@,
	ldr	r3, [fp, #-24]	@ tmp496, i
	add	r2, r3, #7	@ D.2689, tmp496,
	ldr	r3, [fp, #-156]	@ tmp497, y
	mov	r2, r3, asr r2	@ D.2690, tmp497,
	ldr	r3, [fp, #-152]	@ tmp498, x
	add	r3, r2, r3	@ tmp499, D.2690, tmp498
	str	r3, [fp, #-32]	@ tmp499, x_new
	ldr	r3, [fp, #-24]	@ tmp500, i
	add	r2, r3, #7	@ D.2691, tmp500,
	ldr	r3, [fp, #-152]	@ tmp501, x
	mov	r2, r3, asr r2	@ D.2692, tmp501,
	ldr	r3, [fp, #-156]	@ tmp502, y
	rsb	r3, r2, r3	@ tmp503, D.2692, tmp502
	str	r3, [fp, #-28]	@ tmp503, y_new
	ldr	r3, [fp, #-24]	@ tmp504, i
	add	r3, r3, #7	@ D.2693, tmp504,
	mvn	r2, #127	@ tmp505,
	mov	r3, r3, asl #2	@ tmp506, D.2693,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp507,, tmp506
	add	r3, r3, r2	@ tmp508, tmp507, tmp505
	ldr	r2, [r3, #0]	@ D.2694, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp509, z
	add	r3, r3, r2	@ tmp510, tmp509, D.2694
	str	r3, [fp, #-160]	@ tmp510, z
	b	.L18	@
.L17:
	ldr	r3, [fp, #-24]	@ tmp511, i
	add	r2, r3, #7	@ D.2695, tmp511,
	ldr	r3, [fp, #-156]	@ tmp512, y
	mov	r2, r3, asr r2	@ D.2696, tmp512,
	ldr	r3, [fp, #-152]	@ tmp513, x
	rsb	r3, r2, r3	@ tmp514, D.2696, tmp513
	str	r3, [fp, #-32]	@ tmp514, x_new
	ldr	r3, [fp, #-24]	@ tmp515, i
	add	r2, r3, #7	@ D.2697, tmp515,
	ldr	r3, [fp, #-152]	@ tmp516, x
	mov	r2, r3, asr r2	@ D.2698, tmp516,
	ldr	r3, [fp, #-156]	@ tmp517, y
	add	r3, r2, r3	@ tmp518, D.2698, tmp517
	str	r3, [fp, #-28]	@ tmp518, y_new
	ldr	r3, [fp, #-24]	@ tmp519, i
	add	r3, r3, #7	@ D.2699, tmp519,
	mvn	r2, #127	@ tmp520,
	mov	r3, r3, asl #2	@ tmp521, D.2699,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp522,, tmp521
	add	r3, r3, r2	@ tmp523, tmp522, tmp520
	ldr	r2, [r3, #0]	@ D.2700, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp524, z
	rsb	r3, r2, r3	@ tmp525, D.2700, tmp524
	str	r3, [fp, #-160]	@ tmp525, z
.L18:
	ldr	r3, [fp, #-32]	@ tmp526, x_new
	str	r3, [fp, #-152]	@ tmp526, x
	ldr	r3, [fp, #-28]	@ tmp527, y_new
	str	r3, [fp, #-156]	@ tmp527, y
	ldr	r3, [fp, #-156]	@ tmp528, y
	cmp	r3, #0	@ tmp528,
	blt	.L19	@,
	ldr	r3, [fp, #-24]	@ tmp529, i
	add	r2, r3, #8	@ D.2701, tmp529,
	ldr	r3, [fp, #-156]	@ tmp530, y
	mov	r2, r3, asr r2	@ D.2702, tmp530,
	ldr	r3, [fp, #-152]	@ tmp531, x
	add	r3, r2, r3	@ tmp532, D.2702, tmp531
	str	r3, [fp, #-32]	@ tmp532, x_new
	ldr	r3, [fp, #-24]	@ tmp533, i
	add	r2, r3, #8	@ D.2703, tmp533,
	ldr	r3, [fp, #-152]	@ tmp534, x
	mov	r2, r3, asr r2	@ D.2704, tmp534,
	ldr	r3, [fp, #-156]	@ tmp535, y
	rsb	r3, r2, r3	@ tmp536, D.2704, tmp535
	str	r3, [fp, #-28]	@ tmp536, y_new
	ldr	r3, [fp, #-24]	@ tmp537, i
	add	r3, r3, #8	@ D.2705, tmp537,
	mvn	r2, #127	@ tmp538,
	mov	r3, r3, asl #2	@ tmp539, D.2705,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp540,, tmp539
	add	r3, r3, r2	@ tmp541, tmp540, tmp538
	ldr	r2, [r3, #0]	@ D.2706, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp542, z
	add	r3, r3, r2	@ tmp543, tmp542, D.2706
	str	r3, [fp, #-160]	@ tmp543, z
	b	.L20	@
.L19:
	ldr	r3, [fp, #-24]	@ tmp544, i
	add	r2, r3, #8	@ D.2707, tmp544,
	ldr	r3, [fp, #-156]	@ tmp545, y
	mov	r2, r3, asr r2	@ D.2708, tmp545,
	ldr	r3, [fp, #-152]	@ tmp546, x
	rsb	r3, r2, r3	@ tmp547, D.2708, tmp546
	str	r3, [fp, #-32]	@ tmp547, x_new
	ldr	r3, [fp, #-24]	@ tmp548, i
	add	r2, r3, #8	@ D.2709, tmp548,
	ldr	r3, [fp, #-152]	@ tmp549, x
	mov	r2, r3, asr r2	@ D.2710, tmp549,
	ldr	r3, [fp, #-156]	@ tmp550, y
	add	r3, r2, r3	@ tmp551, D.2710, tmp550
	str	r3, [fp, #-28]	@ tmp551, y_new
	ldr	r3, [fp, #-24]	@ tmp552, i
	add	r3, r3, #8	@ D.2711, tmp552,
	mvn	r2, #127	@ tmp553,
	mov	r3, r3, asl #2	@ tmp554, D.2711,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp555,, tmp554
	add	r3, r3, r2	@ tmp556, tmp555, tmp553
	ldr	r2, [r3, #0]	@ D.2712, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp557, z
	rsb	r3, r2, r3	@ tmp558, D.2712, tmp557
	str	r3, [fp, #-160]	@ tmp558, z
.L20:
	ldr	r3, [fp, #-32]	@ tmp559, x_new
	str	r3, [fp, #-152]	@ tmp559, x
	ldr	r3, [fp, #-28]	@ tmp560, y_new
	str	r3, [fp, #-156]	@ tmp560, y
	ldr	r3, [fp, #-24]	@ tmp561, i
	add	r3, r3, #9	@ tmp562, tmp561,
	str	r3, [fp, #-24]	@ tmp562, i
.L2:
	ldr	r3, [fp, #-24]	@ tmp563, i
	cmp	r3, #26	@ tmp563,
	ble	.L21	@,
	ldr	r3, [fp, #-156]	@ tmp564, y
	cmp	r3, #0	@ tmp564,
	blt	.L22	@,
	ldr	r2, [fp, #-156]	@ tmp565, y
	ldr	r3, [fp, #-24]	@ tmp566, i
	mov	r2, r2, asr r3	@ D.2713, tmp565,
	ldr	r3, [fp, #-152]	@ tmp567, x
	add	r3, r2, r3	@ tmp568, D.2713, tmp567
	str	r3, [fp, #-32]	@ tmp568, x_new
	ldr	r2, [fp, #-152]	@ tmp569, x
	ldr	r3, [fp, #-24]	@ tmp570, i
	mov	r2, r2, asr r3	@ D.2714, tmp569,
	ldr	r3, [fp, #-156]	@ tmp571, y
	rsb	r3, r2, r3	@ tmp572, D.2714, tmp571
	str	r3, [fp, #-28]	@ tmp572, y_new
	ldr	r3, [fp, #-24]	@ i.3, i
	mvn	r2, #127	@ tmp573,
	mov	r3, r3, asl #2	@ tmp574, i.3,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp575,, tmp574
	add	r3, r3, r2	@ tmp576, tmp575, tmp573
	ldr	r2, [r3, #0]	@ D.2716, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp577, z
	add	r3, r3, r2	@ tmp578, tmp577, D.2716
	str	r3, [fp, #-160]	@ tmp578, z
	b	.L23	@
.L22:
	ldr	r2, [fp, #-156]	@ tmp579, y
	ldr	r3, [fp, #-24]	@ tmp580, i
	mov	r2, r2, asr r3	@ D.2717, tmp579,
	ldr	r3, [fp, #-152]	@ tmp581, x
	rsb	r3, r2, r3	@ tmp582, D.2717, tmp581
	str	r3, [fp, #-32]	@ tmp582, x_new
	ldr	r2, [fp, #-152]	@ tmp583, x
	ldr	r3, [fp, #-24]	@ tmp584, i
	mov	r2, r2, asr r3	@ D.2718, tmp583,
	ldr	r3, [fp, #-156]	@ tmp585, y
	add	r3, r2, r3	@ tmp586, D.2718, tmp585
	str	r3, [fp, #-28]	@ tmp586, y_new
	ldr	r3, [fp, #-24]	@ i.4, i
	mvn	r2, #127	@ tmp587,
	mov	r3, r3, asl #2	@ tmp588, i.4,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp589,, tmp588
	add	r3, r3, r2	@ tmp590, tmp589, tmp587
	ldr	r2, [r3, #0]	@ D.2720, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp591, z
	rsb	r3, r2, r3	@ tmp592, D.2720, tmp591
	str	r3, [fp, #-160]	@ tmp592, z
.L23:
	ldr	r3, [fp, #-32]	@ tmp593, x_new
	str	r3, [fp, #-152]	@ tmp593, x
	ldr	r3, [fp, #-28]	@ tmp594, y_new
	str	r3, [fp, #-156]	@ tmp594, y
	ldr	r3, [fp, #-156]	@ tmp595, y
	cmp	r3, #0	@ tmp595,
	blt	.L24	@,
	ldr	r3, [fp, #-24]	@ tmp596, i
	add	r2, r3, #1	@ D.2721, tmp596,
	ldr	r3, [fp, #-156]	@ tmp597, y
	mov	r2, r3, asr r2	@ D.2722, tmp597,
	ldr	r3, [fp, #-152]	@ tmp598, x
	add	r3, r2, r3	@ tmp599, D.2722, tmp598
	str	r3, [fp, #-32]	@ tmp599, x_new
	ldr	r3, [fp, #-24]	@ tmp600, i
	add	r2, r3, #1	@ D.2723, tmp600,
	ldr	r3, [fp, #-152]	@ tmp601, x
	mov	r2, r3, asr r2	@ D.2724, tmp601,
	ldr	r3, [fp, #-156]	@ tmp602, y
	rsb	r3, r2, r3	@ tmp603, D.2724, tmp602
	str	r3, [fp, #-28]	@ tmp603, y_new
	ldr	r3, [fp, #-24]	@ tmp604, i
	add	r3, r3, #1	@ D.2725, tmp604,
	mvn	r2, #127	@ tmp605,
	mov	r3, r3, asl #2	@ tmp606, D.2725,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp607,, tmp606
	add	r3, r3, r2	@ tmp608, tmp607, tmp605
	ldr	r2, [r3, #0]	@ D.2726, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp609, z
	add	r3, r3, r2	@ tmp610, tmp609, D.2726
	str	r3, [fp, #-160]	@ tmp610, z
	b	.L25	@
.L24:
	ldr	r3, [fp, #-24]	@ tmp611, i
	add	r2, r3, #1	@ D.2727, tmp611,
	ldr	r3, [fp, #-156]	@ tmp612, y
	mov	r2, r3, asr r2	@ D.2728, tmp612,
	ldr	r3, [fp, #-152]	@ tmp613, x
	rsb	r3, r2, r3	@ tmp614, D.2728, tmp613
	str	r3, [fp, #-32]	@ tmp614, x_new
	ldr	r3, [fp, #-24]	@ tmp615, i
	add	r2, r3, #1	@ D.2729, tmp615,
	ldr	r3, [fp, #-152]	@ tmp616, x
	mov	r2, r3, asr r2	@ D.2730, tmp616,
	ldr	r3, [fp, #-156]	@ tmp617, y
	add	r3, r2, r3	@ tmp618, D.2730, tmp617
	str	r3, [fp, #-28]	@ tmp618, y_new
	ldr	r3, [fp, #-24]	@ tmp619, i
	add	r3, r3, #1	@ D.2731, tmp619,
	mvn	r2, #127	@ tmp620,
	mov	r3, r3, asl #2	@ tmp621, D.2731,
	sub	r1, fp, #20	@,,
	add	r3, r1, r3	@ tmp622,, tmp621
	add	r3, r3, r2	@ tmp623, tmp622, tmp620
	ldr	r2, [r3, #0]	@ D.2732, ARCTAN
	ldr	r3, [fp, #-160]	@ tmp624, z
	rsb	r3, r2, r3	@ tmp625, D.2732, tmp624
	str	r3, [fp, #-160]	@ tmp625, z
.L25:
	ldr	r3, [fp, #-32]	@ tmp626, x_new
	str	r3, [fp, #-152]	@ tmp626, x
	ldr	r3, [fp, #-28]	@ tmp627, y_new
	str	r3, [fp, #-156]	@ tmp627, y
	ldr	r0, [fp, #-160]	@, z
	bl	__aeabi_i2d	@
	mov	r3, r0	@ D.2733,
	mov	r4, r1	@ D.2733,
	adr	r6, .L27	@,
	ldmia	r6, {r5-r6}	@, tmp628
	mov	r0, r3	@, D.2733
	mov	r1, r4	@, D.2733
	mov	r2, r5	@, tmp628
	mov	r3, r6	@,
	bl	__aeabi_dmul	@
	mov	r3, r0	@ tmp629,
	mov	r4, r1	@,
	ldr	r0, .L27+12	@,
	mov	r2, r3	@, D.2734
	mov	r3, r4	@, D.2734
	bl	printf	@
	sub	sp, fp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L28:
	.align	3
.L27:
	.word	-3836923
	.word	1049624575
	.word	C.0.2608
	.word	.LC0
	.size	vectoring_mode, .-vectoring_mode
	.section	.rodata
	.align	2
	.type	C.5.2784, %object
	.size	C.5.2784, 116
C.5.2784:
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
	.align	2
.LC1:
	.ascii	"sine: %lf, cosine: %lf\012\000"
	.text
	.align	2
	.global	rotational_mode
	.type	rotational_mode, %function
rotational_mode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}	@,
	add	fp, sp, #24	@,,
	sub	sp, sp, #156	@,,
	str	r0, [fp, #-160]	@ x, x
	str	r1, [fp, #-164]	@ y, y
	str	r2, [fp, #-168]	@ z, z
	ldr	r3, .L55+16	@ tmp264,
	sub	r2, fp, #156	@ tmp265,,
	mov	ip, #116	@ tmp267,
	mov	r0, r2	@, tmp265
	mov	r1, r3	@, tmp266
	mov	r2, ip	@, tmp267
	bl	memcpy	@
	mov	r3, #0	@ tmp269,
	str	r3, [fp, #-32]	@ tmp269, i
	b	.L30	@
.L49:
	ldr	r3, [fp, #-168]	@ tmp270, z
	cmp	r3, #0	@ tmp270,
	bge	.L31	@,
	ldr	r2, [fp, #-164]	@ tmp271, y
	ldr	r3, [fp, #-32]	@ tmp272, i
	mov	r2, r2, asr r3	@ D.2785, tmp271,
	ldr	r3, [fp, #-160]	@ tmp273, x
	add	r3, r2, r3	@ tmp274, D.2785, tmp273
	str	r3, [fp, #-40]	@ tmp274, x_new
	ldr	r2, [fp, #-160]	@ tmp275, x
	ldr	r3, [fp, #-32]	@ tmp276, i
	mov	r2, r2, asr r3	@ D.2786, tmp275,
	ldr	r3, [fp, #-164]	@ tmp277, y
	rsb	r3, r2, r3	@ tmp278, D.2786, tmp277
	str	r3, [fp, #-36]	@ tmp278, y_new
	ldr	r3, [fp, #-32]	@ i.6, i
	mvn	r2, #127	@ tmp279,
	mov	r3, r3, asl #2	@ tmp280, i.6,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp281,, tmp280
	add	r3, r3, r2	@ tmp282, tmp281, tmp279
	ldr	r2, [r3, #0]	@ D.2788, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp283, z
	add	r3, r3, r2	@ tmp284, tmp283, D.2788
	str	r3, [fp, #-168]	@ tmp284, z
	b	.L32	@
.L31:
	ldr	r2, [fp, #-164]	@ tmp285, y
	ldr	r3, [fp, #-32]	@ tmp286, i
	mov	r2, r2, asr r3	@ D.2789, tmp285,
	ldr	r3, [fp, #-160]	@ tmp287, x
	rsb	r3, r2, r3	@ tmp288, D.2789, tmp287
	str	r3, [fp, #-40]	@ tmp288, x_new
	ldr	r2, [fp, #-160]	@ tmp289, x
	ldr	r3, [fp, #-32]	@ tmp290, i
	mov	r2, r2, asr r3	@ D.2790, tmp289,
	ldr	r3, [fp, #-164]	@ tmp291, y
	add	r3, r2, r3	@ tmp292, D.2790, tmp291
	str	r3, [fp, #-36]	@ tmp292, y_new
	ldr	r3, [fp, #-32]	@ i.7, i
	mvn	r2, #127	@ tmp293,
	mov	r3, r3, asl #2	@ tmp294, i.7,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp295,, tmp294
	add	r3, r3, r2	@ tmp296, tmp295, tmp293
	ldr	r2, [r3, #0]	@ D.2792, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp297, z
	rsb	r3, r2, r3	@ tmp298, D.2792, tmp297
	str	r3, [fp, #-168]	@ tmp298, z
.L32:
	ldr	r3, [fp, #-40]	@ tmp299, x_new
	str	r3, [fp, #-160]	@ tmp299, x
	ldr	r3, [fp, #-36]	@ tmp300, y_new
	str	r3, [fp, #-164]	@ tmp300, y
	ldr	r3, [fp, #-168]	@ tmp301, z
	cmp	r3, #0	@ tmp301,
	bge	.L33	@,
	ldr	r3, [fp, #-32]	@ tmp302, i
	add	r2, r3, #1	@ D.2793, tmp302,
	ldr	r3, [fp, #-164]	@ tmp303, y
	mov	r2, r3, asr r2	@ D.2794, tmp303,
	ldr	r3, [fp, #-160]	@ tmp304, x
	add	r3, r2, r3	@ tmp305, D.2794, tmp304
	str	r3, [fp, #-40]	@ tmp305, x_new
	ldr	r3, [fp, #-32]	@ tmp306, i
	add	r2, r3, #1	@ D.2795, tmp306,
	ldr	r3, [fp, #-160]	@ tmp307, x
	mov	r2, r3, asr r2	@ D.2796, tmp307,
	ldr	r3, [fp, #-164]	@ tmp308, y
	rsb	r3, r2, r3	@ tmp309, D.2796, tmp308
	str	r3, [fp, #-36]	@ tmp309, y_new
	ldr	r3, [fp, #-32]	@ tmp310, i
	add	r3, r3, #1	@ D.2797, tmp310,
	mvn	r2, #127	@ tmp311,
	mov	r3, r3, asl #2	@ tmp312, D.2797,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp313,, tmp312
	add	r3, r3, r2	@ tmp314, tmp313, tmp311
	ldr	r2, [r3, #0]	@ D.2798, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp315, z
	add	r3, r3, r2	@ tmp316, tmp315, D.2798
	str	r3, [fp, #-168]	@ tmp316, z
	b	.L34	@
.L33:
	ldr	r3, [fp, #-32]	@ tmp317, i
	add	r2, r3, #1	@ D.2799, tmp317,
	ldr	r3, [fp, #-164]	@ tmp318, y
	mov	r2, r3, asr r2	@ D.2800, tmp318,
	ldr	r3, [fp, #-160]	@ tmp319, x
	rsb	r3, r2, r3	@ tmp320, D.2800, tmp319
	str	r3, [fp, #-40]	@ tmp320, x_new
	ldr	r3, [fp, #-32]	@ tmp321, i
	add	r2, r3, #1	@ D.2801, tmp321,
	ldr	r3, [fp, #-160]	@ tmp322, x
	mov	r2, r3, asr r2	@ D.2802, tmp322,
	ldr	r3, [fp, #-164]	@ tmp323, y
	add	r3, r2, r3	@ tmp324, D.2802, tmp323
	str	r3, [fp, #-36]	@ tmp324, y_new
	ldr	r3, [fp, #-32]	@ tmp325, i
	add	r3, r3, #1	@ D.2803, tmp325,
	mvn	r2, #127	@ tmp326,
	mov	r3, r3, asl #2	@ tmp327, D.2803,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp328,, tmp327
	add	r3, r3, r2	@ tmp329, tmp328, tmp326
	ldr	r2, [r3, #0]	@ D.2804, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp330, z
	rsb	r3, r2, r3	@ tmp331, D.2804, tmp330
	str	r3, [fp, #-168]	@ tmp331, z
.L34:
	ldr	r3, [fp, #-40]	@ tmp332, x_new
	str	r3, [fp, #-160]	@ tmp332, x
	ldr	r3, [fp, #-36]	@ tmp333, y_new
	str	r3, [fp, #-164]	@ tmp333, y
	ldr	r3, [fp, #-168]	@ tmp334, z
	cmp	r3, #0	@ tmp334,
	bge	.L35	@,
	ldr	r3, [fp, #-32]	@ tmp335, i
	add	r2, r3, #2	@ D.2805, tmp335,
	ldr	r3, [fp, #-164]	@ tmp336, y
	mov	r2, r3, asr r2	@ D.2806, tmp336,
	ldr	r3, [fp, #-160]	@ tmp337, x
	add	r3, r2, r3	@ tmp338, D.2806, tmp337
	str	r3, [fp, #-40]	@ tmp338, x_new
	ldr	r3, [fp, #-32]	@ tmp339, i
	add	r2, r3, #2	@ D.2807, tmp339,
	ldr	r3, [fp, #-160]	@ tmp340, x
	mov	r2, r3, asr r2	@ D.2808, tmp340,
	ldr	r3, [fp, #-164]	@ tmp341, y
	rsb	r3, r2, r3	@ tmp342, D.2808, tmp341
	str	r3, [fp, #-36]	@ tmp342, y_new
	ldr	r3, [fp, #-32]	@ tmp343, i
	add	r3, r3, #2	@ D.2809, tmp343,
	mvn	r2, #127	@ tmp344,
	mov	r3, r3, asl #2	@ tmp345, D.2809,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp346,, tmp345
	add	r3, r3, r2	@ tmp347, tmp346, tmp344
	ldr	r2, [r3, #0]	@ D.2810, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp348, z
	add	r3, r3, r2	@ tmp349, tmp348, D.2810
	str	r3, [fp, #-168]	@ tmp349, z
	b	.L36	@
.L35:
	ldr	r3, [fp, #-32]	@ tmp350, i
	add	r2, r3, #2	@ D.2811, tmp350,
	ldr	r3, [fp, #-164]	@ tmp351, y
	mov	r2, r3, asr r2	@ D.2812, tmp351,
	ldr	r3, [fp, #-160]	@ tmp352, x
	rsb	r3, r2, r3	@ tmp353, D.2812, tmp352
	str	r3, [fp, #-40]	@ tmp353, x_new
	ldr	r3, [fp, #-32]	@ tmp354, i
	add	r2, r3, #2	@ D.2813, tmp354,
	ldr	r3, [fp, #-160]	@ tmp355, x
	mov	r2, r3, asr r2	@ D.2814, tmp355,
	ldr	r3, [fp, #-164]	@ tmp356, y
	add	r3, r2, r3	@ tmp357, D.2814, tmp356
	str	r3, [fp, #-36]	@ tmp357, y_new
	ldr	r3, [fp, #-32]	@ tmp358, i
	add	r3, r3, #2	@ D.2815, tmp358,
	mvn	r2, #127	@ tmp359,
	mov	r3, r3, asl #2	@ tmp360, D.2815,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp361,, tmp360
	add	r3, r3, r2	@ tmp362, tmp361, tmp359
	ldr	r2, [r3, #0]	@ D.2816, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp363, z
	rsb	r3, r2, r3	@ tmp364, D.2816, tmp363
	str	r3, [fp, #-168]	@ tmp364, z
.L36:
	ldr	r3, [fp, #-40]	@ tmp365, x_new
	str	r3, [fp, #-160]	@ tmp365, x
	ldr	r3, [fp, #-36]	@ tmp366, y_new
	str	r3, [fp, #-164]	@ tmp366, y
	ldr	r3, [fp, #-168]	@ tmp367, z
	cmp	r3, #0	@ tmp367,
	bge	.L37	@,
	ldr	r3, [fp, #-32]	@ tmp368, i
	add	r2, r3, #3	@ D.2817, tmp368,
	ldr	r3, [fp, #-164]	@ tmp369, y
	mov	r2, r3, asr r2	@ D.2818, tmp369,
	ldr	r3, [fp, #-160]	@ tmp370, x
	add	r3, r2, r3	@ tmp371, D.2818, tmp370
	str	r3, [fp, #-40]	@ tmp371, x_new
	ldr	r3, [fp, #-32]	@ tmp372, i
	add	r2, r3, #3	@ D.2819, tmp372,
	ldr	r3, [fp, #-160]	@ tmp373, x
	mov	r2, r3, asr r2	@ D.2820, tmp373,
	ldr	r3, [fp, #-164]	@ tmp374, y
	rsb	r3, r2, r3	@ tmp375, D.2820, tmp374
	str	r3, [fp, #-36]	@ tmp375, y_new
	ldr	r3, [fp, #-32]	@ tmp376, i
	add	r3, r3, #3	@ D.2821, tmp376,
	mvn	r2, #127	@ tmp377,
	mov	r3, r3, asl #2	@ tmp378, D.2821,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp379,, tmp378
	add	r3, r3, r2	@ tmp380, tmp379, tmp377
	ldr	r2, [r3, #0]	@ D.2822, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp381, z
	add	r3, r3, r2	@ tmp382, tmp381, D.2822
	str	r3, [fp, #-168]	@ tmp382, z
	b	.L38	@
.L37:
	ldr	r3, [fp, #-32]	@ tmp383, i
	add	r2, r3, #3	@ D.2823, tmp383,
	ldr	r3, [fp, #-164]	@ tmp384, y
	mov	r2, r3, asr r2	@ D.2824, tmp384,
	ldr	r3, [fp, #-160]	@ tmp385, x
	rsb	r3, r2, r3	@ tmp386, D.2824, tmp385
	str	r3, [fp, #-40]	@ tmp386, x_new
	ldr	r3, [fp, #-32]	@ tmp387, i
	add	r2, r3, #3	@ D.2825, tmp387,
	ldr	r3, [fp, #-160]	@ tmp388, x
	mov	r2, r3, asr r2	@ D.2826, tmp388,
	ldr	r3, [fp, #-164]	@ tmp389, y
	add	r3, r2, r3	@ tmp390, D.2826, tmp389
	str	r3, [fp, #-36]	@ tmp390, y_new
	ldr	r3, [fp, #-32]	@ tmp391, i
	add	r3, r3, #3	@ D.2827, tmp391,
	mvn	r2, #127	@ tmp392,
	mov	r3, r3, asl #2	@ tmp393, D.2827,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp394,, tmp393
	add	r3, r3, r2	@ tmp395, tmp394, tmp392
	ldr	r2, [r3, #0]	@ D.2828, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp396, z
	rsb	r3, r2, r3	@ tmp397, D.2828, tmp396
	str	r3, [fp, #-168]	@ tmp397, z
.L38:
	ldr	r3, [fp, #-40]	@ tmp398, x_new
	str	r3, [fp, #-160]	@ tmp398, x
	ldr	r3, [fp, #-36]	@ tmp399, y_new
	str	r3, [fp, #-164]	@ tmp399, y
	ldr	r3, [fp, #-168]	@ tmp400, z
	cmp	r3, #0	@ tmp400,
	bge	.L39	@,
	ldr	r3, [fp, #-32]	@ tmp401, i
	add	r2, r3, #4	@ D.2829, tmp401,
	ldr	r3, [fp, #-164]	@ tmp402, y
	mov	r2, r3, asr r2	@ D.2830, tmp402,
	ldr	r3, [fp, #-160]	@ tmp403, x
	add	r3, r2, r3	@ tmp404, D.2830, tmp403
	str	r3, [fp, #-40]	@ tmp404, x_new
	ldr	r3, [fp, #-32]	@ tmp405, i
	add	r2, r3, #4	@ D.2831, tmp405,
	ldr	r3, [fp, #-160]	@ tmp406, x
	mov	r2, r3, asr r2	@ D.2832, tmp406,
	ldr	r3, [fp, #-164]	@ tmp407, y
	rsb	r3, r2, r3	@ tmp408, D.2832, tmp407
	str	r3, [fp, #-36]	@ tmp408, y_new
	ldr	r3, [fp, #-32]	@ tmp409, i
	add	r3, r3, #4	@ D.2833, tmp409,
	mvn	r2, #127	@ tmp410,
	mov	r3, r3, asl #2	@ tmp411, D.2833,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp412,, tmp411
	add	r3, r3, r2	@ tmp413, tmp412, tmp410
	ldr	r2, [r3, #0]	@ D.2834, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp414, z
	add	r3, r3, r2	@ tmp415, tmp414, D.2834
	str	r3, [fp, #-168]	@ tmp415, z
	b	.L40	@
.L39:
	ldr	r3, [fp, #-32]	@ tmp416, i
	add	r2, r3, #4	@ D.2835, tmp416,
	ldr	r3, [fp, #-164]	@ tmp417, y
	mov	r2, r3, asr r2	@ D.2836, tmp417,
	ldr	r3, [fp, #-160]	@ tmp418, x
	rsb	r3, r2, r3	@ tmp419, D.2836, tmp418
	str	r3, [fp, #-40]	@ tmp419, x_new
	ldr	r3, [fp, #-32]	@ tmp420, i
	add	r2, r3, #4	@ D.2837, tmp420,
	ldr	r3, [fp, #-160]	@ tmp421, x
	mov	r2, r3, asr r2	@ D.2838, tmp421,
	ldr	r3, [fp, #-164]	@ tmp422, y
	add	r3, r2, r3	@ tmp423, D.2838, tmp422
	str	r3, [fp, #-36]	@ tmp423, y_new
	ldr	r3, [fp, #-32]	@ tmp424, i
	add	r3, r3, #4	@ D.2839, tmp424,
	mvn	r2, #127	@ tmp425,
	mov	r3, r3, asl #2	@ tmp426, D.2839,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp427,, tmp426
	add	r3, r3, r2	@ tmp428, tmp427, tmp425
	ldr	r2, [r3, #0]	@ D.2840, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp429, z
	rsb	r3, r2, r3	@ tmp430, D.2840, tmp429
	str	r3, [fp, #-168]	@ tmp430, z
.L40:
	ldr	r3, [fp, #-40]	@ tmp431, x_new
	str	r3, [fp, #-160]	@ tmp431, x
	ldr	r3, [fp, #-36]	@ tmp432, y_new
	str	r3, [fp, #-164]	@ tmp432, y
	ldr	r3, [fp, #-168]	@ tmp433, z
	cmp	r3, #0	@ tmp433,
	bge	.L41	@,
	ldr	r3, [fp, #-32]	@ tmp434, i
	add	r2, r3, #5	@ D.2841, tmp434,
	ldr	r3, [fp, #-164]	@ tmp435, y
	mov	r2, r3, asr r2	@ D.2842, tmp435,
	ldr	r3, [fp, #-160]	@ tmp436, x
	add	r3, r2, r3	@ tmp437, D.2842, tmp436
	str	r3, [fp, #-40]	@ tmp437, x_new
	ldr	r3, [fp, #-32]	@ tmp438, i
	add	r2, r3, #5	@ D.2843, tmp438,
	ldr	r3, [fp, #-160]	@ tmp439, x
	mov	r2, r3, asr r2	@ D.2844, tmp439,
	ldr	r3, [fp, #-164]	@ tmp440, y
	rsb	r3, r2, r3	@ tmp441, D.2844, tmp440
	str	r3, [fp, #-36]	@ tmp441, y_new
	ldr	r3, [fp, #-32]	@ tmp442, i
	add	r3, r3, #5	@ D.2845, tmp442,
	mvn	r2, #127	@ tmp443,
	mov	r3, r3, asl #2	@ tmp444, D.2845,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp445,, tmp444
	add	r3, r3, r2	@ tmp446, tmp445, tmp443
	ldr	r2, [r3, #0]	@ D.2846, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp447, z
	add	r3, r3, r2	@ tmp448, tmp447, D.2846
	str	r3, [fp, #-168]	@ tmp448, z
	b	.L42	@
.L41:
	ldr	r3, [fp, #-32]	@ tmp449, i
	add	r2, r3, #5	@ D.2847, tmp449,
	ldr	r3, [fp, #-164]	@ tmp450, y
	mov	r2, r3, asr r2	@ D.2848, tmp450,
	ldr	r3, [fp, #-160]	@ tmp451, x
	rsb	r3, r2, r3	@ tmp452, D.2848, tmp451
	str	r3, [fp, #-40]	@ tmp452, x_new
	ldr	r3, [fp, #-32]	@ tmp453, i
	add	r2, r3, #5	@ D.2849, tmp453,
	ldr	r3, [fp, #-160]	@ tmp454, x
	mov	r2, r3, asr r2	@ D.2850, tmp454,
	ldr	r3, [fp, #-164]	@ tmp455, y
	add	r3, r2, r3	@ tmp456, D.2850, tmp455
	str	r3, [fp, #-36]	@ tmp456, y_new
	ldr	r3, [fp, #-32]	@ tmp457, i
	add	r3, r3, #5	@ D.2851, tmp457,
	mvn	r2, #127	@ tmp458,
	mov	r3, r3, asl #2	@ tmp459, D.2851,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp460,, tmp459
	add	r3, r3, r2	@ tmp461, tmp460, tmp458
	ldr	r2, [r3, #0]	@ D.2852, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp462, z
	rsb	r3, r2, r3	@ tmp463, D.2852, tmp462
	str	r3, [fp, #-168]	@ tmp463, z
.L42:
	ldr	r3, [fp, #-40]	@ tmp464, x_new
	str	r3, [fp, #-160]	@ tmp464, x
	ldr	r3, [fp, #-36]	@ tmp465, y_new
	str	r3, [fp, #-164]	@ tmp465, y
	ldr	r3, [fp, #-168]	@ tmp466, z
	cmp	r3, #0	@ tmp466,
	bge	.L43	@,
	ldr	r3, [fp, #-32]	@ tmp467, i
	add	r2, r3, #6	@ D.2853, tmp467,
	ldr	r3, [fp, #-164]	@ tmp468, y
	mov	r2, r3, asr r2	@ D.2854, tmp468,
	ldr	r3, [fp, #-160]	@ tmp469, x
	add	r3, r2, r3	@ tmp470, D.2854, tmp469
	str	r3, [fp, #-40]	@ tmp470, x_new
	ldr	r3, [fp, #-32]	@ tmp471, i
	add	r2, r3, #6	@ D.2855, tmp471,
	ldr	r3, [fp, #-160]	@ tmp472, x
	mov	r2, r3, asr r2	@ D.2856, tmp472,
	ldr	r3, [fp, #-164]	@ tmp473, y
	rsb	r3, r2, r3	@ tmp474, D.2856, tmp473
	str	r3, [fp, #-36]	@ tmp474, y_new
	ldr	r3, [fp, #-32]	@ tmp475, i
	add	r3, r3, #6	@ D.2857, tmp475,
	mvn	r2, #127	@ tmp476,
	mov	r3, r3, asl #2	@ tmp477, D.2857,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp478,, tmp477
	add	r3, r3, r2	@ tmp479, tmp478, tmp476
	ldr	r2, [r3, #0]	@ D.2858, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp480, z
	add	r3, r3, r2	@ tmp481, tmp480, D.2858
	str	r3, [fp, #-168]	@ tmp481, z
	b	.L44	@
.L43:
	ldr	r3, [fp, #-32]	@ tmp482, i
	add	r2, r3, #6	@ D.2859, tmp482,
	ldr	r3, [fp, #-164]	@ tmp483, y
	mov	r2, r3, asr r2	@ D.2860, tmp483,
	ldr	r3, [fp, #-160]	@ tmp484, x
	rsb	r3, r2, r3	@ tmp485, D.2860, tmp484
	str	r3, [fp, #-40]	@ tmp485, x_new
	ldr	r3, [fp, #-32]	@ tmp486, i
	add	r2, r3, #6	@ D.2861, tmp486,
	ldr	r3, [fp, #-160]	@ tmp487, x
	mov	r2, r3, asr r2	@ D.2862, tmp487,
	ldr	r3, [fp, #-164]	@ tmp488, y
	add	r3, r2, r3	@ tmp489, D.2862, tmp488
	str	r3, [fp, #-36]	@ tmp489, y_new
	ldr	r3, [fp, #-32]	@ tmp490, i
	add	r3, r3, #6	@ D.2863, tmp490,
	mvn	r2, #127	@ tmp491,
	mov	r3, r3, asl #2	@ tmp492, D.2863,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp493,, tmp492
	add	r3, r3, r2	@ tmp494, tmp493, tmp491
	ldr	r2, [r3, #0]	@ D.2864, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp495, z
	rsb	r3, r2, r3	@ tmp496, D.2864, tmp495
	str	r3, [fp, #-168]	@ tmp496, z
.L44:
	ldr	r3, [fp, #-40]	@ tmp497, x_new
	str	r3, [fp, #-160]	@ tmp497, x
	ldr	r3, [fp, #-36]	@ tmp498, y_new
	str	r3, [fp, #-164]	@ tmp498, y
	ldr	r3, [fp, #-168]	@ tmp499, z
	cmp	r3, #0	@ tmp499,
	bge	.L45	@,
	ldr	r3, [fp, #-32]	@ tmp500, i
	add	r2, r3, #7	@ D.2865, tmp500,
	ldr	r3, [fp, #-164]	@ tmp501, y
	mov	r2, r3, asr r2	@ D.2866, tmp501,
	ldr	r3, [fp, #-160]	@ tmp502, x
	add	r3, r2, r3	@ tmp503, D.2866, tmp502
	str	r3, [fp, #-40]	@ tmp503, x_new
	ldr	r3, [fp, #-32]	@ tmp504, i
	add	r2, r3, #7	@ D.2867, tmp504,
	ldr	r3, [fp, #-160]	@ tmp505, x
	mov	r2, r3, asr r2	@ D.2868, tmp505,
	ldr	r3, [fp, #-164]	@ tmp506, y
	rsb	r3, r2, r3	@ tmp507, D.2868, tmp506
	str	r3, [fp, #-36]	@ tmp507, y_new
	ldr	r3, [fp, #-32]	@ tmp508, i
	add	r3, r3, #7	@ D.2869, tmp508,
	mvn	r2, #127	@ tmp509,
	mov	r3, r3, asl #2	@ tmp510, D.2869,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp511,, tmp510
	add	r3, r3, r2	@ tmp512, tmp511, tmp509
	ldr	r2, [r3, #0]	@ D.2870, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp513, z
	add	r3, r3, r2	@ tmp514, tmp513, D.2870
	str	r3, [fp, #-168]	@ tmp514, z
	b	.L46	@
.L45:
	ldr	r3, [fp, #-32]	@ tmp515, i
	add	r2, r3, #7	@ D.2871, tmp515,
	ldr	r3, [fp, #-164]	@ tmp516, y
	mov	r2, r3, asr r2	@ D.2872, tmp516,
	ldr	r3, [fp, #-160]	@ tmp517, x
	rsb	r3, r2, r3	@ tmp518, D.2872, tmp517
	str	r3, [fp, #-40]	@ tmp518, x_new
	ldr	r3, [fp, #-32]	@ tmp519, i
	add	r2, r3, #7	@ D.2873, tmp519,
	ldr	r3, [fp, #-160]	@ tmp520, x
	mov	r2, r3, asr r2	@ D.2874, tmp520,
	ldr	r3, [fp, #-164]	@ tmp521, y
	add	r3, r2, r3	@ tmp522, D.2874, tmp521
	str	r3, [fp, #-36]	@ tmp522, y_new
	ldr	r3, [fp, #-32]	@ tmp523, i
	add	r3, r3, #7	@ D.2875, tmp523,
	mvn	r2, #127	@ tmp524,
	mov	r3, r3, asl #2	@ tmp525, D.2875,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp526,, tmp525
	add	r3, r3, r2	@ tmp527, tmp526, tmp524
	ldr	r2, [r3, #0]	@ D.2876, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp528, z
	rsb	r3, r2, r3	@ tmp529, D.2876, tmp528
	str	r3, [fp, #-168]	@ tmp529, z
.L46:
	ldr	r3, [fp, #-40]	@ tmp530, x_new
	str	r3, [fp, #-160]	@ tmp530, x
	ldr	r3, [fp, #-36]	@ tmp531, y_new
	str	r3, [fp, #-164]	@ tmp531, y
	ldr	r3, [fp, #-168]	@ tmp532, z
	cmp	r3, #0	@ tmp532,
	bge	.L47	@,
	ldr	r3, [fp, #-32]	@ tmp533, i
	add	r2, r3, #8	@ D.2877, tmp533,
	ldr	r3, [fp, #-164]	@ tmp534, y
	mov	r2, r3, asr r2	@ D.2878, tmp534,
	ldr	r3, [fp, #-160]	@ tmp535, x
	add	r3, r2, r3	@ tmp536, D.2878, tmp535
	str	r3, [fp, #-40]	@ tmp536, x_new
	ldr	r3, [fp, #-32]	@ tmp537, i
	add	r2, r3, #8	@ D.2879, tmp537,
	ldr	r3, [fp, #-160]	@ tmp538, x
	mov	r2, r3, asr r2	@ D.2880, tmp538,
	ldr	r3, [fp, #-164]	@ tmp539, y
	rsb	r3, r2, r3	@ tmp540, D.2880, tmp539
	str	r3, [fp, #-36]	@ tmp540, y_new
	ldr	r3, [fp, #-32]	@ tmp541, i
	add	r3, r3, #8	@ D.2881, tmp541,
	mvn	r2, #127	@ tmp542,
	mov	r3, r3, asl #2	@ tmp543, D.2881,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp544,, tmp543
	add	r3, r3, r2	@ tmp545, tmp544, tmp542
	ldr	r2, [r3, #0]	@ D.2882, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp546, z
	add	r3, r3, r2	@ tmp547, tmp546, D.2882
	str	r3, [fp, #-168]	@ tmp547, z
	b	.L48	@
.L47:
	ldr	r3, [fp, #-32]	@ tmp548, i
	add	r2, r3, #8	@ D.2883, tmp548,
	ldr	r3, [fp, #-164]	@ tmp549, y
	mov	r2, r3, asr r2	@ D.2884, tmp549,
	ldr	r3, [fp, #-160]	@ tmp550, x
	rsb	r3, r2, r3	@ tmp551, D.2884, tmp550
	str	r3, [fp, #-40]	@ tmp551, x_new
	ldr	r3, [fp, #-32]	@ tmp552, i
	add	r2, r3, #8	@ D.2885, tmp552,
	ldr	r3, [fp, #-160]	@ tmp553, x
	mov	r2, r3, asr r2	@ D.2886, tmp553,
	ldr	r3, [fp, #-164]	@ tmp554, y
	add	r3, r2, r3	@ tmp555, D.2886, tmp554
	str	r3, [fp, #-36]	@ tmp555, y_new
	ldr	r3, [fp, #-32]	@ tmp556, i
	add	r3, r3, #8	@ D.2887, tmp556,
	mvn	r2, #127	@ tmp557,
	mov	r3, r3, asl #2	@ tmp558, D.2887,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp559,, tmp558
	add	r3, r3, r2	@ tmp560, tmp559, tmp557
	ldr	r2, [r3, #0]	@ D.2888, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp561, z
	rsb	r3, r2, r3	@ tmp562, D.2888, tmp561
	str	r3, [fp, #-168]	@ tmp562, z
.L48:
	ldr	r3, [fp, #-40]	@ tmp563, x_new
	str	r3, [fp, #-160]	@ tmp563, x
	ldr	r3, [fp, #-36]	@ tmp564, y_new
	str	r3, [fp, #-164]	@ tmp564, y
	ldr	r3, [fp, #-32]	@ tmp565, i
	add	r3, r3, #9	@ tmp566, tmp565,
	str	r3, [fp, #-32]	@ tmp566, i
.L30:
	ldr	r3, [fp, #-32]	@ tmp567, i
	cmp	r3, #26	@ tmp567,
	ble	.L49	@,
	ldr	r3, [fp, #-168]	@ tmp568, z
	cmp	r3, #0	@ tmp568,
	bge	.L50	@,
	ldr	r2, [fp, #-164]	@ tmp569, y
	ldr	r3, [fp, #-32]	@ tmp570, i
	mov	r2, r2, asr r3	@ D.2889, tmp569,
	ldr	r3, [fp, #-160]	@ tmp571, x
	add	r3, r2, r3	@ tmp572, D.2889, tmp571
	str	r3, [fp, #-40]	@ tmp572, x_new
	ldr	r2, [fp, #-160]	@ tmp573, x
	ldr	r3, [fp, #-32]	@ tmp574, i
	mov	r2, r2, asr r3	@ D.2890, tmp573,
	ldr	r3, [fp, #-164]	@ tmp575, y
	rsb	r3, r2, r3	@ tmp576, D.2890, tmp575
	str	r3, [fp, #-36]	@ tmp576, y_new
	ldr	r3, [fp, #-32]	@ i.8, i
	mvn	r2, #127	@ tmp577,
	mov	r3, r3, asl #2	@ tmp578, i.8,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp579,, tmp578
	add	r3, r3, r2	@ tmp580, tmp579, tmp577
	ldr	r2, [r3, #0]	@ D.2892, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp581, z
	add	r3, r3, r2	@ tmp582, tmp581, D.2892
	str	r3, [fp, #-168]	@ tmp582, z
	b	.L51	@
.L50:
	ldr	r2, [fp, #-164]	@ tmp583, y
	ldr	r3, [fp, #-32]	@ tmp584, i
	mov	r2, r2, asr r3	@ D.2893, tmp583,
	ldr	r3, [fp, #-160]	@ tmp585, x
	rsb	r3, r2, r3	@ tmp586, D.2893, tmp585
	str	r3, [fp, #-40]	@ tmp586, x_new
	ldr	r2, [fp, #-160]	@ tmp587, x
	ldr	r3, [fp, #-32]	@ tmp588, i
	mov	r2, r2, asr r3	@ D.2894, tmp587,
	ldr	r3, [fp, #-164]	@ tmp589, y
	add	r3, r2, r3	@ tmp590, D.2894, tmp589
	str	r3, [fp, #-36]	@ tmp590, y_new
	ldr	r3, [fp, #-32]	@ i.9, i
	mvn	r2, #127	@ tmp591,
	mov	r3, r3, asl #2	@ tmp592, i.9,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp593,, tmp592
	add	r3, r3, r2	@ tmp594, tmp593, tmp591
	ldr	r2, [r3, #0]	@ D.2896, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp595, z
	rsb	r3, r2, r3	@ tmp596, D.2896, tmp595
	str	r3, [fp, #-168]	@ tmp596, z
.L51:
	ldr	r3, [fp, #-40]	@ tmp597, x_new
	str	r3, [fp, #-160]	@ tmp597, x
	ldr	r3, [fp, #-36]	@ tmp598, y_new
	str	r3, [fp, #-164]	@ tmp598, y
	ldr	r3, [fp, #-168]	@ tmp599, z
	cmp	r3, #0	@ tmp599,
	bge	.L52	@,
	ldr	r3, [fp, #-32]	@ tmp600, i
	add	r2, r3, #1	@ D.2897, tmp600,
	ldr	r3, [fp, #-164]	@ tmp601, y
	mov	r2, r3, asr r2	@ D.2898, tmp601,
	ldr	r3, [fp, #-160]	@ tmp602, x
	add	r3, r2, r3	@ tmp603, D.2898, tmp602
	str	r3, [fp, #-40]	@ tmp603, x_new
	ldr	r3, [fp, #-32]	@ tmp604, i
	add	r2, r3, #1	@ D.2899, tmp604,
	ldr	r3, [fp, #-160]	@ tmp605, x
	mov	r2, r3, asr r2	@ D.2900, tmp605,
	ldr	r3, [fp, #-164]	@ tmp606, y
	rsb	r3, r2, r3	@ tmp607, D.2900, tmp606
	str	r3, [fp, #-36]	@ tmp607, y_new
	ldr	r3, [fp, #-32]	@ tmp608, i
	add	r3, r3, #1	@ D.2901, tmp608,
	mvn	r2, #127	@ tmp609,
	mov	r3, r3, asl #2	@ tmp610, D.2901,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp611,, tmp610
	add	r3, r3, r2	@ tmp612, tmp611, tmp609
	ldr	r2, [r3, #0]	@ D.2902, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp613, z
	add	r3, r3, r2	@ tmp614, tmp613, D.2902
	str	r3, [fp, #-168]	@ tmp614, z
	b	.L53	@
.L52:
	ldr	r3, [fp, #-32]	@ tmp615, i
	add	r2, r3, #1	@ D.2903, tmp615,
	ldr	r3, [fp, #-164]	@ tmp616, y
	mov	r2, r3, asr r2	@ D.2904, tmp616,
	ldr	r3, [fp, #-160]	@ tmp617, x
	rsb	r3, r2, r3	@ tmp618, D.2904, tmp617
	str	r3, [fp, #-40]	@ tmp618, x_new
	ldr	r3, [fp, #-32]	@ tmp619, i
	add	r2, r3, #1	@ D.2905, tmp619,
	ldr	r3, [fp, #-160]	@ tmp620, x
	mov	r2, r3, asr r2	@ D.2906, tmp620,
	ldr	r3, [fp, #-164]	@ tmp621, y
	add	r3, r2, r3	@ tmp622, D.2906, tmp621
	str	r3, [fp, #-36]	@ tmp622, y_new
	ldr	r3, [fp, #-32]	@ tmp623, i
	add	r3, r3, #1	@ D.2907, tmp623,
	mvn	r2, #127	@ tmp624,
	mov	r3, r3, asl #2	@ tmp625, D.2907,
	sub	r1, fp, #28	@,,
	add	r3, r1, r3	@ tmp626,, tmp625
	add	r3, r3, r2	@ tmp627, tmp626, tmp624
	ldr	r2, [r3, #0]	@ D.2908, ARCTAN
	ldr	r3, [fp, #-168]	@ tmp628, z
	rsb	r3, r2, r3	@ tmp629, D.2908, tmp628
	str	r3, [fp, #-168]	@ tmp629, z
.L53:
	ldr	r0, [fp, #-164]	@, y
	bl	__aeabi_i2d	@
	mov	r3, r0	@ D.2909,
	mov	r4, r1	@ D.2909,
	adr	r6, .L55	@,
	ldmia	r6, {r5-r6}	@, tmp630
	mov	r0, r3	@, D.2909
	mov	r1, r4	@, D.2909
	mov	r2, r5	@, tmp630
	mov	r3, r6	@,
	bl	__aeabi_dmul	@
	mov	r3, r0	@ tmp631,
	mov	r4, r1	@,
	adr	r6, .L55+8	@,
	ldmia	r6, {r5-r6}	@, tmp632
	mov	r0, r3	@, D.2910
	mov	r1, r4	@, D.2910
	mov	r2, r5	@, tmp632
	mov	r3, r6	@,
	bl	__aeabi_dmul	@
	mov	r3, r0	@ tmp633,
	mov	r4, r1	@,
	mov	r7, r3	@ D.2911, tmp633
	mov	r8, r4	@ D.2911,
	ldr	r0, [fp, #-160]	@, x
	bl	__aeabi_i2d	@
	mov	r3, r0	@ D.2912,
	mov	r4, r1	@ D.2912,
	adr	r6, .L55	@,
	ldmia	r6, {r5-r6}	@, tmp634
	mov	r0, r3	@, D.2912
	mov	r1, r4	@, D.2912
	mov	r2, r5	@, tmp634
	mov	r3, r6	@,
	bl	__aeabi_dmul	@
	mov	r3, r0	@ tmp635,
	mov	r4, r1	@,
	adr	r6, .L55+8	@,
	ldmia	r6, {r5-r6}	@, tmp636
	mov	r0, r3	@, D.2913
	mov	r1, r4	@, D.2913
	mov	r2, r5	@, tmp636
	mov	r3, r6	@,
	bl	__aeabi_dmul	@
	mov	r3, r0	@ tmp637,
	mov	r4, r1	@,
	stmia	sp, {r3-r4}	@, D.2914
	ldr	r0, .L55+20	@,
	mov	r2, r7	@, D.2911
	mov	r3, r8	@, D.2911
	bl	printf	@
	sub	sp, fp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	bx	lr
.L56:
	.align	3
.L55:
	.word	-3836923
	.word	1049624575
	.word	-672351360
	.word	1071869597
	.word	C.5.2784
	.word	.LC1
	.size	rotational_mode, .-rotational_mode
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\012Vectoring mode: \000"
	.align	2
.LC3:
	.ascii	"x: 1, y: 1\000"
	.align	2
.LC4:
	.ascii	"x: 1, y: sqrt(3)\000"
	.align	2
.LC5:
	.ascii	"x: sqrt(3), y: 1\000"
	.align	2
.LC6:
	.ascii	"x: 2, y: 1\000"
	.align	2
.LC7:
	.ascii	"x: 1, y: 2\000"
	.align	2
.LC8:
	.ascii	"\012Rotaional_mode: \000"
	.align	2
.LC9:
	.ascii	"z: 0\000"
	.align	2
.LC10:
	.ascii	"z: 30\000"
	.align	2
.LC11:
	.ascii	"z: 45\000"
	.align	2
.LC12:
	.ascii	"z: 70\000"
	.align	2
.LC13:
	.ascii	"z: 80\000"
	.align	2
.LC14:
	.ascii	"z: 90\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}	@,
	add	fp, sp, #4	@,,
	sub	sp, sp, #24	@,,
	str	r0, [fp, #-24]	@ argc, argc
	str	r1, [fp, #-28]	@ argv, argv
	mov	r3, #0	@ tmp135,
	str	r3, [fp, #-16]	@ tmp135, z
	mov	r3, #4194304	@ tmp136,
	str	r3, [fp, #-12]	@ tmp136, x
	mov	r3, #4194304	@ tmp137,
	str	r3, [fp, #-8]	@ tmp137, y
	ldr	r0, .L59	@,
	bl	puts	@
	ldr	r0, .L59+4	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	vectoring_mode	@
	mov	r3, #4194304	@ tmp138,
	str	r3, [fp, #-12]	@ tmp138, x
	mov	r3, #7208960	@ tmp139,
	add	r3, r3, #55552	@ tmp139, tmp139,
	add	r3, r3, #235	@ tmp139, tmp139,
	str	r3, [fp, #-8]	@ tmp139, y
	mov	r3, #0	@ tmp140,
	str	r3, [fp, #-16]	@ tmp140, z
	ldr	r0, .L59+8	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	vectoring_mode	@
	mov	r3, #7208960	@ tmp141,
	add	r3, r3, #55552	@ tmp141, tmp141,
	add	r3, r3, #235	@ tmp141, tmp141,
	str	r3, [fp, #-12]	@ tmp141, x
	mov	r3, #4194304	@ tmp142,
	str	r3, [fp, #-8]	@ tmp142, y
	mov	r3, #0	@ tmp143,
	str	r3, [fp, #-16]	@ tmp143, z
	ldr	r0, .L59+12	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	vectoring_mode	@
	mov	r3, #8388608	@ tmp144,
	str	r3, [fp, #-12]	@ tmp144, x
	mov	r3, #4194304	@ tmp145,
	str	r3, [fp, #-8]	@ tmp145, y
	mov	r3, #0	@ tmp146,
	str	r3, [fp, #-16]	@ tmp146, z
	ldr	r0, .L59+16	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	vectoring_mode	@
	mov	r3, #4194304	@ tmp147,
	str	r3, [fp, #-12]	@ tmp147, x
	mov	r3, #8388608	@ tmp148,
	str	r3, [fp, #-8]	@ tmp148, y
	mov	r3, #0	@ tmp149,
	str	r3, [fp, #-16]	@ tmp149, z
	ldr	r0, .L59+20	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	vectoring_mode	@
	ldr	r0, .L59+24	@,
	bl	puts	@
	mov	r3, #4194304	@ tmp150,
	str	r3, [fp, #-12]	@ tmp150, x
	mov	r3, #0	@ tmp151,
	str	r3, [fp, #-8]	@ tmp151, y
	mov	r3, #0	@ tmp152,
	str	r3, [fp, #-16]	@ tmp152, z
	ldr	r0, .L59+28	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #4194304	@ tmp153,
	str	r3, [fp, #-12]	@ tmp153, x
	mov	r3, #0	@ tmp154,
	str	r3, [fp, #-8]	@ tmp154, y
	mov	r3, #125829120	@ tmp155,
	str	r3, [fp, #-16]	@ tmp155, z
	ldr	r0, .L59+32	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #4194304	@ tmp156,
	str	r3, [fp, #-12]	@ tmp156, x
	mov	r3, #0	@ tmp157,
	str	r3, [fp, #-8]	@ tmp157, y
	mov	r3, #188743680	@ tmp158,
	str	r3, [fp, #-16]	@ tmp158, z
	ldr	r0, .L59+36	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #4194304	@ tmp159,
	str	r3, [fp, #-12]	@ tmp159, x
	mov	r3, #0	@ tmp160,
	str	r3, [fp, #-8]	@ tmp160, y
	mov	r3, #293601280	@ tmp161,
	str	r3, [fp, #-16]	@ tmp161, z
	ldr	r0, .L59+40	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #4194304	@ tmp162,
	str	r3, [fp, #-12]	@ tmp162, x
	mov	r3, #0	@ tmp163,
	str	r3, [fp, #-8]	@ tmp163, y
	mov	r3, #335544320	@ tmp164,
	str	r3, [fp, #-16]	@ tmp164, z
	ldr	r0, .L59+44	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #4194304	@ tmp165,
	str	r3, [fp, #-12]	@ tmp165, x
	mov	r3, #0	@ tmp166,
	str	r3, [fp, #-8]	@ tmp166, y
	mov	r3, #377487360	@ tmp167,
	str	r3, [fp, #-16]	@ tmp167, z
	ldr	r0, .L59+48	@,
	bl	puts	@
	ldr	r0, [fp, #-12]	@, x
	ldr	r1, [fp, #-8]	@, y
	ldr	r2, [fp, #-16]	@, z
	bl	rotational_mode	@
	mov	r3, #0	@ D.2958,
	mov	r0, r3	@, <result>
	sub	sp, fp, #4	@,,
	ldmfd	sp!, {fp, lr}
	bx	lr
.L60:
	.align	2
.L59:
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
	.word	.LC13
	.word	.LC14
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
