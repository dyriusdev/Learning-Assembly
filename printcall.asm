section .data
newline:
    db 10
codes:
    db "0123456789ABCDEF"

section .text
global _start

printNew:
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    ret

printHex:
    mov rax, rdi
    mov rdi, 1
    mov rdx, 1
    mov rcx, 64

iterative:
    push rax
    sub rcx, 4
    sar rax, cl
    
    and rax, 0xf
    lea rsi, [codes + rax]

    mov rax, 1

    push rcx
    syscall

    pop rcx

    pop rax
    test rcx, rcx
    jnz iterative
    ret

_start:
    mov rdi, 0x1122334455667788
    call printHex
    call printNew

    mov rax, 60
    xor rdi, rdi
    syscall