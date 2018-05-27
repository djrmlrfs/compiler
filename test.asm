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
	sub	rsp, 1200
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 3184
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r10, 106
	mov	r9, r10
	mov	qword [rsp+8*1], r8
	mov	qword rdi, r9
	call	origin
	mov	r8, rax
	mov	qword [rsp+8*3], r8
	call	_getInt
	mov	[rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r10, 1
	mov	r11, r8
	sub	r11, r10
	mov	r12, r11
	mov	r13, r12
	mov	r15, 0
	mov	r14, r15
	mov	qword [gbl+8*5], r8
	mov	qword [rsp+8*6], r11
	mov	qword [gbl+8*7], r12
	mov	qword [gbl+8*8], r13
	mov	qword [gbl+8*9], r14
	
Lab_18:
	mov	r8, [gbl+8*9]
	mov	r9, [gbl+8*5]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*10], r10
	mov	r8, [rsp+8*10]
	cmp	r8, 0
	je	Lab_19
	mov	r9, 0
	mov	r8, r9
	mov	qword [gbl+8*11], r8
	
Lab_21:
	mov	r8, [gbl+8*11]
	mov	r9, [gbl+8*5]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*12], r10
	mov	r8, [rsp+8*12]
	cmp	r8, 0
	je	Lab_22
	mov	r8, 1
	mov	r9,r8
	neg	r9
	mov	r11, [gbl+8*14]
	mov	r10, r11
	mov	r12, [gbl+8*9]
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	r10, [r13]
	mov	r14, [gbl+8*11]
	mov	r13,r14
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r9
	mov	qword [rsp+8*13], r9
	mov	qword [rsp+8*15], r10
	mov	qword [rsp+8*16], r13
	
Lab_23:
	mov	r9, [gbl+8*11]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*17], r8
	mov	qword [gbl+8*11], r9
	jmp	Lab_21
	
Lab_22:
	
Lab_20:
	mov	r9, [gbl+8*9]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*18], r8
	mov	qword [gbl+8*9], r9
	jmp	Lab_18
	
Lab_19:
	mov	r8, 2
	mov	r9,r8
	neg	r9
	mov	r11, [gbl+8*20]
	mov	r10, r11
	mov	r12, 0
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r9
	mov	r14, 1
	mov	r15,r14
	neg	r15
	mov	r9, [gbl+8*24]
	mov	r8, r9
	mov	qword [rsp+8*21], r10
	mov	r10, 0
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	[r12],r15
	mov	qword [rsp+8*25], r8
	mov	r8, 2
	mov	r10,r8
	neg	r10
	mov	r8, r11
	mov	qword [rsp+8*26], r12
	mov	r12, 1
	mov	qword [rsp+8*22], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*28], r8
	mov	r8, r9
	mov	r10, 1
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*30], r8
	mov	r8, 1
	mov	[r12],r8
	mov	r8, r11
	mov	r10, 2
	mov	qword [rsp+8*31], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*32], r8
	mov	r8, 2
	mov	[r12],r8
	mov	r8, 1
	mov	r10,r8
	neg	r10
	mov	r8, r9
	mov	qword [rsp+8*33], r12
	mov	r12, 2
	mov	qword [rsp+8*29], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*35], r8
	mov	r8, r11
	mov	r10, 3
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*37], r8
	mov	r8, 2
	mov	[r12],r8
	mov	r8, r9
	mov	r10, 3
	mov	qword [rsp+8*38], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*39], r8
	mov	r8, 1
	mov	[r12],r8
	mov	r8, 1
	mov	r10,r8
	neg	r10
	mov	r8, r11
	mov	qword [rsp+8*40], r12
	mov	r12, 4
	mov	qword [rsp+8*36], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*42], r8
	mov	r8, 2
	mov	r10,r8
	neg	r10
	mov	r8, r9
	mov	r12, 4
	mov	qword [rsp+8*43], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*45], r8
	mov	r8, 1
	mov	r10,r8
	neg	r10
	mov	r8, r11
	mov	r12, 5
	mov	qword [rsp+8*46], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*48], r8
	mov	r8, r9
	mov	r10, 5
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*50], r8
	mov	r8, 2
	mov	[r12],r8
	mov	r8, r11
	mov	r10, 6
	mov	qword [rsp+8*51], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*52], r8
	mov	r8, 1
	mov	[r12],r8
	mov	r8, 2
	mov	r10,r8
	neg	r10
	mov	r8, r9
	mov	qword [rsp+8*53], r12
	mov	r12, 6
	mov	qword [rsp+8*49], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r10
	mov	qword [rsp+8*55], r8
	mov	r8, r11
	mov	r10, 7
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*57], r8
	mov	r8, 1
	mov	[r12],r8
	mov	r8, r9
	mov	r10, 7
	mov	qword [rsp+8*58], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*59], r8
	mov	r8, 2
	mov	[r12],r8
	mov	qword [rsp+8*60], r12
	mov	qword [rsp+8*56], r13
	mov	qword [rsp+8*23], r15
	
