.data

arr qword 100 dup(0)

.code

ASMFunction proc
	
	mov rcx, 100
	lea r8, qword ptr [arr]
	mov r9, 0
	mov r10, 0

	loopHead:

		inc r9
		add r10, r9
		mov [r8], r10
		
		add r8, 8
		dec rcx
		jnz loopHead
	
	lea rax, qword ptr [arr]
	ret

ASMFunction endp

end