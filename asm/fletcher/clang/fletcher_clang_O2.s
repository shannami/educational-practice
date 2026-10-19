	.file	"fletcher.c"
	.text
	.globl	fletcher16                      # -- Begin function fletcher16
	.p2align	4
	.type	fletcher16,@function
fletcher16:                             # @fletcher16
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB0_4:
	movl	%esi, %esi
	movl	%esi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %r9d
	addl	%r9d, %eax
	movzwl	%ax, %r9d
	imull	$32897, %r9d, %r9d              # imm = 0x8081
	shrl	$23, %r9d
	movl	%r9d, %r10d
	shll	$8, %r10d
	subl	%r10d, %r9d
	addl	%eax, %r9d
	addl	%r9d, %ecx
	movzwl	%cx, %eax
	imull	$32897, %eax, %r10d             # imm = 0x8081
	shrl	$23, %r10d
	movl	%r10d, %eax
	shll	$8, %eax
	subl	%eax, %r10d
	addl	%ecx, %r10d
	movzbl	1(%rdi,%rdx), %ecx
	addl	%r9d, %ecx
	movzwl	%cx, %eax
	imull	$515, %eax, %eax                # imm = 0x203
	shrl	$17, %eax
	movl	%eax, %r9d
	shll	$8, %r9d
	subl	%r9d, %eax
	addl	%ecx, %eax
	movl	%eax, %r9d
	addl	%r10d, %r9d
	movzwl	%r9w, %ecx
	imull	$515, %ecx, %ecx                # imm = 0x203
	shrl	$17, %ecx
	movl	%ecx, %r10d
	shll	$8, %r10d
	subl	%r10d, %ecx
	addl	%r9d, %ecx
	addq	$2, %rdx
	cmpq	%rdx, %r8
	jne	.LBB0_5
# %bb.6:
	testb	$1, %sil
	je	.LBB0_8
.LBB0_7:
	movzbl	(%rdi,%rdx), %edx
	addl	%edx, %eax
	movzwl	%ax, %edx
	imull	$32897, %edx, %edx              # imm = 0x8081
	shrl	$23, %edx
	movl	%edx, %esi
	shll	$8, %esi
	subl	%esi, %edx
	addl	%eax, %edx
	addl	%edx, %ecx
	movzwl	%cx, %eax
	imull	$32897, %eax, %esi              # imm = 0x8081
	shrl	$23, %esi
	movl	%esi, %eax
	shll	$8, %eax
	subl	%eax, %esi
	addl	%ecx, %esi
	movl	%edx, %eax
	movl	%esi, %ecx
.LBB0_8:
	shll	$8, %ecx
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end0:
	.size	fletcher16, .Lfunc_end0-fletcher16
	.cfi_endproc
                                        # -- End function
	.globl	fletcher16_opt                  # -- Begin function fletcher16_opt
	.p2align	4
	.type	fletcher16_opt,@function
fletcher16_opt:                         # @fletcher16_opt
	.cfi_startproc
# %bb.0:
	xorl	%ecx, %ecx
	cmpq	$5802, %rsi                     # imm = 0x16AA
	jb	.LBB1_1
# %bb.7:
	xorl	%r8d, %r8d
	movl	$2155905153, %edx               # imm = 0x80808081
	xorl	%r9d, %r9d
	.p2align	4
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	xorl	%eax, %eax
	.p2align	4
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rax), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzbl	1(%rdi,%rax), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	movzbl	2(%rdi,%rax), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzbl	3(%rdi,%rax), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	movzbl	4(%rdi,%rax), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzbl	5(%rdi,%rax), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	addq	$6, %rax
	cmpl	$5802, %eax                     # imm = 0x16AA
	jne	.LBB1_9
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$5802, %rdi                     # imm = 0x16AA
	movl	%r9d, %ecx
	imulq	%rdx, %rcx
	shrq	$39, %rcx
	movl	%ecx, %eax
	shll	$8, %eax
	subl	%eax, %ecx
	addl	%r9d, %ecx
	movl	%r8d, %eax
	imulq	%rdx, %rax
	shrq	$39, %rax
	movl	%eax, %r9d
	shll	$8, %r9d
	subl	%r9d, %eax
	addl	%r8d, %eax
	addq	$-5802, %rsi                    # imm = 0xE956
	movl	%eax, %r8d
	movl	%ecx, %r9d
	cmpq	$5801, %rsi                     # imm = 0x16A9
	ja	.LBB1_8
# %bb.2:
	testq	%rsi, %rsi
	jne	.LBB1_3
	jmp	.LBB1_6
.LBB1_1:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB1_6
.LBB1_3:
	xorl	%edx, %edx
	.p2align	4
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %r8d
	addl	%r8d, %ecx
	addl	%ecx, %eax
	incq	%rdx
	movl	%edx, %r8d
	cmpq	%r8, %rsi
	ja	.LBB1_4
# %bb.5:
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
.LBB1_6:
	shll	$8, %eax
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $rax
	retq
.Lfunc_end1:
	.size	fletcher16_opt, .Lfunc_end1-fletcher16_opt
	.cfi_endproc
                                        # -- End function
	.globl	fletcher32_opt                  # -- Begin function fletcher32_opt
	.p2align	4
	.type	fletcher32_opt,@function
fletcher32_opt:                         # @fletcher32_opt
	.cfi_startproc
# %bb.0:
	xorl	%ecx, %ecx
	cmpq	$360, %rsi                      # imm = 0x168
	jb	.LBB2_1
