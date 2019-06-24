/*

 void matAdd(int** A, int** B, int numRows, int numCols, int** C){
 	int i, j;
 	for(i = 0; i < numRows; ++i){
 		for(j = 0; j < numCols; ++j){
 			C[i][j] = A[i][j] + B[i][j];
 		}
 		
 	}
 }
*/

.global _start 
.equ ws, 4
.equ numRows, 3
.equ numCols, 4

.data
	A:
		.long Arow0
		.long Arow1
		.long Arow2
#---------------	
	Arow0:
		.rept numCols
			.long 1
		.endr
	
	Arow1:
		.rept numCols
			.long 2
		.endr
	
	Arow2:
		.rept numCols
			.long 3
		.endr
	
	B:
		.long Brow0
		.long Brow1
		.long Brow2
	
	Brow0:
		.long 2 
		.long 3
		.long 4
		.long 5
		
	Brow1:
		.long 6
		.long 7
		.long 8
		.long 9
		
	Brow2:
		.long 10
		.long 11
		.long 12
		.long 13
	C:
		.long Crow0
		.long Crow1
		.long Crow2
		
		Crow0:
			.space numCols * ws
		Crow1:
			.space numCols * ws
		Crow2:
			.space numCols * ws	
	
	i:
		.long 0
		
.text
_start:
	#EAX will be i
	#EBX will be j
	#ECX will be A[i][j] + B[i][j]
	#EDX will be a temp

	#for(i = 0; i < numRows; ++i)
	movl $0, %eax #i = 0
	outer_loop:
		#i < numRows
		#i - numRows < 0
		#neg: i - numRows >= 0
		cmpl $numRows, %eax #i - numRows
		jge end_outer_loop
		#for(j = 0; j < numCols; ++j)
		movl $0, %ebx #j = 0
		inner_loop:
			#j < numCols
			#j - numCols < 0
			#neg: j - nCols >= 0
			cmpl $numCols, %ebx # j - numCols
			jge end_inner_loop #j - nCols >= 0

			#C[i][j] = A[i][j] + B[i][j];
			#*(*(C + i)+ j) = *(*(A + i)+ j) + *(*(B + i)+ j)
			
			# *(*(A + i) + j)
			movl A(, %eax, ws), %ecx #ecx = A[i] = *(A + i)
			movl (%ecx, %ebx, ws), %ecx #ecx = A[i][j]
			
			#*(*(B + i)+ j)		
			movl B(, %eax, ws), %edx #edx = B[i]	
			addl (%edx, %ebx, ws), %ecx #ecx = A[i][j] + B[i][j]
			
			#C[i][j] = A[i][j] + B[i][j]
			movl C(, %eax, ws), %edx #edx = C[i]
			movl %ecx, (%edx, %ebx, ws) #C[i][j] = A[i][j] + B[i][j]
			
			incl %ebx
			jmp inner_loop
			end_inner_loop:
	
		incl %eax #++i
		jmp outer_loop
	end_outer_loop:

done:
	nop #do nothing
		

