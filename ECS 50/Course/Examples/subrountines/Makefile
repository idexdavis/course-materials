max_str_len.out: max_str_len.o
	ld -m elf_i386 -o max_str_len.out max_str_len.o

max_str_len.o: max_str_len.s
	as --gstabs --32 -o max_str_len.o max_str_len.s

clean:
	rm -f *.out *.o
