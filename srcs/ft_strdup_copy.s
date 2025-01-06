section .text
		global ft_strdup
		extern malloc
		extern ft_strlen
		extern ft_strcpy

ft_strdup:
		push rbp
		mov rbp, rsp
		mov r12, rdi ; copier str dans r10 (rdi car 1er arg) à mettre dans r12 (callee-saved register) (pourtant : r10 registre temporaire pour les ptrs sur strings)
		call ft_strlen ; rax = len de str (rsi)
        inc rax ; +1 pour le \0
		mov rdi, rax ; pour envoyer la taille à malloc
		call malloc
		cmp rax, 0 ; si 0, malloc failed
		jz _error_malloc
		mov rdi, rax ; malloc le 1er param de cpy
		mov rsi, r12 ; str remis dans rsi (2eme param de cpy)
		call ft_strcpy ; effectue la copie de rsi vers rdi
		pop rbp
		ret

_error_malloc:
		mov rax, -1
		pop rbp
		ret