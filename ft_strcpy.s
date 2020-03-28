section .text
	global ft_strcpy

ft_strcpy:
	mov		rbx, 0
	cmp     rdi, 0
	jz		done
	jmp		loop
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