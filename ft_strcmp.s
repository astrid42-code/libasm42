section .text
	global ft_strcmp

ft_strcmp:
    xor rax, rax ; set rax to 0

loop:

    mov al, [rdi]           ; load str1[i] in sub register al (related to rax)
	cmp al, [rsi]           ; compare str1[i] to str2[i]
    jne cmp                 ; if str1[i] and str2[i] not equal, jump to cmp
    cmp [rdi], byte 0
    jz eq
    cmp [rsi], byte 0
    jz eq
    inc rdi
    inc rsi
    jmp loop

cmp:
    sub al, [rsi]           ; substract char str2[i] to rax (0)
	jl neg                  ; jump to less fct (neg)
	jg pos                  ; jump to greater fct (pos)
	jmp eq                  ; jump to equal str fct (eq)

; cmp not equal, if s1 is less than s2 : fct returns -1
neg:
	mov rax, -1
    jmp end

; cmp not equal, if s1 is greater than s2 : fct returns 1
pos:
	mov rax, 1
    jmp end

; cmp equal, fct returns 0
eq:
	mov rax, 0
    jmp end

end:
    ret
