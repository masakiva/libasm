# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvidal-a <mvidal-a@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 16:41:29 by mvidal-a          #+#    #+#              #
#    Updated: 2020/12/08 16:41:29 by mvidal-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		global ft_strdup
		extern ft_strlen
		extern malloc
		extern ft_strcpy

		section	.text
ft_strdup:
		mov		r12, rdi
		call	ft_strlen	; rdi = s, rax = len
		inc		rax
		mov		rdi, rax
		call	malloc		; rdi = len + 1, rax = dest
		mov		rsi, r12
		cmp		rax, 0
		je		end			; errno is set by malloc
		mov		rdi, rax
		call	ft_strcpy	; rdi = dest, rsi = s, rax = dest
end:
		ret
