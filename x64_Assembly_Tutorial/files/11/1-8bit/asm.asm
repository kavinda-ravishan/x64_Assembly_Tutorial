.data
	result byte 0
	remainder byte 0
.code

ASMFunctionResult proc

	mov ax, 13
	mov r8b, 4

	div r8b ; ax / r8b
	; Result : al
	; Remainder : ah
	mov result, al
	mov remainder, ah

	lea rax, byte ptr [result]
	ret

ASMFunctionResult endp

ASMFunctionRemainder proc

	mov ax, 13
	mov r8b, 4

	div r8b ; ax / r8b
	; Result : al
	; Remainder : ah
	mov result, al
	mov remainder, ah

	lea rax, byte ptr [remainder]
	ret

ASMFunctionRemainder endp

end