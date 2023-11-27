NAME = libftprintf.a

SRCS = srcs/
INCLUDE = include/

CC = gcc
CFLAGS = -Wall -Wextra -Werror

FILES = ft_printf.c \
		core.c
FILES_PREFIX = $(addprefix $(SRCS), $(FILES))

OBJECTS = $(FILES:.c=.o)
OBJECTS_PREFIX = $(addprefix $(SRCS), $(OBJECTS))

HEADERS = ft_printf.h
HEADERS_PREFIX = $(addprefix $(INCLUDE), $(HEADERS))

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -c $(FILES_PREFIX)
	mv $(OBJECTS) $(SRCS)
	ar -rc $@ $(OBJECTS_PREFIX) $(HEADERS_PREFIX)

clean:
	rm -rf $(OBJECTS_PREFIX) $(BONUS_OBJECTS_PREFIX)

fclean: clean
	rm -rf $(NAME)

re: fclean all