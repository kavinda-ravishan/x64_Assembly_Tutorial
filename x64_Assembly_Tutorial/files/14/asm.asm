.data

Point struct
	x qword ?
	y qword ?
Point ends

myPoint Point {0, 0}

Line struct
	
	a Point {0, 0}
	b Point {0, 0}

Line ends

line1 Line {\
{11, 22},\
{33, 44}\
}
line2 Line {}

MyStruct struct

	c byte ?
	  byte 3 dup(0) ; padding
	i dword ?
	s dword ?
	  byte 6 dup(0) ; padding
	d real8 ?

MyStruct ends

mystr MyStruct {,,123,,,} ; i = 123

MyStructPacked struct

	c byte ?
	i dword ?
	s dword ?
	d real8 ?

MyStructPacked ends

mystrP MyStructPacked {}

MyClass struct
	
	val dword ?

MyClass ends

MyUnion union
	
	a db ?
	b dw ?
	c dd ?
	d dq ?

MyUnion ends

uni MyUnion {0ffffffffh} ; this put 0xff (255) to a

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

ASMfunction3 proc

	; both work
	lea rax, MyStruct ptr [mystr]
	;lea rax, MyStructPacked ptr [mystrP]

	ret

ASMfunction3 endp

ASMfunction4 proc

	mov [rcx].MyClass.val, 123

	ret

ASMfunction4 endp

ASMfunction5 proc

	mov uni.c, 3400537897
	ret

ASMfunction5 endp

end