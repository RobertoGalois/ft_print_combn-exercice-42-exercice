.PHONY: clean
.SUFFIXES:

ex07: ft_print_combn.o ft_putchar.o main.o
    gcc ft_print_combn.o ft_putchar.o main.o -o ex07
ft_print_combn.o: ft_print_combn.c ft_putchar.h
    gcc -c ft_print_combn.c
ft_putchar.o: ft_putchar.c
    gcc -c ft_putchar.c
main.o: main.c ft_print_combn.c ft_putchar.h
    gcc -c main.c
clean:
    rm -f *.o ex07
