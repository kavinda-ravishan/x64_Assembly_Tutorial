.data
	result qword 0
	remainder qword 0
	dividend qword 7857
	divisor  qword 78
.code

ASMFunctionResult proc

	mov rax, dividend
	mov rcx, divisor

	xor rdx,rdx ; make rdx zero
	div rcx ; rax / rcx
	; Result : rax
	; Remainder : rdx
	mov result, rax
	mov remainder, rdx

	lea rax, dword ptr [result]
	ret

ASMFunctionResult endp

ASMFunctionRemainder proc

	mov rax, dividend
	mov rcx, divisor

	xor rdx,rdx ; make rdx zero
	div rcx ; rax / rcx
	; Result : rax
	; Remainder : rdx
	mov result, rax
	mov remainder, rdx

	lea rax, dword ptr [remainder]
	ret

ASMFunctionRemainder endp

end