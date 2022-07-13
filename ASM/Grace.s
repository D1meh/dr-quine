; comment
%define FILE "Grace_kid.s"
%define MAIN _main
%define CONTENT "; comment%1$c%2$cdefine FILE %3$cGrace_kid.s%3$c%1$c%2$cdefine MAIN _main%1$c%2$cdefine CONTENT %3$c%4$s%3$c%1$c%2$cmacro FT 0%1$csection .text%1$cglobal MAIN%1$cextern _dprintf%1$c%1$cMAIN:%1$center 0, 0%1$clea rdi, [rel f]%1$cmov rsi, 0x601%1$cmov rdx, 0o644%1$cmov rax, 0x2000005%1$csyscall%1$cmov rdi, rax%1$clea rsi, [rel c]%1$clea rdx, 10%1$clea rcx, 37%1$clea r8, 34%1$clea r9, [rel c]%1$ccall _dprintf%1$cleave%1$cret%1$c%1$c%2$cendmacro%1$c%1$cFT%1$c%1$csection .data%1$cf: dw FILE, 0%1$cc: dw CONTENT, 0"
%macro FT 0
section .text
global MAIN
extern _dprintf

MAIN:
enter 0, 0
lea rdi, [rel f]
mov rsi, 0x601
mov rdx, 0o644
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel c]
lea rdx, 10
lea rcx, 37
lea r8, 34
lea r9, [rel c]
call _dprintf
leave
ret

%endmacro

FT

section .data
f: dw FILE, 0
c: dw CONTENT, 0