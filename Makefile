NAME = libftprintf.a

SRCS = srcs/
INCLUDE = include/

CC = gcc
CFLAGS = -Wall -Wextra -Werror

FILES = ft_printf.c core.c

OBJECTS = $(FILES:.c=.o)
OBJECTS_PREFIX = $(addprefix $(SRCS), $(OBJECTS))

HEADERS = ft_printf.h
HEADERS_PREFIX = $(addprefix $(INCLUDE), $(HEADERS))

%.o: %c
	$(CC) -c $(CFLAGS) $?

$(NAME): $(OBJECTS_PREFIX)
	ar -rc $@ $? $(HEADERS_PREFIX)

all: $(NAME)

clean:
	rm -rf $(OBJECTS_PREFIX)

fclean: clean
	rm -rf $(NAME)

re: fclean all