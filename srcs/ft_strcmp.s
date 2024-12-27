section .text
	global ft_strcmp

ft_strcmp:
	push rbp
	mov rbp, rsp
    xor rax, rax ; set rax to 0

loop:
    cmp [rdi], byte 0
    je end  ; jump equal (if str[i] is null)
    cmp [rsi], byte 0
    je end ; jump equal (if str[i] is null)

    mov al, [rdi] ; load str1[i] in sub register al
	cmp al, [rsi] ; compare str1[i] to str2[i]
    jne end ; jump not equal
    inc rdi
    inc rsi
    jmp loop

end:
    sub rax, [rsi]
	jl neg ; jump to less fct (neg)
	jg pos ; jump to greater fct (pos)
	jmp eq ; jump to equal str fct (eq)
    ret

; cmp not equal, if s1 is less than s2 : fct returns -1
neg:
	mov rax, -1

; cmp not equal, if s1 is greater than s2 : fct returns 1
pos:
	mov rax, 1

; cmp equal, fct returns 0
eq:
	mov rax, 0


; doc : https://dev.to/trish_07/recreating-strlen-and-strcmp-in-assembly-a-step-by-step-guide-1jjn#strcmp-in-assembly
