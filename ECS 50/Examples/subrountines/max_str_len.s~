
.global _start

.equ ws, 4

.data

example_str1:
	.string "What a wonderful world"

example_str2:
	.string "Bob"

strlen_str1:
	.long 0

strlen_result:
	.long 0
	
max_str_len_str1:
	.long 0
max_str_len_str2:
	.long 0

/*int max(int a, int b){

	if(a > b){
		return a;
	}
	else{
		return b
	}
}
*/
.text
max:
	#EAX will be A
	#EBX will be B
	#ECX will have the return value
	
	#if(a > b)
	max_if:
		cmpl %ebx, %eax
		jl max_else
		movl %eax, %ecx
		ret 
	max_else:
		movl %ebx, %ecx
		ret

strlen: 
/*
  int strlen(char* str1){
  	int i;
  	for(i = 0; str1[i] != '\0'; ++i){
  		continue;
  	}
  	return i;
  }

*/
	#str1 should be placed in strlen_str
	#return value will be placed in strlen_result
	#ECX will be str1
	#EDX will be i
	
	movl strlen_str1, %ecx #get our argument str1
	movl $0, %edx # i = 0
	start_str_len_for:
		cmpb $0 , (%ecx, %edx) #str1[i] != '\0'
		jz end_str_len_for
		incl %edx #++i
		jmp start_str_len_for
	end_str_len_for: 
	
	movl %edx, strlen_result
	ret

max_str_len:
/*
	int max_str_len(char* str1, char* str2){
	
		int len1 = strlen(str1);
		int len2 = strlen(str2);
		return max(len1, len2);
	
	}
*/

	#str1 should be placed in max_str_len_str1
	#str1 should be placed in max_str_len_str2
	#return value will be placed in eax
	#ECX will be a temp
	#eax will be len1 
	#ebx will be len2

	#len1 = strlen(str1)
	movl max_str_len_str1, %ecx
	movl %ecx, strlen_str1
	call strlen
	movl strlen_result, %eax
	
	#len2 = strlen(str1)
	movl max_str_len_str2, %ecx
	movl %ecx, strlen_str1
	call strlen
	movl strlen_result, %ebx

	call max #max (len1, len2)
	movl %ecx, %eax
	ret
	
_start:
	#max(10, 7)
	movl $10, %eax
	movl $7, %ebx
	call max #answer will be in ecx
	
	#max(2, 7)
	movl $2, %eax
	movl $7, %ebx
	call max #answer will be in ecx
	
	movl $example_str1, strlen_str1
	call strlen
	#answer will be in strlen_result
	
	movl $example_str1, max_str_len_str1
	movl $example_str2, max_str_len_str2
	call max_str_len
	
	movl $example_str1, max_str_len_str2
	movl $example_str2, max_str_len_str1
	call max_str_len

	
	
done:
	nop
	
	
	


