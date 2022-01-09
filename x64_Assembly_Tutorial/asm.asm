.data
	var1 qword 0
	var2 qword 0
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
	

	ret

ASMfunction4 endp

end