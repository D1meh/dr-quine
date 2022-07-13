section .text
global _main
extern _sprintf
extern _dprintf
extern _system
extern _access

_main:
enter 0, 0
lea rdi, [rel buffFile]
lea rsi, [rel file]
lea rdx, 5
mov r12, rdx
cmp rdx, 0
jle end
call _sprintf
lea rdi, [rel buffFile]
lea rsi, 0
call _access
cmp rax, 0
je changefile
jmp suite

changefile:
dec r12
lea rdi, [rel buffFile]
lea rsi, [rel file]
mov rdx, r12
call _sprintf
jmp suite

suite:
lea rdi, [rel buffExec]
lea rsi, [rel exec]
mov rdx, r12
call _sprintf
lea rdi, [rel buffObj]
lea rsi, [rel obj]
mov rdx, r12
call _sprintf
lea rdi, [rel buffCmd]
lea rsi, [rel cmd]
lea rdx, [rel buffFile]
lea rcx, [rel buffExec]
lea r8, [rel buffObj]
call _sprintf
lea rdi, [rel buffProg]
lea rsi, [rel prog]
lea rdx, [rel buffExec]
call _sprintf
lea rdi, [rel buffFile]
mov rsi, 0x601
mov rdx, 0o644
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel s]
lea rdx, 10
lea rcx, 34
lea r8, [rel s]
mov r9, r12
call _dprintf
lea rdi, [rel buffCmd]
call _system
cmp r12, 0
jg launch_prog
leave
ret

launch_prog:
lea rdi, [rel buffProg]
call _system
leave
ret

end:
leave
ret

section .data
s: dw "section .text%1$cglobal _main%1$cextern _sprintf%1$cextern _dprintf%1$cextern _system%1$cextern _access%1$c%1$c_main:%1$center 0, 0%1$clea rdi, [rel buffFile]%1$clea rsi, [rel file]%1$clea rdx, %4$d%1$cmov r12, rdx%1$ccmp rdx, 0%1$cjle end%1$ccall _sprintf%1$clea rdi, [rel buffFile]%1$clea rsi, 0%1$ccall _access%1$ccmp rax, 0%1$cje changefile%1$cjmp suite%1$c%1$cchangefile:%1$cdec r12%1$clea rdi, [rel buffFile]%1$clea rsi, [rel file]%1$cmov rdx, r12%1$ccall _sprintf%1$cjmp suite%1$c%1$csuite:%1$clea rdi, [rel buffExec]%1$clea rsi, [rel exec]%1$cmov rdx, r12%1$ccall _sprintf%1$clea rdi, [rel buffObj]%1$clea rsi, [rel obj]%1$cmov rdx, r12%1$ccall _sprintf%1$clea rdi, [rel buffCmd]%1$clea rsi, [rel cmd]%1$clea rdx, [rel buffFile]%1$clea rcx, [rel buffExec]%1$clea r8, [rel buffObj]%1$ccall _sprintf%1$clea rdi, [rel buffProg]%1$clea rsi, [rel prog]%1$clea rdx, [rel buffExec]%1$ccall _sprintf%1$clea rdi, [rel buffFile]%1$cmov rsi, 0x601%1$cmov rdx, 0o644%1$cmov rax, 0x2000005%1$csyscall%1$cmov rdi, rax%1$clea rsi, [rel s]%1$clea rdx, 10%1$clea rcx, 34%1$clea r8, [rel s]%1$cmov r9, r12%1$ccall _dprintf%1$clea rdi, [rel buffCmd]%1$ccall _system%1$ccmp r12, 0%1$cjg launch_prog%1$cleave%1$cret%1$c%1$claunch_prog:%1$clea rdi, [rel buffProg]%1$ccall _system%1$cleave%1$cret%1$c%1$cend:%1$cleave%1$cret%1$c%1$csection .data%1$cs: dw %2$c%3$s%2$c, 0%1$ci: times 2 dw 0%1$cfile: dw %2$cSully_%%d.s%2$c, 0%1$cobj: dw %2$cSully_%%d.o%2$c, 0%1$cexec: dw %2$cSully_%%d%2$c, 0%1$ccmd: dw %2$cnasm -f macho64 %%s && gcc -o %%s %%s%2$c, 0%1$cprog: dw %2$c./%%s%2$c, 0%1$cbuffFile: times 50 dw 0%1$cbuffObj: times 50 dw 0%1$cbuffExec: times 50 dw 0%1$cbuffCmd: times 50 dw 0%1$cbuffProg: times 50 dw 0", 0
i: times 2 dw 0
file: dw "Sully_%d.s", 0
obj: dw "Sully_%d.o", 0
exec: dw "Sully_%d", 0
cmd: dw "nasm -f macho64 %s && gcc -o %s %s", 0
prog: dw "./%s", 0
buffFile: times 50 dw 0
buffObj: times 50 dw 0
buffExec: times 50 dw 0
buffCmd: times 50 dw 0
buffProg: times 50 dw 0