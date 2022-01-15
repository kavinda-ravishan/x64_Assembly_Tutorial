.data
	var1 qword 0
	var2 qword 0

	floatVar real4 3.144
	doubleVar real8 123.456
.code

ASMfunction1 proc
	
	mov var1, rcx
	lea rax, qword ptr [var1]

	ret

ASMfunction1 endp

ASMfunction2 proc
	
	mov var2, rdx
	lea rax, qword ptr [var2]

	ret

ASMfunction2 endp

ASMfunction3 proc
	
	mov [r8], rcx
	mov [r9], rdx

	ret

ASMfunction3 endp

ASMfunction4 proc
	
	; xmm0 = input parameter
	; return xmm0
	ret

ASMfunction4 endp

ASMfunction5 proc
	
	mov rax, rcx
	ret
ASMfunction5 endp

ASMfunction6 proc

	movss xmm0, floatVar
	ret

ASMfunction6 endp

ASMfunction7 proc

	movsd xmm0, doubleVar
	ret

ASMfunction7 endp


end