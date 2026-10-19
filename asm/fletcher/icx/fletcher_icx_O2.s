	.file	"fletcher.c"
	.text
	.globl	fletcher16                      # -- Begin function fletcher16
	.p2align	4
	.type	fletcher16,@function
fletcher16:                             # 
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	movl	%esi, %ecx
	shrl	$3, %esi
	je	.LBB0_3
# %bb.4:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.p2align	4
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%rax,8), %rdx
	movzbl	(%rdx), %r10d
	addl	%r10d, %r9d
	movzwl	%r9w, %r10d
	imull	$32897, %r10d, %r10d            # imm = 0x8081
	shrl	$23, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r9d, %r10d
	addl	%r10d, %r8d
	movzwl	%r8w, %r9d
	imull	$32897, %r9d, %r9d              # imm = 0x8081
	shrl	$23, %r9d
	movl	%r9d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r9d
	addl	%r8d, %r9d
	movzbl	1(%rdx), %r8d
	addl	%r10d, %r8d
	movzwl	%r8w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r8d, %r10d
	addl	%r10d, %r9d
	movzwl	%r9w, %r8d
	imull	$515, %r8d, %r8d                # imm = 0x203
	shrl	$17, %r8d
	movl	%r8d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r8d
	addl	%r9d, %r8d
	movzbl	2(%rdx), %r9d
	addl	%r10d, %r9d
	movzwl	%r9w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r9d, %r10d
	addl	%r10d, %r8d
	movzwl	%r8w, %r9d
	imull	$515, %r9d, %r9d                # imm = 0x203
	shrl	$17, %r9d
	movl	%r9d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r9d
	addl	%r8d, %r9d
	movzbl	3(%rdx), %r8d
	addl	%r10d, %r8d
	movzwl	%r8w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r8d, %r10d
	addl	%r10d, %r9d
	movzwl	%r9w, %r8d
	imull	$515, %r8d, %r8d                # imm = 0x203
	shrl	$17, %r8d
	movl	%r8d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r8d
	addl	%r9d, %r8d
	movzbl	4(%rdx), %r9d
	addl	%r10d, %r9d
	movzwl	%r9w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r9d, %r10d
	addl	%r10d, %r8d
	movzwl	%r8w, %r9d
	imull	$515, %r9d, %r9d                # imm = 0x203
	shrl	$17, %r9d
	movl	%r9d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r9d
	addl	%r8d, %r9d
	movzbl	5(%rdx), %r8d
	addl	%r10d, %r8d
	movzwl	%r8w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r8d, %r10d
	addl	%r10d, %r9d
	movzwl	%r9w, %r8d
	imull	$515, %r8d, %r8d                # imm = 0x203
	shrl	$17, %r8d
	movl	%r8d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r8d
	addl	%r9d, %r8d
	movzbl	6(%rdx), %r9d
	addl	%r10d, %r9d
	movzwl	%r9w, %r10d
	imull	$515, %r10d, %r10d              # imm = 0x203
	shrl	$17, %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	subl	%r11d, %r10d
	addl	%r9d, %r10d
	addl	%r10d, %r8d
	movzwl	%r8w, %r9d
	imull	$515, %r9d, %r11d               # imm = 0x203
	shrl	$17, %r11d
	movl	%r11d, %r9d
	shll	$8, %r9d
	subl	%r9d, %r11d
	addl	%r8d, %r11d
	movzbl	7(%rdx), %edx
	addl	%r10d, %edx
	movzwl	%dx, %r8d
	imull	$515, %r8d, %r9d                # imm = 0x203
	shrl	$17, %r9d
	movl	%r9d, %r8d
	shll	$8, %r8d
	subl	%r8d, %r9d
	addl	%edx, %r9d
	movl	%r9d, %edx
	addl	%r11d, %edx
	movzwl	%dx, %r8d
	imull	$515, %r8d, %r8d                # imm = 0x203
	shrl	$17, %r8d
	movl	%r8d, %r10d
	shll	$8, %r10d
	subl	%r10d, %r8d
	addl	%edx, %r8d
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_1:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB0_3:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB0_6:
	movl	%ecx, %edx
	andl	$2147483640, %edx               # imm = 0x7FFFFFF8
	cmpq	%rcx, %rdx
	jne	.LBB0_8
