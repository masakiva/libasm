		global	ft_strcmp

		section .text
ft_strcmp:
		mov		rax, 0
		mov		rcx, -1
		mov		rdx, 1
		mov		r8b, [rdi]
		mov		r9b, [rsi]
		cmp		r8b, r9b
		cmovl	rax, rcx
		cmovg	rax, rdx
		je		cmp_loop
		ret
cmp_loop:
		cmp		r8b, 0
		je		end
		inc		rdi
		inc		rsi
		mov		r8b, [rdi]
		mov		r9b, [rsi]
		cmp		r8b, r9b
		cmovl	rax, rcx
		cmovg	rax, rdx
		je		cmp_loop
		ret
end:
		ret
