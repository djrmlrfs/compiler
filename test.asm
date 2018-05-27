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
	sub	rsp, 1496
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 3480
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r10, 0
	mov	r9, r10
	mov	r12, 0
	mov	r11, r12
	mov	r14, 0
	mov	r13, r14
	mov	r15, 3
	mov	qword [rsp+8*1], r8
	mov	r8, 7
	mov	r10, r15
	imul	r10, r8
	mov	r8, 10
	mov	r12, r10
	imul	r12, r8
	mov	r8, r12
	mov	r12, 0
	mov	r10, r12
	mov	qword [gbl+8*7], r8
	mov	qword [rsp+8*2], r9
	mov	qword [gbl+8*8], r10
	mov	qword [rsp+8*3], r11
	mov	qword [rsp+8*4], r13
	mov	rdi, 100
	call	_newarr
	mov	qword [rsp+8*9], rax
	mov	r9, [rsp+8*9]
	mov	r8, r9
	xor	rdx, rdx
	mov	r10, [gbl+8*11]
	mov	rax, r10
	mov	r11, [gbl+8*12]
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rax
	mov	r13, r12
	xor	rdx, rdx
	mov	rax, r10
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r14, rdx
	mov	r15, r14
	mov	r12, [gbl+8*7]
	mov	r9, r12
	mov	qword [gbl+8*10], r8
	mov	qword rdi, r9
	mov	qword [gbl+8*14], r13
	mov	qword [rsp+8*15], r14
	mov	qword [gbl+8*16], r15
	call	pd
	mov	r8, rax
	mov	r9, 0
	cmp	r8, 0
	sete	r9B
	cmp	r9, 0
	mov	qword [rsp+8*18], r8
	mov	qword [rsp+8*19], r9
	je	Lab_47
	mov	r9, _t220
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*20], r10
	mov	rdi, [rsp+8*20] 
	add	rdi, 1
	call	puts
	mov	r8, 1
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	
Lab_47:
	mov	r9, _t224
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*21], r10
	mov	rdi, [rsp+8*21] 
	add	rdi, 1
	call	puts
	mov	r9, 3654898
	mov	r8, r9
	mov	qword rdi, r8
	call	initialize
	mov	r8, rax
	mov	qword [rsp+8*22], r8
	call	random
	mov	r8, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r9, 10
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	mov	r11, 1
	mov	r12, r10
	add	r12, r11
	mov	r13, r12
	mov	r14, r13
	mov	r15, r14
	mov	qword [rsp+8*23], r8
	mov	qword [rsp+8*24], r10
	mov	qword [rsp+8*25], r12
	mov	qword [gbl+8*26], r13
	mov	qword rdi, r14
	mov	qword [rsp+8*27], r15
	mov	rdi, [rsp+8*27]
	call	_toString
	mov	qword[rsp+8*28], rax
	mov	r9, [rsp+8*28]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*29], r10
	mov	rdi, [rsp+8*29] 
	add	rdi, 1
	call	puts
	
Lab_48:
	mov	r8, [gbl+8*26]
	mov	r9, 1
	mov	r10, r8
	sub	r10, r9
	mov	r11, [rsp+8*2]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*30], r10
	mov	qword [rsp+8*31], r12
	mov	r8, [rsp+8*31]
	cmp	r8, 0
	je	Lab_49
	call	random
	mov	r8, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r9, 10
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	mov	r11, 1
	mov	r12, r10
	add	r12, r11
	mov	r14, [gbl+8*10]
	mov	r13, r14
	mov	r15, [rsp+8*2]
	mov	qword [rsp+8*32], r8
	mov	r8,r15
	add	r8,1
	shl	r8,4
	add	r8,r13
	mov	[r8],r12
	mov	qword [rsp+8*36], r8
	mov	qword [rsp+8*33], r10
	mov	qword [rsp+8*34], r12
	mov	qword [rsp+8*35], r13
	
