	.file	"stage2.c"
	.code16gcc
	.text
	.globl	init
	.type	init, @function
init:
.LFB0:
	.cfi_startproc
	call	jogo
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	init, .-init
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
