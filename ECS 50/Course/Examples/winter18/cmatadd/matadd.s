.global matadd
.equ ws, 4
/*
	int** matadd(int** A, int** B, int num_rows, int num_cols){
		int i, j;
		int** C = (int**) malloc( num_rows * sizeof(int*));
		for(i = 0; i < num_rows; ++i){
			C[i] = (int*)malloc( num_cols * sizeof(int));
			for(j = 0; j < num_cols; ++j){
				C[i][j] = A[i][j] + B[i][j];
			}
		}
		return C;
	}
*/

.text 

matadd:
	prologue:
		push %ebp
		movl %esp, %ebp
		subl $3 * ws, %esp
		push %edi
		push %esi
		#num_cols
		#num_rows
		#B
		#A
		#ret address
		#ebp: old ebp
		#i
		#j
		#C
		.equ A, 2*ws #(%ebp)
		.equ B, 3*ws #(%ebp)
		.equ num_rows, 4*ws #(%ebp)
		.equ num_cols, 5*ws #(%ebp)
		.equ i, -1*ws #(%ebp)
		.equ j, -2*ws #(%ebp)
		.equ C, -3*ws #(%ebp)
		
		#eax will be i
		#ecx will be j
		#edx will be C
		#int** C = (int**) malloc( num_rows * sizeof(int*));
		
		movl num_rows(%ebp), %eax # eax = num_rows
		shll $2, %eax # eax = num_rows * sizeof(int*)
		push %eax #set malloc's argument
		call malloc
		addl $1 * ws, %esp #clear args
		movl %eax, %edx #edx = C = (int**) malloc( num_rows * sizeof(int*));
		
		#for(i = 0; i < num_rows; ++i)
		movl $0, %eax # i = 0
		# i < num_rows
		# i  - num_rows < 0
		#neg:  i  - num_rows >= 0
		row_for_start:
			cmpl num_rows(%ebp), %eax
			jge row_for_end
			#C[i] = (int*)malloc( num_cols * sizeof(int));
			#save i, which is in eax
			movl %eax, i(%ebp)
			#save c, which is in Edx
			movl %edx, C(%ebp)
			
			movl num_cols(%ebp), %ecx # ecx = num_cols
			shll $2, %ecx # ecx = num_cols * sizeof(int))
			push %ecx
			call malloc
			addl $1*ws, %esp #clear args
			
			movl C(%ebp), %edx #restore edx to be C
			movl i(%ebp), %ecx #ecx = i
			movl %eax, (%edx, %ecx, ws)  #C[i] = (int*)malloc( num_cols * sizeof(int));
			movl %ecx, %eax #restore eax to be i
			#for(j = 0; j < num_cols; ++j)
			movl $0, %ecx # j = 0
			column_for_start:
			    #j < num_cols
			    #j - num_cols < 0
			    #neg: j - num_cols >= 0
			    cmpl num_cols(%ebp), %ecx
			    jge column_for_end
			    #C[i][j] = A[i][j] + B[i][j];
			    # *(*(C + i) + j) = *(*(A+ i) + j) + *(*(B + i) + j)
			    movl A(%ebp), %esi # %esi = A
			    movl (%esi, %eax, ws), %esi # esi = A[i]
			    movl (%esi, %ecx, ws), %esi # esi = A[i][j]

			    movl B(%ebp), %edi # %edi = B
                movl (%edi, %eax, ws), %edi # edi = B[i]
                addl (%edi, %ecx, ws),  %esi #esi = A[i][j] + B[i][j]

                movl (%edx, %eax, ws), %edi # edi = C[i]
                movl %esi, (%edi, %ecx, ws) #C[i][j] = esi = A[i][j] + B[i][j]

			    incl %ecx #++j
			    jmp column_for_start

			column_for_end:
			incl %eax #++i
			jmp row_for_start
		row_for_end:

		#return C;
		movl %ecx, %eax #set the return value

		epilogue:
		    pop %esi
		    pop %edi
		    movl %ebp, %esp
		    pop %ebp
		    ret

		
		
		
		