Lab_51:
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*2]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, [rsp+8*3]
	mov	r14, r12
	add	r14, r13
	mov	r15, [gbl+8*7]
	cmp	r14,r15
	mov	qword [rsp+8*37], r8
	mov	r8, 0
	setg	r8B
	mov	qword [rsp+8*41], r8
	mov	qword [rsp+8*38], r11
	mov	qword [rsp+8*39], r12
	mov	qword [rsp+8*40], r14
	mov	r8, [rsp+8*41]
	cmp	r8, 0
	je	Lab_52
	call	random
	mov	r8, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r9, 10
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	mov	r11, 1
	mov	r12, r10
	add	r12, r11
	mov	r14, [gbl+8*10]
	mov	r13, r14
	mov	r15, [rsp+8*2]
	mov	qword [rsp+8*42], r8
	mov	r8,r15
	add	r8,1
	shl	r8,4
	add	r8,r13
	mov	[r8],r12
	mov	qword [rsp+8*46], r8
	mov	qword [rsp+8*43], r10
	mov	qword [rsp+8*44], r12
	mov	qword [rsp+8*45], r13
	jmp	Lab_51
	
Lab_52:
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*2]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, [rsp+8*3]
	mov	r14, r13
	add	r14, r12
	mov	r13, r14
	mov	qword [rsp+8*47], r8
	mov	qword [rsp+8*48], r11
	mov	qword [rsp+8*49], r12
	mov	qword [rsp+8*3], r13
	mov	qword [rsp+8*50], r14
	
Lab_50:
	mov	r8, [rsp+8*2]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*2], r8
	jmp	Lab_48
	
Lab_49:
	mov	r8, [gbl+8*7]
	mov	r9, [rsp+8*3]
	mov	r10, r8
	sub	r10, r9
	mov	r11, [gbl+8*26]
	mov	r12, 1
	mov	r13, r11
	sub	r13, r12
	mov	r15, [gbl+8*10]
	mov	r14, r15
	mov	r8,r13
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	[r8],r10
	mov	qword [rsp+8*54], r8
	mov	qword [rsp+8*51], r10
	mov	qword [rsp+8*52], r13
	mov	qword [rsp+8*53], r14
	call	show
	mov	r8, rax
	mov	qword [rsp+8*55], r8
	call	merge
	mov	r8, rax
	mov	qword [rsp+8*56], r8
	
Lab_53:
	call	win
	mov	r8, rax
	mov	r9, 0
	cmp	r8, 0
	sete	r9B
	cmp	r9, 0
	mov	qword [rsp+8*57], r8
	mov	qword [rsp+8*58], r9
	je	Lab_54
	mov	r8, [rsp+8*4]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	qword [rsp+8*4], r8
	mov	qword rdi, r10
	mov	qword [rsp+8*59], r11
	mov	rdi, [rsp+8*59]
	call	_toString
	mov	qword[rsp+8*60], rax
	mov	rsi, [rsp+8*60]
	mov	rdi, _t274
	call	_stradd
	mov	[rsp+8*61], rax
	mov	rsi, _t279
	mov	rdi, [rsp+8*61]
	call	_stradd
	mov	[rsp+8*62], rax
	mov	r9, [rsp+8*62]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*63], r10
	mov	rdi, [rsp+8*63] 
	add	rdi, 1
	call	puts
	call	move
	mov	r8, rax
	mov	qword [rsp+8*64], r8
	call	merge
	mov	r8, rax
	mov	qword [rsp+8*65], r8
	call	show
	mov	r8, rax
	mov	qword [rsp+8*66], r8
	jmp	Lab_53
	
Lab_54:
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*67], r10
	mov	rdi, [rsp+8*67]
	call	_toString
	mov	qword[rsp+8*68], rax
	mov	rsi, [rsp+8*68]
	mov	rdi, _t286
	call	_stradd
	mov	[rsp+8*69], rax
	mov	rsi, _t290
	mov	rdi, [rsp+8*69]
	call	_stradd
	mov	[rsp+8*70], rax
	mov	r9, [rsp+8*70]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*71], r10
	mov	rdi, [rsp+8*71] 
	add	rdi, 1
	call	puts
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
	
random:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	xor	rdx, rdx
	mov	r8, [gbl+8*72]
	mov	rax, r8
	mov	r9, [gbl+8*14]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	mov	r11, [gbl+8*12]
	mov	r12, r11
	imul	r12, r10
	xor	rdx, rdx
	mov	rax, r8
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r13, rax
	mov	r14, [gbl+8*16]
	mov	r15, r14
	imul	r15, r13
	mov	r9, r12
	sub	r9, r15
	mov	r10, r9
	mov	r9, 0
	cmp	r10,r9
	mov	r12, 0
	setge	r12B
	mov	qword [rsp+8*78], r10
	mov	qword [rsp+8*79], r12
	mov	qword [rsp+8*75], r13
	mov	qword [rsp+8*76], r15
	mov	r8, [rsp+8*79]
	cmp	r8, 0
	je	Lab_0
	mov	r9, [rsp+8*78]
	mov	r8, r9
	mov	qword [gbl+8*72], r8
	jmp	Lab_1
	
