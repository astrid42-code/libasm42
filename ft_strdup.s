section .text
		global ft_strdup
		extern ft_strlen
		extern ft_strcpy
		extern malloc

ft_strdup:
	mov r12, rdi 			; copy str (rdi) in r12 (callee-saved register)
	call ft_strlen 			; rax = len of str (rsi)
	inc rax 				; +1 for \0
	mov rdi, rax 			; send lenght to malloc
	call malloc wrt ..plt
	cmp rax, 0 				; if 0, malloc failed
	jz error
	mov rdi, rax 			; malloc 1st param of cpy
	mov rsi, r12 			; str back in rsi (2nd param of cpy)
	call ft_strcpy 			; copy of rsi in rdi
	ret

error:
		mov rax, 0
		ret