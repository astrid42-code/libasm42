section .text
		global ft_write
		extern ft_strlen
		extern __errno_location	; ou _errno?

ft_write:
		push rbp
		mov rbp, rsp
		mov rax, 1 ; valeur syscall pour write
		syscall
		cmp rax, 0
		jl _error ; jl lower than the operand (dc ici négatif)
		jmp _end ; si pas d'erreur direct vers end

_error:
		neg rax ; soustrait rax à 0 (pour la valeur du retour erreur)
		mov rdi, rax ; rdi = tmp pour garder la valeur de rax
		call __errno_location ; ptr sur errno stocké dans rax
		mov [rbx], rdi ; envoie la valeur d'erreur stockée dans rdi sur le ptr d'erreur (stocké dans rax)
		mov rax, -1 ; valeur de retour finale de rax (pour signaler l'erreur)
		jmp _end

_end:
		pop rbp
		ret