# %bb.7:
	movl	%r8d, %esi
	movl	%r9d, %eax
	jmp	.LBB0_9
	.p2align	4
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %eax
	addl	%eax, %r9d
	movzwl	%r9w, %eax
	imull	$32897, %eax, %eax              # imm = 0x8081
	shrl	$23, %eax
	movl	%eax, %esi
	shll	$8, %esi
	subl	%esi, %eax
	addl	%r9d, %eax
	addl	%eax, %r8d
	movzwl	%r8w, %esi
	imull	$32897, %esi, %esi              # imm = 0x8081
	shrl	$23, %esi
	movl	%esi, %r9d
	shll	$8, %r9d
	subl	%r9d, %esi
	addl	%r8d, %esi
	incq	%rdx
	movl	%esi, %r8d
	movl	%eax, %r9d
	cmpq	%rdx, %rcx
	jne	.LBB0_8
.LBB0_9:
	shll	$8, %esi
	orl	%esi, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end0:
	.size	fletcher16, .Lfunc_end0-fletcher16
	.cfi_endproc
                                        # -- End function
	.globl	fletcher16_opt                  # -- Begin function fletcher16_opt
	.p2align	4
	.type	fletcher16_opt,@function
fletcher16_opt:                         # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	xorl	%ecx, %ecx
	cmpq	$5801, %rsi                     # imm = 0x16A9
	jbe	.LBB1_1
# %bb.12:
	leaq	-5802(%rsi), %rax
	movabsq	$-5424016785547827483, %rcx     # imm = 0xB4BA0578A1AA66E5
	mulq	%rcx
	shrq	$12, %rdx
	leaq	7(%rdi), %r8
	xorl	%ebx, %ebx
	movl	$2155905153, %r9d               # imm = 0x80808081
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	movq	%rbx, %r10
	imulq	$5802, %rbx, %r11               # imm = 0x16AA
	xorl	%ebx, %ebx
	.p2align	4
.LBB1_14:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r8,%rbx,8), %r14
	addq	$-7, %r14
	movzbl	(%r14), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %eax
	movzbl	1(%r14), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %eax
	movzbl	2(%r14), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %eax
	movzbl	3(%r14), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %eax
	movzbl	4(%r14), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %eax
	movzbl	5(%r14), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %eax
	movzbl	6(%r14), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %eax
	movzbl	7(%r14), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %eax
	incq	%rbx
	cmpl	$725, %ebx                      # imm = 0x2D5
	jne	.LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	movzbl	5800(%r11,%rdi), %ebx
	addl	%ebx, %ecx
	addl	%ecx, %eax
	movzbl	5801(%r11,%rdi), %ebx
	addl	%ecx, %ebx
	movl	%eax, %r14d
	addl	%ebx, %r14d
	movq	%rbx, %rcx
	imulq	%r9, %rcx
	shrq	$39, %rcx
	movl	%ecx, %eax
	shll	$8, %eax
	subl	%eax, %ecx
	addl	%ebx, %ecx
	movq	%r14, %rax
	imulq	%r9, %rax
	shrq	$39, %rax
	movl	%eax, %ebx
	shll	$8, %ebx
	subl	%ebx, %eax
	addl	%r14d, %eax
	leaq	1(%r10), %rbx
	addq	$5802, %r8                      # imm = 0x16AA
	cmpq	%rdx, %r10
	jne	.LBB1_13
# %bb.2:
	imulq	$-5802, %r10, %rdx              # imm = 0xE956
	addq	%rdx, %rsi
	addq	$-5802, %rsi                    # imm = 0xE956
	addq	%r11, %rdi
	addq	$5802, %rdi                     # imm = 0x16AA
	testq	%rsi, %rsi
	jne	.LBB1_4
	jmp	.LBB1_11
.LBB1_1:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB1_11
.LBB1_4:
	testl	$-8, %esi
	je	.LBB1_7