Lab_0:
	mov	r8, [rsp+8*78]
	mov	r9, [gbl+8*11]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*80], r10
	mov	qword [gbl+8*72], r11
	
Lab_1:
	mov	r8, [gbl+8*72]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, rdi
	mov	r8, r9
	mov	r10, r8
	mov	r11, 0
	mov	rax, r11
	mov	qword [rsp+8*81], r8
	mov	qword [gbl+8*72], r10
	leave
	ret
	
swap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, [gbl+8*10]
	mov	r12, r13
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r12
	mov	r15, [r14]
	mov	qword [rsp+8*85], r12
	mov	r12, r15
	mov	qword [rsp+8*86], r14
	mov	r14, r13
	mov	qword [rsp+8*87], r15
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r14
	mov	qword [rsp+8*89], r14
	mov	r14, [r15]
	mov	qword [rsp+8*90], r15
	mov	r15, r13
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r15
	mov	[r13],r14
	mov	qword [rsp+8*82], r8
	mov	qword [rsp+8*93], r13
	mov	r13, [gbl+8*10]
	mov	r8, r13
	mov	qword [rsp+8*91], r14
	mov	r14,r10
	add	r14,1
	shl	r14,4
	add	r14,r8
	mov	[r14],r12
	mov	qword [rsp+8*94], r8
	mov	r8, 0
	mov	rax, r8
	mov	qword [rsp+8*84], r10
	mov	qword [rsp+8*88], r12
	mov	qword [rsp+8*95], r14
	mov	qword [rsp+8*92], r15
	leave
	ret
	
pd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*96], r8
	
Lab_2:
	mov	r8, [gbl+8*8]
	mov	r9, [rsp+8*96]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*97], r10
	mov	r8, [rsp+8*97]
	cmp	r8, 0
	je	Lab_3
	mov	r8, [gbl+8*8]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	r11, r8
	imul	r11, r10
	xor	rdx, rdx
	mov	rax, r11
	mov	r12, 2
	mov	rbx, r12
	cdq
	idiv rbx
	mov	r13, rax
	mov	r14, [rsp+8*96]
	cmp	r14,r13
	mov	r15, 0
	sete	r15B
	mov	qword [rsp+8*98], r10
	mov	qword [rsp+8*99], r11
	mov	qword [rsp+8*100], r13
	mov	qword [rsp+8*101], r15
	mov	r8, [rsp+8*101]
	cmp	r8, 0
	je	Lab_6
	mov	r8, 1
	mov	rax, r8
	leave
	ret
	
Lab_6:
	
Lab_4:
	mov	r8, [gbl+8*8]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [gbl+8*8], r8
	jmp	Lab_2
	
Lab_3:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
show:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*102], r8
	
Lab_7:
	mov	r8, [rsp+8*102]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*103], r10
	mov	r8, [rsp+8*103]
	cmp	r8, 0
	je	Lab_8
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*102]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	r14, r13
	mov	qword [rsp+8*104], r8
	mov	qword [rsp+8*105], r11
	mov	qword [rsp+8*106], r12
	mov	qword rdi, r13
	mov	qword [rsp+8*107], r14
	mov	rdi, [rsp+8*107]
	call	_toString
	mov	qword[rsp+8*108], rax
	mov	rsi, _t107
	mov	rdi, [rsp+8*108]
	call	_stradd
	mov	[rsp+8*109], rax
	mov	r9, [rsp+8*109]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*110], r10
	mov	rdi, format
	mov	rsi,[rsp+8*110] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	
Lab_9:
	mov	r8, [rsp+8*102]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*102], r8
	jmp	Lab_7
	
Lab_8:
	mov	r9, _t111
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*111], r10
	mov	rdi, [rsp+8*111] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
win:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	rdi, 100
	call	_newarr
	mov	qword [rsp+8*112], rax
	mov	r9, [rsp+8*112]
	mov	r8, r9
	mov	r10, [gbl+8*26]
	mov	r11, [gbl+8*8]
	cmp	r10,r11
	mov	r12, 0
	setne	r12B
	mov	qword [rsp+8*113], r8
	mov	qword [rsp+8*114], r12
	mov	r8, [rsp+8*114]
	cmp	r8, 0
	je	Lab_11
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_11:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*115], r8
	
