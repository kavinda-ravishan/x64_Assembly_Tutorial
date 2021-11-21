.data

arr qword 100 dup(0)			; for store triangular numbers

.code

ASMFunction proc
	
	mov rcx, 100				; counter variable
	lea r8, qword ptr [arr]		; pointer to arr
	mov r9, 0
	mov r10, 0

	loopHead:

		inc r9					; incriment r9 by 1
		add r10, r9				; r10 = r10 + r9 ( calculate the next triangular number )
		mov [r8], r10			; store result in arr ( r8 point to arr )
		
		add r8, 8				; add 8 for get next element (qword is 64bit or 8byte)
		dec rcx					; decriment rcx
		jnz loopHead			; jump back to loophead if rcx not equal to zero
	
	lea rax, qword ptr [arr]
	ret

ASMFunction endp

end