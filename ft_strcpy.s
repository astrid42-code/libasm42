section		.text
    global		ft_strcpy

ft_strcpy:
	xor rcx, rcx

loop:
	cmp [rsi + rcx], byte 0
    je end
    mov al, byte[rsi + rcx]  ; using al subregister to avoid "invalid register size specification ignored [-w+regsize]" error
    mov [rdi + rcx], byte al
    inc rcx
    jmp loop

end:
	mov	[rdi + rcx], byte 0
    mov rax, rdi
    ret
