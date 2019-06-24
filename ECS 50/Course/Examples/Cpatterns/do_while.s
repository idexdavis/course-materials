/*

do{

  body
  
}while(condition)



do{

  body
  
}while(i < some_number)

*/

#intialization 
#int i = 0
#pick a register for i
#Let EAX be i
movl $0, %eax

#Let EBX be some_number
#in this example ebx will be 10
movl $10, %ebx


do_while_start:
	#body

	#compare against 0: i < some_number == i - some_number < 0
	cmpl %ebx, %eax
	jl do_while_start
do_while_end:




