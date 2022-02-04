# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mcarecho <mcarecho@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/30 21:39:27 by mcarecho          #+#    #+#              #
#    Updated: 2021/09/15 01:19:57 by mcarecho         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		libft.a

CC			=		clang

CFLAGS		=		-Wall -Wextra -Werror

SRCS =  ft_isalpha.c	\
		ft_isdigit.c	\
		ft_isalnum.c	\
		ft_isascii.c	\
		ft_isprint.c	\
		ft_strlen.c		\
		ft_memset.c		\
		ft_bzero.c		\
		ft_memcpy.c		\
		ft_memmove.c	\
		ft_strlcpy.c	\
		ft_strlcat.c	\
		ft_toupper.c	\
		ft_tolower.c	\
		ft_strchr.c		\
		ft_strrchr.c	\
		ft_strncmp.c	\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_strnstr.c	\
		ft_atoi.c		\
		ft_calloc.c		\
		ft_strdup.c		\
		ft_substr.c		\
		ft_strjoin.c	\
		ft_strtrim.c	\
		ft_split.c		\
		ft_itoa.c		\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_strmapi.c	\
		ft_striteri.c	\
		ft_putnbr_fd.c


SRCS_BONUS = ft_lstnew.c 		\
			ft_lstadd_front.c	\
			ft_lstsize.c		\
			ft_lstlast.c		\
			ft_lstadd_back.c	\
			ft_lstdelone.c		\
			ft_lstclear.c		\
			ft_lstiter.c		\
			ft_lstmap.c


OBJS		=		$(SRCS:.c=.o)

OBJS_BONUS		=		$(SRCS_BONUS:.c=.o)

all:$(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

$(OBJS): $(SRCS)
	${CC} -I . -c ${CFLAGS} ${SRCS}

bonus: $(OBJS_BONUS)
	ar -rcs $(NAME) $(OBJS_BONUS)

$(OBJS_BONUS): $(SRCS_BONUS)
	$(CC) -I . -c $(CFLAGS) ${SRCS_BONUS}

clean:
	rm -f $(OBJS) $(OBJS_BONUS)

fclean:clean
	rm -f $(NAME)

rebonus: fclean bonus

re: fclean all

.PHONY: all clean fclean re bonus rebonus

