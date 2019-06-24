	.file	"inlinedFun.cpp"
	.text
	.globl	_Z6memsetPvij
	.type	_Z6memsetPvij, @function
_Z6memsetPvij:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%edx, %edi
#APP
# 15 "inlinedFun.cpp" 1
	cld;rep stosb
# 0 "" 2
#NO_APP
	movl	8(%ebp), %eax
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_Z6memsetPvij, .-_Z6memsetPvij
	.globl	_Z3minii
	.type	_Z3minii, @function
_Z3minii:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
#APP
# 30 "inlinedFun.cpp" 1
	cmpl %eax, %edx;jg 1f;movl %edx, %eax;1:
# 0 "" 2
#NO_APP
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_Z3minii, .-_Z3minii
	.globl	_Z6strcmpPcS_
	.type	_Z6strcmpPcS_, @function
_Z6strcmpPcS_:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
#APP
# 71 "inlinedFun.cpp" 1
	cld;start_cmp:;cmpsb;jl str1_first;jg str2_first;cmpb $0, -1(%edi);jz equal;jmp start_cmp;str1_first:;movl $-1, %eax;jmp done_cmp;str2_first:;movl $1, %eax;jmp done_cmp;equal:movl $0, %eax;done_cmp:
# 0 "" 2
#NO_APP
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$16, %esp
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	_Z6strcmpPcS_, .-_Z6strcmpPcS_
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	movl	$1819043176, 20(%esp)
	movw	$111, 24(%esp)
	movl	$1819043176, 32(%esp)
	movl	$1870078063, 36(%esp)
	movl	$6581362, 40(%esp)
	movl	$6451042, 16(%esp)
	movb	$0, 26(%esp)
	movb	$0, 27(%esp)
	movb	$0, 28(%esp)
	movb	$0, 29(%esp)
	movb	$0, 30(%esp)
	movb	$0, 31(%esp)
	movl	$5, 8(%esp)
	movl	$97, 4(%esp)
	leal	26(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6memsetPvij
	leal	26(%esp), %eax
	movl	%eax, (%esp)
	call	puts
	movl	$12, 4(%esp)
	movl	$10, (%esp)
	call	_Z3minii
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	movl	$12, 4(%esp)
	movl	$100, (%esp)
	call	_Z3minii
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6strcmpPcS_
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6strcmpPcS_
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6strcmpPcS_
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6strcmpPcS_
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	call	_Z6strcmpPcS_
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	movl	$0, %eax
	movl	44(%esp), %edx
	xorl	%gs:20, %edx
	je	.L9
	call	__stack_chk_fail
.L9:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
