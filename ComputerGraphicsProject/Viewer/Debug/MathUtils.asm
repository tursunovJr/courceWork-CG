; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	c:\Users\User\Desktop\ComputerGraphicsProject\Viewer\MathUtils.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
_EPSILON2 DD	03727c5acr			; 1e-005
CONST	ENDS
PUBLIC	__real@0000000000000000
PUBLIC	__real@3ff0000000000000
PUBLIC	?RayTriangleIntersect@@YA_NAAVVector@@000000@Z	; RayTriangleIntersect
EXTRN	??HVector@@QAE?AV0@AAV0@@Z:PROC			; Vector::operator+
EXTRN	??DVector@@QAE?AV0@M@Z:PROC			; Vector::operator*
EXTRN	??DVector@@QAEMAAV0@@Z:PROC			; Vector::operator*
EXTRN	??TVector@@QAE?AV0@AAV0@@Z:PROC			; Vector::operator^
EXTRN	??GVector@@QAE?AV0@AAV0@@Z:PROC			; Vector::operator-
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT __real@0000000000000000
; File c:\users\user\desktop\computergraphicsproject\viewer\mathutils.cpp
CONST	SEGMENT
__real@0000000000000000 DQ 00000000000000000r	; 0
CONST	ENDS
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?RayTriangleIntersect@@YA_NAAVVector@@000000@Z
_TEXT	SEGMENT
$T33039 = -408						; size = 12
$T33040 = -388						; size = 12
$T33041 = -368						; size = 12
_t$32933 = -156						; size = 4
_v$32930 = -144						; size = 4
_qvec$32928 = -132					; size = 12
_u$ = -112						; size = 4
_tvec$ = -100						; size = 12
_invDet$ = -80						; size = 4
_det$ = -68						; size = 4
_pvec$ = -56						; size = 12
_v2$ = -36						; size = 12
_v1$ = -16						; size = 12
_RayPos$ = 8						; size = 4
_RayDir$ = 12						; size = 4
_P1$ = 16						; size = 4
_P2$ = 20						; size = 4
_P3$ = 24						; size = 4
_ResultPoint$ = 28					; size = 4
_ResultNormal$ = 32					; size = 4
?RayTriangleIntersect@@YA_NAAVVector@@000000@Z PROC	; RayTriangleIntersect, COMDAT

; 7    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 412				; 0000019cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-412]
	mov	ecx, 103				; 00000067H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 8    : 	Vector v1 = P2 - P1;

	mov	eax, DWORD PTR _P1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _P2$[ebp]
	call	??GVector@@QAE?AV0@AAV0@@Z		; Vector::operator-

; 9    : 	Vector v2 = P3 - P1;

	mov	eax, DWORD PTR _P1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _v2$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _P3$[ebp]
	call	??GVector@@QAE?AV0@AAV0@@Z		; Vector::operator-

; 10   : 	Vector pvec = RayDir ^ v2;

	lea	eax, DWORD PTR _v2$[ebp]
	push	eax
	lea	ecx, DWORD PTR _pvec$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _RayDir$[ebp]
	call	??TVector@@QAE?AV0@AAV0@@Z		; Vector::operator^

; 11   : 	float det = v1 * pvec;

	lea	eax, DWORD PTR _pvec$[ebp]
	push	eax
	lea	ecx, DWORD PTR _v1$[ebp]
	call	??DVector@@QAEMAAV0@@Z			; Vector::operator*
	fstp	DWORD PTR _det$[ebp]

; 12   : 	if ((det < EPSILON2) && (det > -EPSILON2))

	fld	DWORD PTR _det$[ebp]
	fld	DWORD PTR _EPSILON2
	fcompp
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN8@RayTriangl
	fld	DWORD PTR _EPSILON2
	fchs
	fld	DWORD PTR _det$[ebp]
	fcompp
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN8@RayTriangl

; 13   : 	{
; 14   : 		return false;

	xor	al, al
	jmp	$LN1@RayTriangl
$LN8@RayTriangl:

; 15   : 	}
; 16   : 	float invDet = 1/det;

	fld	DWORD PTR _det$[ebp]
	fld1
	fdivrp	ST(1), ST(0)
	fstp	DWORD PTR _invDet$[ebp]

; 17   : 	Vector tvec = RayPos - P1;

	mov	eax, DWORD PTR _P1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tvec$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _RayPos$[ebp]
	call	??GVector@@QAE?AV0@AAV0@@Z		; Vector::operator-

; 18   : 	float u = (tvec * pvec) * invDet;

	lea	eax, DWORD PTR _pvec$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tvec$[ebp]
	call	??DVector@@QAEMAAV0@@Z			; Vector::operator*
	fmul	DWORD PTR _invDet$[ebp]
	fstp	DWORD PTR _u$[ebp]

; 19   : 	if ((u < 0) || (u > 1))

	fld	DWORD PTR _u$[ebp]
	fcomp	QWORD PTR __real@0000000000000000
	fnstsw	ax
	test	ah, 5
	jnp	SHORT $LN6@RayTriangl
	fld	DWORD PTR _u$[ebp]
	fcomp	QWORD PTR __real@3ff0000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN7@RayTriangl
