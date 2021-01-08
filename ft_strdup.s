section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy
	

;char *strdup(const char *s)
;void *malloc(size_t size);


_ft_strdup:
	push	rdi
	call    _ft_strlen 	
	inc		rax			;rax = strlen(input) + 1;
	mov     rdi, rax    
	call	_malloc		;malloc(rax);
	pop		rsi
	mov		rdi, rax	
	call	_ft_strcpy	;ft_strcpy(output,"hello")
	ret




