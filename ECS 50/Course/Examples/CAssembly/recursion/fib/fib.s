/*int fib(int n){
  if( n== 0 || n == 1){
  	return 1;
  } else{
  	int fib1 = fib(n-1);
  	return fib1 + fib(n-2);
  }
}*/

.global fib
.equ ws, 4

.text

fib:
	prologue:
		push %ebp
		movl %esp, %ebp
		subl $1 *ws, %esp
		.equ n, 2*ws #(%ebp)
		.equ fib1, -1*ws #(%ebp)a
	
	#if( n== 0 || n == 1)
	movl n(%ebp), %ecx
	cmpl $0, %ecx 
	jz base_case 
	cmpl $1, %ecx
	jnz recursive_case
	base_case:
		#return 1;
		movl $1, %eax
		jmp epilogue
	recursive_case:
		#return fib(n-1) + fib(n-2);
		decl %ecx
		push %ecx
		call fib
		addl $1*ws, %esp #clear args
		movl %eax, fib1(%ebp) #save fib)n-1)
		movl n(%ebp), %ecx #ecx = n
		subl $2,%ecx #ecx = n - 2
		#decl (%esp)
		push %ecx
		call fib
		addl $1*ws, %esp #clear args
		addl fib1(%ebp), %eax #eax = fib(n-1) + fib(n-2)
		
	epilogue:
		movl %ebp, %esp
		pop %ebp
		ret