# %bb.7:
	xorl	%r8d, %r8d
	movl	$2147516417, %edx               # imm = 0x80008001
	xorl	%r9d, %r9d
	.p2align	4
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	xorl	%eax, %eax
	.p2align	4
.LBB2_9:                                #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi,%rax,2), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzwl	2(%rdi,%rax,2), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	movzwl	4(%rdi,%rax,2), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzwl	6(%rdi,%rax,2), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	movzwl	8(%rdi,%rax,2), %ecx
	addl	%r9d, %ecx
	addl	%ecx, %r8d
	movzwl	10(%rdi,%rax,2), %r9d
	addl	%ecx, %r9d
	addl	%r9d, %r8d
	addq	$6, %rax
	cmpl	$360, %eax                      # imm = 0x168
	jne	.LBB2_9
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	addq	$720, %rdi                      # imm = 0x2D0
	movl	%r9d, %ecx
	imulq	%rdx, %rcx
	shrq	$47, %rcx
	movl	%ecx, %eax
	shll	$16, %eax
	subl	%eax, %ecx
	addl	%r9d, %ecx
	movl	%r8d, %eax
	imulq	%rdx, %rax
	shrq	$47, %rax
	movl	%eax, %r9d
	shll	$16, %r9d
	subl	%r9d, %eax
	addl	%r8d, %eax
	addq	$-360, %rsi                     # imm = 0xFE98
	movl	%eax, %r8d
	movl	%ecx, %r9d
	cmpq	$359, %rsi                      # imm = 0x167
	ja	.LBB2_8
# %bb.2:
	testq	%rsi, %rsi
	jne	.LBB2_3
	jmp	.LBB2_6
.LBB2_1:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB2_6
.LBB2_3:
	xorl	%edx, %edx
	.p2align	4
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%rdx,2), %r8d
	addl	%r8d, %ecx
	addl	%ecx, %eax
	incq	%rdx
	movl	%edx, %r8d
	cmpq	%r8, %rsi
	ja	.LBB2_4
# %bb.5:
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
.LBB2_6:
	shll	$16, %eax
	orl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end2:
	.size	fletcher32_opt, .Lfunc_end2-fletcher32_opt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI3_0:
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	3                               # 0x3
	.short	4                               # 0x4
	.short	5                               # 0x5
	.short	6                               # 0x6
	.short	7                               # 0x7
.LCPI3_1:
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
	.short	8                               # 0x8
.LCPI3_2:
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
	.short	16                              # 0x10
.LCPI3_3:
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
	.short	24                              # 0x18
.LCPI3_4:
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
	.short	32                              # 0x20
.LCPI3_5:
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
	.short	40                              # 0x28
.LCPI3_6:
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.short	48                              # 0x30
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$12016, %rsp                    # imm = 0x2EF0
	.cfi_def_cfa_offset 12048
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%fs:40, %rax
	movq	%rax, 12008(%rsp)
	movdqa	.LCPI3_0(%rip), %xmm0           # xmm0 = [0,1,2,3,4,5,6,7]
	movl	$40, %eax
	movdqa	.LCPI3_1(%rip), %xmm1           # xmm1 = [8,8,8,8,8,8,8,8]
	movdqa	.LCPI3_2(%rip), %xmm2           # xmm2 = [16,16,16,16,16,16,16,16]
	movdqa	.LCPI3_3(%rip), %xmm3           # xmm3 = [24,24,24,24,24,24,24,24]
	movdqa	.LCPI3_4(%rip), %xmm4           # xmm4 = [32,32,32,32,32,32,32,32]
	movdqa	.LCPI3_5(%rip), %xmm5           # xmm5 = [40,40,40,40,40,40,40,40]
	movdqa	.LCPI3_6(%rip), %xmm6           # xmm6 = [48,48,48,48,48,48,48,48]
	.p2align	4
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm7
	paddw	%xmm1, %xmm7
	movdqa	%xmm0, -80(%rsp,%rax,2)
	movdqa	%xmm7, -64(%rsp,%rax,2)
	movdqa	%xmm0, %xmm7
	paddw	%xmm2, %xmm7
	movdqa	%xmm0, %xmm8
	paddw	%xmm3, %xmm8
	movdqa	%xmm7, -48(%rsp,%rax,2)
	movdqa	%xmm8, -32(%rsp,%rax,2)
	movdqa	%xmm0, %xmm7
	paddw	%xmm4, %xmm7
	movdqa	%xmm0, %xmm8
	paddw	%xmm5, %xmm8
	movdqa	%xmm7, -16(%rsp,%rax,2)
	movdqa	%xmm8, (%rsp,%rax,2)
	paddw	%xmm6, %xmm0
	addq	$48, %rax
	cmpq	$6040, %rax                     # imm = 0x1798
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
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	movzwl	%r14w, %esi
	leaq	.L.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.2(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%fs:40, %rax
	cmpq	12008(%rsp), %rax
	jne	.LBB3_4
# %bb.3:
	xorl	%eax, %eax
	addq	$12016, %rsp                    # imm = 0x2EF0
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_4:
	.cfi_def_cfa_offset 12048
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fletcher16_simple : 0x%04X\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"fletcher16_opt    : 0x%04X\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"fletcher32_opt    : 0x%08X\n"
	.size	.L.str.2, 28

	.ident	"clang version 22.1.8"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __stack_chk_fail
