	.file	"powI.c"
	.text
	.globl	powI
	.type	powI, @function
powI:
.LFB0:
	.cfi_startproc
	pushq	%rbp 					1: Creation of the Stack Frame
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)			2: Argument Storage
	movl	%esi, -24(%rbp)			2: Argument Storage
	movl	$1, -4(%rbp)			3: Local Variable Creation
	movl	$0, -8(%rbp)			3: Local Variable Creation
	jmp	.L2
.L3:								4: Body of the Loop
	movl	-4(%rbp), %eax			3: Update of local variables
	imull	-24(%rbp), %eax			2: Argument Update
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L2:								4: Start of the Loop
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax			4: Loop Logic
	jl	.L3
	movl	-4(%rbp), %eax			5: Return Result
	popq	%rbp 					5: Exit from the function
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	powI, .-powI
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
