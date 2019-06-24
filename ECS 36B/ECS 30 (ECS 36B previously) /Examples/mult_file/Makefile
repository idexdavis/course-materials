stats_example.out: stats.o main.o
	gcc -g -Wall -Werror -o stats_example.out stats.o main.o

stats.o: stats.c stats.h
	gcc -g -Wall -Werror -c  stats.c

main.o: main.c stats.h
	gcc -g -Wall -Werror -c  main.c
	
clean:
	rm -f *.o *.out
