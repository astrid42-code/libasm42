	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_ft_strcmp                      ; -- Begin function ft_strcmp
	.p2align	2
_ft_strcmp:                             ; @ft_strcmp
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp]                        ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_7
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldrsb	w8, [x8, x9]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	ldrsb	w9, [x9, x10]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldrsb	w8, [x8, x9]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	ldrsb	w9, [x9, x10]
	subs	w8, w8, w9
	str	w8, [sp, #28]
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB0_1
LBB0_7:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldrsb	w8, [x8, x9]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	ldrsb	w9, [x9, x10]
	subs	w8, w8, w9
	str	w8, [sp, #28]
	b	LBB0_8
LBB0_8:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
