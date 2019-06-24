tic-tac-toe.out: board.o InputValidation.o main.o move.o win.o
	gcc -g -Wall -Werror -o tic-tac-toe.out board.o InputValidation.o main.o move.o win.o

board.o: board.c board.h move.h
	gcc -g -Wall -Werror -c board.c

InputValidation.o: InputValidation.c InputValidation.h
	gcc -g -Wall -Werror -c InputValidation.c

main.o: main.c board.h move.h win.h
	gcc -g -Wall -Werror -c main.c

move.o: move.c move.h board.h InputValidation.h
	gcc -g -Wall -Werror -c move.c

win.o: win.c win.h board.h move.h
	gcc -g -Wall -Werror -c win.c

clean:
	rm -fr *.o *.out