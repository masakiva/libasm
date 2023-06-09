# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvidal-a <mvidal-a@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 16:41:22 by mvidal-a          #+#    #+#              #
#    Updated: 2020/12/08 16:41:22 by mvidal-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		global	ft_strlen

		section	.text
ft_strlen:
		mov		rax, 0		; i = 0
compare:
		mov		r8b, [rdi]	; r8b = s[i]
		cmp		r8b, 0		; if (r8b != '\0')
		jne		increment	; 	goto increment
		ret					; else return (i)
increment:
		inc		rdi			; s++
		inc		rax			; i++
		jne		compare		; goto compare
