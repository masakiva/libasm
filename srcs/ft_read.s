# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvidal-a <mvidal-a@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 16:40:57 by mvidal-a          #+#    #+#              #
#    Updated: 2020/12/08 16:41:00 by mvidal-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		global	ft_read
		extern	__errno_location

		section	.text
ft_read:
		mov		rax, 0				; sys_read syscall number
		syscall
		cmp		rax, 0				; sys_read return value
		jl		error				; jump if less
		ret							; return rax (sys_read positive or null return value)
error:
		neg		rax					; return value * -1
		mov		rdi, rax			; backup error number
		call	__errno_location	; store address of errno in rax (return value)
		mov		[rax], rdi			; store error number in errno ([] means dereference)
		mov		rax, -1				; return -1
		ret