Lab_24:
	mov	r8, [gbl+8*61]
	mov	r9, [gbl+8*62]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*63], r10
	mov	r8, [rsp+8*63]
	cmp	r8, 0
	je	Lab_25
	mov	r9, [gbl+8*64]
	mov	r8, r9
	mov	r10, [gbl+8*61]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	r15, [gbl+8*69]
	mov	r14, r15
	mov	qword [rsp+8*65], r8
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	qword [rsp+8*66], r11
	mov	r11, [r8]
	mov	qword [rsp+8*71], r8
	mov	r8, r11
	mov	qword [rsp+8*72], r11
	mov	qword [rsp+8*67], r12
	mov	r12, [gbl+8*14]
	mov	r11, r12
	mov	qword [rsp+8*70], r14
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	qword [rsp+8*74], r11
	mov	r11, [r14]
	mov	qword [rsp+8*75], r14
	mov	r14, r11
	mov	qword [rsp+8*76], r11
	mov	r15, 0
	mov	r11, r15
	mov	qword [gbl+8*73], r8
	mov	qword [gbl+8*11], r11
	mov	qword [gbl+8*68], r13
	mov	qword [gbl+8*77], r14
	
Lab_26:
	mov	r8, [gbl+8*11]
	mov	r9, 8
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*78], r10
	mov	r8, [rsp+8*78]
	cmp	r8, 0
	je	Lab_27
	mov	r9, [gbl+8*20]
	mov	r8, r9
	mov	r10, [gbl+8*11]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, [gbl+8*68]
	mov	r14, r13
	add	r14, r12
	mov	qword [rsp+8*79], r8
	mov	r8, [gbl+8*24]
	mov	r15, r8
	mov	qword [rsp+8*80], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r15
	mov	qword [rsp+8*81], r12
	mov	r12, [r11]
	mov	qword [rsp+8*84], r11
	mov	r11, [gbl+8*73]
	mov	r13, r11
	add	r13, r12
	mov	r11, r13
	mov	qword [rsp+8*85], r12
	mov	r12, r14
	mov	qword rsi, r11
	mov	qword rdi, r12
	mov	qword [rsp+8*86], r13
	mov	qword [rsp+8*82], r14
	mov	qword [rsp+8*83], r15
	call	addList
	mov	r8, rax
	mov	qword [rsp+8*88], r8
	
Lab_28:
	mov	r9, [gbl+8*11]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*89], r8
	mov	qword [gbl+8*11], r9
	jmp	Lab_26
	
Lab_27:
	mov	r8, [gbl+8*90]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*91], r10
	mov	r8, [rsp+8*91]
	cmp	r8, 0
	je	Lab_30
	jmp	Lab_25
	
