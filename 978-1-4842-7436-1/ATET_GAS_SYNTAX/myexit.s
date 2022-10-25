# My first program. This is a comment.

.globl _start
.section .text
_start:
movq $60, %rax # move o valor 60 para o registrador rax
movq $55, %rdi # move o valor 55 para o registrador rdi
addq %rax, %rdi #soma dois valores 
syscall 