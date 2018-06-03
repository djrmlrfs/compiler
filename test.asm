	global	main
	extern	puts
	extern	printf
	extern	scanf
	extern	malloc
	extern	strlen
	extern	strcmp
	extern	memset

	section	.text

main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 3784
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	qword [rsp+8*1], r8
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*2], rax
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*3], rax
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*4], rax
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*5], rax
	mov	r9, [rsp+8*2]
	mov	r8, r9
	mov	r10, r8
	mov	qword [rsp+8*6], r8
	mov	qword [arg+8*63], r10
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r11, 463
	mov	r12,r11
	neg	r12
	mov	r14, 480
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*8], r8
	mov	r11, 849
	mov	r8, r11
	mov	r11, r9
	mov	qword rdi, r8
	mov	qword [rsp+8*9], r9
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*10], r12
	mov	qword [arg+8*2], r13
	mov	qword rsi, r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r11, 208
	mov	r12,r11
	neg	r12
	mov	r13, 150
	mov	r14,r13
	neg	r14
	mov	qword [rsp+8*14], r8
	mov	r8, 585
	mov	r15, r8
	mov	r8, r12
	mov	r11, r9
	mov	qword rdi, r8
	mov	qword [rsp+8*15], r9
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*16], r12
	mov	qword [arg+8*2], r14
	mov	qword rsi, r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*4]
	mov	r9, r10
	mov	r11, 670
	mov	r12,r11
	neg	r12
	mov	r13, 742
	mov	r14,r13
	neg	r14
	mov	r15, r12
	mov	qword [rsp+8*17], r8
	mov	r11, 360
	mov	r8, r11
	mov	r11, r9
	mov	qword rdi, r8
	mov	qword [rsp+8*18], r9
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*19], r12
	mov	qword [arg+8*2], r14
	mov	qword rsi, r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r11, 29
	mov	r12,r11
	neg	r12
	mov	r13, 591
	mov	r14,r13
	neg	r14
	mov	r15, 960
	mov	qword [rsp+8*20], r8
	mov	r8,r15
	neg	r8
	mov	r11, r14
	mov	r13, r12
	mov	r12, r9
	mov	qword [arg+8*2], r8
	mov	qword [rsp+8*21], r9
	mov	qword rsi, r11
	mov	qword [arg+8*63], r12
	mov	qword rdi, r13
	mov	qword [rsp+8*23], r14
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r12, [rsp+8*3]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*24], r8
	mov	qword [rsp+8*25], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*4]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*26], r8
	mov	qword [rsp+8*27], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r12, [rsp+8*4]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*28], r8
	mov	qword [rsp+8*29], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*4]
	mov	r9, r10
	mov	r12, [rsp+8*2]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*30], r8
	mov	qword [rsp+8*31], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*32], r8
	mov	qword [rsp+8*33], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r12, [rsp+8*4]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*34], r8
	mov	qword [rsp+8*35], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*4]
	mov	r9, r10
	mov	r12, [rsp+8*3]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*36], r8
	mov	qword [rsp+8*37], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r12, [rsp+8*3]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*38], r8
	mov	qword [rsp+8*39], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r11, r10
	mov	r12, r9
	mov	qword [rsp+8*40], r8
	mov	qword [rsp+8*41], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*4]
	mov	r9, r10
	mov	r11, r10
	mov	r12, r9
	mov	qword [rsp+8*42], r8
	mov	qword [rsp+8*43], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*44], r8
	mov	qword [rsp+8*45], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r12, [rsp+8*3]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*46], r8
	mov	qword [rsp+8*47], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*4]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*2]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*50], r8
	mov	qword [rsp+8*51], r9
	mov	qword [arg+8*63], r11
	call	point_sqrLen
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*52], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*53], r10
	mov	rdi, [rsp+8*53]
	call	_toString
	mov	qword[rsp+8*54], rax
	mov	r9, [rsp+8*54]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*55], r10
	mov	rdi, [rsp+8*55] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*3]
	mov	r8, r9
	mov	r10, r8
	mov	qword [rsp+8*56], r8
	mov	qword [arg+8*63], r10
	call	point_sqrLen
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*57], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*58], r10
	mov	rdi, [rsp+8*58]
	call	_toString
	mov	qword[rsp+8*59], rax
	mov	r9, [rsp+8*59]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*60], r10
	mov	rdi, [rsp+8*60] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*3]
	mov	r8, r9
	mov	r11, [rsp+8*4]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*61], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_sqrDis
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*62], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*63], r10
	mov	rdi, [rsp+8*63]
	call	_toString
	mov	qword[rsp+8*64], rax
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*65], r10
	mov	rdi, [rsp+8*65] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*5]
	mov	r8, r9
	mov	r11, [rsp+8*2]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*66], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_sqrDis
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*67], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*68], r10
	mov	rdi, [rsp+8*68]
	call	_toString
	mov	qword[rsp+8*69], rax
	mov	r9, [rsp+8*69]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*70], r10
	mov	rdi, [rsp+8*70] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r11, [rsp+8*2]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*71], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_dot
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*72], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*73], r10
	mov	rdi, [rsp+8*73]
	call	_toString
	mov	qword[rsp+8*74], rax
	mov	r9, [rsp+8*74]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*75], r10
	mov	rdi, [rsp+8*75] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*3]
	mov	r8, r9
	mov	r11, [rsp+8*5]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*76], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_cross
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*77], r8
	mov	qword [arg+8*63], r9
	call	point_printPoint
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*2]
	mov	r10, r11
	mov	r12, r10
	mov	qword [rsp+8*78], r8
	mov	qword [rsp+8*77], r9
	mov	qword [rsp+8*79], r10
	mov	qword [arg+8*63], r12
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*80], r8
	mov	qword [rsp+8*81], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*4]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*82], r8
	mov	qword [rsp+8*83], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*84], r8
	mov	qword [rsp+8*85], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r9, 0
	mov	rax, r9
	mov	qword [rsp+8*86], r8
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
point_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	r15, 0
	mov	r14, r15
	mov	qword [rsp+8*87], r8
	mov	r8, [rsp+8*91]
	mov	rax, r8
	mov	qword [rsp+8*88], r10
	mov	qword [rsp+8*89], r12
	mov	qword [rsp+8*90], r14
	leave
	ret
	
