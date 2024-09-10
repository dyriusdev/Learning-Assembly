section .data
correct:
    dq -1

section .text:
global _star
_star:
    jmp _star