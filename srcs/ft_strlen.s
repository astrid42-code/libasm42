section .text
	global ft_strlen

; variables initialization :

ft_strlen:
    push rbp            ; save base pointer on stack (save local variables, for ex. : variables to use in a fct)
    mov rbp, rsp        ; stack ptr goes in base pointer
    xor rcx, rcx		; initialize loop counter to 0

; loop while (s[i])

_loop:
    cmp [rdi], byte 0	; compare rdi (str[i]) to null ptr (end of str)
    jz _end				; if null ptr = end of loop, jump to _end section and return
    inc rcx 			; increase loop counter
    inc rdi				; increase dest address (i++;)
    jmp _loop			

; end section, returns the final value

_end:
    mov rax, rcx		; deplacer valeur de rcx dans rax (registre de retour e valeurs)
    pop rbp				; depiler rbp 
	ret