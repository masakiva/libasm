		global	_ft_read
		extern	___error

		section	.text
_ft_read:
		mov		rax, 0x02000003		; sys_read syscall number
		syscall
		cmp		rax, 0				; sys_read return value
		jl		error				; jump if less
		ret							; return rax (sys_read positive or null return value)
error:
		neg		rax					; return value * -1
		mov		rdi, rax			; backup error number
		call	___error			; store address of errno in rax (return value)
		mov		[rax], rdi			; store error number in errno ([] means dereference)
		mov		rax, -1				; return -1
		ret
