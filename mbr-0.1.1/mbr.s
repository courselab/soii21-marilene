	.file	"mbr.c"
	.code16gcc
	.text
	.globl	nl
	.data
	.type	nl, @object
	.size	nl, 3
nl:
	.string	"\r\n"
	.text
	.globl	print
	.type	print, @function
print:
.LFB0:
	.cfi_startproc
	movl	%ecx, %edx
	movl	%edx, %ebx
#APP
# 39 "mbr.c" 1
	        mov   $0x0e, %ah           ;        mov   $0x0, %si            ;loop7:                             ;        mov   (%bx, %si), %al    ;        cmp   $0x0, %al            ;        je    end7                 ;        int   $0x10                 ;        add   $0x1, %si            ;        jmp   loop7                ;end7:                              ;        ret                         ;
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	print, .-print
	.globl	clear
	.type	clear, @function
clear:
.LFB1:
	.cfi_startproc
#APP
# 64 "mbr.c" 1
	 mov $0x0600, %ax                 ; mov $0x0d, %bh                   ; mov $0x0, %cx                    ; mov $0x184f, %dx                 ; int $0x10                         ; ret                                
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE1:
	.size	clear, .-clear
	.globl	read
	.type	read, @function
read:
.LFB2:
	.cfi_startproc
	movl	%ecx, %edx
	movl	%edx, %ebx
#APP
# 90 "mbr.c" 1
	   mov $0x0, %si               ;   mov $0x0, %cx               ;loop27:                         ;   movw $0X0, %ax              ;   int $0x16                    ;   movb %al, %es:(%bx, %si) ;   inc %si                     ;   inc %cx                     ;   cmp $0xd, %al               ;   mov   $0x0e, %ah            ;   int $0x10                    ;   jne space                    ;   jmp cont                     ;space:                          ;   cmp $0x20, %al              ;   jne lp                       ;   jmp cont                     ;lp:                             ;   cmp $0x5, %cx               ;   je cont                        ;   jmp loop27                   ;cont:                           ; mov $0x0e, %ah                ; mov $0x0a, %al                ;   int $0x10                    ;   movb $0x0, -1(%bx, %si)    ;   ret                           
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE2:
	.size	read, .-read
	.section	.rodata
.LC0:
	.string	"Still working.."
	.text
	.globl	help
	.type	help, @function
help:
.LFB3:
	.cfi_startproc
	movl	$.LC0, %ecx
	call	print
	movl	$nl, %ecx
	call	print
#APP
# 143 "mbr.c" 1
	ret
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE3:
	.size	help, .-help
	.globl	quit
	.type	quit, @function
quit:
.LFB4:
	.cfi_startproc
	movl	$.LC0, %ecx
	call	print
	movl	$nl, %ecx
	call	print
#APP
# 152 "mbr.c" 1
	ret
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE4:
	.size	quit, .-quit
	.globl	compare
	.type	compare, @function
compare:
.LFB5:
	.cfi_startproc
	movl	%ecx, %ebx
	movl	%edx, %edi
	movl	%ebx, %esi
#APP
# 160 "mbr.c" 1
	    mov $4, %cx   ;    mov $0x1, %ax     ;    cld                ;    repe  cmpsb        ;    jecxz  equal       ;    mov $0x0, %ax     ;equal:                 ;    ret                ;
# 0 "" 2
#NO_APP
	movl	$0, %eax
	ud2
	.cfi_endproc
.LFE5:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
