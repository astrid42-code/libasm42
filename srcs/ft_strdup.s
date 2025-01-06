section .text
    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy

ft_strdup:
    push rbp
    mov rbp, rsp
    cmp [rsi], byte 0	; compare rsi (source address) to null ptr (end of str)
    jz end				; if null ptr = end of loop, jump to _end section and return


end:
    pop rbp
    ret