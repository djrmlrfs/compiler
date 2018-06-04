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
	sub	rsp, 2016
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 4000
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
	mov	r9, [rsp+8*2]
	mov	r8, r9
	mov	qword [rsp+8*3], r8
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	qword [rsp+8*5], r8
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*6], rax
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	qword [rsp+8*7], r8
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*8], rax
	mov	r9, [rsp+8*8]
	mov	r8, r9
	mov	r11, [rsp+8*3]
	mov	r10, r11
	mov	r12, r10
	mov	qword [rsp+8*9], r8
	mov	qword [rsp+8*10], r10
	mov	qword [arg+8*63], r12
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r11, 463
	mov	r12,r11
	neg	r12
	mov	r14, 480
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*12], r8
	mov	r11, 849
	mov	r8, r11
	mov	r11, r9
	mov	qword rdi, r8
	mov	qword [rsp+8*13], r9
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*14], r12
	mov	qword [arg+8*2], r13
	mov	qword rsi, r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r11, 208
	mov	r12,r11
	neg	r12
	mov	r13, 150
	mov	r14,r13
	neg	r14
	mov	r15, r14
	mov	qword [rsp+8*18], r8
	mov	r11, 585
	mov	r8, r11
	mov	r11, r12
	mov	r12, r9
	mov	qword rsi, r8
	mov	qword [rsp+8*19], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	mov	qword [rsp+8*21], r14
	mov	qword [arg+8*2], r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*7]
	mov	r9, r10
	mov	r11, 670
	mov	r12,r11
	neg	r12
	mov	r13, 742
	mov	r14,r13
	neg	r14
	mov	r15, r14
	mov	qword [rsp+8*22], r8
	mov	r8, r12
	mov	r12, 360
	mov	r11, r12
	mov	r12, r9
	mov	qword rsi, r8
	mov	qword [rsp+8*23], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	mov	qword [rsp+8*25], r14
	mov	qword [arg+8*2], r15
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*9]
	mov	r9, r10
	mov	r11, 29
	mov	r12,r11
	neg	r12
	mov	r13, 591
	mov	r14,r13
	neg	r14
	mov	r15, 960
	mov	qword [rsp+8*26], r8
	mov	r8,r15
	neg	r8
	mov	r11, r8
	mov	r8, r14
	mov	r13, r12
	mov	r12, r9
	mov	qword rsi, r8
	mov	qword [rsp+8*27], r9
	mov	qword [arg+8*2], r11
	mov	qword [arg+8*63], r12
	mov	qword rdi, r13
	mov	qword [rsp+8*29], r14
	call	point_set
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*31], r8
	mov	qword [rsp+8*32], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r12, [rsp+8*7]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*33], r8
	mov	qword [rsp+8*34], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*9]
	mov	r9, r10
	mov	r12, [rsp+8*7]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*35], r8
	mov	qword [rsp+8*36], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*7]
	mov	r9, r10
	mov	r12, [rsp+8*3]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*37], r8
	mov	qword [rsp+8*38], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r12, [rsp+8*9]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*39], r8
	mov	qword [rsp+8*40], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*9]
	mov	r9, r10
	mov	r12, [rsp+8*7]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*41], r8
	mov	qword [rsp+8*42], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*7]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*43], r8
	mov	qword [rsp+8*44], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*45], r8
	mov	qword [rsp+8*46], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r11, r10
	mov	r12, r9
	mov	qword [rsp+8*47], r8
	mov	qword [rsp+8*48], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*7]
	mov	r9, r10
	mov	r11, r10
	mov	r12, r9
	mov	qword [rsp+8*49], r8
	mov	qword [rsp+8*50], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r12
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*9]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*53], r8
	mov	qword [rsp+8*54], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_add
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r12, [rsp+8*7]
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*56], r9
	mov	qword rdi, r11
	mov	qword [arg+8*63], r13
	call	point_sub
	mov	r8, rax
	mov	r10, [rsp+8*3]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*57], r8
	mov	qword [rsp+8*58], r9
	mov	qword [arg+8*63], r11
	call	point_sqrLen
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*59], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*60], r10
	mov	rdi, [rsp+8*60]
	call	_toString
	mov	qword[rsp+8*61], rax
	mov	r9, [rsp+8*61]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*62], r10
	mov	rdi, [rsp+8*62] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*5]
	mov	r8, r9
	mov	r10, r8
	mov	qword [rsp+8*63], r8
	mov	qword [arg+8*63], r10
	call	point_sqrLen
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*64], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*65], r10
	mov	rdi, [rsp+8*65]
	call	_toString
	mov	qword[rsp+8*66], rax
	mov	r9, [rsp+8*66]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*67], r10
	mov	rdi, [rsp+8*67] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*5]
	mov	r8, r9
	mov	r11, [rsp+8*7]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*68], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_sqrDis
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*69], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*70], r10
	mov	rdi, [rsp+8*70]
	call	_toString
	mov	qword[rsp+8*71], rax
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*72], r10
	mov	rdi, [rsp+8*72] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*9]
	mov	r8, r9
	mov	r11, [rsp+8*3]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*73], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_sqrDis
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*74], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*75], r10
	mov	rdi, [rsp+8*75]
	call	_toString
	mov	qword[rsp+8*76], rax
	mov	r9, [rsp+8*76]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*77], r10
	mov	rdi, [rsp+8*77] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*7]
	mov	r8, r9
	mov	r11, [rsp+8*3]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*78], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_dot
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*79], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*80], r10
	mov	rdi, [rsp+8*80]
	call	_toString
	mov	qword[rsp+8*81], rax
	mov	r9, [rsp+8*81]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*82], r10
	mov	rdi, [rsp+8*82] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*5]
	mov	r8, r9
	mov	r11, [rsp+8*9]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*83], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	call	point_cross
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*84], r8
	mov	qword [arg+8*63], r9
	call	point_printPoint
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*3]
	mov	r10, r11
	mov	r12, r10
	mov	qword [rsp+8*85], r8
	mov	qword [rsp+8*84], r9
	mov	qword [rsp+8*86], r10
	mov	qword [arg+8*63], r12
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*5]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*87], r8
	mov	qword [rsp+8*88], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*7]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*89], r8
	mov	qword [rsp+8*90], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r10, [rsp+8*9]
	mov	r9, r10
	mov	r11, r9
	mov	qword [rsp+8*91], r8
	mov	qword [rsp+8*92], r9
	mov	qword [arg+8*63], r11
	call	point_printPoint
	mov	r8, rax
	mov	r9, 0
	mov	rax, r9
	mov	qword [rsp+8*93], r8
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
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, 0
	mov	[r11],r12
	mov	r13, 1
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r8
	mov	r15, 0
	mov	[r14],r15
	mov	r10, 2
	mov	qword [rsp+8*95], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r10, 0
	mov	[r11],r10
	mov	rax, r8
	mov	qword [rsp+8*94], r8
	mov	qword [rsp+8*97], r11
	mov	qword [rsp+8*96], r14
	leave
	ret
	
