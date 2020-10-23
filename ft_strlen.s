		global	_ft_strlen

		section	.text
_ft_strlen:
		inc		rdi
		mov		rax, [rdi]
		ret
;		mov		rsi, 0
;		call	increment
;		ret
;increment:
;		inc		rdi
;		mov		rax, [rdi]
;		inc		rsi
;		cmp		rax, 0
;		jnz		increment
