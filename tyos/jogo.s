	.file	"jogo.c"
	.code16gcc
	.text
	.globl	jogo
	.type	jogo, @function
jogo:
.LFB0:
	.cfi_startproc
#APP
# 29 "jogo.c" 1
	 start:                                       mov   $0x00, %ah           ;        mov   $0x13, %al           ;        int $0x10                   ;        movw   $0xa000, %cx         ;        movw   %cx, %es            ;        mov    $0x0, %si            ;        mov    $0x00, %bx           ;        mov    $0x0a, %al           ;        movb %al, %es:(%bx, %si) ; fundo_azul1:                                 mov    $0x35, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   $0x3200, %si          ;        jne fundo_azul1              ; fundo_azul2:                                 mov    $0x4d, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   $0x6180, %si          ;        jne fundo_azul2              ; fundo_azul3:                                 mov    $0x4c, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   $0xd480, %si          ;        jne fundo_azul3              ; grama:                                        mov    $0x02, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   $0xe100, %si          ;        jne grama                    ; chao:                                        mov    $0xbb, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   $0xfa00, %si          ;        jne chao                     ;        mov    $0x528, %si          ;        mov    $0x00, %dx           ;        mov    $0x532, %cx          ; nuvem1_a:                                    mov    $0x0f, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem1_a                 ;        inc    %dx                  ;        add    $310,  %si           ;        add    $320,  %cx           ;        cmp    $0x05, %dx           ;        jne nuvem1_a                 ;        mov    $0xb5e, %si          ;        mov    $0x00, %dx           ;        mov    $0xb7c, %cx          ; nuvem1_b:                                    movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem1_b                 ;        inc    %dx                  ;        add    $290,  %si           ;        add    $320,  %cx           ;        cmp    $0x07, %dx           ;        jne nuvem1_b                 ;        mov    $0x1414, %si         ;        mov    $0x00, %dx           ;        mov    $0x1446, %cx         ; nuvem1_c:                                    movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem1_c                 ;        inc    %dx                  ;        add    $270,  %si           ;        add    $320,  %cx           ;        cmp    $0x0a, %dx           ;        jne nuvem1_c                 ;        mov    $0x120c, %si         ;        mov    $0x00, %dx           ;        mov    $0x1216, %cx         ; nuvem2_a:                                     movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem2_a                 ;        inc    %dx                  ;        add    $310,  %si           ;        add    $320,  %cx           ;        cmp    $0x05, %dx           ;        jne nuvem2_a                 ;        mov    $0x1842, %si         ;        mov    $0x00, %dx           ;        mov    $0x1860, %cx         ; nuvem2_b:                                    movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem2_b                 ;        inc    %dx                  ;        add    $290,  %si           ;        add    $320,  %cx           ;        cmp    $0x07, %dx           ;        jne nuvem2_b                 ;        mov    $0x20f8, %si         ;        mov    $0x00, %dx           ;        mov    $0x212a, %cx         ; nuvem2_c:                                    movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne nuvem2_c                 ;        inc    %dx                  ;        add    $270,  %si           ;        add    $320,  %cx           ;        cmp    $0x0a, %dx           ;        jne nuvem2_c                 ;        mov    $0xb55e, %si         ;        mov    $0x00, %dx           ;        mov    $0xb577, %cx         ; personagem:                                  mov    $0x26, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne personagem               ;        inc    %dx                  ;        add    $295,  %si           ;        add    $320,  %cx           ;        cmp    $0x19, %dx           ;        jne personagem               ;        mov    $0x00, %dx           ; inicio:                                      mov    $0xb67f, %si         ;        mov    $0xb67f, %cx         ; obst_nascendo:                               mov    $0x01, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %dl                  ;        add    $320,  %si           ;        cmp    $0x19, %dl           ;        jne obst_nascendo            ;        cmp    $0x00, %dh           ;        jne salto                    ;        jmp tecla_nao_apertada       ; obst_morrendo:                               add    $25,  %si            ;        mov    $0x4c, %al           ;        movb %al, %es:(%bx, %si) ;        sub    $25,  %si            ;        inc    %dl                  ;        add    $320,  %si           ;        cmp    $0x19, %dl           ;        jne obst_morrendo            ;        cmp    $0x00, %dh           ;        jne salto                    ;        jmp tecla_nao_apertada       ; obst_andando:                               movb  %es:(%bx, %si),%al ;        cmp    $0x26, %al           ;        je game_over                 ;        mov    $0x01, %al           ;        movb %al, %es:(%bx, %si) ;        add    $25,  %si            ;        movb  %es:(%bx, %si),%al ;        cmp    $0x26, %al           ;        je game_over                 ;        mov    $0x4c, %al           ;        movb %al, %es:(%bx, %si) ;        sub    $25,  %si            ;        inc    %dl                  ;        add    $320,  %si           ;        cmp    $0x19, %dl           ;        jne obst_andando             ;        cmp    $0x00, %dh           ;        jne salto                    ;        jmp tecla_nao_apertada       ; tecla_apertada:                              inc    %dh                  ;        mov    $0x00, %ah           ;        int    $0x16                 ;        mov    $0x00, %ah           ;        mov    $0xd35e, %di         ; salto_a:                                     mov    $0x4c, %al           ;        movb %al, %es:(%bx, %di) ;        inc    %ah                  ;        inc    %di                  ;        cmp    $25, %ah             ;        jne  salto_a                 ;        mov    $0x0, %ah            ; salto_b:                                     mov    $0x26, %al           ;        sub    $8025,  %di         ;        movb %al, %es:(%bx, %di) ;        add    $8025,  %di          ;        inc    %ah                  ;        inc    %di                  ;        cmp    $25, %ah             ;        jne  salto_b                 ;        jmp sleep                    ; subindo:                                     sub    $370, %di            ;        mov    $0x00, %ah           ;        jmp salto_a                  ; queda_a:                                     mov    $0x26, %al           ;        movb %al, %es:(%bx, %di) ;        inc    %ah                  ;        inc    %di                  ;        cmp    $25, %ah             ;        jne  queda_a                 ;        mov    $0x0, %ah            ; queda_b:                                     mov    $0x4c, %al           ;        sub    $8025,  %di          ;        movb %al, %es:(%bx, %di) ;        add    $8025,  %di          ;        inc    %ah                  ;        inc    %di                  ;        cmp    $25, %ah             ;        jne  queda_b                 ;        jmp sleep                    ; descendo:                                    add    $270, %di            ;        mov    $0x00, %ah           ;        jmp queda_a                  ; descer:                                      sub    $50, %di             ;        jmp queda_a                  ; tecla_nao_apertada:                           mov    $0x01, %ah           ;        int    $0x16                 ;        lahf                         ;        cmp    $0x28, %ah           ;        jbe   tecla_apertada         ; sleep:                                       mov    %cx, %bx            ;        mov    $0x0, %cx            ;        mov    %dh, %al            ;        mov    $0xff0, %dx          ;        mov    $0x86, %ah           ;        int    $0x15                 ;        mov    %bx, %cx            ;        mov    $0x0, %bx            ;        mov    %al, %dh            ; mov_bloco:                                   dec    %cx                  ;        mov    %cx, %si            ;        mov    $0x00, %dl           ;        cmp    $0xb527, %cx         ;        je  inicio                   ;        cmp    $0xb540, %cx         ;        jbe obst_morrendo            ;        cmp    $0xb666, %cx         ;        jbe obst_andando             ;        jmp obst_nascendo            ; salto:                                       inc    %dh                  ;        cmp    $126, %dh            ;        jg   final_apertada          ;        mov    %cx, %bx            ;        mov    $0x0, %cx            ;        mov    %dh, %al            ;        mov    $0xff0, %dx          ;        mov    $0x86, %ah           ;        int    $0x15                 ;        mov    %bx, %cx            ;        mov    $0x0, %bx            ;        mov    %al, %dh            ;        cmp    $64, %dh             ;        jb   subindo                 ;        mov    $0x00, %ah           ;        cmp    $64, %dh             ;        je  descer                   ;        cmp    $64, %dh             ;        jg  descendo                 ; final_apertada:                              mov    $0xb55e, %si         ;        mov    $0x00, %ah           ;        mov    %cx, %dx            ;        mov    $0xb577, %cx         ; personagem_bug:                     ;        mov    $0x26, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp   %cx, %si             ;        jne personagem_bug           ;        inc    %ah                  ;        add    $295,  %si           ;        add    $320,  %cx           ;        cmp    $0x19, %ah           ;        jne personagem_bug           ;        mov    %dx, %cx            ;        mov    $0x00, %dh           ;        jmp tecla_nao_apertada       ; again:                                      mov    $0x00, %ah           ;        int    $0x16                 ;        cmp    $0x0d, %al           ;        je   start                   ;        jmp   loop_fim               ; game_over:                                   mov    $0x00, %si           ; end:                                         mov    $0x05, %al           ;        movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp    $0xfa00, %si         ;        jb   end                     ; f:                                           mov    $4, %si              ;        mov    $0x0f, %al           ;        mov    $8, %cx              ; f_a:                                         movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp    %cx ,  %si          ;        jb   f_a                     ;        mov    $4, %si              ;        mov    $1604,%cx            ; f_b:                                         movb %al, %es:(%bx, %si) ;        add    $320, %si            ;        cmp    %cx ,  %si          ;        jb   f_b                     ;        mov    $644, %si            ;        mov    $646,%cx             ; f_c:                                         movb %al, %es:(%bx, %si) ;        inc    %si                  ;        cmp    %cx ,  %si          ;        jb   f_c                     ; i:                                           mov    $12, %si             ;        mov    $1612, %cx           ; i_a:                                         movb %al, %es:(%bx, %si) ;        add    $320, %si            ;        cmp    %cx ,  %si          ;        jb   i_a                     ; m:                                           mov    $16, %si             ;        mov    $1616, %cx           ; m_a:                                         movb %al, %es:(%bx, %si) ;        add    $320, %si            ;        cmp    %cx ,  %si          ;        jb   m_a                     ;        mov    $337, %si            ;        movb %al, %es:(%bx, %si) ;        mov    $658, %si            ;        movb %al, %es:(%bx, %si) ;        mov    $979, %si            ;        movb %al, %es:(%bx, %si) ;        mov    $660, %si            ;        movb %al, %es:(%bx, %si) ;        mov    $341, %si            ;        movb %al, %es:(%bx, %si) ;        mov    $22, %si             ;        mov    $1622,%cx            ; m_b:                                         movb %al, %es:(%bx, %si) ;        add    $320, %si            ;        cmp    %cx ,  %si          ;        jb   m_b                     ; loop_fim:                                    mov    $0x01, %ah           ;        int    $0x16                 ;        lahf                         ;        cmp    $0x28, %ah           ;        jbe   again                  ;        jmp   loop_fim               ;        ret                          ;
# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	jogo, .-jogo
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits