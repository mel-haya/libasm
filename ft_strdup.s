section .text
	global ft_strdup
	extern malloc
	extern ft_strlen
	extern ft_strcpy

;char *strdup(const char *s)
;void *malloc(size_t size);


ft_strdup:
	mov		rax, 0
	call    ft_strlen
	inc		rax
	mov     rsi, rdi
	mov     rdi, rax
	call	malloc
	mov		rdi, rax
	call	ft_strcpy
	done:
		ret




