	.file	"optbench.c"
	.text
	.p2align 4
	.globl	dead_code
	.type	dead_code, @function
dead_code:
.LFB12:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE12:
	.size	dead_code, .-dead_code
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.p2align 4
	.globl	unnecessary_loop
	.type	unnecessary_loop, @function
unnecessary_loop:
.LFB13:
	.cfi_startproc
	movl	j5(%rip), %esi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$5, i(%rip)
	movl	%esi, k5(%rip)
	jmp	printf@PLT
	.cfi_endproc
.LFE13:
	.size	unnecessary_loop, .-unnecessary_loop
	.p2align 4
	.globl	loop_jamming
	.type	loop_jamming, @function
loop_jamming:
.LFB14:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi
	movl	%edi, %ebx
	movl	$0, i(%rip)
	.p2align 4
	.p2align 3
.L5:
	imull	j5(%rip), %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	addl	%ebx, %esi
	movl	%esi, k5(%rip)
	call	printf@PLT
	movl	i(%rip), %eax
	leal	1(%rax), %esi
	movl	%esi, i(%rip)
	cmpl	$4, %esi
	jle	.L5
	movl	$0, i(%rip)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L6:
	movl	k5(%rip), %esi
	leaq	.LC0(%rip), %rdi
	movl	%esi, %edx
	imull	%ebx, %edx
	imull	%edx, %eax
	movl	%eax, i5(%rip)
	xorl	%eax, %eax
	call	printf@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	cmpl	$4, %eax
	jle	.L6
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	loop_jamming, .-loop_jamming
	.p2align 4
	.globl	loop_unrolling
	.type	loop_unrolling, @function
loop_unrolling:
.LFB15:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax
	leaq	ivector4(%rip), %rbx
	movl	$0, i(%rip)
	.p2align 4
	.p2align 3
.L11:
	cltq
	xorl	%edx, %edx
	leaq	.LC0(%rip), %rdi
	xorl	%esi, %esi
	movw	%dx, (%rbx,%rax,2)
	xorl	%eax, %eax
	call	printf@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	cmpl	$5, %eax
	jle	.L11
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	loop_unrolling, .-loop_unrolling
	.p2align 4
	.globl	jump_compression
	.type	jump_compression, @function
jump_compression:
.LFB16:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%esi, %ebx
	cmpl	%edi, %esi
	jg	.L15
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L24:
	cmpl	%r13d, %ebp
	jge	.L18
	cmpl	%r14d, %r13d
	jl	.L23
	cmpl	%r12d, %ebx
	jle	.L16
.L15:
	cmpl	%ebx, %ebp
	jg	.L24
	addl	%ebp, %ebx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	%ebx, %esi
	call	printf@PLT
	cmpl	%r12d, %ebx
	jg	.L15
	.p2align 4
	.p2align 3
.L16:
	addl	%ebx, %r12d
.L20:
	leal	(%r12,%rbx), %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	addl	%ebp, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	addl	%r13d, %eax
	popq	%r13
	.cfi_def_cfa_offset 16
	addl	%r14d, %eax
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	addl	%r13d, %ebp
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L23:
	addl	%r14d, %r13d
	jmp	.L20
	.cfi_endproc
.LFE16:
	.size	jump_compression, .-jump_compression
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"This compiler handles divide-by-zero as                     an error"
	.align 8
.LC8:
	.string	"Common subexpression elimination"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax
	movl	$2, %esi
	leaq	.LC0(%rip), %rdi
	movl	$2, j4(%rip)
	call	printf@PLT
	movl	j4(%rip), %eax
	cmpl	%eax, i2(%rip)
	jge	.L26
	cmpl	i4(%rip), %eax
	jg	.L36
.L26:
	movl	k5(%rip), %esi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	%esi, j4(%rip)
	call	printf@PLT
	movl	j4(%rip), %eax
	cmpl	%eax, i2(%rip)
	jge	.L27
	cmpl	i4(%rip), %eax
	jg	.L37
.L27:
	movq	.LC1(%rip), %rax
	leaq	.LC2(%rip), %rdi
	movl	$3, i3(%rip)
	movl	$5, i2(%rip)
	movq	%rax, flt_1(%rip)
	movl	i(%rip), %eax
	movl	$0, i5(%rip)
	movl	%eax, j2(%rip)
	movl	%eax, k2(%rip)
	movl	%eax, i4(%rip)
	call	puts@PLT
	movq	.LC4(%rip), %rax
	pxor	%xmm1, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	flt_6(%rip), %xmm1
	movl	$1, k3(%rip)
	movq	%rax, flt_4(%rip)
	movl	j5(%rip), %eax
	movsd	%xmm0, flt_3(%rip)
	mulsd	flt_2(%rip), %xmm0
	movl	$655368, 8+ivector4(%rip)
	sall	$2, %eax
	movl	%eax, k2(%rip)
	movq	.LC6(%rip), %rax
	movl	$10000, j5(%rip)
	movl	$0, i5(%rip)
	movq	%rax, ivector4(%rip)
	leaq	12+ivector5(%rip), %rax
	movsd	%xmm1, flt_5(%rip)
	leaq	800(%rax), %rdx
	movsd	%xmm0, flt_6(%rip)
	.p2align 5
	.p2align 4
	.p2align 3
