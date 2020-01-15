	.text
	.file	"9cc.c"
	.globl	error                   // -- Begin function error
	.p2align	2
	.type	error,@function
error:                                  // @error
// %bb.0:
	sub	sp, sp, #320            // =320
	str	x28, [sp, #288]         // 8-byte Folded Spill
	stp	x29, x30, [sp, #304]    // 16-byte Folded Spill
	add	x29, sp, #304           // =304
	sub	x8, x29, #56            // =56
	str	q7, [sp, #128]
	str	q6, [sp, #112]
	str	q5, [sp, #96]
	str	q4, [sp, #80]
	str	q3, [sp, #64]
	str	q2, [sp, #48]
	str	q1, [sp, #32]
	str	q0, [sp, #16]
	str	x7, [sp, #200]
	str	x6, [sp, #192]
	str	x5, [sp, #184]
	str	x4, [sp, #176]
	str	x3, [sp, #168]
	str	x2, [sp, #160]
	str	x1, [sp, #152]
	stur	x0, [x29, #-24]
	mov	w9, #-128
	stur	w9, [x29, #-28]
	mov	w9, #-56
	stur	w9, [x29, #-32]
	add	x10, sp, #16            // =16
	add	x10, x10, #128          // =128
	stur	x10, [x29, #-40]
	add	x10, sp, #152           // =152
	add	x10, x10, #56           // =56
	stur	x10, [x29, #-48]
	add	x10, x29, #16           // =16
	stur	x10, [x29, #-56]
	adrp	x10, :got:stderr
	ldr	x10, [x10, :got_lo12:stderr]
	ldr	x0, [x10]
	ldur	x1, [x29, #-24]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	stur	q1, [x29, #-80]
	stur	q0, [x29, #-96]
	sub	x2, x29, #96            // =96
	str	x10, [sp, #8]           // 8-byte Folded Spill
	bl	vfprintf
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	ldr	x10, [x8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	w0, [sp, #4]            // 4-byte Folded Spill
	mov	x0, x10
	bl	fprintf
	mov	w9, #1
	str	w0, [sp]                // 4-byte Folded Spill
	mov	w0, w9
	bl	exit
.Lfunc_end0:
	.size	error, .Lfunc_end0-error
                                        // -- End function
	.globl	consume                 // -- Begin function consume
	.p2align	2
	.type	consume,@function
consume:                                // @consume
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, token
	add	x8, x8, :lo12:token
	strb	w0, [sp, #14]
	ldr	x9, [x8]
	ldr	w10, [x9]
	str	x8, [sp]                // 8-byte Folded Spill
	cbnz	w10, .LBB1_2
// %bb.1:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x9, [x9, #24]
	ldrb	w10, [x9]
	ldrb	w11, [sp, #14]
	cmp	w10, w11
	b.eq	.LBB1_3
.LBB1_2:
	mov	w8, #0
	mov	w9, #1
	and	w8, w8, w9
	strb	w8, [sp, #15]
	b	.LBB1_4
.LBB1_3:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x9, [x9, #8]
	str	x9, [x8]
	mov	w10, #-1
	mov	w11, #1
	and	w10, w10, w11
	strb	w10, [sp, #15]
.LBB1_4:
	ldrb	w8, [sp, #15]
	mov	w9, #1
	and	w8, w8, w9
	mov	w0, w8
	add	sp, sp, #16             // =16
	ret
.Lfunc_end1:
	.size	consume, .Lfunc_end1-consume
                                        // -- End function
	.globl	expect                  // -- Begin function expect
	.p2align	2
	.type	expect,@function
expect:                                 // @expect
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, token
	add	x8, x8, :lo12:token
	strb	w0, [sp, #14]
	ldr	x9, [x8]
	ldr	w10, [x9]
	str	x8, [sp]                // 8-byte Folded Spill
	cbnz	w10, .LBB2_2
// %bb.1:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x9, [x9, #24]
	ldrb	w10, [x9]
	ldrb	w11, [sp, #14]
	cmp	w10, w11
	b.eq	.LBB2_3
.LBB2_2:
	mov	w8, #0
	mov	w9, #1
	and	w8, w8, w9
	strb	w8, [sp, #15]
	b	.LBB2_4
.LBB2_3:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x9, [x9, #8]
	str	x9, [x8]
	mov	w10, #-1
	mov	w11, #1
	and	w10, w10, w11
	strb	w10, [sp, #15]
.LBB2_4:
	ldrb	w8, [sp, #15]
	mov	w9, #1
	and	w8, w8, w9
	mov	w0, w8
	add	sp, sp, #16             // =16
	ret
.Lfunc_end2:
	.size	expect, .Lfunc_end2-expect
                                        // -- End function
	.globl	expect_number           // -- Begin function expect_number
	.p2align	2
	.type	expect_number,@function
expect_number:                          // @expect_number
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	adrp	x8, token
	add	x8, x8, :lo12:token
	ldr	x9, [x8]
	ldr	w10, [x9]
	cmp	w10, #1                 // =1
	str	x8, [sp]                // 8-byte Folded Spill
	b.eq	.LBB3_2
// %bb.1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
.LBB3_2:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	w10, [x9, #16]
	stur	w10, [x29, #-4]
	ldr	x9, [x8]
	ldr	x9, [x9, #8]
	str	x9, [x8]
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end3:
	.size	expect_number, .Lfunc_end3-expect_number
                                        // -- End function
	.globl	at_eof                  // -- Begin function at_eof
	.p2align	2
	.type	at_eof,@function
at_eof:                                 // @at_eof
// %bb.0:
	adrp	x8, token
	add	x8, x8, :lo12:token
	ldr	x8, [x8]
	ldr	w9, [x8]
	cmp	w9, #2                  // =2
	cset	w9, eq
	mov	w10, #1
	and	w9, w9, w10
	mov	w0, w9
	ret
.Lfunc_end4:
	.size	at_eof, .Lfunc_end4-at_eof
                                        // -- End function
	.globl	new_token               // -- Begin function new_token
	.p2align	2
	.type	new_token,@function
new_token:                              // @new_token
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	mov	x8, #1
	mov	x9, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	mov	x0, x8
	mov	x1, x9
	bl	calloc
	str	x0, [sp]
	ldur	w10, [x29, #-4]
	ldr	x8, [sp]
	str	w10, [x8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end5:
	.size	new_token, .Lfunc_end5-new_token
                                        // -- End function
	.globl	tokenize                // -- Begin function tokenize
	.p2align	2
	.type	tokenize,@function
tokenize:                               // @tokenize
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	x8, #0
	add	x9, sp, #24             // =24
	stur	x0, [x29, #-8]
	str	x8, [x9, #8]
	str	x9, [sp, #16]
.LBB6_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w9, [x8]
	uxtb	w9, w9
	cbz	w9, .LBB6_10
// %bb.2:                               //   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isspace
	cbz	w0, .LBB6_4
// %bb.3:                               //   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	mov	x9, #1
	add	x8, x8, x9
	stur	x8, [x29, #-8]
	b	.LBB6_1
.LBB6_4:                                //   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w9, [x8]
	cmp	w9, #43                 // =43
	b.eq	.LBB6_6
// %bb.5:                               //   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w9, [x8]
	cmp	w9, #45                 // =45
	b.ne	.LBB6_7
.LBB6_6:                                //   in Loop: Header=BB6_1 Depth=1
	ldr	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x9, #1
	add	x9, x8, x9
	stur	x9, [x29, #-8]
	mov	w0, #0
	mov	x2, x8
	bl	new_token
	str	x0, [sp, #16]
	b	.LBB6_1
.LBB6_7:                                //   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB6_9
// %bb.8:                               //   in Loop: Header=BB6_1 Depth=1
	ldr	x1, [sp, #16]
	sub	x8, x29, #8             // =8
	ldur	x2, [x29, #-8]
	mov	w0, #1
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	new_token
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]            // 8-byte Folded Reload
	mov	w2, #10
	bl	strtol
                                        // kill: def $w0 killed $w0 killed $x0
	ldr	x8, [sp, #16]
	str	w0, [x8, #16]
	b	.LBB6_1
.LBB6_9:                                //   in Loop: Header=BB6_1 Depth=1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB6_1
.LBB6_10:
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-8]
	mov	w0, #2
	bl	new_token
	add	x8, sp, #24             // =24
	ldr	x8, [x8, #8]
	mov	x0, x8
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end6:
	.size	tokenize, .Lfunc_end6-tokenize
                                        // -- End function
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	w8, [x29, #-8]
	cmp	w8, #2                  // =2
	b.eq	.LBB7_2
// %bb.1:
	adrp	x8, :got:stderr
	ldr	x8, [x8, :got_lo12:stderr]
	ldr	x0, [x8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fprintf
	mov	w9, #1
	stur	w9, [x29, #-4]
	b	.LBB7_8
.LBB7_2:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	tokenize
	adrp	x8, token
	add	x8, x8, :lo12:token
	str	x0, [x8]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	mov	x0, x8
	bl	printf
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	mov	x0, x8
	bl	printf
	bl	expect_number
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	x0, x8
	ldr	w1, [sp, #12]           // 4-byte Folded Reload
	bl	printf
.LBB7_3:                                // =>This Inner Loop Header: Depth=1
	bl	at_eof
	mvn	w8, w0
	tbnz	w8, #0, .LBB7_4
	b	.LBB7_7
.LBB7_4:                                //   in Loop: Header=BB7_3 Depth=1
	mov	w0, #43
	bl	consume
	tbnz	w0, #0, .LBB7_5
	b	.LBB7_6
.LBB7_5:                                //   in Loop: Header=BB7_3 Depth=1
	bl	expect_number
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	str	w0, [sp, #8]            // 4-byte Folded Spill
	mov	x0, x8
	ldr	w1, [sp, #8]            // 4-byte Folded Reload
	bl	printf
	b	.LBB7_3
.LBB7_6:                                //   in Loop: Header=BB7_3 Depth=1
	mov	w0, #45
	bl	expect
	bl	expect_number
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	str	w0, [sp, #4]            // 4-byte Folded Spill
	mov	x0, x8
	ldr	w1, [sp, #4]            // 4-byte Folded Reload
	bl	printf
	b	.LBB7_3
.LBB7_7:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	printf
	stur	wzr, [x29, #-4]
.LBB7_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	token,@object           // @token
	.comm	token,8,8
	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"\346\225\260\343\201\247\343\201\257\343\201\202\343\202\212\343\201\276\343\201\233\343\202\223"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"\343\203\210\343\203\274\343\202\257\343\203\212\343\202\244\343\202\272\343\201\247\343\201\215\343\201\276\343\201\233\343\202\223"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"\345\274\225\346\225\260\343\201\256\345\200\213\346\225\260\343\201\214\346\255\243\343\201\227\343\201\217\343\201\202\343\202\212\343\201\276\343\201\233\343\202\223"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	".intel_syntax noprefix\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	".global main\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"main:\n"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        // @.str.7
.L.str.7:
	.asciz	"  mov rax, %d\n"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        // @.str.8
.L.str.8:
	.asciz	"  add rax, %d\n"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        // @.str.9
.L.str.9:
	.asciz	"  sub rax, %d\n"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       // @.str.10
.L.str.10:
	.asciz	"  ret\n"
	.size	.L.str.10, 7


	.ident	"clang version 9.0.0 (tags/RELEASE_900/final)"
	.section	".note.GNU-stack","",@progbits
