/*
int rec_sum(int* numbers, int len){
	if(len == 0){
		return 0;
	} else{
		return numbers[0] + rec_sum(numbers + 1, len - 1);
	}
}

leal d(b, i, s), dest
dest = d + b + i * s

movl d(b, i, s), dest

dest = memory[d + b + i *s]


most often used as the address of operator in C
or used for pointer arithmetic

C = A + B
leal (%eax, %ebx), %ecx
*/

.global rec_sum
.equ ws, 4

.text
rec_sum:
	rs_prologue:
		push %ebp
		movl %esp, %ebp
		.equ numbers, 2*ws #(%ebp)
		.equ len, 3 * ws #(%ebp)
	
	#if(len == 0)
	if_empty:
		cmpl $0, len(%ebp)
		jnz not_empty
		#return 0;
		movl $0, %eax
		jmp rs_epilogue
	
	not_empty:
		#return numbers[0] + rec_sum(numbers + 1, len - 1);
		movl len(%ebp), %ecx #ecx = len
		decl %ecx #ecx = len - 1
		push %ecx
		movl numbers(%ebp), %ecx #ecx = numbers
		leal 1*ws(%ecx), %eax # eax = numbers + 1
		push %eax
		call rec_sum
		addl $2*ws, %esp #clear arguments
		movl numbers(%ebp), %ecx #ecx = numbers
		addl (%ecx), %eax #eax = numbers[0] + rec_sum(numbers + 1, len - 1);
		
		
	
		/*
		Don't do these. They are wrong
		leal 1*ws + numbers(%ebp), %ecx #ecx= &numbers + 1
		movl 1*ws + numbers(%ebp), %ecx #ecx= *(&numbers + 1)
		*/
		
		
	
	rs_epilogue:
		movl %ebp, %esp
		pop %ebp
		ret