point_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r13, rsi
	mov	r12, r13
	mov	r15, [arg+8*2]
	mov	r14, r15
	mov	qword [rsp+8*92], r8
	mov	r8, r10
	mov	qword [rsp+8*93], r10
	mov	r10, r12
	mov	qword [rsp+8*94], r12
	mov	r12, r14
	mov	qword [rsp+8*95], r14
	mov	r14, [rsp+8*96]
	mov	rax, r14
	mov	qword [rsp+8*88], r8
	mov	qword [rsp+8*89], r10
	mov	qword [rsp+8*90], r12
	leave
	ret
	
point_sqrLen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r10, [rsp+8*88]
	mov	r11, r10
	imul	r11, r10
	mov	r12, [rsp+8*89]
	mov	r13, r12
	imul	r13, r12
	mov	r14, r11
	add	r14, r13
	mov	r15, [rsp+8*90]
	mov	qword [rsp+8*97], r8
	mov	r8, r15
	imul	r8, r15
	mov	r11, r14
	add	r11, r8
	mov	rax, r11
	mov	qword [rsp+8*101], r8
	mov	qword [rsp+8*102], r11
	mov	qword [rsp+8*99], r13
	mov	qword [rsp+8*100], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_sqrDis:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*103], r8
	mov	qword [rsp+8*104], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*105], rax
	mov	r9, [rsp+8*105]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*106], r8
	mov	rsi, [rsp+8*105]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*107], rax
	mov	r8, [rsp+8*107]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r10, r9
	sub	r10, r8
	mov	qword [rsp+8*107], r8
	mov	qword [rsp+8*108], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*109], rax
	mov	r9, [rsp+8*109]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*110], r8
	mov	rsi, [rsp+8*109]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*111], rax
	mov	r8, [rsp+8*111]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*108]
	mov	r12, r11
	imul	r12, r10
	mov	qword [rsp+8*111], r8
	mov	qword [rsp+8*112], r10
	mov	qword [rsp+8*113], r12
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*114], rax
	mov	r9, [rsp+8*114]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*115], r8
	mov	rsi, [rsp+8*114]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*116], rax
	mov	r8, [rsp+8*116]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r10, r9
	sub	r10, r8
	mov	qword [rsp+8*116], r8
	mov	qword [rsp+8*117], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*118], rax
	mov	r9, [rsp+8*118]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*119], r8
	mov	rsi, [rsp+8*118]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*120], rax
	mov	r8, [rsp+8*120]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*117]
	mov	r12, r11
	imul	r12, r10
	mov	r13, [rsp+8*113]
	mov	r14, r13
	add	r14, r12
	mov	qword [rsp+8*120], r8
	mov	qword [rsp+8*121], r10
	mov	qword [rsp+8*122], r12
	mov	qword [rsp+8*123], r14
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*124], rax
	mov	r9, [rsp+8*124]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*125], r8
	mov	rsi, [rsp+8*124]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*126], rax
	mov	r8, [rsp+8*126]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r10, r9
	sub	r10, r8
	mov	qword [rsp+8*126], r8
	mov	qword [rsp+8*127], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*128], rax
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*129], r8
	mov	rsi, [rsp+8*128]
	mov	rdi, [rsp+8*104]
	call	_caladd
	mov	[rsp+8*130], rax
	mov	r8, [rsp+8*130]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*127]
	mov	r12, r11
	imul	r12, r10
	mov	r13, [rsp+8*123]
	mov	r14, r13
	add	r14, r12
	mov	rax, r14
	mov	qword [rsp+8*130], r8
	mov	qword [rsp+8*131], r10
	mov	qword [rsp+8*132], r12
	mov	qword [rsp+8*133], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_dot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*134], r8
	mov	qword [rsp+8*135], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*136], rax
	mov	r9, [rsp+8*136]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*137], r8
	mov	rsi, [rsp+8*136]
	mov	rdi, [rsp+8*135]
	call	_caladd
	mov	[rsp+8*138], rax
	mov	r8, [rsp+8*138]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r10, r9
	imul	r10, r8
	mov	qword [rsp+8*138], r8
	mov	qword [rsp+8*139], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*140], rax
	mov	r9, [rsp+8*140]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*141], r8
	mov	rsi, [rsp+8*140]
	mov	rdi, [rsp+8*135]
	call	_caladd
	mov	[rsp+8*142], rax
	mov	r8, [rsp+8*142]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*139]
	mov	r12, r11
	add	r12, r10
	mov	qword [rsp+8*142], r8
	mov	qword [rsp+8*143], r10
	mov	qword [rsp+8*144], r12
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*145], rax
	mov	r9, [rsp+8*145]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*146], r8
	mov	rsi, [rsp+8*145]
	mov	rdi, [rsp+8*135]
	call	_caladd
	mov	[rsp+8*147], rax
	mov	r8, [rsp+8*147]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*144]
	mov	r12, r11
	add	r12, r10
	mov	rax, r12
	mov	qword [rsp+8*147], r8
	mov	qword [rsp+8*148], r10
	mov	qword [rsp+8*149], r12
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_cross:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*150], r8
	mov	qword [rsp+8*151], r10
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*152], rax
	mov	r9, [rsp+8*152]
	mov	r8, r9
	mov	qword [rsp+8*153], r8
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*154], rax
	mov	r9, [rsp+8*154]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*155], r8
	mov	rsi, [rsp+8*154]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*156], rax
	mov	r8, [rsp+8*156]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r10, r9
	imul	r10, r8
	mov	qword [rsp+8*156], r8
	mov	qword [rsp+8*157], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*158], rax
	mov	r9, [rsp+8*158]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*159], r8
	mov	rsi, [rsp+8*158]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*160], rax
	mov	r8, [rsp+8*160]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*157]
	mov	r12, r11
	sub	r12, r10
	mov	qword [rsp+8*160], r8
	mov	qword [rsp+8*161], r10
	mov	qword [rsp+8*162], r12
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*163], rax
	mov	r9, [rsp+8*163]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*164], r8
	mov	rsi, [rsp+8*163]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*165], rax
	mov	r8, [rsp+8*165]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r10, r9
	imul	r10, r8
	mov	qword [rsp+8*165], r8
	mov	qword [rsp+8*166], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*167], rax
	mov	r9, [rsp+8*167]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*168], r8
	mov	rsi, [rsp+8*167]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*169], rax
	mov	r8, [rsp+8*169]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*166]
	mov	r12, r11
	sub	r12, r10
	mov	qword [rsp+8*169], r8
	mov	qword [rsp+8*170], r10
	mov	qword [rsp+8*171], r12
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*172], rax
	mov	r9, [rsp+8*172]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*173], r8
	mov	rsi, [rsp+8*172]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*174], rax
	mov	r8, [rsp+8*174]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r10, r9
	imul	r10, r8
	mov	qword [rsp+8*174], r8
	mov	qword [rsp+8*175], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*176], rax
	mov	r9, [rsp+8*176]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*177], r8
	mov	rsi, [rsp+8*176]
	mov	rdi, [rsp+8*151]
	call	_caladd
	mov	[rsp+8*178], rax
	mov	r8, [rsp+8*178]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*175]
	mov	r12, r11
	sub	r12, r10
	mov	r14, [rsp+8*171]
	mov	r13, r14
	mov	qword [rsp+8*178], r8
	mov	r8, [rsp+8*162]
	mov	r15, r8
	mov	r10, [rsp+8*153]
	mov	r8, r10
	mov	qword [arg+8*63], r8
	mov	qword [arg+8*2], r12
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	point_set
	mov	r8, rax
	mov	r9, [rsp+8*152]
	mov	rax, r9
	mov	qword [rsp+8*180], r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_add:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*181], r8
	mov	qword [rsp+8*182], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*183], rax
	mov	r9, [rsp+8*183]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*184], r8
	mov	rsi, [rsp+8*183]
	mov	rdi, [rsp+8*182]
	call	_caladd
	mov	[rsp+8*185], rax
	mov	r8, [rsp+8*185]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r9, r9
	add	r9, r8
	mov	qword [rsp+8*185], r8
	mov	qword [rsp+8*88], r9
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*186], rax
	mov	r9, [rsp+8*186]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*187], r8
	mov	rsi, [rsp+8*186]
	mov	rdi, [rsp+8*182]
	call	_caladd
	mov	[rsp+8*188], rax
	mov	r8, [rsp+8*188]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r9, r9
	add	r9, r8
	mov	qword [rsp+8*188], r8
	mov	qword [rsp+8*89], r9
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*189], rax
	mov	r9, [rsp+8*189]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*190], r8
	mov	rsi, [rsp+8*189]
	mov	rdi, [rsp+8*182]
	call	_caladd
	mov	[rsp+8*191], rax
	mov	r8, [rsp+8*191]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r9, r9
	add	r9, r8
	mov	r10, [rsp+8*181]
	mov	rax, r10
	mov	qword [rsp+8*191], r8
	mov	qword [rsp+8*90], r9
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*192], r8
	mov	qword [rsp+8*193], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*194], rax
	mov	r9, [rsp+8*194]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*195], r8
	mov	rsi, [rsp+8*194]
	mov	rdi, [rsp+8*193]
	call	_caladd
	mov	[rsp+8*196], rax
	mov	r8, [rsp+8*196]
	mov	r8, [r8]
	mov	r9, [rsp+8*88]
	mov	r9, r9
	sub	r9, r8
	mov	qword [rsp+8*196], r8
	mov	qword [rsp+8*88], r9
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*197], rax
	mov	r9, [rsp+8*197]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*198], r8
	mov	rsi, [rsp+8*197]
	mov	rdi, [rsp+8*193]
	call	_caladd
	mov	[rsp+8*199], rax
	mov	r8, [rsp+8*199]
	mov	r8, [r8]
	mov	r9, [rsp+8*89]
	mov	r9, r9
	sub	r9, r8
	mov	qword [rsp+8*199], r8
	mov	qword [rsp+8*89], r9
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*200], rax
	mov	r9, [rsp+8*200]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*201], r8
	mov	rsi, [rsp+8*200]
	mov	rdi, [rsp+8*193]
	call	_caladd
	mov	[rsp+8*202], rax
	mov	r8, [rsp+8*202]
	mov	r8, [r8]
	mov	r9, [rsp+8*90]
	mov	r9, r9
	sub	r9, r8
	mov	r10, [rsp+8*192]
	mov	rax, r10
	mov	qword [rsp+8*202], r8
	mov	qword [rsp+8*90], r9
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_printPoint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, [rsp+8*88]
	mov	r10, r11
	mov	r12, r10
	mov	qword [rsp+8*203], r8
	mov	qword rdi, r10
	mov	qword [rsp+8*204], r12
	mov	rdi, [rsp+8*204]
	call	_toString
	mov	qword[rsp+8*205], rax
	mov	rsi, [rsp+8*205]
	mov	rdi, _t311
	call	_stradd
	mov	[rsp+8*206], rax
	mov	rsi, _t315
	mov	rdi, [rsp+8*206]
	call	_stradd
	mov	[rsp+8*207], rax
	mov	r9, [rsp+8*89]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*208], r10
	mov	rdi, [rsp+8*208]
	call	_toString
	mov	qword[rsp+8*209], rax
	mov	rsi, [rsp+8*209]
	mov	rdi, [rsp+8*207]
	call	_stradd
	mov	[rsp+8*210], rax
	mov	rsi, _t320
	mov	rdi, [rsp+8*210]
	call	_stradd
	mov	[rsp+8*211], rax
	mov	r9, [rsp+8*90]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*212], r10
	mov	rdi, [rsp+8*212]
	call	_toString
	mov	qword[rsp+8*213], rax
	mov	rsi, [rsp+8*213]
	mov	rdi, [rsp+8*211]
	call	_stradd
	mov	[rsp+8*214], rax
	mov	rsi, _t325
	mov	rdi, [rsp+8*214]
	call	_stradd
	mov	rdi, rax
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*215], r8
	mov	rdi, [rsp+8*215] 
	add	rdi, 1
	call	puts
	mov	r8, [rsp+8*216]
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1800
	mov	r8, [rsp+8*217]
	mov	rax, r8
	leave
	ret
	
