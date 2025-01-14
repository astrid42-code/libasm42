section .text
    global ft_strcpy

ft_strcpy:
    xor rax, rax
    xor rcx, rcx

loop:
    mov al, byte[rsi + rcx]  ; save char of rsi (src str[i]) in subregister al (related to rax)
    mov byte[rdi + rcx], al
    inc rcx
    cmp al, 0
    jne loop

end:
    mov rax, rdi    ; save dest (rdi) in rax
    ret

; about diff for copy :
; real "strcpy has no way of knowing how large the destination buffer is (i.e. there is no length parameter) so sloppy programming using it can lead to overrunning the buffer and corrupting other memory. Such an overrun can lead to crashes, odd behaviour and may be exploitable by malware authors."
; https://stackoverflow.com/questions/23317646/why-is-strcpy-unsafe-in-c