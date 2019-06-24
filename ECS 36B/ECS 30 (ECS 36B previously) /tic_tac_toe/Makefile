tic_tac_toe.out: main.o board.o input_validation.o move.o win.o
	gcc -g -Wall -Werror -o tic_tac_toe.out main.o board.o input_validation.o move.o win.o

main.o: main.c board.h move.h win.h
	gcc -g -Wall -Werror -c main.c

board.o: board.c board.h
	gcc -g -Wall -Werror -c board.c

input_validation.o: input_validation.c input_validation.h
	gcc -g -Wall -Werror -c input_validation.c

move.o: move.c move.h input_validation.h
	gcc -g -Wall -Werror -c move.c

win.o: win.c win.h
	gcc -g -Wall -Werror -c win.c

clean:
	rm -f *.o *.out