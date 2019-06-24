sfile = editDist.s
exe = editDist.out

editDist.out: editDist.o
	ld -melf_i386 -o $(exe) editDist.o
	
editDist.o: $(sfile)
	as --32 --gstabs -o editDist.o $(sfile)
	
clean:
	rm -fr $(exe) editDist.o 
