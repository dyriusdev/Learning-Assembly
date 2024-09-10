section .data
correct:
    dq -1

section .text
global _start
_start:
    mov rax, [0x40000 - 1]
    ;out
    mov rax, 60
    xor rdi, rdi
    syscall