Lab_12:
	mov	r8, [rsp+8*115]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*116], r10
	mov	r8, [rsp+8*116]
	cmp	r8, 0
	je	Lab_13
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*115]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*113]
	mov	r13, r14
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	qword [rsp+8*117], r8
	mov	qword [rsp+8*118], r11
	mov	qword [rsp+8*119], r12
	mov	qword [rsp+8*120], r13
	mov	qword [rsp+8*121], r15
	
Lab_14:
	mov	r8, [rsp+8*115]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*115], r8
	jmp	Lab_12
	
Lab_13:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*122], r8
	
Lab_15:
	mov	r8, [gbl+8*26]
	mov	r9, 1
	mov	r10, r8
	sub	r10, r9
	mov	r11, [rsp+8*122]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*123], r10
	mov	qword [rsp+8*124], r12
	mov	r8, [rsp+8*124]
	cmp	r8, 0
	je	Lab_16
	mov	r8, [rsp+8*122]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*125], r10
	mov	qword [rsp+8*115], r11
	
Lab_18:
	mov	r8, [rsp+8*115]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*126], r10
	mov	r8, [rsp+8*126]
	cmp	r8, 0
	je	Lab_19
	mov	r9, [rsp+8*113]
	mov	r8, r9
	mov	r10, [rsp+8*122]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r9
	mov	r14, [rsp+8*115]
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	qword [rsp+8*127], r8
	mov	r8, [r15]
	cmp	r12,r8
	mov	qword [rsp+8*128], r11
	mov	r11, 0
	setg	r11B
	mov	qword [rsp+8*132], r8
	mov	qword [rsp+8*133], r11
	mov	qword [rsp+8*129], r12
	mov	qword [rsp+8*130], r13
	mov	qword [rsp+8*131], r15
	mov	r8, [rsp+8*133]
	cmp	r8, 0
	je	Lab_22
	mov	r9, [rsp+8*113]
	mov	r8, r9
	mov	r10, [rsp+8*122]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	r14, r9
	mov	r15, [rsp+8*115]
	mov	qword [rsp+8*134], r8
	mov	r8,r15
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	qword [rsp+8*135], r11
	mov	r11, [r8]
	mov	qword [rsp+8*139], r8
	mov	r8, r9
	mov	qword [rsp+8*136], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	[r12],r11
	mov	qword [rsp+8*141], r8
	mov	r8, r9
	mov	qword [rsp+8*140], r11
	mov	r11,r15
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	[r11],r13
	mov	qword [rsp+8*143], r8
	mov	qword [rsp+8*144], r11
	mov	qword [rsp+8*142], r12
	mov	qword [rsp+8*137], r13
	mov	qword [rsp+8*138], r14
	
Lab_22:
	
Lab_20:
	mov	r8, [rsp+8*115]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*115], r8
	jmp	Lab_18
	
Lab_19:
	
Lab_17:
	mov	r8, [rsp+8*122]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*122], r8
	jmp	Lab_15
	
Lab_16:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*122], r8
	
Lab_23:
	mov	r8, [rsp+8*122]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*145], r10
	mov	r8, [rsp+8*145]
	cmp	r8, 0
	je	Lab_24
	mov	r9, [rsp+8*113]
	mov	r8, r9
	mov	r10, [rsp+8*122]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, 1
	mov	r14, r10
	add	r14, r13
	cmp	r12,r14
	mov	r15, 0
	setne	r15B
	mov	qword [rsp+8*146], r8
	mov	qword [rsp+8*147], r11
	mov	qword [rsp+8*148], r12
	mov	qword [rsp+8*149], r14
	mov	qword [rsp+8*150], r15
	mov	r8, [rsp+8*150]
	cmp	r8, 0
	je	Lab_27
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_27:
	
Lab_25:
	mov	r8, [rsp+8*122]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*122], r8
	jmp	Lab_23
	
Lab_24:
	mov	r8, 1
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*151], r8
	
