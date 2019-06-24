#this programs sums the values in a the list x using a for loop
#it emulates the following c code
#for(int i =0, sum = 0; i < x_len; i++)
#	sum += x[i]


.global _start
.equ wordsize, 4
.equ x_len, 10
.equ sum, %eax #be VERY VERY CAREFUL if you do this. Yes it does provide a nice variable name for EAX but it is possible
#you might end up using EAX in your code for something else and forget that sum actually is EAX

.data
x:
	.rept x_len
		.long 5*2 + 2
	.endr
	
	
.text

_start:
#eax will hold the sum
#ecx will hold the count

#intialize registers

movl $0, %eax #sum = 0
movl $0, %ecx  #i = 0

# i < x_len == i - x_len < 0
#negation is i - x_len >= 0
start_for:
	cmpl $x_len, %ecx # ecx - x_len
	jge end_for
	addl x(,%ecx, wordsize), %eax #sum += x[i]
	incl %ecx #i++
	jmp start_for #do next iteration of the for
end_for:

done: 
	nop 

