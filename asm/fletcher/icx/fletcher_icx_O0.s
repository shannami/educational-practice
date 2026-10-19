	.file	"fletcher.c"
	.text
	.globl	fletcher16                      # -- Begin function fletcher16
	.p2align	4
	.type	fletcher16,@function
fletcher16:                             # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movw	$0, -14(%rbp)
	movw	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	-14(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$255, %ecx
	cltd
	idivl	%ecx
	movw	%dx, %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	addl	%ecx, %eax
	movl	$255, %ecx
	cltd
	idivl	%ecx
	movw	%dx, %ax
	movw	%ax, -16(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movzwl	-16(%rbp), %eax
	shll	$8, %eax
	movzwl	-14(%rbp), %ecx
	orl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpq	$5802, -16(%rbp)                # imm = 0x16AA
	jb	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -28(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5802, -28(%rbp)                # imm = 0x16AA
	jae	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	movl	$255, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	$255, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -24(%rbp)
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5802, %rax                     # imm = 0x16AA
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movl	$0, -28(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	-16(%rbp), %rax
	jae	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	movl	-20(%rbp), %eax
	movl	$255, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	$255, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %eax
	shll	$8, %eax
	orl	-20(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpq	$360, -16(%rbp)                 # imm = 0x168
	jb	.LBB2_8
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -28(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$360, -28(%rbp)                 # imm = 0x168
	jae	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movzwl	(%rcx), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	movl	$65535, %ecx                    # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	$65535, %ecx                    # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -24(%rbp)
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$360, %rax                      # imm = 0x168
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_8:
	movl	$0, -28(%rbp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	-16(%rbp), %rax
	jae	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movzwl	(%rcx), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_9
.LBB2_12:
	movl	-20(%rbp), %eax
	movl	$65535, %ecx                    # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	$65535, %ecx                    # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %eax
	shll	$16, %eax
	orl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$12032, %rsp                    # imm = 0x2F00
	movl	$0, -4(%rbp)
	movl	$0, -12020(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6000, -12020(%rbp)             # imm = 0x1770
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-12020(%rbp), %eax
	movw	%ax, %cx
	movslq	-12020(%rbp), %rax
	movw	%cx, -12016(%rbp,%rax,2)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-12020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12020(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	leaq	-12016(%rbp), %rdi
	movl	$12000, %esi                    # imm = 0x2EE0
	callq	fletcher16
	movw	%ax, -12022(%rbp)
	leaq	-12016(%rbp), %rdi
	movl	$12000, %esi                    # imm = 0x2EE0
	callq	fletcher16_opt
	movw	%ax, -12024(%rbp)
	leaq	-12016(%rbp), %rdi
	movl	$6000, %esi                     # imm = 0x1770
	callq	fletcher32_opt
	movl	%eax, -12028(%rbp)
	movzwl	-12022(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movzwl	-12024(%rbp), %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	-12028(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$12032, %rsp                    # imm = 0x2F00
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
