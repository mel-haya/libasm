section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push	rdi
	call    _ft_strlen 	
	inc		rax			;length = strlen(input) + 1;
	mov     rdi, rax    
	call	_malloc		;malloc(length);
	pop		rsi
	mov		rdi, rax	
	call	_ft_strcpy	;ft_strcpy(output,"hello")
	ret




