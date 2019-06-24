/*

 void matAdd(int A[3][4], B[3][4], int numRows, int numCols, int C[3][4]){
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
		.rept numRows * numCols
			.long 1
		.endr
	B:
		.long 2 
		.long 3
		.long 4
		.long 5
		
		.long 6
		.long 7
		.long 8
		.long 9
		
		.long 10
		.long 11
		.long 12
		.long 13
	C:
		.space numRows * numCols * ws
		
	i:
		.long 0
		
.text
_start:
	#EAX will be i
	#EBX will be j
	#ECX will be A[i][j] + B[i][j]

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
			#*(C + i * numCols + j) = *(A + i * numCols + j) + *(B + i * numCols + j)
			
			# *(A + i * numCols + j)
			movl %eax, i #save i to memory
			movl $numCols, %edx #mull doesn't like constant sources
			mull %edx # eax = i * numCols
			addl %ebx, %eax #eax = i * numCols + j
			movl A(, %eax, ws), %ecx # ecx = A[i][j]
			
			#*(B + i * numCols + j)
			addl B(, %eax, ws), %ecx #ecx = A[i][j] + B[i][j]
			
			#*(C + i * numCols + j) = *(A + i * numCols + j) + *(B + i * numCols + j)
			movl %ecx, C(, %eax, ws) #C[i][j] = A[i][j] + B[i][j]
			
			#restore i
			movl i, %eax
			
			incl %ebx
			jmp inner_loop
			end_inner_loop:
	
		incl %eax #++i
		jmp outer_loop
	end_outer_loop:

done:
	nop #do nothing
		

