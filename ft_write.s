section .text
    global ft_write
    extern ft_strlen ; call ft_strlen
    extern __errno_location

ft_write:
    mov rax, 1                              ; syscall 1 = write (for linux 64 bits)
    syscall
    cmp rax, 0
    jl error                                ; jump if lower than the operand
    jmp end


error:
    	neg rax                             ; substract rax to 0 (for error return value)
		mov rdi, rax                        ; rdi = tmp to save rax value
		call __errno_location wrt ..plt     ; errno ptr saved in rax ; wrt ..plt = tolink correctly __errno_location
        mov [rax], rdi                      ; send error value in rdi to the rax
		mov rax, -1
		jmp end

end: 
    ret

