	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	displayMat
	.type	displayMat, @function
displayMat:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -16(%ebp)
	jmp	.L2
.L5:
	movl	$0, -12(%ebp)
	jmp	.L3
.L4:
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	addl	$1, -12(%ebp)
.L3:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L4
	movl	$10, (%esp)
	call	putchar
	addl	$1, -16(%ebp)
.L2:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L5
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	displayMat, .-displayMat
	.section	.rodata
.LC1:
	.string	"r"
.LC2:
	.string	"%d"
	.text
	.globl	readMat
	.type	readMat, @function
readMat:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	$.LC1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__isoc99_fscanf
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__isoc99_fscanf
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, -20(%ebp)
	jmp	.L7
.L8:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, (%ebx)
	addl	$1, -20(%ebp)
.L7:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L8
	movl	$0, -20(%ebp)
	jmp	.L9
.L12:
	movl	$0, -16(%ebp)
	jmp	.L10
.L11:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	$.LC2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__isoc99_fscanf
	addl	$1, -16(%ebp)
.L10:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L11
	addl	$1, -20(%ebp)
.L9:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L12
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	readMat, .-readMat
	.section	.rodata
	.align 4
.LC3:
	.string	"matsum.out matrix_A_File matrix_B_File"
.LC4:
	.string	"Not enough arguments given.n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$48, %esp
	.cfi_offset 3, -12
	cmpl	$2, 8(%ebp)
	jg	.L14
	movl	$.LC3, (%esp)
	call	puts
	movl	$.LC4, (%esp)
	call	printf
	movl	$1, %eax
	jmp	.L22
.L14:
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	28(%esp), %edx
	movl	%edx, 12(%esp)
	leal	24(%esp), %edx
	movl	%edx, 8(%esp)
	leal	16(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	readMat
	movl	12(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	leal	36(%esp), %edx
	movl	%edx, 12(%esp)
	leal	32(%esp), %edx
	movl	%edx, 8(%esp)
	leal	20(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	readMat
	movl	28(%esp), %ebx
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	matsum
	movl	%eax, 44(%esp)
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	16(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	displayMat
	movl	$10, (%esp)
	call	putchar
	movl	36(%esp), %ecx
	movl	32(%esp), %edx
	movl	20(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	displayMat
	movl	$10, (%esp)
	call	putchar
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	displayMat
	movl	$0, 40(%esp)
	jmp	.L16
.L17:
	movl	16(%esp), %eax
	movl	40(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free
	addl	$1, 40(%esp)
.L16:
	movl	24(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	.L17
	movl	$0, 40(%esp)
	jmp	.L18
.L19:
	movl	20(%esp), %eax
	movl	40(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free
	addl	$1, 40(%esp)
.L18:
	movl	32(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	.L19
	movl	$0, 40(%esp)
	jmp	.L20
.L21:
	movl	40(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	44(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free
	addl	$1, 40(%esp)
.L20:
	movl	24(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	.L21
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	free
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	free
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, %eax
.L22:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
