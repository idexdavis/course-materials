tic_tac_toe.out: main.o the_board.o input_validation.o move.o win.o
	gcc -g -Wall -Werror -o tic_tac_toe.out main.o the_board.o input_validation.o move.o win.o

main.o: main.c the_board.h move.h
	gcc -g -Wall -Werror -c main.c

the_board.o: the_board.c the_board.h
	gcc -g -Wall -Werror -c the_board.c

input_validation.o: input_validation.c input_validation.h
	gcc -g -Wall -Werror -c input_validation.c

move.o: move.c move.h input_validation.h
	gcc -g -Wall -Werror -c move.c

win.o: win.c win.h
	gcc -g -Wall -Werror -c win.c

clean:
	rm -f *.o *.out