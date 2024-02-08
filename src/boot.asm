[bits 16]
[org 0x7c00]

message: db "Hello, World!", 0x10, 0

mov ah, 0x0e
mov si, message
int 0x10
hlt

times 510-($-$$) db 0
dw 0xAA55