.global _start

.equ ws, 4



/*
	char* longest_str(char** strs, int len){
		int longest_len = strlen(strs[0]);
		char* long_str = strs;
		
		for(int i = 1; i < len; ++i){
			if(strlen(strs([i]) > longest_len){
				longest_len = strlen(strs[i]));
				long_str = strs + i;
			}
			
		}
		return lon_str;
	}
*/


/*
	int length_longset_str(char** strs, int len){
		reutrn strlen(longest_str(strs, len));
	}
*/


.data

str1:
	.string "hello"

str2:
	.string "good bye"
	
longest_str_strs: #strs parameter for longest_str
	.long 0

longest_str_len: #len parameter for longest_str
	.long 0

longest_str_i: #local variable i in longest_str
	.long 0
	
longest_str_longest_len: #local variable longest_len in lingest_str
	.long 0
	
longest_str_return_value:
	.long 0


.text



strlen:
	/*
	int str_len(char* str){
		int len;
		for(len = 0, str[len]!='\0'; ++len);
		
		return len;
	}
*/


	#str will be ESI
	#EAX is len, which is the return value

	#for(len = 0, str[len]!='\0'; ++len);
	
	
	movl $0, %eax; #len = 0
	
	strlen_for_start:
		#str[len]!='\0'
		#'\0' == 0
		#str[len]!=0
		#neg str[len] == \0
		
		cmpb $0, (%esi, %eax)
		jz strlen_for_end
		
		incl %eax # ++len
		jmp strlen_for_start
	strlen_for_end:
	ret #return to where you were called from
end_strlen:


longest_str:	
	/*
		char* longest_str(char** strs, int len){
			char* long_str = strs[0]
			int longest_len = strlen(strs[0]);
			
		
			for(int i = 1; i < len; ++i){
				if(strlen(strs([i]) > longest_len){
					longest_len = strlen(strs[i]));
					long_str = &strs[i]; == &*(strs + i) == strs + i
				}
			
			}
			return long_str;
		}
	*/
	
	#EAX will be longest_len
	#EBX will be strs
	#ECX will be len
	#EDX will be long_str
	#ESI will be i
	
	#char* long_str = strs[0]
	movl longest_str_strs,%ebx  #ebx = strs
	movl longest_str_len, %ecx #ecx = len
	
	movl (%ebx), %edx #edx = long_str = strs[0]
	
	#int longest_len = strlen(strs[0]);
	movl %edx, %esi #prep function call. esi = strs[0]
	call strlen # eax = strlen(strs[0])
	
	#after call eax = strlen(strs[0])
	
	#for(int i = 1; i < len; ++i)
	movl $1, %esi # i = 1
	
	longest_str_for_start:
		#i < len
		#i - len < 0
		#neg: i - len >= 0
		cmpl %ecx, %esi
		jge longest_str_for_end
		#if(strlen(strs([i]) > longest_len)
			#strlen(strs([i]) - longest_len > 0
			#neg: strlen(strs([i]) - longest_len <= 0
			#strlen(strs([i])
			#prep args
			#esi = strs[i]
			movl %esi, longest_str_i #save i into memory
			movl (%ebx, %esi, ws), %esi 
			movl %eax, longest_str_longest_len
			call strlen # eax = strlen(strs([i])
			cmpl longest_str_longest_len, %eax 
			jle end_if
			start_if:	
				#longest_len = strlen(strs[i]));
				movl %eax, longest_str_longest_len
				#long_str = strs + i;
				movl longest_str_i, %edx
				shll $2, %edx #edx = i * 4 to factor in the size of the 
				addl %ebx, %edx # long_str = strs + i
			end if:
			movl longest_str_i, %esi #restore ESI to i
			movl longest_str_longest_len, %eax #restore EAX to longest_len
		incl %esi #i++
		jmp longest_str_for_start	
	longest_str_for_end:
	
	#return long_str;
	movl %edx, longest_str_return_value
	ret
		
end_longest_str:

	
_start:
	#strlen(str1)
	movl $str1,%esi
	call strlen
	
	#strlen(str2)
	movl $str2,%esi
	call strlen
	
	
done:
	nop
	
	
