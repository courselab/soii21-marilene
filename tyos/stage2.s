	.file	"stage2.c"
	.code16gcc
	.text
	.globl	init
	.type	init, @function
init:
.LFB0:
	.cfi_startproc
#APP
# 30 "stage2.c" 1
	checagem:                                     mov    $0x00, %ah           ;        int    $0x16                 ;        cmp    $0x0d, %al           ;        jne   checagem               ;
# 0 "" 2
#NO_APP
	call	jogo
	call	halt
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	init, .-init
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
