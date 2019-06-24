.global sum

.text
.equ wordsize, 4
sum: #int sum(int nums[], int size)
	#esp + 8: size
	#esp + 4: nums
	#esp: ret addr
	push %ebp
	movl %esp, %ebp
	
	#esp + 12: size
	#esp + 8: nums
	#esp + 4: ret addr
	#ebp = esp: old ebp
	
	#3 locals
	subl $3*wordsize, %esp
	
	.equ nums, 2*wordsize #(%ebp)
	.equ size, 3*wordsize #(%ebp)
	
	movl $0, %eax #sum
	movl $0, %ecx #i = 0
	movl nums(%ebp), %edx #edx = nums
	
	for_sum:
	#i < size
	# i - size < 0
	#neg: i - size >= 0
		cmpl size(%ebp), %ecx #i - size
		jge epilogue
		addl (%edx, %ecx, wordsize), %eax #sum += nums[i]
		incl %ecx #++i
		jmp for_sum
	epilogue:
	movl %ebp, %esp
	pop %ebp
	ret