QED:
	_newarr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	qword [rbp-18H], rdi
	mov	rax, qword [rbp-18H]
	add	rax, 1
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword [rbp-8H], rax
	mov	rax, qword [rbp-18H]
	add	rax, 1
	shl	rax, 4
	mov	rdx, rax
	mov	rax, qword [rbp-8H]
	mov	esi, 0
	mov	rdi, rax
	call	memset
	mov	rax, qword [rbp-8H]
	mov	rdx, qword [rbp-18H]
	mov	qword [rax], rdx
	mov	rax, qword [rbp-8H]
	leave
	ret

_stradd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	qword [rbp-28H], rdi
	mov	qword [rbp-30H], rsi
	mov	rax, qword [rbp-28H]
	movzx	eax, byte [rax]
	movzx	edx, al
	mov	rax, qword [rbp-30H]
	movzx	eax, byte [rax]
	movzx	eax, al
	add	eax, edx
	add	eax, 2
	cdqe
	mov	rdi, rax
	call	malloc
	mov	qword [rbp-18H], rax
	mov	rax, qword [rbp-28H]
	movzx	edx, byte [rax]
	mov	rax, qword [rbp-30H]
	movzx	eax, byte [rax]
	add	edx, eax
	mov	rax, qword [rbp-18H]
	mov	byte [rax], dl
	mov	qword [rbp-8H], 0
	mov	qword [rbp-10H], 0
	mov	qword [rbp-8H], 0
	jmp	cc_002

