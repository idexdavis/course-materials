tic_tac_toe.out: win.o board.o input_val.o move.o main.o
	gcc -g -Wall -Werror -o tic_tac_toe.out win.o board.o input_val.o move.o main.o
	
win.o: win.c win.h board_spec.h input_val.h
	gcc -g -Wall -Werror -c win.c
	
board.o: board.c board.h board_spec.h
	gcc -g -Wall -Werror -c board.c

input_val.o: input_val.c input_val.h board_spec.h
	gcc -g -Wall -Werror -c input_val.c

move.o: move.c move.h input_val.h
	gcc -g -Wall -Werror -c move.c
	
main.o: main.c board.h move.h win.h
	gcc -g -Wall -Werror -c main.c

clean:
	rm -fr *.o *.out
