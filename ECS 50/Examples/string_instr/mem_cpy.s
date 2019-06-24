/*
void * memcpy ( void * destination, const void * source, size_t num )
*/


.global string_memcpy
.equ ws, 4

.text

string_memcpy:
	prologue:
		push %ebp
		movl %esp %ebp
		push %esi
		push %edi
		
		.equ dest, (2*ws) #(%ebp)
		.equ src, (3*ws) #(%ebp)
		.equ num, (4*ws) #(%ebp)
		
		movl dest(%ebp), %edi
		movl src(%ebp), %esi
		movl num(%ebp), %ecx
		rep movsb
		
	epilogue:
		pop %edi
		pop %esi
		movl %ebp, %esp
		pop %ebp
		ret
		
