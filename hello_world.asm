global _start ; define the entry point of program, in that case is the label _start 

; Section .data is used to storage globals variables 
section .data
message : db "Hello world!", 10 ; db is a instruction that means to storage in bytes and 10 represents to add a new line

; Sections .text is used to storage instructions
section .text
_start:
    mov rax, 1 ; storage in rax the number of the system call
    mov rdi, 1 ; storage on rdi where to write
    mov rsi, message ; storage on rsi where the string begins
    mov rdx, 14 ; storage on rdx how many bytes should be written
    syscall ; make a system call