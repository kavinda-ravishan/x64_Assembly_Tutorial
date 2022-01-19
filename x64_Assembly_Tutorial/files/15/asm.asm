.data

vec1 dword 0, 1, 2, 3
vec2 dword 5, 5, 5, 5

floatvec1 real4 0.1, 1.0, 2.3, 3.0
floatvec2 real4 7.0, 6.2, 5.1, 4.0

doublevec1 real8 0.1, 1.0
doublevec2 real8 7.0, 6.2

.code

ASMfunction1 proc

	movdqu xmm0, xmmword ptr [vec1]
	movdqu xmm1, xmmword ptr [vec2]

	paddd xmm0, xmm1

	ret

ASMfunction1 endp

ASMfunction2 proc

	movdqu xmm0, xmmword ptr [vec1]
	movdqu xmm1, xmmword ptr [vec2]

	psubd xmm0, xmm1

	ret

ASMfunction2 endp

ASMfunction3 proc

	movaps xmm0, xmmword ptr [floatvec1]
	movaps xmm1, xmmword ptr [floatvec2]

	addps xmm0, xmm1 ; add packed singles

	ret

ASMfunction3 endp

ASMfunction4 proc

	movaps xmm0, xmmword ptr [floatvec1]
	movaps xmm1, xmmword ptr [floatvec2]

	subps xmm0, xmm1

	ret

ASMfunction4 endp

ASMfunction5 proc

	movaps xmm0, xmmword ptr [floatvec1]
	movaps xmm1, xmmword ptr [floatvec2]

	mulps xmm0, xmm1

	ret

ASMfunction5 endp

ASMfunction6 proc

	movaps xmm0, xmmword ptr [floatvec1]
	movaps xmm1, xmmword ptr [floatvec2]

	divps xmm0, xmm1

	ret

ASMfunction6 endp

ASMfunction7 proc

	movapd xmm0, xmmword ptr [doublevec1]
	movapd xmm1, xmmword ptr [doublevec2]

	addpd xmm0, xmm1 ; add packed doubles

	ret

ASMfunction7 endp

end