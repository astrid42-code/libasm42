section .text
    global ft_write
    extern ft_strlen ; call ft_strlen
    extern __errno_location

ft_write:
    push rbp
    mov rbp, rsp
    mov rax, 1  ; Appel système 1 = write (pour linux 64 bits)
    syscall
    cmp rax, 0
    jl error ; jump if lower than the operand (dc ici négatif)
    jmp end


error:
    	neg rax ; soustrait rax à 0 (pour la valeur du retour erreur)
		mov rdi, rax ; rdi = tmp pour garder la valeur de rax
		call __errno_location wrt ..plt ; ptr sur errno stocké dans rax ; wrt ..plt = pour linker correctement le __errno_location
		;call [rel __errno_location wrt ..got] ; rel pour adresse relative d __errno_location
        mov rbx, rdi ; envoie la valeur d'erreur stockée dans rdi sur le ptr d'erreur (stocké dans rax)
		mov rax, -1 ; valeur de retour finale de rax (pour signaler l'erreur)
		jmp end

end: 
    pop rbp
    ret

