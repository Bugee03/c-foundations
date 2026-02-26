	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI0_0:
	.quad	0x4008fcd6e9bf4a7b              ; double 3.12345678916
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
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
	stur	wzr, [x29, #-20]
	mov	w8, #82
	sturb	w8, [x29, #-21]
	adrp	x8, l___const.main.name@PAGE
	add	x8, x8, l___const.main.name@PAGEOFF
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	mov	w8, #59060
	movk	w8, #16455, lsl #16
	fmov	s0, w8
	stur	s0, [x29, #-28]
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	str	d0, [sp, #40]
	mov	w8, #1
	strb	w8, [sp, #39]
	mov	w8, #126
	strb	w8, [sp, #38]
	mov	w8, #255
	strb	w8, [sp, #37]
	mov	w8, #32767
	strh	w8, [sp, #34]
	mov	w8, #65500
	strh	w8, [sp, #32]
	mov	w8, #52501
	movk	w8, #1883, lsl #16
	str	w8, [sp, #28]
	mov	w8, #44024
	movk	w8, #325, lsl #16
	str	w8, [sp, #24]
	mov	x8, #61450
	movk	x8, #62975, lsl #16
	movk	x8, #754, lsl #32
	str	x8, [sp, #16]
	mov	x8, #26836
	movk	x8, #39764, lsl #16
	movk	x8, #54, lsl #32
	str	x8, [sp, #8]
	ldur	x9, [x29, #-8]
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
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___const.main.name:                    ; @__const.main.name
	.asciz	"Romania"

.subsections_via_symbols
