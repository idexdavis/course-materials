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
#int i, j;
#eax will be i
#ebx will be j


#for(i = 0; i < numRows; ++i){
 	
	movl $0, %eax #i = 0
	outer_for_start:
		#i < numRows;
		#i - numRows < 0
		#neg: i - numRows >= 0
		cmpl $numRows, %eax
		jge outer_for_end
		#for(j = 0; j < numCols; ++j)
		movl $0, %ebx #j = 0
		inner_for_start:
			#j < numCols
			#j - numCols < 0
			#neg: j - numCol >= 0
			cmpl $numCols, %ebx
			jge inner_for_end
			
			#C[i][j] = A[i][j] + B[i][j];
			#*(C + i * numCols + j) = *(A + i * numCols + j) + *(B + i * numCols + j)
			movl %eax, i #save i into memory
			movl $numCols, %eax #eax = numCols
			imull i #eax = i * numCols
			addl %ebx, %eax # eax = i * numCols + j
		
			#*(A + i * numCols + j) + *(B + i * numCols + j)
			movl A(, %eax, ws), %ecx #ecx = A[i][j]
			addl B(, %eax, ws), %ecx # ecx = A[i][j] + B[i][j]
		
			/*don't do this it doesn't work
			movl C(,%eax, ws), %edx
			movl %ecx, %edx
			*/
		
			movl %ecx, C(, %eax, ws) #C[i][j] = A[i][j] + B[i][j]
		
			movl i, %eax #put i back into eax
			
			incl %ebx
			jmp inner_for_start
		inner_for_end:	
		incl %eax #++i
		jmp outer_for_start
	outer_for_end: 	
 	
 	done:
 		nop

