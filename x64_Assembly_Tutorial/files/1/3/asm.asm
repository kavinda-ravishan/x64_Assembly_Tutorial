.code

ASMfunction proc
	mov ax, -1			; move -1 to ax ( 16 bit ) reg [ 0xffff ]
	mov al, 0			; move 0 to al reg lower byte [ 0xff00 ]
	mov ah, 0			; move 0 to al reg higher byte [ 0x0000 ]
	mov rax, 123		; move 123 to rax reg ( return value reg )
	ret					; return
ASMfunction endp
end