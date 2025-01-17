section .text
    global ft_read
    extern ft_strlen ; call ft_strlen
    extern __errno_location

ft_read:
    mov rax, 0      ; syscall 0 = read (pour linux 64 bits) or 0x2000003
    syscall
    cmp rax, 0
    jl error        ; jump if lower than the operand (dc ici négatif)
    jmp end


error:
    	neg rax                             ; substract rax to 0 (for error value)
		mov rdi, rax                        ; rdi = tmp to save rax value
		call __errno_location wrt ..plt     ; errno ptr saved in rax ; wrt ..plt = to link correctly __errno_location
        mov [rax], rdi                      ; send value error saved in rdi into rax
		mov rax, -1
		jmp end

end: 
    ret

