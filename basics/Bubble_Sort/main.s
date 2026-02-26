	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #448
	.cfi_def_cfa_offset 448
	stp	x28, x27, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #432]            ; 16-byte Folded Spill
	add	x29, sp, #432
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x10, sp, #208
	str	x10, [sp, #8]                   ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	adrp	x8, l___const.main.student1@PAGE
	add	x8, x8, l___const.main.student1@PAGEOFF
	ldr	q0, [x8]
	sub	x15, x29, #64
	str	q0, [x10, #160]
	ldur	q0, [x8, #12]
	stur	q0, [x15, #12]
	adrp	x8, l___const.main.student2@PAGE
	add	x8, x8, l___const.main.student2@PAGEOFF
	ldr	q0, [x8]
	sub	x14, x29, #96
	str	q0, [x10, #128]
	ldur	q0, [x8, #12]
	stur	q0, [x14, #12]
	adrp	x8, l___const.main.student3@PAGE
	add	x8, x8, l___const.main.student3@PAGEOFF
	ldr	q0, [x8]
	sub	x13, x29, #128
	str	q0, [x10, #96]
	ldur	q0, [x8, #12]
	stur	q0, [x13, #12]
	adrp	x8, l___const.main.student4@PAGE
	add	x8, x8, l___const.main.student4@PAGEOFF
	ldr	q0, [x8]
	sub	x12, x29, #160
	str	q0, [x10, #64]
	ldur	q0, [x8, #12]
	stur	q0, [x12, #12]
	adrp	x8, l___const.main.student5@PAGE
	add	x8, x8, l___const.main.student5@PAGEOFF
	ldr	q0, [x8]
	sub	x11, x29, #192
	str	q0, [x10, #32]
	ldur	q0, [x8, #12]
	stur	q0, [x11, #12]
	adrp	x8, l___const.main.student6@PAGE
	add	x8, x8, l___const.main.student6@PAGEOFF
	ldr	q0, [x8]
	add	x9, sp, #208
	str	q0, [x10]
	ldur	q0, [x8, #12]
	stur	q0, [x9, #12]
	ldr	q0, [x10, #160]
	add	x8, sp, #32
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	q0, [sp, #32]
	ldur	q0, [x15, #12]
	stur	q0, [x8, #12]
	ldr	q0, [x10, #128]
	stur	q0, [x8, #28]
	ldur	q0, [x14, #12]
	stur	q0, [x8, #40]
	ldr	q0, [x10, #96]
	stur	q0, [x8, #56]
	ldur	q0, [x13, #12]
	stur	q0, [x8, #68]
	ldr	q0, [x10, #64]
	stur	q0, [x8, #84]
	ldur	q0, [x12, #12]
	str	q0, [sp, #128]
	ldr	q0, [x10, #32]
	str	q0, [sp, #144]
	ldur	q0, [x11, #12]
	stur	q0, [x8, #124]
	ldr	q0, [x10]
	stur	q0, [x8, #140]
	ldur	q0, [x9, #12]
	stur	q0, [x8, #152]
	mov	w8, #6
	str	w8, [sp, #28]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #28]
	bl	_sortBy_gpa
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #28]
	bl	_print_list
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #28]
	bl	_sortBy_name
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #28]
	bl	_print_list
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #432]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #416]            ; 16-byte Folded Reload
	add	sp, sp, #448
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sortBy_gpa                     ; -- Begin function sortBy_gpa
	.p2align	2
_sortBy_gpa:                            ; @sortBy_gpa
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	wzr, [sp, #16]
	b	LBB1_1
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_10
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	str	wzr, [sp, #12]
	b	LBB1_3
LBB1_3:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	ldr	w10, [sp, #16]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_8
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	mov	x10, #28
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	s0, [x8, #20]
	ldr	x10, [sp, #24]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	mov	w9, #28
	smaddl	x8, w8, w9, x10
	ldr	s1, [x8, #20]
	fcmp	s0, s1
	cset	w8, pl
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	mov	x11, #28
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	q0, [x8]
	add	x9, sp, #32
	str	q0, [sp, #32]
	ldur	q0, [x8, #12]
	stur	q0, [x9, #12]
	ldr	x8, [sp, #24]
	ldrsw	x10, [sp, #12]
	mul	x10, x10, x11
	add	x8, x8, x10
	ldr	x12, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	mov	w11, #28
	smaddl	x10, w10, w11, x12
	ldr	q0, [x10]
	str	q0, [x8]
	ldur	q0, [x10, #12]
	stur	q0, [x8, #12]
	ldr	x11, [sp, #24]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	mov	w10, #28
	smaddl	x8, w8, w10, x11
	ldr	q0, [sp, #32]
	str	q0, [x8]
	ldur	q0, [x9, #12]
	stur	q0, [x8, #12]
	b	LBB1_6
LBB1_6:                                 ;   in Loop: Header=BB1_3 Depth=2
	b	LBB1_7
LBB1_7:                                 ;   in Loop: Header=BB1_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB1_3
LBB1_8:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_9
LBB1_9:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB1_1
LBB1_10:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_12
	b	LBB1_11
LBB1_11:
	bl	___stack_chk_fail
LBB1_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print_list                     ; -- Begin function print_list
	.p2align	2
_print_list:                            ; @print_list
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	wzr, [x29, #-16]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mov	x11, #28
	mul	x9, x9, x11
	add	x10, x8, x9
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	s0, [x8, #20]
	fcvt	d0, s0
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	w9, [x8, #24]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	d0, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB2_1
LBB2_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sortBy_name                    ; -- Begin function sortBy_name
	.p2align	2
_sortBy_name:                           ; @sortBy_name
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	wzr, [sp, #16]
	b	LBB3_1
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB3_10
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	str	wzr, [sp, #12]
	b	LBB3_3
LBB3_3:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB3_8
	b	LBB3_4
LBB3_4:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	mov	x10, #28
	mul	x9, x9, x10
	ldrsb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	mov	w11, #28
	smull	x10, w10, w11
	ldrsb	w9, [x9, x10]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB3_6
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	mov	x11, #28
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	q0, [x8]
	add	x9, sp, #32
	str	q0, [sp, #32]
	ldur	q0, [x8, #12]
	stur	q0, [x9, #12]
	ldr	x8, [sp, #24]
	ldrsw	x10, [sp, #12]
	mul	x10, x10, x11
	add	x8, x8, x10
	ldr	x12, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	mov	w11, #28
	smaddl	x10, w10, w11, x12
	ldr	q0, [x10]
	str	q0, [x8]
	ldur	q0, [x10, #12]
	stur	q0, [x8, #12]
	ldr	x11, [sp, #24]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	mov	w10, #28
	smaddl	x8, w8, w10, x11
	ldr	q0, [sp, #32]
	str	q0, [x8]
	ldur	q0, [x9, #12]
	stur	q0, [x8, #12]
	b	LBB3_6
LBB3_6:                                 ;   in Loop: Header=BB3_3 Depth=2
	b	LBB3_7
LBB3_7:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB3_3
LBB3_8:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_9
LBB3_9:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB3_1
LBB3_10:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB3_12
	b	LBB3_11
LBB3_11:
	bl	___stack_chk_fail
LBB3_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.student1
l___const.main.student1:
	.asciz	"Vladimir\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x401b851f                      ; float 2.43000007
	.long	532324                          ; 0x81f64

	.p2align	2, 0x0                          ; @__const.main.student2
l___const.main.student2:
	.asciz	"Soboslai\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x4047ae14                      ; float 3.11999989
	.long	643234                          ; 0x9d0a2

	.p2align	2, 0x0                          ; @__const.main.student3
l___const.main.student3:
	.asciz	"Angelina\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x401c28f6                      ; float 2.44000006
	.long	401245                          ; 0x61f5d

	.p2align	2, 0x0                          ; @__const.main.student4
l___const.main.student4:
	.asciz	"Alsu\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x4078f5c3                      ; float 3.8900001
	.long	123040                          ; 0x1e0a0

	.p2align	2, 0x0                          ; @__const.main.student5
l___const.main.student5:
	.asciz	"Andrei\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x3ff70a3d                      ; float 1.92999995
	.long	934212                          ; 0xe4144

	.p2align	2, 0x0                          ; @__const.main.student6
l___const.main.student6:
	.asciz	"Santiz\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	0x404eb852                      ; float 3.23000002
	.long	432599                          ; 0x699d7

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\t\t Sort by Gpa\n"

l_.str.1:                               ; @.str.1
	.asciz	"\n\t\t Sort by Names\n"

l_.str.2:                               ; @.str.2
	.asciz	"Student name: %-12s \t Gpa: %-12.3f \t ID: %d\n"

.subsections_via_symbols
