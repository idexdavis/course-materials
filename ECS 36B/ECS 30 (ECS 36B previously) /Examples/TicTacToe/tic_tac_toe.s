	.file	"tic_tac_toe.c"
	.globl	num_rows
	.data
	.align 4
	.type	num_rows, @object
	.size	num_rows, 4
num_rows:
	.long	3
	.globl	num_cols
	.align 4
	.type	num_cols, @object
	.size	num_cols, 4
num_cols:
	.long	3
	.globl	blank_space
	.type	blank_space, @object
	.size	blank_space, 1
blank_space:
	.byte	42
	.text
	.globl	is_game_over
	.type	is_game_over, @function
is_game_over:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	win
	testb	%al, %al
	jne	.L2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tie
	testb	%al, %al
	je	.L3
.L2:
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_game_over, .-is_game_over
	.globl	win
	.type	win, @function
win:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	row_win
	testb	%al, %al
	jne	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	vert_win
	testb	%al, %al
	jne	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	diag_win
	testb	%al, %al
	je	.L8
.L7:
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	win, .-win
	.globl	row_win
	.type	row_win, @function
row_win:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L12
.L16:
	movl	num_cols(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	all_same
	testb	%al, %al
	jne	.L13
	movl	num_cols(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	all_same
	testb	%al, %al
	je	.L14
.L13:
	movl	$1, %eax
	jmp	.L15
.L14:
	addl	$1, -4(%rbp)
.L12:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L16
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	row_win, .-row_win
	.globl	vert_win
	.type	vert_win, @function
vert_win:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L18
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	blank_space(%rip), %eax
	cmpb	%al, -9(%rbp)
	je	.L27
	movl	$1, -4(%rbp)
	jmp	.L21
.L24:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-9(%rbp), %al
	jne	.L28
	addl	$1, -4(%rbp)
.L21:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L24
	jmp	.L23
.L28:
	nop
.L23:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L25
.L27:
	nop
.L20:
	addl	$1, -8(%rbp)
.L18:
	movl	num_cols(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L26
	movl	$0, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	vert_win, .-vert_win
	.globl	diag_win
	.type	diag_win, @function
diag_win:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	left_diag_win
	testb	%al, %al
	jne	.L30
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	right_diag_win
	testb	%al, %al
	je	.L31
.L30:
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	diag_win, .-diag_win
	.globl	left_diag_win
	.type	left_diag_win, @function
left_diag_win:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	movzbl	blank_space(%rip), %eax
	cmpb	%al, -5(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movl	$1, -4(%rbp)
	jmp	.L37
.L39:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-5(%rbp), %al
	je	.L38
	movl	$0, %eax
	jmp	.L36
.L38:
	addl	$1, -4(%rbp)
.L37:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L39
	movl	$1, %eax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	left_diag_win, .-left_diag_win
	.globl	right_diag_win
	.type	right_diag_win, @function
right_diag_win:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	num_rows(%rip), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	movzbl	blank_space(%rip), %eax
	cmpb	%al, -5(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	$1, -4(%rbp)
	jmp	.L43
.L45:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	num_cols(%rip), %eax
	subl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-5(%rbp), %al
	je	.L44
	movl	$0, %eax
	jmp	.L42
.L44:
	addl	$1, -4(%rbp)
.L43:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L45
	movl	$1, %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	right_diag_win, .-right_diag_win
	.globl	tie
	.type	tie, @function
tie:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L47
.L52:
	movl	$0, -4(%rbp)
	jmp	.L48
.L51:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	blank_space(%rip), %eax
	cmpb	%al, %dl
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	addl	$1, -4(%rbp)
.L48:
	movl	num_cols(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L51
	addl	$1, -8(%rbp)
.L47:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L52
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	win
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	andl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	tie, .-tie
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter a move in the form row, col: "
.LC1:
	.string	"%d , %d"
	.text
	.globl	get_move
	.type	get_move, @function
get_move:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
.L54:
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%esi, %r8d
	movl	$2, %esi
	movl	%eax, %edi
	call	is_valid_move
	xorl	$1, %eax
	testb	%al, %al
	jne	.L54
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_move, .-get_move
	.globl	is_valid_move
	.type	is_valid_move, @function
is_valid_move:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_valid_formatting
	testb	%al, %al
	je	.L56
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	move_constraints_met
	testb	%al, %al
	je	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	is_valid_move, .-is_valid_move
	.section	.rodata
.LC2:
	.string	"%c"
	.text
	.globl	is_valid_formatting
	.type	is_valid_formatting, @function
is_valid_formatting:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$10, -10(%rbp)
	movb	$1, -9(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L60
	movb	$0, -9(%rbp)
.L60:
	leaq	-10(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-10(%rbp), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L61
	movb	$0, -9(%rbp)
.L61:
	movzbl	-10(%rbp), %eax
	cmpb	$10, %al
	jne	.L60
	movzbl	-9(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L63
	call	__stack_chk_fail
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	is_valid_formatting, .-is_valid_formatting
	.globl	move_constraints_met
	.type	move_constraints_met, @function
move_constraints_met:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	move_inside_board
	testb	%al, %al
	je	.L65
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_blank_space
	testb	%al, %al
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	andl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	move_constraints_met, .-move_constraints_met
	.globl	move_inside_board
	.type	move_inside_board, @function
move_inside_board:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L69
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L69
	cmpl	$0, -8(%rbp)
	js	.L69
	movl	num_cols(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	move_inside_board, .-move_inside_board
	.globl	is_blank_space
	.type	is_blank_space, @function
is_blank_space:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	blank_space(%rip), %eax
	cmpb	%al, -4(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	is_blank_space, .-is_blank_space
	.globl	all_same
	.type	all_same, @function
all_same:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movb	%al, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L75
.L78:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-28(%rbp), %al
	je	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	addl	$1, -4(%rbp)
.L75:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L78
	movl	$1, %eax
.L77:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	all_same, .-all_same
	.section	.rodata
.LC3:
	.string	"  "
.LC4:
	.string	"%d "
.LC5:
	.string	"%c "
	.text
	.globl	display_board
	.type	display_board, @function
display_board:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -4(%rbp)
	jmp	.L80
.L81:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L80:
	movl	num_cols(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L81
	movl	$10, %edi
	call	putchar
	movl	$0, -8(%rbp)
	jmp	.L82
.L85:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -4(%rbp)
	jmp	.L83
.L84:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L83:
	movl	num_cols(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L84
	movl	$10, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L82:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L85
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	display_board, .-display_board
	.globl	set_up
	.type	set_up, @function
set_up:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	call	make_board
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	set_up, .-set_up
	.globl	make_board
	.type	make_board, @function
make_board:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	num_rows(%rip), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L88
.L91:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	num_cols(%rip), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, (%rbx)
	movl	$0, -28(%rbp)
	jmp	.L89
.L90:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	blank_space(%rip), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
.L89:
	movl	num_cols(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L90
	addl	$1, -32(%rbp)
.L88:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L91
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	make_board, .-make_board
	.globl	play_move
	.type	play_move, @function
play_move:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$88, -16(%rbp)
	movb	$79, -15(%rbp)
	movb	$0, -14(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movb	%al, (%rdx)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L94
	call	__stack_chk_fail
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	play_move, .-play_move
	.globl	change_turn
	.type	change_turn, @function
change_turn:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	change_turn, .-change_turn
	.section	.rodata
.LC6:
	.string	"Player 1 Won!"
.LC7:
	.string	"Player 2 Wont!"
.LC8:
	.string	"Tie game."
	.text
	.globl	declare_winner
	.type	declare_winner, @function
declare_winner:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	win
	testb	%al, %al
	je	.L97
	cmpl	$1, -12(%rbp)
	jne	.L98
	movl	$.LC6, %edi
	call	puts
	jmp	.L101
.L98:
	movl	$.LC7, %edi
	call	puts
	jmp	.L101
.L97:
	movl	$.LC8, %edi
	call	puts
.L101:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	declare_winner, .-declare_winner
	.globl	clean_up
	.type	clean_up, @function
clean_up:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L103
.L104:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	addl	$1, -4(%rbp)
.L103:
	movl	num_rows(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L104
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	clean_up, .-clean_up
	.globl	play_tic_toe
	.type	play_tic_toe, @function
play_tic_toe:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	leaq	-28(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_up
	jmp	.L106
.L107:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	display_board
	movq	-16(%rbp), %rax
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_move
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	play_move
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	change_turn
.L106:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_game_over
	xorl	$1, %eax
	testb	%al, %al
	jne	.L107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	display_board
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	declare_winner
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	clean_up
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L108
	call	__stack_chk_fail
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	play_tic_toe, .-play_tic_toe
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	play_tic_toe
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
