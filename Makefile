# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvidal-a <mvidal-a@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/08 16:42:00 by mvidal-a          #+#    #+#              #
#    Updated: 2020/12/08 17:16:26 by mvidal-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS_BASENAME	+= ft_strlen.s
SRCS_BASENAME	+= ft_strcpy.s
SRCS_BASENAME	+= ft_strcmp.s
SRCS_BASENAME	+= ft_write.s
SRCS_BASENAME	+= ft_read.s
SRCS_BASENAME	+= ft_strdup.s

SRCDIR			= srcs
OBJDIR			= objs

SRCS			= $(addprefix $(SRCDIR)/, $(SRCS_BASENAME))
OBJS			= $(addprefix $(OBJDIR)/, $(SRCS_BASENAME:.s=.o))

NAME			= libasm.a

AS				= nasm
ASFLAGS			= -felf64

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $@ $^

$(OBJDIR)/%.o:	$(SRCDIR)/%.s
				$(AS) $(ASFLAGS) $^ -o $@

$(OBJS):		| $(OBJDIR)

$(OBJDIR):
				mkdir $@

clean:
				$(RM) -r $(OBJDIR)

fclean:			clean
				$(RM) $(NAME)

re:				fclean all

.PHONY:			all clean fclean re
