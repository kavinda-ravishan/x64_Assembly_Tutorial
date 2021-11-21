.data

x dq ?

.code
ASMfunction proc
	
	lea rbx, x					; move memomy add of x to rax reg
	mov qword ptr [rbx], 123	; rbs point to var x and move 123 to x
	
	mov rax, x
	ret
ASMfunction endp
end