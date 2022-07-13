section .text
global _main
extern _printf
; comment outside the main

_main:
enter 0, 0 ; comment outside the main
lea rdi, [rel s]
lea rsi, 10
lea rdx, 34
lea rcx, [rel s]
call _printf
leave
jmp otherfunction

otherfunction:
mov rax, 0
ret

section .data
s: dw "section .text%1$cglobal _main%1$cextern _printf%1$c; comment outside the main%1$c%1$c_main:%1$center 0, 0 ; comment outside the main%1$clea rdi, [rel s]%1$clea rsi, 10%1$clea rdx, 34%1$clea rcx, [rel s]%1$ccall _printf%1$cleave%1$cjmp otherfunction%1$c%1$cotherfunction:%1$cmov rax, 0%1$cret%1$c%1$csection .data%1$cs: dw %2$c%3$s%2$c, 0", 0