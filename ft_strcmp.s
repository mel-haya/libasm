section .text
	global ft_strcmp

ft_strcmp:
	mov rax, 0
	mov rbx, 0
	mov rcx, 0
	mov rdx, 0
	jmp loop
	increment:
		inc rbx
	loop:
		mov     cl, BYTE[rdi + rbx]
		cmp     cl, 0
		jz      done
		mov		dl, BYTE[rsi + rbx]
		cmp     cl, dl 
		jne     done
		jmp     increment
	done:
		mov		rax, rcx
		sub		rax, rdx
		ret