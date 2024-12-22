section .text
	global ft_strlen

; initialisation des variables:

ft_strlen:
    push rbp
    mov rbp, rsp
    xor rcx, rcx

_loop:
    cmp [rdi], byte 0	; compare rdi to null ptr (end of str)
    jz _end				; si c'est 0 = fin de loop, renvoi au return
    inc rcx
    inc rdi
    jmp _loop

_end:
    mov rax, rcx		; deplacer valeur de rcx dans rax (registre de retour e valeurs)
    pop rbp				; depiler rbp 
	ret