# %bb.5:
	movl	%esi, %edx
	shrl	$3, %edx
	xorl	%r8d, %r8d
	.p2align	4
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%r8,8), %r9
	movzbl	(%r9), %r10d
	addl	%ecx, %r10d
	addl	%r10d, %eax
	movzbl	1(%r9), %ecx
	addl	%r10d, %ecx
	addl	%ecx, %eax
	movzbl	2(%r9), %r10d
	addl	%ecx, %r10d
	addl	%r10d, %eax
	movzbl	3(%r9), %ecx
	addl	%r10d, %ecx
	addl	%ecx, %eax
	movzbl	4(%r9), %r10d
	addl	%ecx, %r10d
	addl	%r10d, %eax
	movzbl	5(%r9), %ecx
	addl	%r10d, %ecx
	addl	%ecx, %eax
	movzbl	6(%r9), %r10d
	addl	%ecx, %r10d
	addl	%r10d, %eax
	movzbl	7(%r9), %ecx
	addl	%r10d, %ecx
	addl	%ecx, %eax
	incq	%r8
	cmpl	%r8d, %edx
	jne	.LBB1_6
.LBB1_7:
	testb	$7, %sil
	je	.LBB1_10
# %bb.8:
	movl	%esi, %edx
	andl	$-8, %edx
	.p2align	4
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %r8d
	addl	%r8d, %ecx
	addl	%ecx, %eax
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB1_9
.LBB1_10:
	movl	%ecx, %edx
	movl	$2155905153, %esi               # imm = 0x80808081
	imulq	%rsi, %rdx
	shrq	$39, %rdx
	movl	%edx, %edi
	shll	$8, %edi
	subl	%edi, %edx
	addl	%ecx, %edx
	movl	%eax, %edi
	imulq	%rsi, %rdi
	shrq	$39, %rdi
	movl	%edi, %ecx
	shll	$8, %ecx
	subl	%ecx, %edi
	addl	%eax, %edi
	movl	%edx, %ecx
	movl	%edi, %eax
.LBB1_11:
	shll	$8, %eax
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	fletcher16_opt, .Lfunc_end1-fletcher16_opt
	.cfi_endproc
                                        # -- End function
	.globl	fletcher32_opt                  # -- Begin function fletcher32_opt
	.p2align	4
	.type	fletcher32_opt,@function
fletcher32_opt:                         # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	xorl	%ecx, %ecx
	cmpq	$359, %rsi                      # imm = 0x167
	jbe	.LBB2_1
# %bb.12:
	leaq	-360(%rsi), %rax
	movabsq	$3279421168659475843, %rcx      # imm = 0x2D82D82D82D82D83
	mulq	%rcx
	shrq	$6, %rdx
	xorl	%r11d, %r11d
	movl	$2147516417, %r8d               # imm = 0x80008001
	movq	%rdi, %r9
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	movq	%r11, %r10
	movl	$14, %ebx
	movl	%eax, %r11d
	movl	%ecx, %ebp
	.p2align	4
.LBB2_14:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r9,%rbx), %rax
	addq	$-14, %rax
	movzwl	(%rax), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %r11d
	movzwl	2(%rax), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %r11d
	movzwl	4(%rax), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %r11d
	movzwl	6(%rax), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %r11d
	movzwl	8(%rax), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %r11d
	movzwl	10(%rax), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %r11d
	movzwl	12(%rax), %ecx
	addl	%ebp, %ecx
	addl	%ecx, %r11d
	movzwl	14(%rax), %ebp
	addl	%ecx, %ebp
	addl	%ebp, %r11d
	addq	$16, %rbx
	cmpl	$734, %ebx                      # imm = 0x2DE
	jne	.LBB2_14
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	movl	%ebp, %ecx
	imulq	%r8, %rcx
	shrq	$47, %rcx
	movl	%ecx, %eax
	shll	$16, %eax
	subl	%eax, %ecx
	addl	%ebp, %ecx
	movl	%r11d, %eax
	imulq	%r8, %rax
	shrq	$47, %rax
	movl	%eax, %ebx
	shll	$16, %ebx
	subl	%ebx, %eax
	addl	%r11d, %eax
	leaq	1(%r10), %r11
	addq	$720, %r9                       # imm = 0x2D0
	cmpq	%rdx, %r10
	jne	.LBB2_13
