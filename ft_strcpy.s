section .text
    global ft_strcpy

ft_strcpy:
    xor rax, rax
    xor rcx, rcx

loop:
;    cmp [rsi + rcx], byte 0
;    je end
    mov al, byte[rsi + rcx]  ; save char of rsi (src str[i]) in subregister al (related to rax)
    mov byte[rdi + rcx], al
    inc rcx
    cmp al, 0
    jne loop

end:
;    mov	[rdi + rcx], byte 0
    mov rax, rdi    ; save dest (rdi) in rax
    ret
