section .text
		global ft_strdup
		extern ft_strlen
		extern ft_strcpy

ft_strdup:
	;push rbp
	;mov rbp, rsp
;    xor rax, rax
;    push rdi
	mov r12, rdi ; copier str (rdi) dans r12 (callee-saved register)
	cmp rdi, 0
	jz error
	call ft_strlen ; rax = len de str (rsi)
    inc rax ; +1 pour le \0
	mov rdi, rax ; pour envoyer la taille à malloc
	mov rax, 4
	syscall
	;	call _malloc
	cmp rax, 0 ; si 0, malloc failed
	jz error
	mov rdi, rax ; malloc le 1er param de cpy
	mov rsi, r12 ; str remis dans rsi (2eme param de cpy)
;    mov rsi, rdi
;    mov rdi, rax
	call ft_strcpy ; effectue la copie de rsi vers rdi
	;pop rbp
	ret

error:
		mov rax, 0
	;	pop rbp
		ret