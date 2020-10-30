		global	ft_strlen

		section	.text
ft_strlen:
		mov		rax, -1
		dec		rdi
loop:
		inc		rdi
		inc		rax
		mov		r8b, [rdi]
		cmp		r8b, 0
		jnz		loop
		ret