Lab_30:
	mov	r9, [gbl+8*61]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*92], r8
	mov	qword [gbl+8*61], r9
	jmp	Lab_24
	
Lab_25:
	mov	r8, [gbl+8*90]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*93], r10
	mov	r8, [rsp+8*93]
	cmp	r8, 0
	je	Lab_31
	mov	r9, [gbl+8*14]
	mov	r8, r9
	mov	r10, [gbl+8*8]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [gbl+8*7]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, [r11]
	mov	r14, r13
	mov	r15, r14
	mov	qword [rsp+8*94], r8
	mov	qword [rsp+8*95], r11
	mov	qword [rsp+8*96], r13
	mov	qword rdi, r14
	mov	qword [rsp+8*97], r15
	mov	rdi, [rsp+8*97]
	call	_toString
	mov	qword[rsp+8*98], rax
	mov	r9, [rsp+8*98]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*99], r10
	jmp	Lab_32
	
Lab_31:
	mov	r9, _t252
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*100], r10
	
Lab_32:
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
origin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1200
	mov	r9, rdi
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	qword [rsp+8*101], r8
	mov	qword [gbl+8*61], r10
	mov	qword [gbl+8*62], r12
	mov	rdi, [rsp+8*101]
	call	_newarr
	mov	qword [rsp+8*102], rax
	mov	r9, [rsp+8*102]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [gbl+8*14], r8
	mov	qword [gbl+8*9], r10
	
Lab_0:
	mov	r8, [gbl+8*9]
	mov	r9, [rsp+8*101]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*103], r10
	mov	r8, [rsp+8*103]
	cmp	r8, 0
	je	Lab_1
	mov	rdi, [rsp+8*101]
	call	_newarr
	mov	qword [rsp+8*104], rax
	mov	r9, [gbl+8*14]
	mov	r8, r9
	mov	r10, [gbl+8*9]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [rsp+8*104]
	mov	[r11],r12
	mov	r14, 0
	mov	r13, r14
	mov	qword [rsp+8*105], r8
	mov	qword [rsp+8*106], r11
	mov	qword [gbl+8*11], r13
	
Lab_3:
	mov	r8, [gbl+8*11]
	mov	r9, [rsp+8*101]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*107], r10
	mov	r8, [rsp+8*107]
	cmp	r8, 0
	je	Lab_4
	mov	r9, [gbl+8*14]
	mov	r8, r9
	mov	r10, [gbl+8*9]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [gbl+8*11]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, 0
	mov	[r11],r13
	mov	qword [rsp+8*108], r8
	mov	qword [rsp+8*109], r11
	
Lab_5:
	mov	r9, [gbl+8*11]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*110], r8
	mov	qword [gbl+8*11], r9
	jmp	Lab_3
	
Lab_4:
	
Lab_2:
	mov	r9, [gbl+8*9]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*111], r8
	mov	qword [gbl+8*9], r9
	jmp	Lab_0
	
Lab_1:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1200
	mov	r9, rdi
	mov	r8, r9
	mov	r10, [gbl+8*5]
	cmp	r8,r10
	mov	r11, 0
	setl	r11B
	mov	qword [rsp+8*112], r8
	mov	qword [rsp+8*113], r11
	mov	r8, [rsp+8*113]
	cmp	r8, 0
	jne	Lab_6
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*114], r8
	jmp	Lab_7
	
Lab_6:
	mov	r8, [rsp+8*112]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*115], r10
	mov	r9, [rsp+8*115]
	mov	r8, r9
	mov	qword [rsp+8*114], r8
	
Lab_7:
	mov	r8, [rsp+8*114]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
addList:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1200
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r9, r8
	mov	qword [rsp+8*116], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*117], r10
	call	check
	mov	r8, rax
	cmp	r8, 0
	mov	qword [rsp+8*118], r8
	jne	Lab_8
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*119], r8
	jmp	Lab_9
	
