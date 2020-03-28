
section .text
	global ft_strlen

ft_strlen:
	mov     rax, 0
	check_terminator:
		mov     cl, [rdi]
		cmp     cl, 0
		je      done
		inc		rax
		inc		rdi
		jmp		check_terminator
	done:
		ret		
