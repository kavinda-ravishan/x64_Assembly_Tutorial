.data
vByte db 11				; 8bit
vWord dw ?				; 16bit
vDWord dd 12			; 32bit
vQWord dq 1234			; 64bit

vFloat4 real4 12.3		; 32bit (4byte)
vFloat8 real8 123.45	; 64bit (8byte)

.code
ASMfunction proc
	mov al, byte ptr [vByte]	; mov al, vByte 
	mov r11, qword ptr [vQWord]
	mov rax, r11
	ret
ASMfunction endp
end