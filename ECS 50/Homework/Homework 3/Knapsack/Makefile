all: Sknapsack.out #Cknapsack.out

Sknapsack.out: Sknapsack.o main.o
	gcc -g -Wall -m32 -o Sknapsack.out Sknapsack.o main.o

Cknapsack.out: Cknapsack.o main.o
	gcc -g -Wall -m32 -o Cknapsack.out Cknapsack.o main.o
	
Sknapsack.o: knapsack.s
	gcc -g -Wall -m32 -c -o Sknapsack.o knapsack.s
	
Cknapsack.o: knapsack.c
	gcc -g -Wall -m32 -c -o Cknapsack.o knapsack.c
	
main.o: main.c
	gcc -g -Wall -m32 -c -o main.o main.c
	
clean:
	rm main.o Cknapsack.o Sknapsack.o Cknapsack.out Sknapsack.out
