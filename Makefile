NAME	= minishell
SRCS	= $(wildcard *.c)
OBJS	= $(SRCS:.c=.o)
CC		= cc
RM		= rm -f
FLAGS	= -Wall -Wextra -Werror

all:
		$(CC) $(FLAGS) $(SRCS) $()

clean:
		$(RM) $(OBJS)

fclean:	clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
