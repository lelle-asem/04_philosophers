NAME = philo

SRC = philo.c\
living.c\
msg_lock.c\
ft_atoi.c\
malloc_fail.c\
init_struct.c\
init_philos.c\
init_forks.c\
time_correct.c\
end_all.c


HEADER = philo.h
OBJ = $(SRC:.c=.o)

CC = gcc
FLAGS = -Wall -Wextra -Werror

%.o: %.c $(HEADER)
		$(CC) -g $(FLAGS) -c -o $@ $<

$(NAME): $(OBJ)
		$(CC) -g $(FLAGS) -o $@ $^ 

all: $(NAME)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
