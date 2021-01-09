section .text
	global _ft_strcpy

_ft_strcpy:
	mov		rbx, -1
	increment:
		inc		rbx
	loop:
		mov		cl,	BYTE[rsi + rbx]
		mov		BYTE[rdi + rbx], cl
		cmp     cl, 0
		jnz		increment
	done:
		mov     rax, rdi
		ret	