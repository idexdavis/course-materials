sfile = 64bitAdd.s
exe = 64bitAdd.out

64bitAdd.out: 64bitAdd.o
	ld -m elf_i386 -o $(exe) 64bitAdd.o
64bitAdd.o: $(sfile)
	as --32 --gstabs -o 64bitAdd.o $(sfile)
	
clean:
	rm -fr $(exe) 64bitAdd.o
