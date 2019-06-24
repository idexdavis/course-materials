fpArithmetic.out: MyFloat.o main.o
	g++ -g -Wall -m32 -std=c++11 -o fpArithmetic.out MyFloat.o main.o

main.o: main.cpp MyFloat.h
	g++ -g -Wall -m32 -std=c++11 -c -o main.o main.cpp
	
MyFloat.o: MyFloat.h MyFloat.cpp
	g++ -g -Wall -m32 -std=c++11 -c -o MyFloat.o MyFloat.cpp
	
clean:
	rm main.o MyFloat.o main
