
/*

	int strlen(char* str){
	
	int len = 0;
	for(len = 0; str[len] != '\0'; ++len);
	
	return len;

*/

.global _start
.equ ws, 4

.data

str:
	.string "hello"
another_str:
	.string "good bye"
	
	
.text

strlen: #(char* str)
	#esi will be str
	#eax will be len which is also the return value
	
	
	
	#for(len = 0; str[len] != '\0'; ++len);

	movl $0, %eax # len = 0
	
	for_start:
		#str[len] != '\0'
		#str[len] -'\0' != 0
		#neg: str[len] -'\0' == 0
		#*(str + len) -'\0' == 0
		cmpb $0, (%esi, %eax) #str[len] - '\0'
		jz for_end 
		incl %eax
		jmp for_start
	for_end:
	ret
	
_start:
	movl $str, %esi
	call strlen
	
	movl $another_str, %esi
	call strlen


