section .text
		global ft_strdup
		extern ft_strlen
		extern ft_strcpy
		extern malloc

ft_strdup:
	mov r12, rdi ; copier str (rdi) dans r12 (callee-saved register)
	call ft_strlen ; rax = len de str (rsi)
	inc rax ; +1 pour le \0
	mov rdi, rax ; pour envoyer la taille à malloc
	call malloc wrt ..plt
	cmp rax, 0 ; si 0, malloc failed
	jz error
	mov rdi, rax ; malloc le 1er param de cpy
	mov rsi, r12 ; str remis dans rsi (2eme param de cpy)
	call ft_strcpy ; effectue la copie de rsi vers rdi
	
;	call ft_strlen ; rax = len de str (rsi)
;    inc rax ; +1 pour le \0
;    push rdi
;	mov rdi, rax ; pour envoyer la taille à malloc
;	call malloc wrt ..plt
;	pop rdi
;    mov rsi, rdi
;    mov rdi, rax
	ret

error:
		mov rax, 0
		ret