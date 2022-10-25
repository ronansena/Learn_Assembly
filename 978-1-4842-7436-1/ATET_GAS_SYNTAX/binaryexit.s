.section .text
.globl _start
_start:
movq $0b110100100, %rdi
movq $60, %rax
syscall
