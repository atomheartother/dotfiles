##
## Makefile for  in /home/navenn_t/libfiles
## 
## Made by Thomas N
## Login   <navenn_t@epitech.net>
## 
## Started on  Mon May  4 20:31:56 2015 Thomas N
## Last update Fri Nov  6 17:52:39 2015 Navennec Thomas
##

NAME	= badmalloc.so

RM	= rm -rf

CFLAGS	+= -Wall -Wextra -Werror

SRC	= badmalloc.c

OBJ	= $(SRC:.c=.o)

all:	$(NAME)

$(NAME): $(LIBR) $(OBJ)
	gcc -shared -o $(NAME) -fPIC $(SRC)

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	lib all clean fclean re
