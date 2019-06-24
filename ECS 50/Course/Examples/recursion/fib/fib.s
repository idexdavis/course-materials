/*
	int fib(int n){
		if(n == 0 || n == 1){
			return 1;
		}
		else {
			return fib(n-1) + fib(n-2);
		}
	}

*/

.global fib
.equ ws, 4
.text

fib:
	prologue:
		push %ebp
		movl %esp, %ebp
		subl $1*ws, %esp
		#save regs
		
		.equ n, (2*ws) #(%ebp)
		.equ temp_fib, (-1*ws) #(%ebp)
	#if(n == 0 || n == 1)
	
	cmpl $0, n(%ebp)
	jz if
	cmpl $1, n(%ebp)
	jnz else
		
	if:
		#return 1;
		movl $1, %eax
		jmp epilogue
	else:
		#return fib(n-1) + fib(n-2);
		movl n(%ebp), %ecx #ecx = n
		decl %ecx #ecx = n -1
		push %ecx #put n-1 on top of stack as arguement for fib
		call fib
		movl %eax, temp_fib(%ebp) #save fib(n-1) onto stack
		#cool way
		decl (%esp) #n-1 is on top of stack, so subtract 1 from that
		/*
		normal way
		addl $1*ws %esp #clear args to fib
		movl n(%ebp), %ecx
		subl $2, %ecx
		push %ecx
		*/
		call fib
		addl temp_fib(%ebp), %eax #eax = fib(n-1) + fib(n-2);
	epilogue:
		movl %ebp, %esp #clear locals
		pop %ebp #restore ebp
		ret
		
		
