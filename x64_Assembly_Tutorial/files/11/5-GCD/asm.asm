.data

	var qword 0

.code

GCD_ASM proc
	
	mov r8, rcx
	mov r9, rdx

	cmp r8, 0
	je Finished
	cmp r9, 0
	je Finished
	
LoopHead:
	xor rdx, rdx
	mov r10, r9
	mov rax, r8
	div r9 ; r8/r9
	mov r9, rdx ; Remainder to r9 (r8 % r9)
	mov r8, r10
	cmp r9, 0
	jne LoopHead
	mov var, r8
	lea rax, qword ptr [var]
	ret


Finished:
	mov var, 0

	lea rax, qword ptr [var]
	ret

GCD_ASM endp

end