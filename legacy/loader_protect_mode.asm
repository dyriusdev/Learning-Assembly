lgdt cs:[_gdtr]

mov eax, cr0 ; Privilege instruction
or al, 1 ; This bit is responsable for the protected mode
mov cr0, eax ; Privilege instruction

; Store the index of last input of GDT + index of GDT
align 16
_gdtr:
    dw 47
    dq _gdt

align 16
_gdt:
    ; find null (must be present in any GDT)
    dd 0x00, 0x00
    ; descriptor for code x32
    db 0xFF, 0xFF, 0x00, 0x00, 0x9A, 0xCF, 0x00 ; diference from bit in execution
    ; descriptor for data x32
    db 0xFF, 0xFF, 0x00, 0x00, 0x92, 0xCF, 0x00 ; disabled execution (0x92)
    ;  size  size  base  base util util|size base
