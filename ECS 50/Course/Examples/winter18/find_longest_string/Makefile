find_longest_string.out: find_longest_string.o
	ld -m elf_i386 -o find_longest_string.out find_longest_string.o

find_longest_string.o: find_longest_string.s
	as --gstabs --32 -o find_longest_string.o find_longest_string.s

clean:
	rm -f *.out *.o
