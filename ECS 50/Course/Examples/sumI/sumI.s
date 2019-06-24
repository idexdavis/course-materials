
#this program sums i from 1 to N

/*
  int sumI(int N){
    int sum = 0;
    for(int i = 1; i < N; ++i){
      sum += i;
    }
    return sum;
  }

*/

.global _start
.equ N, 4

.text
_start:
	#eax will be i
	#ecx will hold the sum
	
	#int sum = 0;
	movl $0, %ecx
	
	#for(int i = 1; i < N; ++i)
	#i = 1
	movl $1, %eax
	for_start:
		#i < N
		#i - N < 0
		#negation: i - N >= 0
		cmpl $N, %eax
		jge for_end
		#sum += i;
		addl %eax, %ecx
		
		incl %eax #++i
		jmp for_start
	for_end:

	done:
		nop
	
	
	
	
	
	
