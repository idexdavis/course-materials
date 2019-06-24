/*
int** matadd(int** A, int** B, int num_rows, int num_cols){
	int** C = (int**)malloc(num_rows * sizeof(int*));
	
	for(int row = 0; row < num_rows; ++row){
		C[row] = (int*)malloc(num_cols * sizeof(int));
		for(int col = 0; col < num_cols; ++col){
			C[row][col] = A[row][col] + B[row][col];
		}
	}
	return C;
}*/

.global matadd
.equ ws, 4

.text

matadd:
	ma_prologue:
		push %ebp
		movl %esp, %ebp
		subl $3 *ws, %esp
		push %ebx
		#arguments
		.equ A, 2 *ws #(%ebp)
		.equ B, 3 *ws #(%ebp)
		.equ num_rows, 4*ws #(%ebp)
		.equ num_cols, 5 *ws #(%ebp)
		#locals
		.equ C, -1 *ws #(%ebp)
		.equ row, -2 *ws #(%ebp)
		.equ col, -3 *ws #(%ebp)
		
		#int** C = (int**)malloc(num_rows * sizeof(int*));
		movl num_rows(%ebp), %eax #eax = num_rows
		shll $2, %eax # eax = num_rows * sizeof(int*))
		push %eax
		call malloc
		addl $1 * ws, %esp #clear args
		movl %eax, C(%ebp)
		
		#EAX will be row
		#for(int row = 0; row < num_rows; ++row){
		movl $0, %eax
		outer_for_start:
			#row < num_rows
			#row - num_rows < 0
			#neg: row - num_rows >= 0
			cmpl num_rows(%ebp), %eax
			jge outer_for_end
		
		
			movl %eax, row(%ebp) #save the current value of row onto the stack
			#C[row] = (int*)malloc(num_cols * sizeof(int));
			movl num_cols(%ebp), %ecx #ecx = num_cols
			shll $2, %ecx #ecx = num_cols * sizeof(int)
			push %ecx
			call malloc
			addl $1*ws, %esp #clear args
			movl row(%ebp), %ecx #ecx = row
			movl C(%ebp), %edx #edx = C
			movl %eax, (%edx, %ecx, ws) #C[row] = malloc(...)
			/* Don't do this 
				movl %eax, C(%ebp, %ecx, ws) #C + ebp  =*(&C +row)
			*/
			movl %ecx, %eax #eax = row again
			
			#for(int col = 0; col < num_cols; ++col){
			#ECX will be col
			movl $0, %ecx
			inner_for_start:
				#col < num_cols
				#col - num_cols < 0
				#neg: col - num_cols >= 0
				cmpl num_cols(%ebp), %ecx
				jge inner_for_end
				#C[row][col] = A[row][col] + B[row][col];
				#*(*(C + row) + col) = *(*(A + row) + col) + *(*(B + row) + col)
				movl A(%ebp), %edx #edx = A
				movl (%edx, %eax, ws), %edx #edx = A[row]
				movl (%edx, %ecx, ws), %edx #edx = A[row][col]
				
				movl B(%ebp), %ebx #ebx = B
				movl (%ebx, %eax, ws), %ebx # ebx = B[row]
				addl (%ebx, %ecx, ws), %edx #edx = A[row][col] + B[row][col]
				
				movl C(%ebp), %ebx #ebx = C
				movl (%ebx, %eax, ws), %ebx #ebx = C[row]
				movl %edx, (%ebx, %ecx, ws)  #C[row][col] = %edx
				
				incl %ecx # ++col
				jmp inner_for_start
			inner_for_end:
			
			incl %eax # ++row
			jmp outer_for_start
		outer_for_end:
	
	#set return value
	movl C(%ebp), %eax
	
	ma_epilogue:
		pop %ebx
		movl %ebp, %esp
		pop %ebp
		ret
