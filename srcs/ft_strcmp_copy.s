section .text
		global ft_strcmp

ft_strcmp:
		push rbp
		mov rbp, rsp
		xor rbx, rbx
		xor rax, rax
		xor cx, cx
		xor dx, dx

_loop:
		mov cl, BYTE[rsi + rbx]
		mov dl, BYTE[rdi + rbx]
		cmp BYTE[rsi + rbx], 0
		je _ret
		cmp BYTE[rdi + rbx], 0
		je _ret
		cmp cl, dl
		jne _ret
		inc rbx
		jmp _loop
        
_ret:
		sub dx, cx
		jl _neg
		ja _pos
		jmp _zero

_neg:
		mov rax, -1
		pop rbp
		ret

_pos:
		mov rax, 1
		pop rbp
		ret

_zero:
		mov rax, 0
		pop rbp
		ret