section .text
    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy

ft_strdup:
    push rbp
    mov rbp, rsp


end:
    pop rbp
    ret