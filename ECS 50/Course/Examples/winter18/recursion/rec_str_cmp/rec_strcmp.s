
/*
	int rec_strcmp(char* str1, char* str2){	
	if(*str1 == '\0' && *str2 == '\0'){
		return 0;
	} else if (*str1 != *str2){
		return *str1 - *str2;
	} else{
		return rec_strcmp(str1 + 1, str2 + 1);
	}
	
	}
*/

.global rec_strcmp

.equ ws, 4
.text
rec_strcmp:

	prologue:
		push %ebp
		movl %esp, %ebp
		
		.equ str1, 2*ws #(%ebp)
		.equ str2, 3*ws #(%ebp)
		
	#ecx will be str1
	#edx will be str2
	
	movl str1(%ebp), %ecx
	movl str2(%ebp), %edx
		
	#if(*str1 == '\0' && *str2 == '\0')
	base_case1:
		cmpb $0, (%ecx)
		jnz base_case2
		cmpb $0, (%edx)
		jnz base_case2
		#return 0
		movl $0, %eax
		jmp epilogue
		
	base_case2:
		# else if (*str1 != *str2)
		#*str1 - str2 != 0
		movb (%ecx), %al
		subb (%edx), %al
		jz recursive_case
		movsx %al, %eax #move with sign extension 0xF3 -> 0xFFFFFFF3
										#0x57 -> 0x00000057
		jmp epilogue
	recursive_case:
		#return rec_strcmp(str1 + 1, str2 + 1);
		leal 1(%edx), %edx
		push %edx #pushing arg str2 + 1
		leal 1(%ecx), %ecx
		push %ecx #pushing arg str1 + 1
		call rec_strcmp
		addl $2*ws, %esp #clear  args
	
	epilogue:
		movl %ebp, %esp
		pop %ebp
		ret
	