point_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r13, rsi
	mov	r12, r13
	mov	r15, [arg+8*2]
	mov	r14, r15
	mov	r11, 0
	mov	r9,r11
	add	r9,1
	shl	r9,4
	add	r9,r8
	mov	[r9],r10
	mov	qword [rsp+8*102], r9
	mov	r9, 1
	mov	qword [rsp+8*99], r10
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r12
	mov	r9, 2
	mov	qword [rsp+8*103], r10
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r14
	mov	qword [rsp+8*98], r8
	mov	r8, [rsp+8*105]
	mov	rax, r8
	mov	qword [rsp+8*104], r10
	mov	qword [rsp+8*100], r12
	mov	qword [rsp+8*101], r14
	leave
	ret
	
point_sqrLen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r11, [r11]
	mov	r12, 0
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r11, [r11]
	mov	r13, r11
	imul	r13, r11
	mov	r14, 1
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	r15, [r15]
	mov	r10, 1
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	r15, [r15]
	mov	r10, r15
	imul	r10, r15
	mov	r12, r13
	add	r12, r10
	mov	r10, 2
	mov	r13,r10
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	r10, 2
	mov	r13,r10
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	qword [rsp+8*106], r8
	mov	r8, r13
	imul	r8, r13
	mov	r10, r12
	add	r10, r8
	mov	rax, r10
	mov	qword [rsp+8*113], r8
	mov	qword [rsp+8*114], r10
	mov	qword [rsp+8*107], r11
	mov	qword [rsp+8*111], r12
	mov	qword [rsp+8*112], r13
	mov	qword [rsp+8*109], r15
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_sqrDis:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	qword [rsp+8*115], r8
	mov	qword [rsp+8*116], r10
	mov	qword [rsp+8*107], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*117], rax
	mov	r9, [rsp+8*117]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*118], r8
	mov	rsi, [rsp+8*117]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*119], rax
	mov	r8, [rsp+8*119]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*115]
	mov	r12, 0
	mov	r9,r12
	add	r9,1
	shl	r9,4
	add	r9,r11
	mov	r9, [r9]
	mov	qword [rsp+8*119], r8
	mov	qword [rsp+8*107], r9
	mov	qword [rsp+8*120], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*121], rax
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*122], r8
	mov	rsi, [rsp+8*121]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*123], rax
	mov	r8, [rsp+8*123]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*120]
	mov	r12, r11
	imul	r12, r10
	mov	r13, [rsp+8*115]
	mov	r14, 1
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	r15, [r15]
	mov	qword [rsp+8*123], r8
	mov	qword [rsp+8*124], r10
	mov	qword [rsp+8*125], r12
	mov	qword [rsp+8*109], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*126], rax
	mov	r9, [rsp+8*126]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*127], r8
	mov	rsi, [rsp+8*126]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*128], rax
	mov	r8, [rsp+8*128]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*115]
	mov	r12, 1
	mov	r9,r12
	add	r9,1
	shl	r9,4
	add	r9,r11
	mov	r9, [r9]
	mov	qword [rsp+8*128], r8
	mov	qword [rsp+8*109], r9
	mov	qword [rsp+8*129], r10
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*130], rax
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*131], r8
	mov	rsi, [rsp+8*130]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*132], rax
	mov	r8, [rsp+8*132]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*129]
	mov	r12, r11
	imul	r12, r10
	mov	r13, [rsp+8*125]
	mov	r14, r13
	add	r14, r12
	mov	r15, [rsp+8*115]
	mov	qword [rsp+8*132], r8
	mov	r8, 2
	mov	r10,r8
	add	r10,1
	shl	r10,4
	add	r10,r15
	mov	r10, [r10]
	mov	qword [rsp+8*112], r10
	mov	qword [rsp+8*134], r12
	mov	qword [rsp+8*135], r14
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
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*137], r8
	mov	rsi, [rsp+8*136]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*138], rax
	mov	r8, [rsp+8*138]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*115]
	mov	r12, 2
	mov	r9,r12
	add	r9,1
	shl	r9,4
	add	r9,r11
	mov	r9, [r9]
	mov	qword [rsp+8*138], r8
	mov	qword [rsp+8*112], r9
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
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*141], r8
	mov	rsi, [rsp+8*140]
	mov	rdi, [rsp+8*116]
	call	_caladd
	mov	[rsp+8*142], rax
	mov	r8, [rsp+8*142]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*139]
	mov	r12, r11
	imul	r12, r10
	mov	r13, [rsp+8*135]
	mov	r14, r13
	add	r14, r12
	mov	rax, r14
	mov	qword [rsp+8*142], r8
	mov	qword [rsp+8*143], r10
	mov	qword [rsp+8*144], r12
	mov	qword [rsp+8*145], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_dot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	qword [rsp+8*146], r8
	mov	qword [rsp+8*147], r10
	mov	qword [rsp+8*107], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*148], rax
	mov	r9, [rsp+8*148]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*149], r8
	mov	rsi, [rsp+8*148]
	mov	rdi, [rsp+8*147]
	call	_caladd
	mov	[rsp+8*150], rax
	mov	r8, [rsp+8*150]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*146]
	mov	r12, 1
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r13, [r13]
	mov	qword [rsp+8*150], r8
	mov	qword [rsp+8*151], r10
	mov	qword [rsp+8*109], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*152], rax
	mov	r9, [rsp+8*152]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*153], r8
	mov	rsi, [rsp+8*152]
	mov	rdi, [rsp+8*147]
	call	_caladd
	mov	[rsp+8*154], rax
	mov	r8, [rsp+8*154]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*151]
	mov	r12, r11
	add	r12, r10
	mov	r13, [rsp+8*146]
	mov	r14, 2
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	r15, [r15]
	mov	qword [rsp+8*154], r8
	mov	qword [rsp+8*155], r10
	mov	qword [rsp+8*156], r12
	mov	qword [rsp+8*112], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*157], rax
	mov	r9, [rsp+8*157]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*158], r8
	mov	rsi, [rsp+8*157]
	mov	rdi, [rsp+8*147]
	call	_caladd
	mov	[rsp+8*159], rax
	mov	r8, [rsp+8*159]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*156]
	mov	r12, r11
	add	r12, r10
	mov	rax, r12
	mov	qword [rsp+8*159], r8
	mov	qword [rsp+8*160], r10
	mov	qword [rsp+8*161], r12
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_cross:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*162], r8
	mov	qword [rsp+8*163], r10
	mov	rdi, 3
	call	_newarr
	mov	qword [rsp+8*164], rax
	mov	r9, [rsp+8*164]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*162]
	mov	r12, 1
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r13, [r13]
	mov	qword [rsp+8*165], r8
	mov	qword [rsp+8*166], r10
	mov	qword [rsp+8*109], r13
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
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*169], rax
	mov	r8, [rsp+8*169]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*162]
	mov	r12, 2
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r13, [r13]
	mov	qword [rsp+8*169], r8
	mov	qword [rsp+8*170], r10
	mov	qword [rsp+8*112], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*171], rax
	mov	r9, [rsp+8*171]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*172], r8
	mov	rsi, [rsp+8*171]
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*173], rax
	mov	r8, [rsp+8*173]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*170]
	mov	r12, r11
	sub	r12, r10
	mov	r13, [rsp+8*162]
	mov	r14, 2
	mov	r9,r14
	add	r9,1
	shl	r9,4
	add	r9,r13
	mov	r9, [r9]
	mov	qword [rsp+8*173], r8
	mov	qword [rsp+8*112], r9
	mov	qword [rsp+8*174], r10
	mov	qword [rsp+8*175], r12
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
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*178], rax
	mov	r8, [rsp+8*178]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*162]
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r13, [r13]
	mov	qword [rsp+8*178], r8
	mov	qword [rsp+8*179], r10
	mov	qword [rsp+8*107], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*180], rax
	mov	r9, [rsp+8*180]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*181], r8
	mov	rsi, [rsp+8*180]
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*182], rax
	mov	r8, [rsp+8*182]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*179]
	mov	r12, r11
	sub	r12, r10
	mov	r13, [rsp+8*162]
	mov	r14, 0
	mov	r9,r14
	add	r9,1
	shl	r9,4
	add	r9,r13
	mov	r9, [r9]
	mov	qword [rsp+8*182], r8
	mov	qword [rsp+8*107], r9
	mov	qword [rsp+8*183], r10
	mov	qword [rsp+8*184], r12
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*185], rax
	mov	r9, [rsp+8*185]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*186], r8
	mov	rsi, [rsp+8*185]
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*187], rax
	mov	r8, [rsp+8*187]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*162]
	mov	r12, 1
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r13, [r13]
	mov	qword [rsp+8*187], r8
	mov	qword [rsp+8*188], r10
	mov	qword [rsp+8*109], r13
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
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*190], r8
	mov	rsi, [rsp+8*189]
	mov	rdi, [rsp+8*163]
	call	_caladd
	mov	[rsp+8*191], rax
	mov	r8, [rsp+8*191]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	imul	r10, r8
	mov	r11, [rsp+8*188]
	mov	r12, r11
	sub	r12, r10
	mov	r13, r12
	mov	r15, [rsp+8*184]
	mov	r14, r15
	mov	qword [rsp+8*191], r8
	mov	r10, [rsp+8*175]
	mov	r8, r10
	mov	r11, [rsp+8*166]
	mov	r10, r11
	mov	qword rdi, r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*193], r12
	mov	qword [arg+8*2], r13
	mov	qword rsi, r14
	call	point_set
	mov	r8, rax
	mov	r9, [rsp+8*165]
	mov	rax, r9
	mov	qword [rsp+8*194], r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_add:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	qword [rsp+8*195], r8
	mov	qword [rsp+8*196], r10
	mov	qword [rsp+8*107], r13
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
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*198], r8
	mov	rsi, [rsp+8*197]
	mov	rdi, [rsp+8*196]
	call	_caladd
	mov	[rsp+8*199], rax
	mov	r8, [rsp+8*199]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	add	r10, r8
	mov	r11, [rsp+8*195]
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	r14, 1
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r11
	mov	r15, [r15]
	mov	qword [rsp+8*199], r8
	mov	qword [rsp+8*200], r10
	mov	qword [rsp+8*201], r13
	mov	qword [rsp+8*109], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*202], rax
	mov	r9, [rsp+8*202]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*203], r8
	mov	rsi, [rsp+8*202]
	mov	rdi, [rsp+8*196]
	call	_caladd
	mov	[rsp+8*204], rax
	mov	r8, [rsp+8*204]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	add	r10, r8
	mov	r11, [rsp+8*195]
	mov	r12, 1
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	r14, 2
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r11
	mov	r15, [r15]
	mov	qword [rsp+8*204], r8
	mov	qword [rsp+8*205], r10
	mov	qword [rsp+8*206], r13
	mov	qword [rsp+8*112], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*207], rax
	mov	r9, [rsp+8*207]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*208], r8
	mov	rsi, [rsp+8*207]
	mov	rdi, [rsp+8*196]
	call	_caladd
	mov	[rsp+8*209], rax
	mov	r8, [rsp+8*209]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	add	r10, r8
	mov	r11, [rsp+8*195]
	mov	r12, 2
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	rax, r11
	mov	qword [rsp+8*209], r8
	mov	qword [rsp+8*210], r10
	mov	qword [rsp+8*211], r13
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r11, rdi
	mov	r10, r11
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	r13, [r13]
	mov	qword [rsp+8*212], r8
	mov	qword [rsp+8*213], r10
	mov	qword [rsp+8*107], r13
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*214], rax
	mov	r9, [rsp+8*214]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*215], r8
	mov	rsi, [rsp+8*214]
	mov	rdi, [rsp+8*213]
	call	_caladd
	mov	[rsp+8*216], rax
	mov	r8, [rsp+8*216]
	mov	r8, [r8]
	mov	r9, [rsp+8*107]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*212]
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	r14, 1
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r11
	mov	r15, [r15]
	mov	qword [rsp+8*216], r8
	mov	qword [rsp+8*217], r10
	mov	qword [rsp+8*218], r13
	mov	qword [rsp+8*109], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*219], rax
	mov	r9, [rsp+8*219]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 1
	mov	[r8],r11
	mov	qword [rsp+8*220], r8
	mov	rsi, [rsp+8*219]
	mov	rdi, [rsp+8*213]
	call	_caladd
	mov	[rsp+8*221], rax
	mov	r8, [rsp+8*221]
	mov	r8, [r8]
	mov	r9, [rsp+8*109]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*212]
	mov	r12, 1
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	r14, 2
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r11
	mov	r15, [r15]
	mov	qword [rsp+8*221], r8
	mov	qword [rsp+8*222], r10
	mov	qword [rsp+8*223], r13
	mov	qword [rsp+8*112], r15
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*224], rax
	mov	r9, [rsp+8*224]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 2
	mov	[r8],r11
	mov	qword [rsp+8*225], r8
	mov	rsi, [rsp+8*224]
	mov	rdi, [rsp+8*213]
	call	_caladd
	mov	[rsp+8*226], rax
	mov	r8, [rsp+8*226]
	mov	r8, [r8]
	mov	r9, [rsp+8*112]
	mov	r10, r9
	sub	r10, r8
	mov	r11, [rsp+8*212]
	mov	r12, 2
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	rax, r11
	mov	qword [rsp+8*226], r8
	mov	qword [rsp+8*227], r10
	mov	qword [rsp+8*228], r13
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
point_printPoint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r11, [r11]
	mov	r12, r11
	mov	r13, r12
	mov	qword [rsp+8*229], r8
	mov	qword [rsp+8*107], r11
	mov	qword rdi, r12
	mov	qword [rsp+8*230], r13
	mov	rdi, [rsp+8*230]
	call	_toString
	mov	qword[rsp+8*231], rax
	mov	rsi, [rsp+8*231]
	mov	rdi, _t361
	call	_stradd
	mov	[rsp+8*232], rax
	mov	rsi, _t366
	mov	rdi, [rsp+8*232]
	call	_stradd
	mov	[rsp+8*233], rax
	mov	r8, [rsp+8*229]
	mov	r9, 1
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r10, [r10]
	mov	r11, r10
	mov	r12, r11
	mov	qword [rsp+8*109], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*234], r12
	mov	rdi, [rsp+8*234]
	call	_toString
	mov	qword[rsp+8*235], rax
	mov	rsi, [rsp+8*235]
	mov	rdi, [rsp+8*233]
	call	_stradd
	mov	[rsp+8*236], rax
	mov	rsi, _t372
	mov	rdi, [rsp+8*236]
	call	_stradd
	mov	[rsp+8*237], rax
	mov	r8, [rsp+8*229]
	mov	r9, 2
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r10, [r10]
	mov	r11, r10
	mov	r12, r11
	mov	qword [rsp+8*112], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*238], r12
	mov	rdi, [rsp+8*238]
	call	_toString
	mov	qword[rsp+8*239], rax
	mov	rsi, [rsp+8*239]
	mov	rdi, [rsp+8*237]
	call	_stradd
	mov	[rsp+8*240], rax
	mov	rsi, _t378
	mov	rdi, [rsp+8*240]
	call	_stradd
	mov	[rsp+8*241], rax
	mov	r9, [rsp+8*241]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*242], r10
	mov	rdi, [rsp+8*242] 
	add	rdi, 1
	call	puts
	mov	r8, [rsp+8*243]
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2016
	mov	r8, [rsp+8*244]
	mov	rax, r8
	leave
	ret
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


QED:


	section	.bss
gbl:
	resb	4000
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
	
_t361:
	 db 1,"(",0

_t372:
	 db 2,", ",0

_t366:
	 db 2,", ",0

_t378:
	 db 1,")",0

