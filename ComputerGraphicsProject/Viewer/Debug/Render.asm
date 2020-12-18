; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	c:\Users\User\Desktop\ComputerGraphicsProject\Viewer\Render.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?CurrentRenderMode@@3W4RENDER_MODE@@A		; CurrentRenderMode
_BSS	SEGMENT
?CurrentRenderMode@@3W4RENDER_MODE@@A DD 01H DUP (?)	; CurrentRenderMode
_BSS	ENDS
PUBLIC	__real@3ff0000000000000
PUBLIC	__real@0000000000000000
PUBLIC	__real@c059000000000000
PUBLIC	__real@4059000000000000
PUBLIC	?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z		; SwitchRenderMode
EXTRN	__imp__glPopAttrib@0:PROC
EXTRN	__imp__glPopMatrix@0:PROC
EXTRN	__imp__glDepthMask@4:PROC
EXTRN	__imp__glBlendFunc@8:PROC
EXTRN	__imp__glDisable@4:PROC
EXTRN	__imp__glOrtho@48:PROC
EXTRN	__imp__glLoadIdentity@0:PROC
EXTRN	__imp__glPushMatrix@0:PROC
EXTRN	__imp__glMatrixMode@4:PROC
EXTRN	__imp__glPushAttrib@4:PROC
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT __real@3ff0000000000000
; File c:\users\user\desktop\computergraphicsproject\viewer\render.cpp
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT __real@0000000000000000
CONST	SEGMENT
__real@0000000000000000 DQ 00000000000000000r	; 0
CONST	ENDS
;	COMDAT __real@c059000000000000
CONST	SEGMENT
__real@c059000000000000 DQ 0c059000000000000r	; -100
CONST	ENDS
;	COMDAT __real@4059000000000000
CONST	SEGMENT
__real@4059000000000000 DQ 04059000000000000r	; 100
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
;	COMDAT ?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z
_TEXT	SEGMENT
tv64 = -196						; size = 4
_mode$ = 8						; size = 4
?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z PROC		; SwitchRenderMode, COMDAT

; 6    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 7    : 	switch (mode)

	mov	eax, DWORD PTR _mode$[ebp]
	mov	DWORD PTR tv64[ebp], eax
	cmp	DWORD PTR tv64[ebp], 1
	je	SHORT $LN6@SwitchRend
	cmp	DWORD PTR tv64[ebp], 2
	je	SHORT $LN4@SwitchRend
	cmp	DWORD PTR tv64[ebp], 3
	je	$LN2@SwitchRend
	jmp	$LN7@SwitchRend
$LN6@SwitchRend:

; 8    : 	{
; 9    : 	case RENDERMODE_3D:
; 10   : 		if (CurrentRenderMode!= RENDERMODE_3D)

	cmp	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 1 ; CurrentRenderMode
	je	SHORT $LN5@SwitchRend

; 11   : 		{
; 12   : 			SwitchRenderMode(RENDERMODE_RESTORE_LAST);

	push	3
	call	?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z	; SwitchRenderMode
	add	esp, 4

; 13   : 			CurrentRenderMode = RENDERMODE_3D;

	mov	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 1 ; CurrentRenderMode
$LN5@SwitchRend:

; 14   : 		}
; 15   : 		break;

	jmp	$LN7@SwitchRend
$LN4@SwitchRend:

; 16   : 	case RENDERMODE_2D:
; 17   : 		if (CurrentRenderMode!= RENDERMODE_2D)

	cmp	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 2 ; CurrentRenderMode
	je	$LN3@SwitchRend

; 18   : 		{
; 19   : 			SwitchRenderMode(RENDERMODE_RESTORE_LAST);

	push	3
	call	?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z	; SwitchRenderMode
	add	esp, 4

; 20   : 			glPushAttrib(GL_BLEND | GL_DRAW_BUFFER | GL_COLOR_BUFFER_BIT |
; 21   : 				GL_LOGIC_OP | GL_DEPTH_BUFFER_BIT |
; 22   : 				GL_DEPTH_TEST | GL_ENABLE_BIT | GL_LIGHTING_BIT | 
; 23   : 				GL_STENCIL_BUFFER_BIT );

	mov	esi, esp
	push	28659					; 00006ff3H
	call	DWORD PTR __imp__glPushAttrib@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 24   : 			glMatrixMode(GL_PROJECTION);

	mov	esi, esp
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 25   : 			glPushMatrix();

	mov	esi, esp
	call	DWORD PTR __imp__glPushMatrix@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 26   : 			glLoadIdentity();

	mov	esi, esp
	call	DWORD PTR __imp__glLoadIdentity@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 27   : 			glOrtho(0, 1, 1, 0, -100, 100);

	mov	esi, esp
	sub	esp, 8
	fld	QWORD PTR __real@4059000000000000
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fld	QWORD PTR __real@c059000000000000
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fldz
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fld1
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fld1
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fldz
	fstp	QWORD PTR [esp]
	call	DWORD PTR __imp__glOrtho@48
	cmp	esi, esp
	call	__RTC_CheckEsp

; 28   : 			glMatrixMode(GL_MODELVIEW);

	mov	esi, esp
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 29   : 			glPushMatrix();

	mov	esi, esp
	call	DWORD PTR __imp__glPushMatrix@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 30   : 			glLoadIdentity();

	mov	esi, esp
	call	DWORD PTR __imp__glLoadIdentity@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 31   : 			glDisable(GL_DEPTH_TEST);

	mov	esi, esp
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 32   : 			glBlendFunc(GL_ONE,GL_ONE);

	mov	esi, esp
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
	cmp	esi, esp
	call	__RTC_CheckEsp

; 33   : 			glDepthMask(FALSE);

	mov	esi, esp
	push	0
	call	DWORD PTR __imp__glDepthMask@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 34   : 			CurrentRenderMode = RENDERMODE_2D;

	mov	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 2 ; CurrentRenderMode
$LN3@SwitchRend:

; 35   : 		}
; 36   : 		break;

	jmp	SHORT $LN7@SwitchRend
$LN2@SwitchRend:

; 37   : 	case RENDERMODE_RESTORE_LAST:
; 38   : 		if (CurrentRenderMode == RENDERMODE_2D)

	cmp	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 2 ; CurrentRenderMode
	jne	SHORT $LN1@SwitchRend

; 39   : 		{
; 40   : 			glMatrixMode(GL_PROJECTION);

	mov	esi, esp
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 41   : 			glPopMatrix();

	mov	esi, esp
	call	DWORD PTR __imp__glPopMatrix@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 42   : 			glMatrixMode(GL_MODELVIEW);

	mov	esi, esp
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 43   : 			glPopMatrix();

	mov	esi, esp
	call	DWORD PTR __imp__glPopMatrix@0
	cmp	esi, esp
	call	__RTC_CheckEsp

; 44   : 			glPopAttrib();

	mov	esi, esp
	call	DWORD PTR __imp__glPopAttrib@0
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@SwitchRend:

; 45   : 		}
; 46   : 		CurrentRenderMode = NONE;

	mov	DWORD PTR ?CurrentRenderMode@@3W4RENDER_MODE@@A, 0 ; CurrentRenderMode
$LN7@SwitchRend:

; 47   : 		break;
; 48   : 	}
; 49   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 196				; 000000c4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?SwitchRenderMode@@YAXW4RENDER_MODE@@@Z ENDP		; SwitchRenderMode
_TEXT	ENDS
END