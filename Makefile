#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lalves <lalves@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/14 16:10:20 by lalves            #+#    #+#              #
#    Updated: 2016/11/16 17:20:05 by lalves           ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		=	#project_name

CC			=	gcc
MAKE		=	make
RM			=	rm -rfv

CFLAGS		=	-Wall -Wextra -Werror
CPPFLAGS	=	-Iinc -Ilibft/inc
LDFLAGS		=	-Llibft
LDLIBS		=	-lft
LIB			=	libft/libft.a

SRC_PATH	=	src/
OBJ_PATH	=	obj/

SRC_NAME	=	#src_name

OBJ_NAME	=	$(SRC_NAME:.c=.o)

SRC			=	$(addprefix $(SRC_PATH), $(SRC_NAME))
OBJ			=	$(addprefix $(OBJ_PATH), $(OBJ_NAME))


.PHONY:		all, clean, fclean, re


all:		$(NAME)

$(NAME):	$(LIB) $(OBJ)
	$(CC) $(LDFLAGS) $(LDLIBS) $(OBJ) -o $(NAME)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@mkdir -p $(OBJ_PATH)
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

$(LIB):
	$(MAKE) -C libft

clean:
	@$(RM) $(OBJ_PATH)
	@$(MAKE) -C libft clean

fclean:		clean
	@$(RM) $(NAME)
	@$(MAKE) -C libft fclean

re:			fclean all