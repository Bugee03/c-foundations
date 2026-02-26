	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	sub	x8, x29, #5
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	w8, #88                         ; =0x58
	sturb	w8, [x29, #-5]
	sub	x8, x29, #6
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	mov	w8, #84                         ; =0x54
	sturb	w8, [x29, #-6]
	mov	x9, sp
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	mov	x8, #3                          ; =0x3
	str	x8, [x9]
	bl	_printf
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	mov	x8, #4                          ; =0x4
	str	x8, [x9]
	bl	_printf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	stur	x0, [x29, #-32]                 ; 8-byte Folded Spill
	bl	_printf
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	sub	x8, x29, #9
	str	x8, [x9]
	bl	_printf
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	sub	x8, x29, #16
	str	x8, [x9]
	bl	_printf
	ldur	w0, [x29, #-20]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%zu bytes\n"

l_.str.1:                               ; @.str.1
	.asciz	"%p\n"

.subsections_via_symbols
