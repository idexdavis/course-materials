.global addOne #addOne needs to be made global so the linker can see it
.equ wordsize, 4

.text

addOne: #int addOne(int a)
	
#esp + 8: a
#esp + 4: ret address
#ebp: esp: old ebp

#prologue
push %ebp
movl %esp, %ebp
#subtract space for locals

.equ a, 2*wordsize  #(%ebp)

movl a(%ebp), %eax #get the argument
incl %eax #add one

#epilogue
movl %ebp, %esp
pop %ebp
ret

