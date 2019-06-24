/*
int rec_str_cmp(char* str1, char* str2){
	if( str1[0] == '\0' || str2[0] == '\0'){
		return str1[0] - str2[0];
	}else if(str1[0] != str2[0]){
		return str1[0] - str2[0];
	} else{
		return rec_str_cmp(str1 + 1, str2 + 1);
	}
}*/

.global rec_str_cmp

.equ ws, 4

.text

rec_str_cmp:
	prologue:
		push %ebp
		movl %esp, %ebp
		.equ str1, 2*ws #(%ebp)
		.equ str2, 3*ws #(%ebp)
		
		movl str1(%ebp), %ecx
		movl str2(%ebp), %edx
		
		base_case1_check:
			#if( str1[0] == '\0' || str2[0] == '\0')
			cmpb $0, (%ecx)
			#don't do this: cmpb $0, str1(%ebp) # (&str1)[0] - 0
			jz base_case1
			cmpb $0, (%edx)
			jnz base_case2_check
		base_case1:
			#return str1[0] - str2[0];
			movb (%ecx), %al
			subb (%edx), %al
			movsx %al, %eax #move with sign extension
			jmp epilogue
			
		#else if(str1[0] != str2[0])
		base_case2_check:
			movb (%ecx), %al
			subb (%edx), %al
			jz recursive_case
		base_case2:
			#return str1[0] - str2[0];
			movsx %al, %eax
			jmp epilogue
			
		recursive_case:
			#return rec_str_cmp(str1 + 1, str2 + 1);
			leal 1(%edx), %eax
			push %eax
			leal 1(%ecx), %eax
			push %eax
			call rec_str_cmp
			addl $2*ws, %esp #clear args
	
	epilogue:
		movl %ebp, %esp
		pop %ebp
		ret

