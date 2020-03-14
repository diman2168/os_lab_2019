	.file	"tests.c"
	.section	.rodata
.LC0:
	.string	"olleH"
.LC1:
	.string	"tests.c"
	.align 8
.LC2:
	.string	"0 == strcmp(simple_string, \"olleH\")"
.LC3:
	.string	"secaps htiw gnirtS"
	.align 8
.LC4:
	.string	"0 == strcmp(str_with_spaces, \"secaps htiw gnirtS\")"
.LC5:
	.string	"cba"
	.align 8
.LC6:
	.string	"0 == strcmp(str_with_odd_chars_num, \"cba\")"
.LC7:
	.string	"dcba"
	.align 8
.LC8:
	.string	"0 == strcmp(str_with_even_chars_num, \"dcba\")"
	.text
	.globl	testRevertString
	.type	testRevertString, @function
testRevertString:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$1819043144, -16(%rbp)
	movw	$111, -12(%rbp)
	movabsq	$8583974613681337427, %rax
	movq	%rax, -48(%rbp)
	movabsq	$7161128522263065705, %rax
	movq	%rax, -40(%rbp)
	movw	$29541, -32(%rbp)
	movb	$0, -30(%rbp)
	movl	$6513249, -64(%rbp)
	movl	$1684234849, -80(%rbp)
	movb	$0, -76(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RevertString
	leaq	-16(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L2
	movl	$__PRETTY_FUNCTION__.2366, %ecx
	movl	$14, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L2:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	RevertString
	leaq	-48(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L3
	movl	$__PRETTY_FUNCTION__.2366, %ecx
	movl	$17, %edx
	movl	$.LC1, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.L3:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	RevertString
	leaq	-64(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movl	$__PRETTY_FUNCTION__.2366, %ecx
	movl	$20, %edx
	movl	$.LC1, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L4:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	RevertString
	leaq	-80(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L1
	movl	$__PRETTY_FUNCTION__.2366, %ecx
	movl	$23, %edx
	movl	$.LC1, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	testRevertString, .-testRevertString
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	testRevertString
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.2366, @object
	.size	__PRETTY_FUNCTION__.2366, 17
__PRETTY_FUNCTION__.2366:
	.string	"testRevertString"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits
