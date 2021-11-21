.code

ASMfunction proc
	
	mov r11, 0

	mov r11b, -1		; 8bit (low)
	mov r11w, -1		; 8bit (high)

	mov r11d, -1		; 32bit (low)

	mov r11, -1			; 64bit

	mov rax, 0
	ret
ASMfunction endp
end