cc_001:
	add	qword [rbp-10H], 1
	mov	rdx, qword [rbp-10H]
	mov	rax, qword [rbp-18H]
	add	rdx, rax
	mov	rax, qword [rbp-8H]
	lea	rcx, [rax+1H]
	mov	rax, qword [rbp-28H]
	add	rax, rcx
	movzx	eax, byte [rax]
	mov	byte [rdx], al
	add	qword [rbp-8H], 1
cc_002:
	mov	rax, qword [rbp-28H]
	movzx	eax, byte [rax]
	movzx	eax, al
	cmp	rax, qword [rbp-8H]
	jg	cc_001
	mov	qword [rbp-8H], 0
	jmp	cc_004

cc_003:
	add	qword [rbp-10H], 1
	mov	rdx, qword [rbp-10H]
	mov	rax, qword [rbp-18H]
	add	rdx, rax
	mov	rax, qword [rbp-8H]
	lea	rcx, [rax+1H]
	mov	rax, qword [rbp-30H]
	add	rax, rcx
	movzx	eax, byte [rax]
	mov	byte [rdx], al
	add	qword [rbp-8H], 1
cc_004:
	mov	rax, qword [rbp-30H]
	movzx	eax, byte [rax]
	movzx	eax, al
	cmp	rax, qword [rbp-8H]
	jg	cc_003
	add	qword [rbp-10H], 1
	mov	rdx, qword [rbp-10H]
	mov	rax, qword [rbp-18H]
	add	rax, rdx
	mov	byte [rax], 0
	mov	rax, qword [rbp-18H]
	leave
	ret

