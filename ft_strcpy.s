		global ft_strcpy

		section .text
ft_strcpy:
		mov		rax, rdi
copy:
		mov		r8b, [rsi]
		mov		[rdi], r8b
		cmp		r8b, 0
		jne		increment
		ret
increment:
		inc		rsi
		inc		rdi
		jne		copy
