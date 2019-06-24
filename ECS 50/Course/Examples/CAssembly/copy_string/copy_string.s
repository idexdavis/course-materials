
/*
char* copy_string(char* orig){
	char* new = malloc( (strlen(orig) + 1) * sizeof(char));
	strcpy(new, orig);
	return new;
}*/


.global copy_string
.equ ws, 4

.text
copy_string:
	cs_prologue:
		push %ebp
		movl %esp, %ebp
		subl $1 * ws, %esp
		#orig
		#ret address
		#ebp: old_ebp
		#esp: new 
  	.equ orig, 2*ws #(%ebp)
  	.equ new, -1*ws #(%ebp)
  	 #char* new = malloc( (strlen(orig) + 1) * sizeof(char));
  	 #strlen(orig)
  	 push orig(%ebp) #set argument
  	 call strlen
  	 addl $1*ws, %esp #clear arguments
  	 incl %eax #eax = strlen + 1
  	 
  	 #malloc( (strlen(orig) + 1)
  	 push %eax
  	 call malloc
  	 addl $1*ws, %esp #clear arguments
  	 movl %eax, new(%ebp) 
  	 
  	 #strcpy(new, orig);
  	 push orig(%ebp)
  	 push %eax
  	 call strcpy
  	 addl $2 *ws, %esp #clear arguments
  	 
  	 #strcpy has already set eax to be our return value
  	 
  
  
  cs_epilogue:
  	movl %ebp, %esp
  	pop %ebp
  	ret
  
