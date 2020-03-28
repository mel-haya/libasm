NAME = libasm.a

SRCS = ft_strlen.s
OBJS = $(SRCS:.s=.o)

FLAGS = -Wall -Werror -Wextra

all : $(NAME)

%.o : %.s
	nasm -f elf64 $<

$(NAME) : $(OBJS)
	ar -rc $(NAME) $(OBJS)

test :
	cc main.c libasm.a
	clear
	./a.out
