	.file	"fletcher.c"
	.text
	.globl	fletcher16                      # -- Begin function fletcher16
	.p2align	4
	.type	fletcher16,@function
fletcher16:                             # @fletcher16
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
fletcher16_opt:                         # @fletcher16_opt
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
fletcher32_opt:                         # @fletcher32_opt
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
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$12048, %rsp                    # imm = 0x2F10
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12020(%rbp)
	movl	$0, -12024(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6000, -12024(%rbp)             # imm = 0x1770
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-12024(%rbp), %eax
	movw	%ax, %cx
	movslq	-12024(%rbp), %rax
	movw	%cx, -12016(%rbp,%rax,2)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-12024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12024(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	leaq	-12016(%rbp), %rdi
	movq	%rdi, -12048(%rbp)              # 8-byte Spill
	movl	$12000, %esi                    # imm = 0x2EE0
	callq	fletcher16
	movq	-12048(%rbp), %rdi              # 8-byte Reload
	movw	%ax, -12026(%rbp)
	movl	$12000, %esi                    # imm = 0x2EE0
	callq	fletcher16_opt
	movq	-12048(%rbp), %rdi              # 8-byte Reload
	movw	%ax, -12028(%rbp)
	movl	$6000, %esi                     # imm = 0x1770
	callq	fletcher32_opt
	movl	%eax, -12032(%rbp)
	movzwl	-12026(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -12033(%rbp)               # 1-byte Spill
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-12033(%rbp), %al               # 1-byte Reload
	movzwl	-12028(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	-12033(%rbp), %al               # 1-byte Reload
	movl	-12032(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	printf@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_6
# %bb.5:
	xorl	%eax, %eax
	addq	$12048, %rsp                    # imm = 0x2F10
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_6:
	.cfi_def_cfa %rbp, 16
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
	.addrsig_sym fletcher16
	.addrsig_sym fletcher16_opt
	.addrsig_sym fletcher32_opt
	.addrsig_sym printf
	.addrsig_sym __stack_chk_fail
