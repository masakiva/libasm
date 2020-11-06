		global	ft_strcmp

		section .text
ft_strcmp:
		mov		rax, 0
		mov		rcx, -1
		mov		rdx, 1
compare:
		mov		r8b, [rdi]
		mov		r9b, [rsi]
		cmp		r8b, r9b
		cmovl	rax, rcx
		cmovg	rax, rdx
		je		increment
		ret
increment:
		inc		rdi
		inc		rsi
		cmp		r8b, 0
		jne		compare
		ret
