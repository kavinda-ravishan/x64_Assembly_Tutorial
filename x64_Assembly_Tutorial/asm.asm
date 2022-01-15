.data

.code

ASMfunction1 proc
	
	xor rax, rax ; rax = 0

	cmp rcx, rdx ; a, b
	jl ECXLess ; jl : jump if less
	jmp finished
	
ECXLess:
	mov rax, 1


finished:
	ret

ASMfunction1 endp

ASMfunction2 proc
	
	xor rax, rax ; rax = 0
	mov r8, 1

	cmp rcx, rdx ; a, b
	cmovl rax, r8 ; mov if less

	ret

ASMfunction2 endp

ASMfunction3 proc
	
	mov r8, 1

	xor r9, r9
	xor r10, r10
	
	cmp rcx, 10
	cmove r9, r8 ; mov 1 to r9 ( if a == 10 )
	cmp rdx, 20
	cmove r10, r8 ; mov 1 to r10 (if b == 20)

	and r9, r10 ; ( a == 10 and b == 20 )
 	mov rax, r9

	ret

ASMfunction3 endp

ASMfunction4 proc

	; rcx : arr
	; rdx : size

	xor r8, r8 ; counter

	cmp r8, rdx
	jge LoopEnd
LoopHead:

	mov qword ptr[rcx], r8
	add rcx, 8

	inc r8
	cmp r8, rdx
	jl LoopHead
LoopEnd:

	ret

ASMfunction4 endp

ASMfunction5 proc

	; rcx : arr
	; rdx : size

	xor r8, r8 ; counter

LoopHead:

	mov qword ptr[rcx], r8
	add rcx, 8

	inc r8
	cmp r8, rdx
	jl LoopHead
LoopEnd:

	ret

ASMfunction5 endp

ASMfunction6 proc

	; rcx : arr
	; rdx : size
    xor r8, r8

LoopHead:

	mov qword ptr[rcx+r8], rdx
	add r8, 8

	dec rdx
	jnz LoopHead

	ret

ASMfunction6 endp

end