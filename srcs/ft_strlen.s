section .text
	global ft_strlen

; variables initialization :

ft_strlen:
    push rbp            ; save base pointer on top of the stack = rsp (save local variables, for ex. : variables to use in a fct)
    mov rbp, rsp        ; copy rsp value in stack ptr (both point to the top of the stack now)
    xor rcx, rcx		; initialize loop counter to 0

; loop while (s[i])

_loop:
    cmp [rdi], byte 0	; compare rdi (str[i] address) to null ptr (end of str)
    jz _end				; if null ptr = end of loop, jump to _end section and return
    inc rcx 			; increase loop counter  (i++;)
    inc rdi				; increase dest address
    jmp _loop			; retour au départ de la loop

; end section, returns the final value

_end:
    mov rax, rcx		; move rcx value in rax (register used for the values we return)
    pop rbp				; pop the return address off the stack and jump unconditionally to this address
	ret