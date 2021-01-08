
section .text
	global _ft_strlen

_ft_strlen:
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
