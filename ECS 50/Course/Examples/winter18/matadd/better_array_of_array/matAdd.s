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
	#for(i = 0; i < numRows; ++i){
	#EAX will be i
	#EBX will be j
	#ECX will be A[i]
	#EDX will be B[i]
	#ESI will be C[i]
	
	movl $0, %eax # i = 0
	row_for_start:
		#i < numRows == i - numRows < 0
		#negation i - numRows >= 0
		cmpl $numRows, %eax
		jge row_for_end
			#for(j = 0; j < numCols; ++j)
			movl $0, %ebx # j = 0
			
			#ecx = A[i]
			movl A(, %eax, ws), %ecx
			
			#edx = B[i]
			movl B(,%eax, ws), %edx
			
			#esi = C[i]
			movl C(, %eax, ws), %esi
			
			col_for_start:
				#j < numCols == j - numCols < 0
				#negation j - numCols >= 0
				cmpl $numCols, %ebx
				jge col_for_end
					#C[i][j] = A[i][j] + B[i][j];
					#*(*(C + i) + j) = *(*(A + i) + j) + *(*(B + i) + j)
					
					#EDI = A[i][j[
					movl (%ecx, %ebx,ws), %edi
					
					#EDI = A[i][j] + B[i][j]
					addl (%edx, %ebx,ws), %edi
					
					#C[i][j] = A[i][j] + B[i][j]
					#C[i][j] = EDI
					movl %edi, (%esi, %ebx, ws)
				
				incl %ebx
				jmp col_for_start
			col_for_end:
		incl %eax #++i
		jmp row_for_start
	row_for_end:

done:
	nop #do nothing
		

