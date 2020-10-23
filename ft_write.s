		global	ft_write
		extern	__errno_location

		section	.text
ft_write:
		mov		rax, 1				; sys_write syscall number
		syscall
		cmp		rax, 0				; sys_write return value
		jl		error				; jump if less
		ret							; return rax (sys_write positive or null return value)
error:
		neg		rax					; return value * -1
		mov		rdi, rax			; backup error number
		call	__errno_location	; store address of errno in rax (return value)
		mov		[rax], rdi			; store error number in errno ([] means dereference)
		mov		rax, -1				; return -1
		ret
