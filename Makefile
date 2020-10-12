SRCS =	ft_read.s \
		ft_write.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s \
		ft_strlen.s

NAME = libasm.a
MAINS = main.c

OBJS = $(SRCS:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o : %.s
	nasm -f macho64 $<

test:
	gcc $(MAINS) $(NAME)
	./a.out

clean:
	rm -f *.o

fclean: clean
	rm -f libasm.a
	rm -f a.out
	rm -f *.txt

re: fclean all

.PHONY: make test clean flcean re
