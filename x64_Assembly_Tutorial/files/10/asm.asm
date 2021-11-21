.data

arr qword 10 dup(0)

.code

conditionalJumpsZ proc
	
	mov rcx, 10
	lea r8, qword ptr [arr]
	
	loopHead:
		mov [r8], rcx
		add r8, 8
		dec rcx
		jnz loopHead
	
	lea rax, qword ptr [arr]
	ret

conditionalJumpsZ endp

conditionalJumpsMC proc
	
	mov r8, 1
	mov rax, 0
	mov r9, -1
	add r9, 1
	cmovc rax, r8
	
	ret

conditionalJumpsMC endp

conditionalJumpsOF proc
	
	mov r8, 135 
	add r8, 1
	
	jo overFlowed
	jno didntOverFlowed

	overFlowed:
		mov rax, 1

	didntOverFlowed:
		mov rax, 0
	
	ret

conditionalJumpsOF endp

end