all: forSum.out doWhileSum.out

#sudo apt-get -y install gcc-multilib g++-multilib

forSum.out: forSum.o
	ld -melf_i386 -o forSum.out forSum.o
 
forSum.o: forSum.s
	as --gstabs --32 -o forSum.o forSum.s 

doWhileSum.out: doWhileSum.o
	ld -melf_i386 -o doWhileSum.out doWhileSum.o

doWhileSum.o: doWhileSum.s
	as --gstabs --32 -o doWhileSum.o doWhileSum.s
	
clean:
	rm -fr doWhileSum.out doWhileSum.o forSum.out forSum.o