_caladd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	qword [rbp-28H], rdi
	mov	qword [rbp-30H], rsi
	mov	rax, qword [rbp-30H]
	mov	rax, qword [rax]
	mov	qword [rbp-18H], rax
	cmp	qword [rbp-18H], 0
	jnz	mAd_005
	mov	rax, qword [rbp-28H]
	jmp	mAd_008

mAd_005:
	mov	rax, qword [rbp-28H]
	mov	qword [rbp-10H], rax
	mov	qword [rbp-8H], 1
	jmp	mAd_007

mAd_006:
	mov	rax, qword [rbp-8H]
	lea	rdx, [rax-1H]
	mov	rax, qword [rbp-30H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rdx, qword [rax]
	mov	rax, qword [rbp-10H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rax, qword [rax]
	mov	qword [rbp-10H], rax
	add	qword [rbp-8H], 1
mAd_007:
	mov	rax, qword [rbp-8H]
	cmp	rax, qword [rbp-18H]
	jl	mAd_006
	mov	rax, qword [rbp-18H]
	lea	rdx, [rax-1H]
	mov	rax, qword [rbp-30H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rdx, qword [rax]
	mov	rax, qword [rbp-10H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	qword [rbp-10H], rax
	mov	rax, qword [rbp-10H]
mAd_008:
	leave
	ret

_address:
	push	rbp
	mov	rbp, rsp
	mov	qword [rbp-8H], rdi
	mov	qword [rbp-10H], rsi
	mov	rax, qword [rbp-10H]
	add	rax, 1
	shl	rax, 4
	mov	rdx, rax
	mov	rax, qword [rbp-8H]
	add	rax, rdx
	pop	rbp
	ret

_toString:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	qword [rbp-38H], rdi
	mov	qword [rbp-8H], 0
	mov	qword [rbp-10H], 1
	cmp	qword [rbp-38H], 0
	jnz	L_001
	mov	qword [rbp-8H], 1
L_001:
	cmp	qword [rbp-38H], 0
	jns	L_002
	neg	qword [rbp-38H]
	mov	qword [rbp-10H], -1
	add	qword [rbp-8H], 1
L_002:
	mov	rax, qword [rbp-38H]
	mov	qword [rbp-18H], rax
	jmp	L_004

L_003:
	add	qword [rbp-8H], 1
	mov	rcx, qword [rbp-18H]
	mov	rdx, qword 6666666666666667H
	mov	rax, rcx
	imul	rdx
	sar	rdx, 2
	mov	rax, rcx
	sar	rax, 63
	sub	rdx, rax
	mov	rax, rdx
	mov	qword [rbp-18H], rax
L_004:
	cmp	qword [rbp-18H], 0
	jg	L_003
	mov	rax, qword [rbp-8H]
	add	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword [rbp-28H], rax
	mov	rax, qword [rbp-28H]
	mov	qword [rbp-20H], rax
	mov	rax, qword [rbp-8H]
	mov	edx, eax
	mov	rax, qword [rbp-20H]
	mov	byte [rax], dl
	add	qword [rbp-20H], 1
	cmp	qword [rbp-10H], -1
	jnz	L_005
	mov	rax, qword [rbp-20H]
	mov	byte [rax], 45
L_005:
	mov	rdx, qword [rbp-8H]
	mov	rax, qword [rbp-28H]
	add	rax, rdx
	mov	qword [rbp-20H], rax
	cmp	qword [rbp-38H], 0
	jnz	L_006
	mov	rax, qword [rbp-20H]
	mov	byte [rax], 48
	jmp	L_008

L_006:
	jmp	L_008

L_007:
	mov	rcx, qword [rbp-38H]
	mov	rdx, qword 6666666666666667H
	mov	rax, rcx
	imul	rdx
	sar	rdx, 2
	mov	rax, rcx
	sar	rax, 63
	sub	rdx, rax
	mov	rax, rdx
	shl	rax, 2
	add	rax, rdx
	add	rax, rax
	sub	rcx, rax
	mov	rdx, rcx
	mov	eax, edx
	add	eax, 48
	mov	edx, eax
	mov	rax, qword [rbp-20H]
	mov	byte [rax], dl
	sub	qword [rbp-20H], 1
	mov	rcx, qword [rbp-38H]
	mov	rdx, qword 6666666666666667H
	mov	rax, rcx
	imul	rdx
	sar	rdx, 2
	mov	rax, rcx
	sar	rax, 63
	sub	rdx, rax
	mov	rax, rdx
	mov	qword [rbp-38H], rax
L_008:
	cmp	qword [rbp-38H], 0
	jg	L_007
	mov	rax, qword [rbp-28H]
	leave
	ret



	section	.bss
gbl:
	resb	3784
buff.1788:
	resb	256
arg:
	resb	1024
trsp:
	resb	1024

	section	.data

formatln:
	db	"%s", 10, 0
	
format:
	db	"%s",  0
	
GS_31:
	db 25H, 6CH, 64H, 00H
	
GS_32:
	db 25H, 73H, 00H
	
_t325:
	 db 1,")",0

_t315:
	 db 2,", ",0

_t320:
	 db 2,", ",0

_t311:
	 db 1,"(",0

