; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	c:\Users\User\Desktop\ComputerGraphicsProject\Viewer\imgLoad.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?GetStride@Image@@QAEKXZ			; Image::GetStride
PUBLIC	?GetData@Image@@QAEPAXXZ			; Image::GetData
PUBLIC	??5IOFile@@QAEAAV0@AAG@Z			; IOFile::operator>>
PUBLIC	??5IOFile@@QAEAAV0@AAJ@Z			; IOFile::operator>>
PUBLIC	?IsEOF@IOFile@@QAE_NXZ				; IOFile::IsEOF
PUBLIC	??5IOFile@@QAEAAV0@AAK@Z			; IOFile::operator>>
PUBLIC	??5IOFile@@QAEAAV0@AAE@Z			; IOFile::operator>>
PUBLIC	??_C@_02JDPG@rb?$AA@				; `string'
PUBLIC	?imgLoadBMP@@YA_NPADPAVImage@@@Z		; imgLoadBMP
EXTRN	_memcpy:PROC
EXTRN	?Create@Image@@QAE_NKKK@Z:PROC			; Image::Create
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	?Read@IOFile@@QAE_NPAXK@Z:PROC			; IOFile::Read
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	?SeekFromStart@IOFile@@QAE_NJ@Z:PROC		; IOFile::SeekFromStart
EXTRN	?Free@IOFile@@QAEXXZ:PROC			; IOFile::Free
EXTRN	?Create@IOFile@@QAE_NPAD0@Z:PROC		; IOFile::Create
EXTRN	??1IOFile@@QAE@XZ:PROC				; IOFile::~IOFile
EXTRN	??0IOFile@@QAE@XZ:PROC				; IOFile::IOFile
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT ??_C@_02JDPG@rb?$AA@
; File c:\users\user\desktop\computergraphicsproject\viewer\imgload.cpp
CONST	SEGMENT
??_C@_02JDPG@rb?$AA@ DB 'rb', 00H			; `string'
CONST	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?imgLoadBMP@@YA_NPADPAVImage@@@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?imgLoadBMP@@YA_NPADPAVImage@@@Z$0
__ehfuncinfo$?imgLoadBMP@@YA_NPADPAVImage@@@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?imgLoadBMP@@YA_NPADPAVImage@@@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?imgLoadBMP@@YA_NPADPAVImage@@@Z
_TEXT	SEGMENT
tv235 = -560						; size = 4
$T33460 = -549						; size = 1
$T33461 = -537						; size = 1
$T33462 = -525						; size = 1
$T33463 = -513						; size = 1
$T33464 = -501						; size = 1
$T33465 = -492						; size = 4
$T33466 = -477						; size = 1
$T33467 = -468						; size = 4
$T33468 = -453						; size = 1
$T33469 = -444						; size = 4
$T33470 = -429						; size = 1
$T33471 = -420						; size = 4
$T33472 = -405						; size = 1
_x$33306 = -204						; size = 4
_x$33301 = -192						; size = 4
_y$33288 = -180						; size = 4
_pSrc$ = -168						; size = 4
_pDest$ = -156						; size = 4
_bFlipY$ = -141						; size = 1
_i$33275 = -132						; size = 4
_nStride$ = -120					; size = 4
_filebmp$ = -108					; size = 8
_pBMPData$ = -92					; size = 4
_bih$ = -80						; size = 40
_bfh$ = -32						; size = 16
__$EHRec$ = -12						; size = 12
_szImageName$ = 8					; size = 4
_img$ = 12						; size = 4
?imgLoadBMP@@YA_NPADPAVImage@@@Z PROC			; imgLoadBMP, COMDAT

; 35   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?imgLoadBMP@@YA_NPADPAVImage@@@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 548				; 00000224H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-560]
	mov	ecx, 137				; 00000089H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax

; 36   : 	BMPFileHeader bfh;
; 37   : 	BMPImageHeader bih;
; 38   : 	UInt8 *pBMPData=0;

	mov	DWORD PTR _pBMPData$[ebp], 0

; 39   : 
; 40   : 	IOFile filebmp; 

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??0IOFile@@QAE@XZ			; IOFile::IOFile
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 41   : 
; 42   : 	if( img == 0 )

	cmp	DWORD PTR _img$[ebp], 0
	jne	SHORT $LN31@imgLoadBMP

