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
		subl $3*ws, %esp #make space for locals
		#save regs
		push %ebx
		push %esi
		
		#stack after prologue
		#     num_cols
		#     num_rows
		#     B
		#     A
		#     ret address
		#ebp: old ebp
		#     i
		#     j
		#esp: C
		.equ A,        (2*ws) #(%ebp)
		.equ B,        (3*ws) #(%ebp)
		.equ num_rows, (4*ws) #(%ebp)
		.equ num_cols, (5*ws) #(%ebp)
		.equ i,        (-1*ws) #%ebp
		.equ j,        (-2*ws) #(%ebp)
		.equ C,        (-3*ws) #(%ebp)
		
		#int** C = (int**) malloc(num_rows * sizeof(int*));
		movl num_rows(%ebp), %eax #eax = num_rows
		shll $2, %eax  #eax = num_rows * sizeof(int*)) 
		push %eax #place malloc's arguement onto the stack
		call malloc
		addl $1*ws, %esp #clear malloc's arguement 
		#eax = (int**) malloc(num_rows * sizeof(int*));
		movl %eax, C(%ebp) 
		
		#eax will be i
		#ecx will be j and temp sometimes
		
		#for(i = 0; i < num_rows; ++i){	
		movl $0, %eax # i = 0
		outer_loop:
			#i < num_rows
			#i - num_rows < 0
			#neg: i - num_rows >= 0
			cmpl num_rows(%ebp), %eax
			jge end_outer_loop
			
			#C[i] = (int*)malloc( num_cols * sizeof(int));
			movl num_cols(%ebp), %edx #edx = num_cols
			shll $2, %edx # edx = num_cols * sizeof(int)
			push %edx #set arguement for malloc
			movl %eax, i(%ebp) #save i 
			call malloc
			addl $1*ws, %esp #clear arguement for malloc
			#eax = (int*)malloc( num_cols * sizeof(int));
			movl %eax, %edx  #edx = (int*)malloc( num_cols * sizeof(int));
			movl i(%ebp), %eax #restore i
			movl C(%ebp), %ecx #ecx = C
			movl %edx, (%ecx, %eax, ws) #C[i] = edx 
			#movl %edx, C(%ebp, %eax, ws) == (&C)[i] = %edx
			
			#for(j = 0; j < num_cols; ++j){
			movl $0, %ecx
			inner_loop:
				cmpl num_cols(%ebp), %ecx
				jge end_inner_loop
				#C[i][j] = A[i][j] + B[i][j];
				
				#ebx will be A[i][j]
				movl A(%ebp), %ebx #ebx = A
				movl (%ebx, %eax, ws), %ebx #ebx = A[i]
				movl (%ebx, %ecx, ws), %ebx #ebx = A[i][j]
				
				#ebx will be A[i][j] + B[i][j]
				#esi will be B[i][j]
				movl B(%ebp), %esi #esi = B
				movl (%esi, %eax, ws), %esi #esi = B[i]
				addl (%esi, %ecx, ws), %ebx #ebx = A[i][j] + B[i][j]
				
				movl %ebx, (%edx, %ecx, ws) #C[i][j] = A[i][j] + B[i][j]
				
				incl %ecx
				jmp inner_loop
			end_inner_loop:
			
			incl %eax #++i
			jmp outer_loop
		end_outer_loop:
		
		#return C;
		movl C(%ebp), %eax 
		
		epilogue:
			#restore regs
			pop %esi
			pop %ebx
			movl %ebp, %esp
			pop %ebp
			ret
		
