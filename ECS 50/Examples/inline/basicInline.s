	.file	"basicInline.cpp"
	.text
.Ltext0:
	.globl	_Z6abcAddii
	.type	_Z6abcAddii, @function
_Z6abcAddii:
.LFB0:
	.file 1 "basicInline.cpp"
	.loc 1 21 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	.loc 1 33 0
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
#APP
# 33 "basicInline.cpp" 1
	movl %ebx, %eax;addl %ecx, %eax;movl $12, %edi
# 0 "" 2
#NO_APP
	movl	%eax, -12(%rbp)
	.loc 1 36 0
	movl	-12(%rbp), %eax
	.loc 1 37 0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z6abcAddii, .-_Z6abcAddii
	.globl	_Z5abAddii
	.type	_Z5abAddii, @function
_Z5abAddii:
.LFB1:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	.loc 1 49 0
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %ebx
#APP
# 49 "basicInline.cpp" 1
	addl %ebx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -12(%rbp)
	.loc 1 51 0
	movl	-12(%rbp), %eax
	.loc 1 52 0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z5abAddii, .-_Z5abAddii
	.globl	_Z9anyRegAddii
	.type	_Z9anyRegAddii, @function
_Z9anyRegAddii:
.LFB2:
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 62 0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
#APP
# 62 "basicInline.cpp" 1
	addl %edx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 1 63 0
	movl	-4(%rbp), %eax
	.loc 1 64 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z9anyRegAddii, .-_Z9anyRegAddii
	.globl	_Z12altAnyRegAddii
	.type	_Z12altAnyRegAddii, @function
_Z12altAnyRegAddii:
.LFB3:
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 76 0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
#APP
# 76 "basicInline.cpp" 1
	addl %edx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 1 77 0
	movl	-4(%rbp), %eax
	.loc 1 78 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z12altAnyRegAddii, .-_Z12altAnyRegAddii
	.globl	_Z6memAddii
	.type	_Z6memAddii, @function
_Z6memAddii:
.LFB4:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 89 0
	movl	-4(%rbp), %eax
#APP
# 89 "basicInline.cpp" 1
	addl -8(%rbp), %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 1 90 0
	movl	-4(%rbp), %eax
	.loc 1 92 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_Z6memAddii, .-_Z6memAddii
	.globl	_Z11anyWhereAddii
	.type	_Z11anyWhereAddii, @function
_Z11anyWhereAddii:
.LFB5:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 102 0
	movl	-4(%rbp), %eax
#APP
# 102 "basicInline.cpp" 1
	addl -8(%rbp), %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 1 103 0
	movl	-4(%rbp), %eax
	.loc 1 105 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_Z11anyWhereAddii, .-_Z11anyWhereAddii
	.globl	_Z10clobberAddii
	.type	_Z10clobberAddii, @function
_Z10clobberAddii:
.LFB6:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 118 0
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
#APP
# 118 "basicInline.cpp" 1
	movl $0, %eax;movl %eax, %eax;addl %edx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	.loc 1 119 0
	movl	-4(%rbp), %eax
	.loc 1 121 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_Z10clobberAddii, .-_Z10clobberAddii
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 126 0
	movl	$10, -8(%rbp)
	.loc 1 127 0
	movl	$100, -4(%rbp)
	.loc 1 129 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z6abcAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 130 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z5abAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 131 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z9anyRegAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 132 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z12altAnyRegAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 133 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z6memAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 134 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z11anyWhereAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 135 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z10clobberAddii
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 137 0
	movl	$0, %eax
	.loc 1 138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x274
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.long	.LASF25
	.long	.LASF26
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0x15
	.long	.LASF11
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x18
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x27
	.long	.LASF12
	.long	0x57
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x27
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x27
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x36
	.long	.LASF14
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x36
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x36
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x42
	.long	.LASF16
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x179
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x42
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x42
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x1
	.byte	0x50
	.long	.LASF18
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x50
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x50
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0x5e
	.long	.LASF20
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f5
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x1
	.byte	0x6b
	.long	.LASF22
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x241
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x6b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x6b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x6c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.byte	0x7d
	.long	0x57
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x7e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x7f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"result"
.LASF10:
	.string	"abAdd"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF27:
	.string	"main"
.LASF18:
	.string	"_Z6memAddii"
.LASF15:
	.string	"altAnyRegAdd"
.LASF25:
	.string	"basicInline.cpp"
.LASF24:
	.string	"GNU C++ 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF9:
	.string	"abcAdd"
.LASF14:
	.string	"_Z9anyRegAddii"
.LASF22:
	.string	"_Z10clobberAddii"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_Z5abAddii"
.LASF21:
	.string	"clobberAdd"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF19:
	.string	"anyWhereAdd"
.LASF13:
	.string	"anyRegAdd"
.LASF26:
	.string	"/media/sf_ECS_50/ECS 50 Shared/Examples/inline"
.LASF17:
	.string	"memAdd"
.LASF20:
	.string	"_Z11anyWhereAddii"
.LASF16:
	.string	"_Z12altAnyRegAddii"
.LASF11:
	.string	"_Z6abcAddii"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
