	.file	"arrCalc.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"The four operators are: +, -, *, /."
.LC1:
	.string	"Enter your choice: "
.LC2:
	.string	"%c"
	.align 8
.LC3:
	.string	"Enter the number of operands: "
.LC5:
	.string	"%d"
.LC6:
	.string	"Enter the operands: "
.LC7:
	.string	"Operand %d: "
.LC8:
	.string	"%lf"
	.align 8
.LC10:
	.string	"The result of the calculation is: %lf\n"
.LC11:
	.string	"Invalid operator: %c\n"
.LC12:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-61(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-61(%rbp), %eax
	cmpb	$43, %al
	je	.L2
	movzbl	-61(%rbp), %eax
	cmpb	$45, %al
	je	.L2
	movzbl	-61(%rbp), %eax
	cmpb	$42, %al
	je	.L2
	movzbl	-61(%rbp), %eax
	cmpb	$47, %al
	jne	.L3
.L2:
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -56(%rbp)
	jmp	.L4
.L5:
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -56(%rbp)
.L4:
	movl	-60(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L5
	movzbl	-61(%rbp), %eax
	cmpb	$47, %al
	jne	.L6
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L7
.L6:
	movzbl	-61(%rbp), %eax
	cmpb	$42, %al
	jne	.L8
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L7
.L8:
	movzbl	-61(%rbp), %eax
	cmpb	$45, %al
	jne	.L7
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
.L7:
	movl	$0, -52(%rbp)
	jmp	.L9
.L15:
	movzbl	-61(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$47, %eax
	je	.L10
	cmpl	$47, %eax
	jg	.L11
	cmpl	$45, %eax
	je	.L12
	cmpl	$45, %eax
	jg	.L11
	cmpl	$42, %eax
	je	.L13
	cmpl	$43, %eax
	jne	.L11
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L11
.L12:
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm1
	movsd	-48(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -52(%rbp)
	jmp	.L11
.L13:
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L11
.L10:
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm1
	movsd	-48(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	nop
.L11:
	addl	$1, -52(%rbp)
.L9:
	movl	-60(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L15
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%rbx, %rsp
	jmp	.L16
.L3:
	movzbl	-61(%rbp), %eax
	movsbl	%al, %eax
	cltq
	leaq	.LC11(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L16:
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 14.2.1 20240805"
	.section	.note.GNU-stack,"",@progbits