.L28:
	movl	$5, (%rax)
	addq	$16, %rax
	movl	$5, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L28
	movl	i2(%rip), %eax
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	movl	$100, i(%rip)
	movl	$1, ivector(%rip)
	leaq	ivector(%rip), %rbx
	movl	%eax, k5(%rip)
	xorl	%eax, %eax
	call	printf@PLT
	movslq	i2(%rip), %rax
	movl	$2, %esi
	leaq	.LC0(%rip), %rdi
	movl	$2, (%rbx,%rax,4)
	xorl	%eax, %eax
	call	printf@PLT
	movslq	i2(%rip), %rax
	movl	$2, %esi
	leaq	.LC0(%rip), %rdi
	movl	$2, (%rbx,%rax,4)
	xorl	%eax, %eax
	call	printf@PLT
	movl	$3, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	movl	$3, 8+ivector(%rip)
	call	printf@PLT
	movl	k3(%rip), %eax
	addl	h3(%rip), %eax
	cmpl	$5, %eax
	jbe	.L29
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
.L30:
	movl	$0, i4(%rip)
	xorl	%edx, %edx
	leaq	ivector2(%rip), %rbx
	.p2align 4
	.p2align 3
.L31:
	movzbl	j(%rip), %eax
	mulb	k(%rip)
	movslq	%edx, %rdx
	leaq	.LC0(%rip), %rdi
	movb	%al, (%rbx,%rdx)
	movzbl	%al, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	i4(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, i4(%rip)
	cmpl	$2, %edx
	jle	.L31
	call	unnecessary_loop
	movl	$7, %edi
	call	loop_jamming
	movl	$7, %edi
	call	loop_unrolling
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	jump_compression
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	cltd
	leaq	.LC0(%rip), %rdi
	idivl	i3(%rip)
	movl	%eax, %esi
	movl	%eax, m3(%rip)
	xorl	%eax, %eax
	call	printf@PLT
	movl	k3(%rip), %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	addl	h3(%rip), %esi
	addl	i3(%rip), %esi
	movl	%esi, g3(%rip)
	call	printf@PLT
	jmp	.L30
.L37:
	movl	$3, %esi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$3, i5(%rip)
	call	printf@PLT
	jmp	.L27
.L36:
	movl	$2, %esi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$2, i2(%rip)
	call	printf@PLT
	jmp	.L26
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.globl	ivector5
	.bss
	.align 32
	.type	ivector5, @object
	.size	ivector5, 400
ivector5:
	.zero	400
	.globl	ivector4
	.align 16
	.type	ivector4, @object
	.size	ivector4, 12
ivector4:
	.zero	12
	.globl	ivector2
	.type	ivector2, @object
	.size	ivector2, 3
ivector2:
	.zero	3
	.globl	ivector
	.align 8
	.type	ivector, @object
	.size	ivector, 12
ivector:
	.zero	12
	.globl	flt_6
	.align 8
	.type	flt_6, @object
	.size	flt_6, 8
flt_6:
	.zero	8
	.globl	flt_5
	.align 8
	.type	flt_5, @object
	.size	flt_5, 8
flt_5:
	.zero	8
	.globl	flt_4
	.align 8
	.type	flt_4, @object
	.size	flt_4, 8
flt_4:
	.zero	8
	.globl	flt_3
	.align 8
	.type	flt_3, @object
	.size	flt_3, 8
flt_3:
	.zero	8
	.globl	flt_2
	.align 8
	.type	flt_2, @object
	.size	flt_2, 8
flt_2:
	.zero	8
	.globl	flt_1
	.align 8
	.type	flt_1, @object
	.size	flt_1, 8
flt_1:
	.zero	8
	.globl	k5
	.align 4
	.type	k5, @object
	.size	k5, 4
k5:
	.zero	4
	.globl	j5
	.align 4
	.type	j5, @object
	.size	j5, 4
j5:
	.zero	4
	.globl	i5
	.align 4
	.type	i5, @object
	.size	i5, 4
i5:
	.zero	4
	.globl	j4
	.align 4
	.type	j4, @object
	.size	j4, 4
j4:
	.zero	4
	.globl	i4
	.align 4
	.type	i4, @object
	.size	i4, 4
i4:
	.zero	4
	.globl	m3
	.align 4
	.type	m3, @object
	.size	m3, 4
m3:
	.zero	4
	.globl	k3
	.align 4
	.type	k3, @object
	.size	k3, 4
k3:
	.zero	4
	.globl	i3
	.align 4
	.type	i3, @object
	.size	i3, 4
i3:
	.zero	4
	.globl	h3
	.align 4
	.type	h3, @object
	.size	h3, 4
h3:
	.zero	4
	.globl	g3
	.align 4
	.type	g3, @object
	.size	g3, 4
g3:
	.zero	4
	.globl	k2
	.align 4
	.type	k2, @object
	.size	k2, 4
k2:
	.zero	4
	.globl	j2
	.align 4
	.type	j2, @object
	.size	j2, 4
j2:
	.zero	4
	.globl	i2
	.align 4
	.type	i2, @object
	.size	i2, 4
i2:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	l
	.align 4
	.type	l, @object
	.size	l, 4
l:
	.zero	4
	.globl	k
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1717986918
	.long	1075930726
	.align 8
.LC3:
	.long	858993459
	.long	1073951539
	.align 8
.LC4:
	.long	450359963
	.long	1072693248
	.align 8
.LC6:
	.value	0
	.value	2
	.value	4
	.value	6
	.ident	"GCC: (GNU) 15.2.1 20260209"
	.section	.note.GNU-stack,"",@progbits