# %bb.2:
	imulq	$-360, %r10, %rdx               # imm = 0xFE98
	addq	%rdx, %rsi
	addq	$-360, %rsi                     # imm = 0xFE98
	imulq	$720, %r10, %rdx                # imm = 0x2D0
	addq	%rdx, %rdi
	addq	$720, %rdi                      # imm = 0x2D0
	testq	%rsi, %rsi
	jne	.LBB2_4
	jmp	.LBB2_11
.LBB2_1:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB2_11
.LBB2_4:
	movl	%esi, %edx
	shrl	$3, %edx
	je	.LBB2_7
# %bb.5:
	leaq	14(%rdi), %r8
	.p2align	4
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movzwl	-14(%r8), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %eax
	movzwl	-12(%r8), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %eax
	movzwl	-10(%r8), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %eax
	movzwl	-8(%r8), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %eax
	movzwl	-6(%r8), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %eax
	movzwl	-4(%r8), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %eax
	movzwl	-2(%r8), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %eax
	movzwl	(%r8), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %eax
	addq	$16, %r8
	decl	%edx
	jne	.LBB2_6
.LBB2_7:
	testb	$7, %sil
	je	.LBB2_10
# %bb.8:
	movl	%esi, %edx
	andl	$-8, %edx
	.p2align	4
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%rdx,2), %r8d
	addl	%r8d, %ecx
	addl	%ecx, %eax
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB2_9
.LBB2_10:
	movl	%ecx, %edx
	movl	$2147516417, %esi               # imm = 0x80008001
	imulq	%rsi, %rdx
	shrq	$47, %rdx
	movl	%edx, %edi
	shll	$16, %edi
	subl	%edi, %edx
	addl	%ecx, %edx
	movl	%eax, %edi
	imulq	%rsi, %rdi
	shrq	$47, %rdi
	movl	%edi, %ecx
	shll	$16, %ecx
	subl	%ecx, %edi
	addl	%eax, %edi
	movl	%edx, %ecx
	movl	%edi, %eax
.LBB2_11:
	shll	$16, %eax
	orl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	fletcher32_opt, .Lfunc_end2-fletcher32_opt
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$12000, %rsp                    # imm = 0x2EE0
	.cfi_def_cfa_offset 12032
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	stmxcsr	(%rsp)
	orl	$32832, (%rsp)                  # imm = 0x8040
	ldmxcsr	(%rsp)
	xorl	%eax, %eax
	.p2align	4
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movw	%ax, (%rsp,%rax,2)
	leal	1(%rax), %ecx
	movw	%cx, 2(%rsp,%rax,2)
	leal	2(%rax), %ecx
	movw	%cx, 4(%rsp,%rax,2)
	leal	3(%rax), %ecx
	movw	%cx, 6(%rsp,%rax,2)
	leal	4(%rax), %ecx
	movw	%cx, 8(%rsp,%rax,2)
	leal	5(%rax), %ecx
	movw	%cx, 10(%rsp,%rax,2)
	leal	6(%rax), %ecx
	movw	%cx, 12(%rsp,%rax,2)
	leal	7(%rax), %ecx
	movw	%cx, 14(%rsp,%rax,2)
	addq	$8, %rax
	cmpq	$6000, %rax                     # imm = 0x1770
	jne	.LBB3_1
# %bb.2:
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	movl	$12000, %esi                    # imm = 0x2EE0
	callq	fletcher16
	movl	%eax, %ebp
	movl	$12000, %esi                    # imm = 0x2EE0
	movq	%rbx, %rdi
	callq	fletcher16_opt
	movl	%eax, %r14d
	movl	$6000, %esi                     # imm = 0x1770
	movq	%rbx, %rdi
	callq	fletcher32_opt
	movl	%eax, %ebx
	movzwl	%bp, %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movzwl	%r14w, %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.2, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$12000, %rsp                    # imm = 0x2EE0
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fletcher16_simple : 0x%04X\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"fletcher16_opt    : 0x%04X\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"fletcher32_opt    : 0x%08X\n"
	.size	.L.str.2, 28

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2026.0.0 (2026.0.0.20260331)"
	.section	".note.GNU-stack","",@progbits
