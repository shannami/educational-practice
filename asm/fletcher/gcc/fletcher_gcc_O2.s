	.file	"fletcher.c"
	.text
	.p2align 4
	.globl	fletcher16
	.type	fletcher16, @function
fletcher16:
.LFB11:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L4
	movl	%esi, %esi
	xorl	%ecx, %ecx
	movl	$2155905153, %r9d
	leaq	(%rdi,%rsi), %r10
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
.L3:
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	leal	(%rax,%rsi), %edx
	movq	%rdx, %rax
	imulq	%r9, %rdx
	shrq	$39, %rdx
	movl	%edx, %esi
	sall	$8, %esi
	subl	%edx, %esi
	subl	%esi, %eax
	movl	%eax, %edx
	movzwl	%ax, %esi
	leal	(%rcx,%rax), %eax
	imulq	%r9, %rax
	shrq	$39, %rax
	movl	%eax, %r8d
	sall	$8, %r8d
	subl	%eax, %r8d
	leal	(%rcx,%rdx), %eax
	subl	%r8d, %eax
	movzwl	%ax, %ecx
	cmpq	%r10, %rdi
	jne	.L3
	sall	$8, %eax
	orl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	fletcher16, .-fletcher16
	.p2align 4
	.globl	fletcher16_opt
	.type	fletcher16_opt, @function
fletcher16_opt:
.LFB12:
	.cfi_startproc
	movq	%rsi, %r8
	cmpq	$5801, %rsi
	jbe	.L13
	leaq	5802(%rdi), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$2155905153, %r10d
.L9:
	leaq	-5802(%rsi), %rax
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movzbl	(%rax), %edi
	addq	$1, %rax
	addl	%edi, %edx
	movq	%rsi, %rdi
	addl	%edx, %ecx
	cmpq	%rsi, %rax
	jne	.L10
	movl	%edx, %eax
	subq	$5802, %r8
	addq	$5802, %rsi
	imulq	%r10, %rax
	shrq	$39, %rax
	movl	%eax, %r9d
	sall	$8, %r9d
	subl	%eax, %r9d
	movl	%ecx, %eax
	imulq	%r10, %rax
	subl	%r9d, %edx
	shrq	$39, %rax
	movl	%eax, %r9d
	sall	$8, %r9d
	subl	%eax, %r9d
	subl	%r9d, %ecx
	cmpq	$5801, %r8
	ja	.L9
.L8:
	testq	%r8, %r8
	je	.L11
	addq	%rdi, %r8
.L12:
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%eax, %edx
	addl	%edx, %ecx
	cmpq	%r8, %rdi
	jne	.L12
.L11:
	movl	$2155905153, %esi
	movl	%ecx, %eax
	imulq	%rsi, %rax
	shrq	$39, %rax
	addl	%ecx, %eax
	movl	%edx, %ecx
	imulq	%rsi, %rcx
	sall	$8, %eax
	shrq	$39, %rcx
	movl	%ecx, %esi
	sall	$8, %esi
	subl	%ecx, %esi
	subl	%esi, %edx
	orl	%edx, %eax
	ret
.L13:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L8
	.cfi_endproc
.LFE12:
	.size	fletcher16_opt, .-fletcher16_opt
	.p2align 4
	.globl	fletcher32_opt
	.type	fletcher32_opt, @function
fletcher32_opt:
.LFB13:
	.cfi_startproc
	movq	%rsi, %r9
	cmpq	$359, %rsi
	jbe	.L25
	leaq	720(%rdi), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$2147516417, %r10d
.L21:
	leaq	-720(%rsi), %rax
	.p2align 5
	.p2align 4
	.p2align 3
.L22:
	movzwl	(%rax), %edi
	addq	$2, %rax
	addl	%edi, %edx
	movq	%rsi, %rdi
	addl	%edx, %ecx
	cmpq	%rsi, %rax
	jne	.L22
	movl	%edx, %eax
	subq	$360, %r9
	addq	$720, %rsi
	imulq	%r10, %rax
	shrq	$47, %rax
	movl	%eax, %r8d
	sall	$16, %r8d
	subl	%eax, %r8d
	movl	%ecx, %eax
	imulq	%r10, %rax
	subl	%r8d, %edx
	shrq	$47, %rax
	movl	%eax, %r8d
	sall	$16, %r8d
	subl	%eax, %r8d
	subl	%r8d, %ecx
	cmpq	$359, %r9
	ja	.L21
.L20:
	testq	%r9, %r9
	je	.L23
	leaq	(%rdi,%r9,2), %rsi
.L24:
	movzwl	(%rdi), %eax
	addq	$2, %rdi
	addl	%eax, %edx
	addl	%edx, %ecx
	cmpq	%rsi, %rdi
	jne	.L24
.L23:
	movl	$2147516417, %esi
	movl	%ecx, %eax
	imulq	%rsi, %rax
	shrq	$47, %rax
	addl	%ecx, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	imulq	%rsi, %rax
	shrq	$47, %rax
	movl	%eax, %esi
	sall	$16, %esi
	subl	%eax, %esi
	movl	%ecx, %eax
	subl	%esi, %edx
	orl	%edx, %eax
	ret
.L25:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L20
	.cfi_endproc
.LFE13:
	.size	fletcher32_opt, .-fletcher32_opt
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"fletcher16_simple : 0x%04X\n"
.LC4:
	.string	"fletcher16_opt    : 0x%04X\n"
.LC5:
	.string	"fletcher32_opt    : 0x%08X\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movd	%ecx, %xmm5
	movl	$8, %ecx
	movd	%ecx, %xmm4
	pshufd	$0, %xmm5, %xmm5
	pshufd	$0, %xmm4, %xmm4
	subq	$12024, %rsp
	.cfi_def_cfa_offset 12048
	movdqa	.LC0(%rip), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 12008(%rsp)
	movq	%rsp, %rax
	leaq	12000(%rsp), %rdx
	.p2align 6
	.p2align 4
	.p2align 3
.L32:
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	addq	$16, %rax
	paddd	%xmm5, %xmm3
	paddd	%xmm4, %xmm1
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm3, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L32
	movl	$12000, %esi
	movq	%rsp, %rdi
	call	fletcher16
	movl	$12000, %esi
	movq	%rsp, %rdi
	movl	%eax, %r11d
	call	fletcher16_opt
	movl	$6000, %esi
	movq	%rsp, %rdi
	movl	%eax, %ebx
	call	fletcher32_opt
	movzwl	%r11w, %esi
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ebp
	xorl	%eax, %eax
	call	printf@PLT
	movzwl	%bx, %esi
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	xorl	%eax, %eax
	movl	%ebp, %esi
	leaq	.LC5(%rip), %rdi
	call	printf@PLT
	movq	12008(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L36
	addq	$12024, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L36:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
