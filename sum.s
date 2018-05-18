	.file	"sum.c"
	.text
	.p2align 2,,3
.globl sum
	.type	sum,@function
sum:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	xorl	%eax, %eax
	movl	8(%ebp), %ebx
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	movl	12(%ebp), %esi
	jge	.L9
	.p2align 2,,3
.L7:
	movl	(%esi,%ecx,4), %edx
	cmpl	$1000, %edx
	jle	.L4
	addl	%edx, %eax
.L4:
	incl	%ecx
	cmpl	%ebx, %ecx
	jl	.L7
.L9:
	popl	%ebx
	popl	%esi
	leave
	ret
.Lfe1:
	.size	sum,.Lfe1-sum
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-24)"
