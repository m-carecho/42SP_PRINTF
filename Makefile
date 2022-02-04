# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mcarecho <mcarecho@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/24 00:25:50 by mcarecho          #+#    #+#              #
#    Updated: 2021/11/24 00:48:22 by mcarecho         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=		libftprintf.a

CC_FLAGS	=	-Wall -Wextra -Werror

LIBFT	=		./libft/libft.a

SRCS	=		ft_printf.c 	\
				ft_base.c   	\
				ft_uitoa.c  	\
				write_char.c	\
				write_hex.c		\
				write_int.c		\
				write_string.c	\
				write_unsigned.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)
	make clean

$(NAME): $(OBJS) $(LIBFT)
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJS)

$(LIBFT):
	make -C ./libft

$(OBJS):
	gcc $(CC_FLAGS) -I . -c $(SRCS)

clean:
	rm -f $(OBJS)
	make clean -C ./libft

fclean: clean
	make fclean -C ./libft
	rm -f $(NAME)

re: fclean all

bonus: all

gdb:
	gcc -g3 -I . main.c $(SRCS) -L ./libft -lft -ggdb

git:
	git add .
	git commit -m final
	git push

update:
	git pull

#valgrind --show-leak-kinds=all --track-origins=yes  --leak-check=full
.PHONY: all clean fclean re gdb update
