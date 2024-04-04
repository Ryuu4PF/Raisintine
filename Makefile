##
## EPITECH PROJECT, 2022
## Makefile myls
## File description:
## Makefile my_printf
##

SRC = src/main.c
OBJ = $(SRC:.c=.o)
TEST = units_tests/test.c
NAME = error
NTEST = unit_tests

all: $(NAME) clean

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ)
	rm -f *.o

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f $(NTEST)

tests_run:
	gcc -o $(NTEST) $(TEST) -I/usr/local/include --coverage -lcriterion
	./$(NTEST) --verbose

re: fclean all

.PHONY: all clean fclean tests_run re