Lab_8:
	mov	r9, [rsp+8*117]
	mov	r8, r9
	mov	qword rdi, r8
	call	check
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*120], r8
	mov	qword [rsp+8*119], r9
	
Lab_9:
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_10
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*121], r8
	jmp	Lab_11
	
Lab_10:
	mov	r9, [gbl+8*14]
	mov	r8, r9
	mov	r10, [rsp+8*116]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [rsp+8*117]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, [r11]
	mov	r14, 1
	mov	r15,r14
	neg	r15
	cmp	r13,r15
	mov	qword [rsp+8*122], r8
	mov	r8, 0
	sete	r8B
	mov	qword [rsp+8*126], r8
	mov	qword [rsp+8*123], r11
	mov	qword [rsp+8*124], r13
	mov	qword [rsp+8*125], r15
	mov	r9, [rsp+8*126]
	mov	r8, r9
	mov	qword [rsp+8*121], r8
	
Lab_11:
	mov	r8, [rsp+8*121]
	cmp	r8, 0
	je	Lab_13
	mov	r9, [gbl+8*62]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*64]
	mov	r11, r12
	mov	r13,r9
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [rsp+8*116]
	mov	[r13],r14
	mov	qword [rsp+8*127], r8
	mov	r8, [gbl+8*69]
	mov	r15, r8
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r15
	mov	qword [gbl+8*62], r9
	mov	r9, [rsp+8*117]
	mov	[r10],r9
	mov	qword [rsp+8*131], r10
	mov	r10, [gbl+8*77]
	mov	qword [rsp+8*128], r11
	mov	r11, 1
	mov	qword [rsp+8*129], r13
	mov	r13, r10
	add	r13, r11
	mov	r11, [gbl+8*14]
	mov	r10, r11
	mov	r11,r14
	add	r11,1
	shl	r11,4
	add	r11,r10
	mov	r10, [r11]
	mov	r11,r9
	add	r11,1
	shl	r11,4
	add	r11,r10
	mov	[r11],r13
	mov	qword [rsp+8*133], r10
	mov	r10, [gbl+8*8]
	cmp	r14,r10
	mov	qword [rsp+8*134], r11
	mov	r11, 0
	sete	r11B
	mov	qword [rsp+8*135], r11
	mov	qword [rsp+8*132], r13
	mov	qword [rsp+8*130], r15
	mov	r8, [rsp+8*135]
	cmp	r8, 0
	jne	Lab_14
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	jmp	Lab_15
	
Lab_14:
	mov	r8, [rsp+8*117]
	mov	r9, [gbl+8*7]
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*137], r10
	mov	r9, [rsp+8*137]
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	
Lab_15:
	mov	r8, [rsp+8*136]
	cmp	r8, 0
	je	Lab_17
	mov	r9, 1
	mov	r8, r9
	mov	qword [gbl+8*90], r8
	
Lab_17:
	
Lab_13:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_global_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1200
	mov	rdi, 12000
	call	_newarr
	mov	qword [gbl+8*138], rax
	mov	r9, [gbl+8*138]
	mov	r8, r9
	mov	qword [gbl+8*64], r8
	mov	rdi, 12000
	call	_newarr
	mov	qword [gbl+8*139], rax
	mov	r9, [gbl+8*139]
	mov	r8, r9
	mov	qword [gbl+8*69], r8
	mov	rdi, 8
	call	_newarr
	mov	qword [gbl+8*140], rax
	mov	r9, [gbl+8*140]
	mov	r8, r9
	mov	qword [gbl+8*20], r8
	mov	rdi, 9
	call	_newarr
	mov	qword [gbl+8*141], rax
	mov	r9, [gbl+8*141]
	mov	r8, r9
	mov	qword [gbl+8*24], r8
	mov	r8, [rsp+8*142]
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
	resb	3184
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
	
_t252:
	 db 13,"no solution!",10,"",0

