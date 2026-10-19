	.file	"fletcher.c"
	.text
	.globl	fletcher16
	.type	fletcher16, @function
fletcher16:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movw	$0, -8(%rbp)
	movw	$0, -6(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movzwl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movw	%dx, -8(%rbp)
	movzwl	-6(%rbp), %edx
	movzwl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$7, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movw	%dx, -6(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	movzwl	-6(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzwl	-8(%rbp), %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fletcher16, .-fletcher16
	.globl	fletcher16_opt
	.type	fletcher16_opt, @function
fletcher16_opt:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L6
.L9:
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L7:
	cmpl	$5801, -4(%rbp)
	jbe	.L8
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2155905153, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$7, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2155905153, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$7, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -8(%rbp)
	subq	$5802, -32(%rbp)
.L6:
	cmpq	$5801, -32(%rbp)
	ja	.L9
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpq	-32(%rbp), %rax
	jb	.L11
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2155905153, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$7, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2155905153, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$7, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fletcher16_opt, .-fletcher16_opt
	.globl	fletcher32_opt
	.type	fletcher32_opt, @function
fletcher32_opt:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L14
.L17:
	movl	$0, -4(%rbp)
	jmp	.L15
.L16:
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L15:
	cmpl	$359, -4(%rbp)
	jbe	.L16
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2147516417, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$15, %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2147516417, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$15, %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -8(%rbp)
	subq	$360, -32(%rbp)
.L14:
	cmpq	$359, -32(%rbp)
	ja	.L17
	movl	$0, -4(%rbp)
	jmp	.L18
.L19:
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpq	-32(%rbp), %rax
	jb	.L19
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2147516417, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$15, %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2147516417, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$15, %edx
	movl	%edx, %eax
	sall	$16, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	sall	$16, %eax
	orl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fletcher32_opt, .-fletcher32_opt
	.section	.rodata
.LC0:
	.string	"fletcher16_simple : 0x%04X\n"
.LC1:
	.string	"fletcher16_opt    : 0x%04X\n"
.LC2:
	.string	"fletcher32_opt    : 0x%08X\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12032, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12024(%rbp)
	jmp	.L22
.L23:
	movl	-12024(%rbp), %eax
	movl	%eax, %edx
	movl	-12024(%rbp), %eax
	cltq
	movw	%dx, -12016(%rbp,%rax,2)
	addl	$1, -12024(%rbp)
.L22:
	cmpl	$5999, -12024(%rbp)
	jle	.L23
	leaq	-12016(%rbp), %rax
	movl	$12000, %esi
	movq	%rax, %rdi
	call	fletcher16
	movw	%ax, -12028(%rbp)
	leaq	-12016(%rbp), %rax
	movl	$12000, %esi
	movq	%rax, %rdi
	call	fletcher16_opt
	movw	%ax, -12026(%rbp)
	leaq	-12016(%rbp), %rax
	movl	$6000, %esi
	movq	%rax, %rdi
	call	fletcher32_opt
	movl	%eax, -12020(%rbp)
	movzwl	-12028(%rbp), %eax
	leaq	.LC0(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzwl	-12026(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12020(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
