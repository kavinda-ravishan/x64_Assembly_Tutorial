.data

.code

flagsFunction proc
	
	pushfq			; push flags reg to stack
	pop rax			; pop flags and store in rax reg

	;change the flags rax

	push rax		; push rax to stack
	popfq			; pop stack reg in to flags reg

	ret

flagsFunction endp

end