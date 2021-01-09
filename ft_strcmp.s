section .text
	global _ft_strcmp

_ft_strcmp:
	mov rbx, 0
	mov rcx, 0
	mov rdx, 0
	jmp loop
	increment:
		inc rbx
	loop:
		mov     cl, BYTE[rdi + rbx]
		mov		dl, BYTE[rsi + rbx]
		cmp     cl, 0
		jz      done
		cmp     cl, dl 
		jne     done
		jmp     increment
	done:
		mov		rax, rcx
		sub		rax, rdx
		ret