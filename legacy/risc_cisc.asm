mov rax, 0x1122334455667788 ; rax = 0x1122334455667788
mov eax, 0x42 ; !rax = 0x00 00 00 00 00 00 00 46
; this way generate an error

mov rax, 0x1122334455667788 ; rax = 0x1122334455667788
mov ax, 0x9999 ; rax = 0x1111222233339999 as expected
; this way work

mov rax, 0x1122334455667788 ; rax = 0x1122334455667788
mov eax, 0x42 ; rax = 0x0000000000000000
; this way generate an error