; 43   : 		return false;

	mov	BYTE PTR $T33460[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33460[ebp]
	jmp	$LN32@imgLoadBMP
$LN31@imgLoadBMP:

; 44   : 
; 45   : 	if( filebmp.Create( szImageName, "rb" ) == false )

	push	OFFSET ??_C@_02JDPG@rb?$AA@
	mov	eax, DWORD PTR _szImageName$[ebp]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Create@IOFile@@QAE_NPAD0@Z		; IOFile::Create
	movzx	ecx, al
	test	ecx, ecx
	jne	SHORT $LN30@imgLoadBMP

; 46   : 		return false;

	mov	BYTE PTR $T33461[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33461[ebp]
	jmp	$LN32@imgLoadBMP
$LN30@imgLoadBMP:

; 47   : 
; 48   : 	filebmp >> bfh.B; filebmp >> bfh.M;

	lea	eax, DWORD PTR _bfh$[ebp]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAE@Z		; IOFile::operator>>
	lea	eax, DWORD PTR _bfh$[ebp+1]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAE@Z		; IOFile::operator>>

; 49   : 	filebmp >> bfh.nSize;

	lea	eax, DWORD PTR _bfh$[ebp+4]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 50   : 	filebmp >> bfh.nReserved;

	lea	eax, DWORD PTR _bfh$[ebp+8]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 51   : 	filebmp >> bfh.nOffsetToBits;

	lea	eax, DWORD PTR _bfh$[ebp+12]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 52   : 
; 53   : 	if(( bfh.B != 'B' ) || (bfh.M != 'M') || filebmp.IsEOF())

	movzx	eax, BYTE PTR _bfh$[ebp]
	cmp	eax, 66					; 00000042H
	jne	SHORT $LN28@imgLoadBMP
	movzx	eax, BYTE PTR _bfh$[ebp+1]
	cmp	eax, 77					; 0000004dH
	jne	SHORT $LN28@imgLoadBMP
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?IsEOF@IOFile@@QAE_NXZ			; IOFile::IsEOF
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN29@imgLoadBMP
$LN28@imgLoadBMP:

; 54   : 	{
; 55   : 		filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 56   : 		return false;

	mov	BYTE PTR $T33462[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33462[ebp]
	jmp	$LN32@imgLoadBMP
$LN29@imgLoadBMP:

; 57   : 	}
; 58   : 
; 59   : 	filebmp >> bih.nSize;

	lea	eax, DWORD PTR _bih$[ebp]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 60   : 	filebmp >> bih.nWidth;

	lea	eax, DWORD PTR _bih$[ebp+4]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAJ@Z		; IOFile::operator>>

; 61   : 	filebmp >> bih.nHeight;

	lea	eax, DWORD PTR _bih$[ebp+8]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAJ@Z		; IOFile::operator>>

; 62   : 	filebmp >> bih.nPlanes;

	lea	eax, DWORD PTR _bih$[ebp+12]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAG@Z		; IOFile::operator>>

; 63   : 	filebmp >> bih.nBPP;

	lea	eax, DWORD PTR _bih$[ebp+14]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAG@Z		; IOFile::operator>>

; 64   : 	filebmp >> bih.nCompression;

	lea	eax, DWORD PTR _bih$[ebp+16]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 65   : 	filebmp >> bih.nImageSize;

	lea	eax, DWORD PTR _bih$[ebp+20]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 66   : 	filebmp >> bih.nWidthPPM;

	lea	eax, DWORD PTR _bih$[ebp+24]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAJ@Z		; IOFile::operator>>

; 67   : 	filebmp >> bih.nHeightPPM;

	lea	eax, DWORD PTR _bih$[ebp+28]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAJ@Z		; IOFile::operator>>

; 68   : 	filebmp >> bih.nColorUsed;

	lea	eax, DWORD PTR _bih$[ebp+32]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 69   : 	filebmp >> bih.nColorImportant;

	lea	eax, DWORD PTR _bih$[ebp+36]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??5IOFile@@QAEAAV0@AAK@Z		; IOFile::operator>>

; 70   : 
; 71   : 	// Validate the image header results.
; 72   : 	if( (bih.nCompression != 0) ||
; 73   : 		(bih.nHeight == 0) ||
; 74   : 		(bih.nWidth == 0) )

	cmp	DWORD PTR _bih$[ebp+16], 0
	jne	SHORT $LN26@imgLoadBMP
	cmp	DWORD PTR _bih$[ebp+8], 0
	je	SHORT $LN26@imgLoadBMP
	cmp	DWORD PTR _bih$[ebp+4], 0
	jne	SHORT $LN27@imgLoadBMP
$LN26@imgLoadBMP:

; 75   : 	{
; 76   : 		filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 77   : 		return false;

	mov	BYTE PTR $T33463[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33463[ebp]
	jmp	$LN32@imgLoadBMP
$LN27@imgLoadBMP:

; 78   : 	}
; 79   : 
; 80   : 	// We must have either an 8, 24, or 32bit image.
; 81   : 	if( (bih.nBPP != 8) && (bih.nBPP != 24) && (bih.nBPP != 32) )

	movzx	eax, WORD PTR _bih$[ebp+14]
	cmp	eax, 8
	je	SHORT $LN25@imgLoadBMP
	movzx	eax, WORD PTR _bih$[ebp+14]
	cmp	eax, 24					; 00000018H
	je	SHORT $LN25@imgLoadBMP
	movzx	eax, WORD PTR _bih$[ebp+14]
	cmp	eax, 32					; 00000020H
	je	SHORT $LN25@imgLoadBMP

; 82   : 	{
; 83   : 		filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 84   : 		return false;

	mov	BYTE PTR $T33464[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33464[ebp]
	jmp	$LN32@imgLoadBMP
$LN25@imgLoadBMP:

; 85   : 	}
; 86   : 
; 87   : 	// Jump to the image data.
; 88   : 	filebmp.SeekFromStart( bfh.nOffsetToBits );

	mov	eax, DWORD PTR _bfh$[ebp+12]
	push	eax
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?SeekFromStart@IOFile@@QAE_NJ@Z		; IOFile::SeekFromStart

; 89   : 
; 90   : 	// Prep the image data for loading.
; 91   : 	UInt32 nStride = (bih.nWidth * (bih.nBPP/8) + 1) & (~1); // Stride is the BMP's bytes per row.

	movzx	eax, WORD PTR _bih$[ebp+14]
	cdq
	and	edx, 7
	add	eax, edx
	sar	eax, 3
	imul	eax, DWORD PTR _bih$[ebp+4]
	add	eax, 1
	and	eax, -2					; fffffffeH
	mov	DWORD PTR _nStride$[ebp], eax

; 92   : 	bih.nImageSize = nStride * bih.nHeight;

	mov	eax, DWORD PTR _nStride$[ebp]
	imul	eax, DWORD PTR _bih$[ebp+8]
	mov	DWORD PTR _bih$[ebp+20], eax

; 93   : 	pBMPData = new UInt8[bih.nImageSize];

	mov	eax, DWORD PTR _bih$[ebp+20]
	push	eax
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T33465[ebp], eax
	mov	ecx, DWORD PTR $T33465[ebp]
	mov	DWORD PTR _pBMPData$[ebp], ecx

; 94   : 	if( pBMPData == 0 )

	cmp	DWORD PTR _pBMPData$[ebp], 0
	jne	SHORT $LN24@imgLoadBMP

; 95   : 	{
; 96   : 		filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 97   : 		return false;

	mov	BYTE PTR $T33466[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33466[ebp]
	jmp	$LN32@imgLoadBMP
$LN24@imgLoadBMP:

; 98   : 	}
; 99   : 
; 100  : 	// Load it up.. we want the image data raw.
; 101  : 	//  for (int i=bih.nHeight-1; i; i--)
; 102  : 	for (signed int i=bih.nHeight-1; i>=0; i--)

	mov	eax, DWORD PTR _bih$[ebp+8]
	sub	eax, 1
	mov	DWORD PTR _i$33275[ebp], eax
	jmp	SHORT $LN23@imgLoadBMP
$LN22@imgLoadBMP:
	mov	eax, DWORD PTR _i$33275[ebp]
	sub	eax, 1
	mov	DWORD PTR _i$33275[ebp], eax
$LN23@imgLoadBMP:
	cmp	DWORD PTR _i$33275[ebp], 0
	jl	SHORT $LN21@imgLoadBMP

; 103  : 	{
; 104  : 		if( filebmp.Read( pBMPData+i*nStride, nStride ) == false )

	mov	eax, DWORD PTR _nStride$[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$33275[ebp]
	imul	ecx, DWORD PTR _nStride$[ebp]
	add	ecx, DWORD PTR _pBMPData$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Read@IOFile@@QAE_NPAXK@Z		; IOFile::Read
	movzx	edx, al
	test	edx, edx
	jne	SHORT $LN20@imgLoadBMP

; 105  : 		{
; 106  : 			filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 107  : 			delete pBMPData;

	mov	eax, DWORD PTR _pBMPData$[ebp]
	mov	DWORD PTR $T33467[ebp], eax
	mov	ecx, DWORD PTR $T33467[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 108  : 			return false; // In case we hit an IOFile error by now.

	mov	BYTE PTR $T33468[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33468[ebp]
	jmp	$LN32@imgLoadBMP
$LN20@imgLoadBMP:

; 109  : 		}
; 110  : 	}

	jmp	SHORT $LN22@imgLoadBMP
$LN21@imgLoadBMP:

; 111  : 
; 112  : 	/*  if( filebmp.Read( pBMPData, bih.nImageSize ) == false )
; 113  : 	{
; 114  : 	filebmp.Free();
; 115  : 	delete pBMPData;
; 116  : 	return false; // In case we hit an IOFile error by now.
; 117  : 	}*/
; 118  : 
; 119  : 	// Create our target Image.
; 120  : 	img->Create( bih.nWidth, bih.nHeight, bih.nBPP );

	movzx	eax, WORD PTR _bih$[ebp+14]
	push	eax
	mov	ecx, DWORD PTR _bih$[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _bih$[ebp+4]
	push	edx
	mov	ecx, DWORD PTR _img$[ebp]
	call	?Create@Image@@QAE_NKKK@Z		; Image::Create

; 121  : 
; 122  : 	
; 123  : 
; 124  : 	bool bFlipY;
; 125  : 	if( bih.nHeight < 0 )  // Negative height is top to bottom, right side up.

	cmp	DWORD PTR _bih$[ebp+8], 0
	jge	SHORT $LN19@imgLoadBMP

; 126  : 	{
; 127  : 		bih.nHeight = -bih.nHeight;

	mov	eax, DWORD PTR _bih$[ebp+8]
	neg	eax
	mov	DWORD PTR _bih$[ebp+8], eax

; 128  : 		bFlipY = false;

	mov	BYTE PTR _bFlipY$[ebp], 0

; 129  : 	}
; 130  : 	else // Positive height is bottom to top, or upside down.

	jmp	SHORT $LN18@imgLoadBMP
$LN19@imgLoadBMP:

; 131  : 		bFlipY = true;

	mov	BYTE PTR _bFlipY$[ebp], 1
$LN18@imgLoadBMP:

; 132  : 
; 133  : 	UInt8 *pDest=(UInt8*)img->GetData(), *pSrc;

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetData@Image@@QAEPAXXZ		; Image::GetData
	mov	DWORD PTR _pDest$[ebp], eax

; 134  : 	for( UInt32 y=0; y<(UInt32)bih.nHeight; y++ )

	mov	DWORD PTR _y$33288[ebp], 0
	jmp	SHORT $LN17@imgLoadBMP
$LN16@imgLoadBMP:
	mov	eax, DWORD PTR _y$33288[ebp]
	add	eax, 1
	mov	DWORD PTR _y$33288[ebp], eax
$LN17@imgLoadBMP:
	mov	eax, DWORD PTR _y$33288[ebp]
	cmp	eax, DWORD PTR _bih$[ebp+8]
	jae	$LN15@imgLoadBMP

; 135  : 	{
; 136  : 		if( bFlipY ) // Handle pointer calculations for yFlip situations.

	movzx	eax, BYTE PTR _bFlipY$[ebp]
	test	eax, eax
	je	SHORT $LN14@imgLoadBMP

; 137  : 			pSrc = pBMPData + bih.nImageSize - (y * nStride) - nStride;

	mov	eax, DWORD PTR _pBMPData$[ebp]
	add	eax, DWORD PTR _bih$[ebp+20]
	mov	ecx, DWORD PTR _y$33288[ebp]
	imul	ecx, DWORD PTR _nStride$[ebp]
	sub	eax, ecx
	sub	eax, DWORD PTR _nStride$[ebp]
	mov	DWORD PTR _pSrc$[ebp], eax

; 138  : 		else

	jmp	SHORT $LN13@imgLoadBMP
$LN14@imgLoadBMP:

; 139  : 			pSrc = pBMPData + (y * nStride);

	mov	eax, DWORD PTR _y$33288[ebp]
	imul	eax, DWORD PTR _nStride$[ebp]
	add	eax, DWORD PTR _pBMPData$[ebp]
	mov	DWORD PTR _pSrc$[ebp], eax
$LN13@imgLoadBMP:

; 140  : 
; 141  : 		// Perform row copy of image data, and in 24 & 32bit cases,
; 142  : 		// swizzle those blue and red bytes around.
; 143  : 		switch( bih.nBPP )

	movzx	eax, WORD PTR _bih$[ebp+14]
	mov	DWORD PTR tv235[ebp], eax
	cmp	DWORD PTR tv235[ebp], 8
	je	SHORT $LN10@imgLoadBMP
	cmp	DWORD PTR tv235[ebp], 24		; 00000018H
	je	SHORT $LN9@imgLoadBMP
	cmp	DWORD PTR tv235[ebp], 32		; 00000020H
	je	$LN5@imgLoadBMP
	jmp	$LN1@imgLoadBMP
$LN10@imgLoadBMP:

; 144  : 		{
; 145  : 		case 8:
; 146  : 			{
; 147  : 				memcpy( pDest, pSrc, img->GetStride() );

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetStride@Image@@QAEKXZ		; Image::GetStride
	push	eax
	mov	eax, DWORD PTR _pSrc$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pDest$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 148  : 			}
; 149  : 			break;

	jmp	$LN11@imgLoadBMP
$LN9@imgLoadBMP:

; 150  : 
; 151  : 		case 24:  // from BGR order to RGB. So swap blue and red bytes.
; 152  : 			{
; 153  : 				for( UInt32 x=0; x<img->GetStride(); x+=3 )

	mov	DWORD PTR _x$33301[ebp], 0
	jmp	SHORT $LN8@imgLoadBMP
$LN7@imgLoadBMP:
	mov	eax, DWORD PTR _x$33301[ebp]
	add	eax, 3
	mov	DWORD PTR _x$33301[ebp], eax
$LN8@imgLoadBMP:
	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetStride@Image@@QAEKXZ		; Image::GetStride
	cmp	DWORD PTR _x$33301[ebp], eax
	jae	SHORT $LN6@imgLoadBMP

; 154  : 				{
; 155  : 					pDest[x] = pSrc[x+2];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33301[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33301[ebp]
	mov	dl, BYTE PTR [ecx+2]
	mov	BYTE PTR [eax], dl

; 156  : 					pDest[x+1] = pSrc[x+1];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33301[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33301[ebp]
	mov	dl, BYTE PTR [ecx+1]
	mov	BYTE PTR [eax+1], dl

; 157  : 					pDest[x+2] = pSrc[x];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33301[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33301[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax+2], dl

; 158  : 				}

	jmp	SHORT $LN7@imgLoadBMP
$LN6@imgLoadBMP:

; 159  : 			}
; 160  : 			break;

	jmp	$LN11@imgLoadBMP
$LN5@imgLoadBMP:

; 161  : 
; 162  : 		case 32:  // 32bit is just like 24bit, but we go from BGRA to RGBA,
; 163  : 			{         // so green and alpha are left alone.
; 164  : 				for( UInt32 x=0; x<img->GetStride(); x+=4 )

	mov	DWORD PTR _x$33306[ebp], 0
	jmp	SHORT $LN4@imgLoadBMP
$LN3@imgLoadBMP:
	mov	eax, DWORD PTR _x$33306[ebp]
	add	eax, 4
	mov	DWORD PTR _x$33306[ebp], eax
$LN4@imgLoadBMP:
	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetStride@Image@@QAEKXZ		; Image::GetStride
	cmp	DWORD PTR _x$33306[ebp], eax
	jae	SHORT $LN2@imgLoadBMP

; 165  : 				{
; 166  : 					pDest[x] = pSrc[x+2];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33306[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33306[ebp]
	mov	dl, BYTE PTR [ecx+2]
	mov	BYTE PTR [eax], dl

; 167  : 					pDest[x+1] = pSrc[x+1];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33306[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33306[ebp]
	mov	dl, BYTE PTR [ecx+1]
	mov	BYTE PTR [eax+1], dl

; 168  : 					pDest[x+2] = pSrc[x];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33306[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33306[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax+2], dl

; 169  : 					pDest[x+3] = pSrc[x+3];

	mov	eax, DWORD PTR _pDest$[ebp]
	add	eax, DWORD PTR _x$33306[ebp]
	mov	ecx, DWORD PTR _pSrc$[ebp]
	add	ecx, DWORD PTR _x$33306[ebp]
	mov	dl, BYTE PTR [ecx+3]
	mov	BYTE PTR [eax+3], dl

; 170  : 				}

	jmp	$LN3@imgLoadBMP
$LN2@imgLoadBMP:

; 171  : 			}
; 172  : 			break;

	jmp	SHORT $LN11@imgLoadBMP
$LN1@imgLoadBMP:

; 173  : 
; 174  : 		default: // Only supporting 8, 24, and 32 image formats.
; 175  : 			{
; 176  : 				filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 177  : 				delete pBMPData;

	mov	eax, DWORD PTR _pBMPData$[ebp]
	mov	DWORD PTR $T33469[ebp], eax
	mov	ecx, DWORD PTR $T33469[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 178  : 				img->Free();

	mov	eax, DWORD PTR _img$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	esi, esp
	mov	ecx, DWORD PTR _img$[ebp]
	mov	eax, DWORD PTR [edx+4]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp

; 179  : 				return false;

	mov	BYTE PTR $T33470[ebp], 0
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33470[ebp]
	jmp	SHORT $LN32@imgLoadBMP
$LN11@imgLoadBMP:

; 180  : 			}
; 181  : 		}
; 182  : 
; 183  : 		pDest += img->GetStride();

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetStride@Image@@QAEKXZ		; Image::GetStride
	add	eax, DWORD PTR _pDest$[ebp]
	mov	DWORD PTR _pDest$[ebp], eax

; 184  : 	}

	jmp	$LN16@imgLoadBMP
$LN15@imgLoadBMP:

; 185  : 
; 186  : 	filebmp.Free();

	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	?Free@IOFile@@QAEXXZ			; IOFile::Free

; 187  : 	delete pBMPData;

	mov	eax, DWORD PTR _pBMPData$[ebp]
	mov	DWORD PTR $T33471[ebp], eax
	mov	ecx, DWORD PTR $T33471[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 188  : 	return true;

	mov	BYTE PTR $T33472[ebp], 1
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _filebmp$[ebp]
	call	??1IOFile@@QAE@XZ			; IOFile::~IOFile
	mov	al, BYTE PTR $T33472[ebp]
$LN32@imgLoadBMP:

; 189  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN40@imgLoadBMP
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 560				; 00000230H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN40@imgLoadBMP:
	DD	3
	DD	$LN39@imgLoadBMP
$LN39@imgLoadBMP:
	DD	-32					; ffffffe0H
	DD	16					; 00000010H
	DD	$LN35@imgLoadBMP
	DD	-80					; ffffffb0H
	DD	40					; 00000028H
	DD	$LN36@imgLoadBMP
	DD	-108					; ffffff94H
	DD	8
	DD	$LN37@imgLoadBMP
$LN37@imgLoadBMP:
	DB	102					; 00000066H
	DB	105					; 00000069H
	DB	108					; 0000006cH
	DB	101					; 00000065H
	DB	98					; 00000062H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
$LN36@imgLoadBMP:
	DB	98					; 00000062H
	DB	105					; 00000069H
	DB	104					; 00000068H
	DB	0
$LN35@imgLoadBMP:
	DB	98					; 00000062H
	DB	102					; 00000066H
	DB	104					; 00000068H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?imgLoadBMP@@YA_NPADPAVImage@@@Z$0:
	lea	ecx, DWORD PTR _filebmp$[ebp]
	jmp	??1IOFile@@QAE@XZ			; IOFile::~IOFile
__ehhandler$?imgLoadBMP@@YA_NPADPAVImage@@@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-564]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?imgLoadBMP@@YA_NPADPAVImage@@@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?imgLoadBMP@@YA_NPADPAVImage@@@Z ENDP			; imgLoadBMP
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\user\desktop\computergraphicsproject\viewer\image.h
;	COMDAT ?GetStride@Image@@QAEKXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetStride@Image@@QAEKXZ PROC				; Image::GetStride, COMDAT
; _this$ = ecx

; 45   :   UInt32  GetStride() {return m_nStride;} // Number of bytes in each horizontal scan line.

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+16]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetStride@Image@@QAEKXZ ENDP				; Image::GetStride
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?GetData@Image@@QAEPAXXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetData@Image@@QAEPAXXZ PROC				; Image::GetData, COMDAT
; _this$ = ecx

; 49   :   void*   GetData()   {return m_pData;}   // Get a pointer to the pixel data.

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+24]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetData@Image@@QAEPAXXZ ENDP				; Image::GetData
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\user\desktop\computergraphicsproject\viewer\iofile.h
_TEXT	ENDS
;	COMDAT ?IsEOF@IOFile@@QAE_NXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?IsEOF@IOFile@@QAE_NXZ PROC				; IOFile::IsEOF, COMDAT
; _this$ = ecx

; 32   :   bool IsEOF() { return m_bEOF; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [eax+4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?IsEOF@IOFile@@QAE_NXZ ENDP				; IOFile::IsEOF
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??5IOFile@@QAEAAV0@AAE@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_n$ = 8							; size = 4
??5IOFile@@QAEAAV0@AAE@Z PROC				; IOFile::operator>>, COMDAT
; _this$ = ecx

; 34   :   IOFile& operator>>(UInt8 &n  ) { Read( &n, sizeof(UInt8 ) ); return *this; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	1
	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Read@IOFile@@QAE_NPAXK@Z		; IOFile::Read
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??5IOFile@@QAEAAV0@AAE@Z ENDP				; IOFile::operator>>
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??5IOFile@@QAEAAV0@AAG@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_n$ = 8							; size = 4
??5IOFile@@QAEAAV0@AAG@Z PROC				; IOFile::operator>>, COMDAT
; _this$ = ecx

; 35   :   IOFile& operator>>(UInt16 &n ) { Read( &n, sizeof(UInt16) ); return *this; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	2
	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Read@IOFile@@QAE_NPAXK@Z		; IOFile::Read
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??5IOFile@@QAEAAV0@AAG@Z ENDP				; IOFile::operator>>
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??5IOFile@@QAEAAV0@AAK@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_n$ = 8							; size = 4
??5IOFile@@QAEAAV0@AAK@Z PROC				; IOFile::operator>>, COMDAT
; _this$ = ecx

; 36   :   IOFile& operator>>(UInt32 &n ) { Read( &n, sizeof(UInt32) ); return *this; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	4
	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Read@IOFile@@QAE_NPAXK@Z		; IOFile::Read
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??5IOFile@@QAEAAV0@AAK@Z ENDP				; IOFile::operator>>
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??5IOFile@@QAEAAV0@AAJ@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_n$ = 8							; size = 4
??5IOFile@@QAEAAV0@AAJ@Z PROC				; IOFile::operator>>, COMDAT
; _this$ = ecx

; 39   :   IOFile& operator>>(Int32 &n ) { Read( &n, sizeof(Int32) ); return *this; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	4
	mov	eax, DWORD PTR _n$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Read@IOFile@@QAE_NPAXK@Z		; IOFile::Read
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??5IOFile@@QAEAAV0@AAJ@Z ENDP				; IOFile::operator>>
_TEXT	ENDS
PUBLIC	?GetBPP@Image@@QAEHXZ				; Image::GetBPP
PUBLIC	?GetWidth@Image@@QAEKXZ				; Image::GetWidth
PUBLIC	?GetHeight@Image@@QAEKXZ			; Image::GetHeight
PUBLIC	__$ArrayPad$
PUBLIC	?imgLoadJPG@@YA_NPADPAVImage@@@Z		; imgLoadJPG
EXTRN	_ijlFree@4:PROC
EXTRN	_ijlRead@8:PROC
EXTRN	_ijlInit@4:PROC
EXTRN	_memset:PROC
EXTRN	__chkstk:PROC
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\user\desktop\computergraphicsproject\viewer\imgload.cpp
;	COMDAT ?imgLoadJPG@@YA_NPADPAVImage@@@Z
_TEXT	SEGMENT
tv135 = -20388						; size = 4
$T33517 = -20380					; size = 4
$T33518 = -20368					; size = 4
_i$33343 = -20164					; size = 4
_i$33338 = -20152					; size = 4
_pSrc$33328 = -20140					; size = 4
_ImageSize$33327 = -20128				; size = 4
_pDest$33325 = -20116					; size = 4
_image$ = -20104					; size = 20072
_RetVal$ = -24						; size = 4
_Bpp8$ = -9						; size = 1
__$ArrayPad$ = -4					; size = 4
_szImageName$ = 8					; size = 4
_img$ = 12						; size = 4
?imgLoadJPG@@YA_NPADPAVImage@@@Z PROC			; imgLoadJPG, COMDAT

; 193  : {

	push	ebp
	mov	ebp, esp
	mov	eax, 20388				; 00004fa4H
	call	__chkstk
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-20388]
	mov	ecx, 5097				; 000013e9H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 194  : 	BYTE Bpp8 = 3;		

	mov	BYTE PTR _Bpp8$[ebp], 3

; 195  : 	int RetVal;		
; 196  : 	JPEG_CORE_PROPERTIES image;
; 197  : 	ZeroMemory(&image, sizeof( JPEG_CORE_PROPERTIES ) );

	push	20072					; 00004e68H
	push	0
	lea	eax, DWORD PTR _image$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 198  : 	if( ijlInit(&image ) != IJL_OK )

	lea	eax, DWORD PTR _image$[ebp]
	push	eax
	call	_ijlInit@4
	test	eax, eax
	je	SHORT $LN14@imgLoadJPG

; 199  : 		return false;

	xor	al, al
	jmp	$LN15@imgLoadJPG
$LN14@imgLoadJPG:

; 200  : 
; 201  : 	image.JPGFile = szImageName;

	mov	eax, DWORD PTR _szImageName$[ebp]
	mov	DWORD PTR _image$[ebp+32], eax

; 202  : 
; 203  : 	if ((RetVal = ijlRead(&image,IJL_JFILE_READPARAMS)) == IJL_OK)

	push	0
	lea	eax, DWORD PTR _image$[ebp]
	push	eax
	call	_ijlRead@8
	mov	DWORD PTR _RetVal$[ebp], eax
	cmp	DWORD PTR _RetVal$[ebp], 0
	jne	$LN13@imgLoadJPG

; 204  : 	{
; 205  : 		img->Create(image.JPGHeight, image.JPGWidth, Bpp8*8);

	movzx	eax, BYTE PTR _Bpp8$[ebp]
	shl	eax, 3
	push	eax
	mov	ecx, DWORD PTR _image$[ebp+44]
	push	ecx
	mov	edx, DWORD PTR _image$[ebp+48]
	push	edx
	mov	ecx, DWORD PTR _img$[ebp]
	call	?Create@Image@@QAE_NKKK@Z		; Image::Create

; 206  : 
; 207  : 		UInt8 *pDest = (UInt8*)img->GetData();

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetData@Image@@QAEPAXXZ		; Image::GetData
	mov	DWORD PTR _pDest$33325[ebp], eax

; 208  : 		UINT ImageSize = img->GetHeight() * img->GetWidth() * Bpp8;

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetHeight@Image@@QAEKXZ		; Image::GetHeight
	mov	esi, eax
	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetWidth@Image@@QAEKXZ			; Image::GetWidth
	imul	esi, eax
	movzx	eax, BYTE PTR _Bpp8$[ebp]
	imul	esi, eax
	mov	DWORD PTR _ImageSize$33327[ebp], esi

; 209  : 		UInt8 *pSrc = new UInt8[ImageSize];

	mov	eax, DWORD PTR _ImageSize$33327[ebp]
	push	eax
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T33517[ebp], eax
	mov	ecx, DWORD PTR $T33517[ebp]
	mov	DWORD PTR _pSrc$33328[ebp], ecx

; 210  : 
; 211  : 		if (pSrc)

	cmp	DWORD PTR _pSrc$33328[ebp], 0
	je	$LN12@imgLoadJPG

; 212  : 		{
; 213  : 			image.DIBBytes = pSrc;

	mov	eax, DWORD PTR _pSrc$33328[ebp]
	mov	DWORD PTR _image$[ebp+4], eax

; 214  : 			image.DIBColor = IJL_RGB;

	mov	DWORD PTR _image$[ebp+24], 1

; 215  : 			image.DIBHeight = img->GetHeight();

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetHeight@Image@@QAEKXZ		; Image::GetHeight
	mov	DWORD PTR _image$[ebp+12], eax

; 216  : 			image.DIBWidth = img->GetWidth();

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetWidth@Image@@QAEKXZ			; Image::GetWidth
	mov	DWORD PTR _image$[ebp+8], eax

; 217  : 			image.DIBChannels = Bpp8;

	movzx	eax, BYTE PTR _Bpp8$[ebp]
	mov	DWORD PTR _image$[ebp+20], eax

; 218  : 
; 219  : 			if ((RetVal = ijlRead(&image, IJL_JFILE_READWHOLEIMAGE)) == IJL_OK)

	push	2
	lea	eax, DWORD PTR _image$[ebp]
	push	eax
	call	_ijlRead@8
	mov	DWORD PTR _RetVal$[ebp], eax
	cmp	DWORD PTR _RetVal$[ebp], 0
	jne	$LN12@imgLoadJPG

; 220  : 			{
; 221  : 				switch (img->GetBPP())

	mov	ecx, DWORD PTR _img$[ebp]
	call	?GetBPP@Image@@QAEHXZ			; Image::GetBPP
	mov	DWORD PTR tv135[ebp], eax
	cmp	DWORD PTR tv135[ebp], 24		; 00000018H
	je	SHORT $LN8@imgLoadJPG
	cmp	DWORD PTR tv135[ebp], 32		; 00000020H
	je	$LN4@imgLoadJPG
	jmp	$LN12@imgLoadJPG
$LN8@imgLoadJPG:

; 222  : 				{
; 223  : 				case 24: 
; 224  : 					{
; 225  : 						for(UINT i = 0; i < ImageSize; i += 3)	

	mov	DWORD PTR _i$33338[ebp], 0
	jmp	SHORT $LN7@imgLoadJPG
$LN6@imgLoadJPG:
	mov	eax, DWORD PTR _i$33338[ebp]
	add	eax, 3
	mov	DWORD PTR _i$33338[ebp], eax
$LN7@imgLoadJPG:
	mov	eax, DWORD PTR _i$33338[ebp]
	cmp	eax, DWORD PTR _ImageSize$33327[ebp]
	jae	SHORT $LN5@imgLoadJPG

; 226  : 						{									
; 227  : 							pDest[i + 0] = pSrc[i + 0];	

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33338[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33338[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl

; 228  : 							pDest[i + 1] = pSrc[i + 1];

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33338[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33338[ebp]
	mov	dl, BYTE PTR [ecx+1]
	mov	BYTE PTR [eax+1], dl

; 229  : 							pDest[i + 2] = pSrc[i + 2];

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33338[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33338[ebp]
	mov	dl, BYTE PTR [ecx+2]
	mov	BYTE PTR [eax+2], dl

; 230  : 						}

	jmp	SHORT $LN6@imgLoadJPG
$LN5@imgLoadJPG:

; 231  : 						break;  

	jmp	$LN12@imgLoadJPG
$LN4@imgLoadJPG:

; 232  : 					}
; 233  : 				case 32:  
; 234  : 					{
; 235  : 						for(UINT i = 0; i < ImageSize; i += 4)	

	mov	DWORD PTR _i$33343[ebp], 0
	jmp	SHORT $LN3@imgLoadJPG
$LN2@imgLoadJPG:
	mov	eax, DWORD PTR _i$33343[ebp]
	add	eax, 4
	mov	DWORD PTR _i$33343[ebp], eax
$LN3@imgLoadJPG:
	mov	eax, DWORD PTR _i$33343[ebp]
	cmp	eax, DWORD PTR _ImageSize$33327[ebp]
	jae	SHORT $LN12@imgLoadJPG

; 236  : 						{									
; 237  : 							pDest[i + 0] = pSrc[i + 0];	

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33343[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33343[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl

; 238  : 							pDest[i + 1] = pSrc[i + 1];

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33343[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33343[ebp]
	mov	dl, BYTE PTR [ecx+1]
	mov	BYTE PTR [eax+1], dl

; 239  : 							pDest[i + 2] = pSrc[i + 2];

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33343[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33343[ebp]
	mov	dl, BYTE PTR [ecx+2]
	mov	BYTE PTR [eax+2], dl

; 240  : 							pDest[i + 3] = pSrc[i + 3];

	mov	eax, DWORD PTR _pDest$33325[ebp]
	add	eax, DWORD PTR _i$33343[ebp]
	mov	ecx, DWORD PTR _pSrc$33328[ebp]
	add	ecx, DWORD PTR _i$33343[ebp]
	mov	dl, BYTE PTR [ecx+3]
	mov	BYTE PTR [eax+3], dl

; 241  : 						}

	jmp	$LN2@imgLoadJPG
$LN12@imgLoadJPG:

; 242  : 						break; 
; 243  : 					}
; 244  : 				}
; 245  : 			}
; 246  : 		}
; 247  : 		delete pSrc;  

	mov	eax, DWORD PTR _pSrc$33328[ebp]
	mov	DWORD PTR $T33518[ebp], eax
	mov	ecx, DWORD PTR $T33518[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN13@imgLoadJPG:

; 248  : 	}
; 249  : 	ijlFree(&image); 

	lea	eax, DWORD PTR _image$[ebp]
	push	eax
	call	_ijlFree@4

; 250  : 
; 251  : 	return true;

	mov	al, 1
$LN15@imgLoadJPG:

; 252  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN19@imgLoadJPG
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 20388				; 00004fa4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN19@imgLoadJPG:
	DD	1
	DD	$LN18@imgLoadJPG
$LN18@imgLoadJPG:
	DD	-20104					; ffffb178H
	DD	20072					; 00004e68H
	DD	$LN17@imgLoadJPG
$LN17@imgLoadJPG:
	DB	105					; 00000069H
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	103					; 00000067H
	DB	101					; 00000065H
	DB	0
?imgLoadJPG@@YA_NPADPAVImage@@@Z ENDP			; imgLoadJPG
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\user\desktop\computergraphicsproject\viewer\image.h
_TEXT	ENDS
;	COMDAT ?GetBPP@Image@@QAEHXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetBPP@Image@@QAEHXZ PROC				; Image::GetBPP, COMDAT
; _this$ = ecx

; 43   :   int     GetBPP()    {return m_nBPP;}    // Bits per pixel. Valid types are 8(intensity), 24(RGB), 32(RGBA)

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetBPP@Image@@QAEHXZ ENDP				; Image::GetBPP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?GetWidth@Image@@QAEKXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetWidth@Image@@QAEKXZ PROC				; Image::GetWidth, COMDAT
; _this$ = ecx

; 44   :   UInt32  GetWidth()  {return m_nWidth;}  // Width of image.

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetWidth@Image@@QAEKXZ ENDP				; Image::GetWidth
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?GetHeight@Image@@QAEKXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetHeight@Image@@QAEKXZ PROC				; Image::GetHeight, COMDAT
; _this$ = ecx

; 46   :   UInt32  GetHeight() {return m_nHeight;} // Height of image.

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetHeight@Image@@QAEKXZ ENDP				; Image::GetHeight
_TEXT	ENDS
END
