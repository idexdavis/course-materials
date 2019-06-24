
/*

	if(cond1){
	  code1
	}
	else if(cond2){
	  code2
	}
	  else if(cond3){
	  
	   code3
	}
	...
	
	else{
	  else code
	  
	}
	

	if(a < 5){
	  b = 100
	}
	else if(a < 10){
	  b = 200
	}
	  else if(a < 20){
	  b = 300
	}
	else{
	 b = 99	  
	}
*/




#a is EAX
#b is EBX


if1: #a <5
  #compare against 0. a < 5 == a - 5 < 0
  #negate condition: a - 5 >= 0
  cmpl $5, %eax
  jge if2
  #body of if1
  movl $100, %ebx
  jmp end_if_else_statement

if2: #a < 10
	#compare against 0. a < 10 == a - 10 < 0
	#negate condition a - 10 >= 0
	cmpl $10, %eax
	jge if3
	#body of if 2
	movl $200, %ebx
	jmp end_if_else_statement
	

if3: #a < 20
	#compare against 0. a < 20 == a - 20 < 0
	#negate condition a - 20 >= 0
	cmpl $20, %eax
	jge else
	#body of if 3
	movl $300, %ebx
	jmp end_if_else_statement

else:
	#else body
	movl $99, %ebx


end_if_else_statement:




