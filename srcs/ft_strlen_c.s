
	.text
	.globl	ft_strlen
	.type	ft_strlen, @function
ft_strlen:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
# ft_strlen_c.c:19:     i = 0;
	movl	$0, -4(%rbp)	#, i
# ft_strlen_c.c:20:     while(s)
	jmp	.L2	#
.L3:
# ft_strlen_c.c:21:         i++;
	addl	$1, -4(%rbp)	#, i
.L2:
# ft_strlen_c.c:20:     while(s)
	cmpq	$0, -24(%rbp)	#, s
	jne	.L3	#,
# ft_strlen_c.c:22:     return(i);
	movl	-4(%rbp), %eax	# i, tmp84
	cltq
# ft_strlen_c.c:23: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	ft_strlen, .-ft_strlen
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~22.04) 10.5.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