Lab_28:
	mov	r8, [rsp+8*151]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*152], r10
	mov	r8, [rsp+8*152]
	cmp	r8, 0
	je	Lab_29
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*151]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, 0
	cmp	r12,r13
	mov	r14, 0
	sete	r14B
	mov	qword [rsp+8*153], r8
	mov	qword [rsp+8*154], r11
	mov	qword [rsp+8*155], r12
	mov	qword [rsp+8*156], r14
	mov	r8, [rsp+8*156]
	cmp	r8, 0
	je	Lab_32
	mov	r8, [rsp+8*151]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*157], r10
	mov	qword [rsp+8*158], r11
	
Lab_33:
	mov	r8, [rsp+8*158]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*159], r10
	mov	r8, [rsp+8*159]
	cmp	r8, 0
	je	Lab_34
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*158]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, 0
	cmp	r12,r13
	mov	r14, 0
	setne	r14B
	mov	qword [rsp+8*160], r8
	mov	qword [rsp+8*161], r11
	mov	qword [rsp+8*162], r12
	mov	qword [rsp+8*163], r14
	mov	r8, [rsp+8*163]
	cmp	r8, 0
	je	Lab_37
	mov	r9, [rsp+8*158]
	mov	r8, r9
	mov	r11, [rsp+8*151]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	swap
	mov	r8, rax
	mov	qword [rsp+8*164], r8
	jmp	Lab_34
	
Lab_37:
	
Lab_35:
	mov	r8, [rsp+8*158]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*158], r8
	jmp	Lab_33
	
Lab_34:
	
Lab_32:
	
Lab_30:
	mov	r8, [rsp+8*151]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*151], r8
	jmp	Lab_28
	
Lab_29:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*151], r8
	
Lab_38:
	mov	r8, [rsp+8*151]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*165], r10
	mov	r8, [rsp+8*165]
	cmp	r8, 0
	je	Lab_39
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*151]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, 0
	cmp	r12,r13
	mov	r14, 0
	sete	r14B
	mov	qword [rsp+8*166], r8
	mov	qword [rsp+8*167], r11
	mov	qword [rsp+8*168], r12
	mov	qword [rsp+8*169], r14
	mov	r8, [rsp+8*169]
	cmp	r8, 0
	je	Lab_42
	mov	r9, [rsp+8*151]
	mov	r8, r9
	mov	qword [gbl+8*26], r8
	jmp	Lab_39
	
Lab_42:
	
Lab_40:
	mov	r8, [rsp+8*151]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*151], r8
	jmp	Lab_38
	
Lab_39:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
move:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*170], r8
	
Lab_43:
	mov	r8, [rsp+8*170]
	mov	r9, [gbl+8*26]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*171], r10
	mov	r8, [rsp+8*171]
	cmp	r8, 0
	je	Lab_44
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [rsp+8*170]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, 1
	mov	r12, r12
	sub	r12, r13
	mov	[r11],r12
	mov	r14, 1
	mov	r15, r10
	add	r15, r14
	mov	r10, r15
	mov	qword [rsp+8*172], r8
	mov	qword [rsp+8*170], r10
	mov	qword [rsp+8*173], r11
	mov	qword [rsp+8*174], r12
	mov	qword [rsp+8*175], r15
	
Lab_45:
	jmp	Lab_43
	
Lab_44:
	mov	r9, [gbl+8*10]
	mov	r8, r9
	mov	r10, [gbl+8*26]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	[r11],r10
	mov	r12, r10
	mov	r13, 1
	mov	r10, r10
	add	r10, r13
	mov	r14, 0
	mov	rax, r14
	mov	qword [rsp+8*176], r8
	mov	qword [gbl+8*26], r10
	mov	qword [rsp+8*177], r11
	mov	qword [rsp+8*178], r12
	leave
	ret
	
_global_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1496
	mov	r9, 48271
	mov	r8, r9
	mov	r11, 2147483647
	mov	r10, r11
	mov	r13, 1
	mov	r12, r13
	mov	qword [gbl+8*12], r8
	mov	qword [gbl+8*11], r10
	mov	qword [gbl+8*72], r12
	mov	r8, [rsp+8*179]
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
	resb	3480
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
	
_t107:
	 db 1," ",0

_t290:
	 db 8," step(s)",0

_t274:
	 db 5,"step ",0

_t220:
	 db 79,"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i",0

_t286:
	 db 7,"Total: ",0

_t111:
	 db 0,"",0

_t224:
	 db 12,"Let's start!",0

_t279:
	 db 1,":",0