$LN6@RayTriangl:

; 20   : 		return false;

	xor	al, al
	jmp	$LN1@RayTriangl

; 21   : 	else 

	jmp	$LN1@RayTriangl
$LN7@RayTriangl:

; 22   : 	{
; 23   : 		Vector qvec = tvec ^ v1;

	lea	eax, DWORD PTR _v1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _qvec$32928[ebp]
	push	ecx
	lea	ecx, DWORD PTR _tvec$[ebp]
	call	??TVector@@QAE?AV0@AAV0@@Z		; Vector::operator^

; 24   : 		float v  = (RayDir * qvec) * invDet;

	lea	eax, DWORD PTR _qvec$32928[ebp]
	push	eax
	mov	ecx, DWORD PTR _RayDir$[ebp]
	call	??DVector@@QAEMAAV0@@Z			; Vector::operator*
	fmul	DWORD PTR _invDet$[ebp]
	fstp	DWORD PTR _v$32930[ebp]

; 25   : 		if ((v < 0) || (u+v > 1))

	fld	DWORD PTR _v$32930[ebp]
	fcomp	QWORD PTR __real@0000000000000000
	fnstsw	ax
	test	ah, 5
	jnp	SHORT $LN3@RayTriangl
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR _v$32930[ebp]
	fcomp	QWORD PTR __real@3ff0000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN4@RayTriangl
$LN3@RayTriangl:

; 26   : 			return false;

	xor	al, al
	jmp	$LN1@RayTriangl
$LN4@RayTriangl:

; 27   : 		float t = (v2 * qvec) * invDet;

	lea	eax, DWORD PTR _qvec$32928[ebp]
	push	eax
	lea	ecx, DWORD PTR _v2$[ebp]
	call	??DVector@@QAEMAAV0@@Z			; Vector::operator*
	fmul	DWORD PTR _invDet$[ebp]
	fstp	DWORD PTR _t$32933[ebp]

; 28   : 		if (t > 0)

	fld	DWORD PTR _t$32933[ebp]
	fcomp	QWORD PTR __real@0000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN2@RayTriangl

; 29   : 		{
; 30   : 			ResultPoint =  RayPos + RayDir * t;

	push	ecx
	fld	DWORD PTR _t$32933[ebp]
	fstp	DWORD PTR [esp]
	lea	eax, DWORD PTR $T33039[ebp]
	push	eax
	mov	ecx, DWORD PTR _RayDir$[ebp]
	call	??DVector@@QAE?AV0@M@Z			; Vector::operator*
	push	eax
	lea	ecx, DWORD PTR $T33040[ebp]
	push	ecx
	mov	ecx, DWORD PTR _RayPos$[ebp]
	call	??HVector@@QAE?AV0@AAV0@@Z		; Vector::operator+
	mov	edx, DWORD PTR _ResultPoint$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR [edx], ecx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [edx+8], eax

; 31   : 			ResultNormal = v1 ^ v2;

	lea	eax, DWORD PTR _v2$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T33041[ebp]
	push	ecx
	lea	ecx, DWORD PTR _v1$[ebp]
	call	??TVector@@QAE?AV0@AAV0@@Z		; Vector::operator^
	mov	edx, DWORD PTR _ResultNormal$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR [edx], ecx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [edx+8], eax

; 32   : 			return true;

	mov	al, 1
	jmp	SHORT $LN1@RayTriangl

; 33   : 		} 
; 34   : 		else 

	jmp	SHORT $LN1@RayTriangl
$LN2@RayTriangl:

; 35   : 			return false;

	xor	al, al
$LN1@RayTriangl:

; 36   : 	}
; 37   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN17@RayTriangl
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 412				; 0000019cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN17@RayTriangl:
	DD	5
	DD	$LN16@RayTriangl
$LN16@RayTriangl:
	DD	-16					; fffffff0H
	DD	12					; 0000000cH
	DD	$LN11@RayTriangl
	DD	-36					; ffffffdcH
	DD	12					; 0000000cH
	DD	$LN12@RayTriangl
	DD	-56					; ffffffc8H
	DD	12					; 0000000cH
	DD	$LN13@RayTriangl
	DD	-100					; ffffff9cH
	DD	12					; 0000000cH
	DD	$LN14@RayTriangl
	DD	-132					; ffffff7cH
	DD	12					; 0000000cH
	DD	$LN15@RayTriangl
$LN15@RayTriangl:
	DB	113					; 00000071H
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	0
$LN14@RayTriangl:
	DB	116					; 00000074H
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	0
$LN13@RayTriangl:
	DB	112					; 00000070H
	DB	118					; 00000076H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	0
$LN12@RayTriangl:
	DB	118					; 00000076H
	DB	50					; 00000032H
	DB	0
$LN11@RayTriangl:
	DB	118					; 00000076H
	DB	49					; 00000031H
	DB	0
?RayTriangleIntersect@@YA_NAAVVector@@000000@Z ENDP	; RayTriangleIntersect
_TEXT	ENDS
END
