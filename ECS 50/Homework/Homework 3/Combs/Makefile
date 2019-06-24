combs.out: combs.o main.o
	gcc -g -Wall -m32 -o combs.out combs.o main.o
	
main.o: main.c combs.h
	gcc -g -Wall -m32 -c -o main.o main.c
	
combs.o: combs.s
	gcc -g -Wall -m32 -c -o combs.o combs.s
	
clean:
	rm *.o *.out
