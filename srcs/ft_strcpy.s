# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvidal-a <mvidal-a@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 16:41:14 by mvidal-a          #+#    #+#              #
#    Updated: 2020/12/08 16:41:14 by mvidal-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
