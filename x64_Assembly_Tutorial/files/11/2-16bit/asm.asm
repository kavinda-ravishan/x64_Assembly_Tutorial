.data
	result word 0
	remainder word 0
	dividend word 26
	divisor  word 4
.code

ASMFunctionResult proc

	mov ax, dividend
	mov cx, divisor

	xor dx, dx ; make dx zero
	div cx ; ax / cx
	; Result : ax
	; Remainder : dx
	mov result, ax
	mov remainder, dx

	lea rax, word ptr [result]
	ret

ASMFunctionResult endp

ASMFunctionRemainder proc

	mov ax, dividend
	mov cx, divisor

	xor dx, dx ; make dx zero
	div cx ; ax / cx
	; Result : ax
	; Remainder : dx
	mov result, ax
	mov remainder, dx

	lea rax, word ptr [remainder]
	ret

ASMFunctionRemainder endp

end