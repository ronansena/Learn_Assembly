.globl _start
# Program Data
.section .data
first_value:
.quad 4
second_value:
.quad 6
.section .text
_start:
movq first_value, %rdi
# Perform the computation
addq second_value, %rdi
# Return the value to the operating system
movq $60, %rax
syscall
