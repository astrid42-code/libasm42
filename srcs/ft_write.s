section .text
    global ft_write
    extern ft_strlen ; call ft_strlen
    extern _errno

ft_write:
    push rbp
    mov rbp, rsp
    mov rax, 1  ; Appel système 4 = write
    syscall
    cmp rax, 0
    jl error ; jl lower than the operand (dc ici négatif)
    jmp end


error:
		neg rax ; soustrait rax à 0 (pour la valeur du retour erreur)
		mov rdi, rax ; rdi = tmp pour garder la valeur de rax
		call _errno ; ptr sur errno stocké dans rax
		mov [rbx], rdi ; envoie la valeur d'erreur stockée dans rdi sur le ptr d'erreur (stocké dans rax)
		mov rax, -1 ; valeur de retour finale de rax (pour signaler l'erreur)
		jmp end

end: 
    pop rbp
    ret

