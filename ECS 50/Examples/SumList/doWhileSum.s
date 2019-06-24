
.global _start
.equ x_len, 10

.data
x:
	.long 5 + 9
	.long 10 * 7
	.long 8 - 3
	.long 12 & 4
	.long 0x10
	.long 10
	.long 10
	.long 10
	.long 10
	.long 10
	
	.rept x_len
		.long 10
	.endr

sum:
.long 0

.text # start of code section


_start:

movl $x_len, %eax # EAX will serve as a counter for
# the number of words left to be summed
movl $0, %ebx # EBX will store the sum
movl $x, %ecx # ECX will point to the current # ecx = & x
# element to be summed
top: addl (%ecx), %ebx # *ecx
addl $4, %ecx # move pointer to next element
decl %eax # decrement counter
jnz top # if counter not 0, then loop again
done: movl %ebx, sum # done, store result in "sum"

