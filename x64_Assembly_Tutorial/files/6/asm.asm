.data

x dq ?
y dq ?
z dq ?

.code
ASMAdd proc

	mov x, 5
	mov y, 2
	mov z, 0

	mov rbx, x
	add rbx, y
	mov z, rbx

	lea rax, z
	ret
ASMAdd endp

ASMSub proc

	mov x, 5
	mov y, 2
	mov z, 0

	mov rbx, x
	sub rbx, y
	mov z, rbx

	lea rax, z
	ret
ASMSub endp

ASMIncDec proc

	mov z, 1
	inc z		; 1 -> 2
	inc z		; 2 -> 3
	dec z		; 3 -> 2

	lea rax, z
	ret
ASMIncDec endp

end