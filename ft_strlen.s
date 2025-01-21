section .text
	global ft_strlen

; variables initialization :

ft_strlen:
    xor rcx, rcx		; initialize loop counter to 0

; loop : while (s[i])

loop:
    cmp [rdi], byte 0	; compare rdi (str[i] address) to null ptr (end of str)
    jz end				; if null ptr = end of loop, jump to _end section and return
    inc rcx 			; increase loop counter  (i++;)
    inc rdi				; increase dest address
    jmp loop

; end section, returns the final value

end:
    mov rax, rcx		; move rcx value in rax (register used for the values we return)
	ret