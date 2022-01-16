.data

Point struct
	x qword ?
	y qword ?
Point ends

myPoint Point {0, 0}

MyStruct struct

	c byte ?
	  byte 3 dup(0) ; padding
	i dword ?
	s dword ?
	  byte 6 dup(0) ; padding
	d real8 ?

MyStruct ends

MyStructPacked struct

	c byte ?
	i dword ?
	s dword ?
	d real8 ?

MyStructPacked ends

.code

ASMfunction1 proc

	mov myPoint.x, 123
	mov myPoint.y, 456

	lea rax, Point ptr [myPoint]

	ret

ASMfunction1 endp

ASMfunction2 proc

	mov [rcx].Point.x, 234
	mov [rcx].Point.y, 678

	ret

ASMfunction2 endp

end