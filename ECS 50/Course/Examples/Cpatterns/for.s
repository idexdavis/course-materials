
/*

for(intialization; condition; update expression){
  body
}

for(int i = 0; i < some_number; ++i){
  body
}


rewrite for loop to be

for(intialization; true; update expression){
  if(! condition){
    break;
  }
  body
}

*/


#intialization 
#int i = 0
#pick a register for i
#Let EAX be i
movl $0, %eax

#Let EBX be some_number
#in this example ebx will be 10
movl $10, %ebx

for_start:
	#check the condition
	#coditions have to be compared against 0
	#i < some_number == i - some_number < 0
	#negate the condition i - some_number >= 0
	
	cmpl %ebx, %eax
	jge for_end
	
	#body 

	#update
	incl %eax
	jmp for_start

for_end:


