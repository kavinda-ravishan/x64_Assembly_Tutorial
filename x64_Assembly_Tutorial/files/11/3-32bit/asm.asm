.data
	result dword 0
	remainder dword 0
	dividend dword 7857
	divisor  dword 78
.code

ASMFunctionResult proc

	mov eax, dividend
	mov ecx, divisor

	xor edx,edx ; make edx zero
	div ecx ; eax / ecx
	; Result : eax
	; Remainder : edx
	mov result, eax
	mov remainder, edx

	lea rax, dword ptr [result]
	ret

ASMFunctionResult endp

ASMFunctionRemainder proc

	mov eax, dividend
	mov ecx, divisor

	xor edx,edx ; make edx zero
	div ecx ; eax / ecx
	; Result : eax
	; Remainder : edx
	mov result, eax
	mov remainder, edx

	lea rax, dword ptr [remainder]
	ret

ASMFunctionRemainder endp

end