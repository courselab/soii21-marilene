	.file	"main.c"
	.code16gcc
	.text
	.section	.rodata
	.align 4
.LC0:
	.string	"welcome MARI BOOTLOADER. Type 'help'"
.LC1:
	.string	">"
.LC2:
	.string	"help"
.LC3:
	.string	"quit"
.LC4:
	.string	"command not found"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	clear
	movl	$.LC0, %ecx
	call	print
	movl	$nl, %ecx
	call	print
.L5:
	movl	$.LC1, %ecx
	call	print
	leal	11(%esp), %eax
	movl	%eax, %ecx
	call	read
	leal	11(%esp), %eax
	movl	$.LC2, %edx
	movl	%eax, %ecx
	call	compare
	testl	%eax, %eax
	je	.L2
	call	help
	jmp	.L5
.L2:
	leal	11(%esp), %eax
	movl	$.LC3, %edx
	movl	%eax, %ecx
	call	compare
	testl	%eax, %eax
	je	.L4
	call	quit
	jmp	.L5
.L4:
	movl	$.LC4, %ecx
	call	print
	movl	$nl, %ecx
	call	print
	jmp	.L5
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
