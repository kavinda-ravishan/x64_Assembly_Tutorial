.data

lastFlag qword 0

.code

RestoreFlags proc
	
	push qword ptr [lastFlag]
	popfq
	ret

RestoreFlags endp

SaveFlags proc

	pushfq
	pop qword ptr [lastFlag]
	ret

SaveFlags endp

shiftTest proc
	
	mov rdx, qword ptr [rcx]

	call RestoreFlags

	;shl rdx, 1
	;shr rdx, 1
	
	;rol rdx, 1 ; rotate left
	;ror rdx, 1 ; rotate Right
	
	;rcl rdx, 1 ; rotate left with carry flag (act like 64 + 1 or 65bit number)
	;rcr rdx, 1 ; rotate Right with carry flag (act like 64 + 1 or 65bit number)

	mov qword ptr [rcx], rdx

	mov eax, 0
	mov ecx, 1
	cmovc eax, ecx

	call SaveFlags

	ret
shiftTest endp

shiftDoubleTest proc

	push rbx

	mov rax, qword ptr [rcx]
	mov rbx, qword ptr [rdx]

	shrd rax, rbx, 12

	mov qword ptr [rcx], rax

	pop rbx
	ret

shiftDoubleTest endp

end