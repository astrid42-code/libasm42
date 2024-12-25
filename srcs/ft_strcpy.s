section .text
    global ft_strcpy

ft_strcpy:
    push rbp
    mov rbp, rsp
    mov rax, rdi  ; move dest address in return register (rax)

loop:
    cmp [rsi], byte 0	; compare rsi (source address) to null ptr (end of str)
    jz end				; if null ptr = end of loop, jump to _end section and return
    mov rdi, rsi
    ; movsb
    inc rdi
    inc rsi
    jmp loop

end:
    mov byte [rdi], 0
    pop rbp
    ret
