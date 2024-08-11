	.file	"main.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of elements: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter element %d: "
.LC3:
	.string	"The largest element is: %d\n"
.LC4:
	.string	"The smallest element is: %d\n"
	.align 8
.LC5:
	.string	"The range of the array is: %d\n"
.LC6:
	.string	"Invalid input: %d\n"
	.align 8
.LC7:
	.string	"Do you want to continue? (y/n): "
.LC8:
	.string	" %c"
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
.L2:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jle	.L3
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L4
.L5:
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -56(%rbp)
.L4:
	movl	-60(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L5
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L6
.L9:
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, -52(%rbp)
	jge	.L7
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -52(%rbp)
.L7:
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, -48(%rbp)
	jle	.L8
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -48(%rbp)
.L8:
	addl	$1, -44(%rbp)
.L6:
	movl	-60(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L9
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	movq	%rbx, %rsp
	jmp	.L12
.L3:
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-61(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-61(%rbp), %eax
	cmpb	$121, %al
	je	.L2
	movzbl	-61(%rbp), %eax
	cmpb	$89, %al
	je	.L2
	movl	$0, %eax
.L12:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240805"
	.section	.note.GNU-stack,"",@progbits
