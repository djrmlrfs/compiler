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
	sub	rsp, 2864
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 4848
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	qword [rsp+8*1], r8
	call	_getInt
	mov	[rsp+8*2], rax
	mov	r9, [rsp+8*2]
	mov	r8, r9
	mov	qword [gbl+8*3], r8
	call	_getInt
	mov	[rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r11, 1
	mov	r10, r11
	mov	qword [rsp+8*5], r8
	mov	qword [rsp+8*6], r10
	
Lab_69:
	mov	r8, [rsp+8*6]
	mov	r9, [gbl+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*7], r10
	mov	r8, [rsp+8*7]
	cmp	r8, 0
	je	Lab_70
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*6]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	[r11],r10
	mov	r12, [rsp+8*5]
	cmp	r10,r12
	mov	r13, 0
	setle	r13B
	mov	qword [rsp+8*9], r8
	mov	qword [rsp+8*10], r11
	mov	qword [rsp+8*11], r13
	mov	r8, [rsp+8*11]
	cmp	r8, 0
	je	Lab_73
	mov	r8, [rsp+8*5]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	r11, [rsp+8*6]
	mov	r12, r10
	sub	r12, r11
	mov	r14, [gbl+8*8]
	mov	r13, r14
	mov	r15,r11
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	qword [rsp+8*12], r10
	mov	qword [rsp+8*13], r12
	mov	qword [rsp+8*14], r13
	mov	qword [rsp+8*15], r15
	
Lab_73:
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*6]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [gbl+8*19]
	mov	r13, r14
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	qword [rsp+8*16], r8
	mov	qword [rsp+8*17], r11
	mov	qword [rsp+8*18], r12
	mov	qword [rsp+8*20], r13
	mov	qword [rsp+8*21], r15
	
Lab_71:
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*22], r8
	mov	qword [rsp+8*6], r9
	jmp	Lab_69
	
Lab_70:
	mov	r8, [gbl+8*3]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r13, 1
	mov	r12, r13
	mov	qword [rsp+8*23], r10
	mov	qword rsi, r11
	mov	qword rdi, r12
	call	quicksort
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*26], r8
	mov	qword [rsp+8*27], r9
	call	restore
	mov	r8, rax
	mov	qword [rsp+8*28], r8
	call	calc
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*29], r8
	mov	qword [rsp+8*30], r9
	call	restore
	mov	r8, rax
	mov	r9, [gbl+8*3]
	mov	r10, 1
	mov	r11, r9
	add	r11, r10
	mov	r12, r11
	mov	r14, 1
	mov	r13, r14
	mov	qword [rsp+8*31], r8
	mov	qword [rsp+8*32], r11
	mov	qword rsi, r12
	mov	qword rdi, r13
	call	mergesort
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*33], r8
	mov	qword [rsp+8*34], r9
	call	restore
	mov	r8, rax
	mov	qword [rsp+8*35], r8
	call	heapsort
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*27]
	mov	r10, r11
	mov	r12, r10
	mov	qword [rsp+8*36], r8
	mov	qword [rsp+8*37], r9
	mov	qword rdi, r10
	mov	qword [rsp+8*38], r12
	mov	rdi, [rsp+8*38]
	call	_toString
	mov	qword[rsp+8*39], rax
	mov	r9, [rsp+8*39]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*40], r10
	mov	rdi, [rsp+8*40] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*30]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*41], r10
	mov	rdi, [rsp+8*41]
	call	_toString
	mov	qword[rsp+8*42], rax
	mov	r9, [rsp+8*42]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*43], r10
	mov	rdi, [rsp+8*43] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*34]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*44], r10
	mov	rdi, [rsp+8*44]
	call	_toString
	mov	qword[rsp+8*45], rax
	mov	r9, [rsp+8*45]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*46], r10
	mov	rdi, [rsp+8*46] 
	add	rdi, 1
	call	puts
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*47], r10
	mov	rdi, [rsp+8*47]
	call	_toString
	mov	qword[rsp+8*48], rax
	mov	r9, [rsp+8*48]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*49], r10
	mov	rdi, [rsp+8*49] 
	add	rdi, 1
	call	puts
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*50], rax
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r10
	mov	qword [arg+8*63], r11
	call	A_Optimizer
	mov	r8, rax
	mov	r9, 0
	mov	rax, r9
	mov	qword [rsp+8*54], r8
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
A_Optimizer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	qword [rsp+8*55], r8
	mov	rdi, 10
	call	_newarr
	mov	qword [rsp+8*56], rax
	mov	r8, [rsp+8*56]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, 2
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r13, 2
	mov	[r10],r13
	mov	r14, 2
	mov	r10,r14
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r15, 2
	mov	[r10],r15
	mov	r9, 3
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 4
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 5
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 6
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 7
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 8
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 9
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	qword [rsp+8*57], r10
	mov	rdi, [rsp+8*56]
	call	_morarr
	mov	qword [rsp+8*56], rax
	mov	r9, [rsp+8*56]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 1
	mov	r12, r13
	mov	qword [rsp+8*58], r8
	mov	qword [rsp+8*59], r10
	mov	qword [rsp+8*60], r12
	
Lab_0:
	mov	r8, [rsp+8*60]
	mov	r9, 1000
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*61], r10
	mov	r8, [rsp+8*61]
	cmp	r8, 0
	je	Lab_1
	mov	r8, 123
	mov	r9, [rsp+8*60]
	mov	r10, r8
	add	r10, r9
	mov	r12, [rsp+8*58]
	mov	r11, r12
	mov	r13, 0
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r15, 1
	mov	r14,r15
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 0
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 1
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 0
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 1
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 0
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 1
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 0
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r8, 1
	mov	r14,r8
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	[r14],r10
	mov	r8, r12
	mov	r10, 0
	mov	qword [rsp+8*63], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*65], r8
	mov	r8, [r11]
	mov	r10, [rsp+8*59]
	mov	qword [rsp+8*66], r11
	mov	r11, r10
	add	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*59], r10
	mov	qword [rsp+8*68], r11
	mov	qword [rsp+8*64], r14
	
Lab_2:
	mov	r9, [rsp+8*60]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*60], r9
	jmp	Lab_0
	
Lab_1:
	mov	r9, [rsp+8*59]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
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
	mov	r9, 1
	mov	r8, r9
	mov	qword [rsp+8*60], r8
	
Lab_3:
	mov	r8, [rsp+8*60]
	mov	r9, 1000000
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*73], r10
	mov	r8, [rsp+8*73]
	cmp	r8, 0
	je	Lab_4
	mov	r8, [rsp+8*59]
	mov	r9, 8
	mov	r10, r8
	add	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*59], r8
	mov	qword [rsp+8*74], r10
	
Lab_5:
	mov	r9, [rsp+8*60]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*75], r8
	mov	qword [rsp+8*60], r9
	jmp	Lab_3
	
Lab_4:
	mov	r9, [rsp+8*59]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*76], r10
	mov	rdi, [rsp+8*76]
	call	_toString
	mov	qword[rsp+8*77], rax
	mov	r9, [rsp+8*77]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*78], r10
	mov	rdi, [rsp+8*78] 
	add	rdi, 1
	call	puts
	mov	r8, [rsp+8*79]
	mov	rax, r8
	leave
	ret
	
A_A:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, [arg+8*63]
	mov	r8, r9
	mov	qword [rsp+8*80], r8
	mov	rdi, 10
	call	_newarr
	mov	qword [rsp+8*81], rax
	mov	r8, [rsp+8*81]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, 2
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r13, 2
	mov	[r10],r13
	mov	r14, 2
	mov	r10,r14
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r15, 3
	mov	[r10],r15
	mov	r9, 3
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 4
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 3
	mov	[r10],r9
	mov	r9, 5
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 6
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 7
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 3
	mov	[r10],r9
	mov	r9, 8
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	r9, 9
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r9, 2
	mov	[r10],r9
	mov	qword [rsp+8*82], r10
	mov	rdi, [rsp+8*81]
	call	_morarr
	mov	qword [rsp+8*81], rax
	mov	r8, [rsp+8*80]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [rsp+8*81]
	mov	[r10],r11
	mov	rax, r8
	mov	qword [rsp+8*83], r10
	leave
	ret
	
restore:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, 1
	mov	r8, r9
	mov	qword [rsp+8*84], r8
	
Lab_9:
	mov	r8, [rsp+8*84]
	mov	r9, [gbl+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*85], r10
	mov	r8, [rsp+8*85]
	cmp	r8, 0
	je	Lab_10
	mov	r9, [gbl+8*19]
	mov	r8, r9
	mov	r10, [rsp+8*84]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [gbl+8*8]
	mov	r13, r14
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	qword [rsp+8*86], r8
	mov	qword [rsp+8*87], r11
	mov	qword [rsp+8*88], r12
	mov	qword [rsp+8*89], r13
	mov	qword [rsp+8*90], r15
	
Lab_11:
	mov	r9, [rsp+8*84]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*91], r8
	mov	qword [rsp+8*84], r9
	jmp	Lab_9
	
Lab_10:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
quicksort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	r15, [gbl+8*8]
	mov	r14, r15
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r14
	mov	qword [rsp+8*95], r14
	mov	r14, [r13]
	mov	qword [rsp+8*96], r13
	mov	r13, r14
	mov	qword [rsp+8*97], r14
	mov	r15, 0
	mov	r14, r15
	mov	r9, 0
	mov	r15, r9
	mov	r9, 1
	mov	r11, r8
	add	r11, r9
	mov	r9, r11
	mov	qword [rsp+8*92], r8
	mov	qword [rsp+8*102], r9
	mov	qword [rsp+8*93], r10
	mov	qword [rsp+8*101], r11
	mov	qword [rsp+8*94], r12
	mov	qword [rsp+8*98], r13
	mov	qword [rsp+8*99], r14
	mov	qword [rsp+8*100], r15
	
Lab_12:
	mov	r8, [rsp+8*102]
	mov	r9, [rsp+8*93]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*103], r10
	mov	r8, [rsp+8*103]
	cmp	r8, 0
	je	Lab_13
	mov	r9, [rsp+8*94]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*8]
	mov	r11, r12
	mov	r13, [rsp+8*102]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	qword [rsp+8*104], r8
	mov	r8, [rsp+8*98]
	cmp	r15,r8
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*94], r9
	mov	qword [rsp+8*108], r10
	mov	qword [rsp+8*105], r11
	mov	qword [rsp+8*106], r14
	mov	qword [rsp+8*107], r15
	mov	r8, [rsp+8*108]
	cmp	r8, 0
	je	Lab_15
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*102]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*99]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*109], r8
	mov	qword [rsp+8*110], r11
	mov	r11, [gbl+8*113]
	mov	r8, r11
	mov	r15,r13
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*114], r8
	mov	qword [rsp+8*111], r12
	mov	qword [rsp+8*112], r13
	mov	qword [rsp+8*99], r14
	mov	qword [rsp+8*115], r15
	jmp	Lab_16
	
Lab_15:
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*102]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*100]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*116], r8
	mov	qword [rsp+8*117], r11
	mov	r11, [gbl+8*120]
	mov	r8, r11
	mov	r15,r13
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*121], r8
	mov	qword [rsp+8*118], r12
	mov	qword [rsp+8*119], r13
	mov	qword [rsp+8*100], r14
	mov	qword [rsp+8*122], r15
	
Lab_16:
	
Lab_14:
	mov	r9, [rsp+8*102]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*123], r8
	mov	qword [rsp+8*102], r9
	jmp	Lab_12
	
Lab_13:
	mov	r9, [rsp+8*92]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*124], r8
	mov	qword [rsp+8*102], r10
	
Lab_17:
	mov	r8, [rsp+8*102]
	mov	r9, [rsp+8*99]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*125], r10
	mov	r8, [rsp+8*125]
	cmp	r8, 0
	je	Lab_18
	mov	r9, [gbl+8*113]
	mov	r8, r9
	mov	r10, [rsp+8*102]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*124]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*126], r8
	mov	qword [rsp+8*127], r11
	mov	r11, [gbl+8*8]
	mov	r8, r11
	mov	r15,r13
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*130], r8
	mov	qword [rsp+8*128], r12
	mov	qword [rsp+8*129], r13
	mov	qword [rsp+8*124], r14
	mov	qword [rsp+8*131], r15
	
Lab_19:
	mov	r9, [rsp+8*102]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*132], r8
	mov	qword [rsp+8*102], r9
	jmp	Lab_17
	
Lab_18:
	mov	r9, [rsp+8*124]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*8]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [rsp+8*98]
	mov	[r13],r14
	mov	qword [rsp+8*133], r8
	mov	r8, 0
	mov	r15, r8
	mov	qword [rsp+8*124], r9
	mov	qword [rsp+8*134], r11
	mov	qword [rsp+8*135], r13
	mov	qword [rsp+8*102], r15
	
Lab_20:
	mov	r8, [rsp+8*102]
	mov	r9, [rsp+8*100]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*136], r10
	mov	r8, [rsp+8*136]
	cmp	r8, 0
	je	Lab_21
	mov	r9, [gbl+8*120]
	mov	r8, r9
	mov	r10, [rsp+8*102]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*124]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*137], r8
	mov	qword [rsp+8*138], r11
	mov	r11, [gbl+8*8]
	mov	r8, r11
	mov	qword [rsp+8*124], r14
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r8
	mov	[r14],r12
	mov	qword [rsp+8*141], r8
	mov	qword [rsp+8*139], r12
	mov	qword [rsp+8*140], r13
	mov	qword [rsp+8*142], r14
	
Lab_22:
	mov	r9, [rsp+8*102]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*143], r8
	mov	qword [rsp+8*102], r9
	jmp	Lab_20
	
Lab_21:
	mov	r8, [rsp+8*99]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*144], r10
	mov	r8, [rsp+8*144]
	cmp	r8, 0
	je	Lab_24
	mov	r8, [rsp+8*92]
	mov	r9, [rsp+8*99]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r12, r8
	mov	qword [rsp+8*145], r10
	mov	qword rsi, r11
	mov	qword rdi, r12
	call	quicksort
	mov	r8, rax
	mov	r9, [rsp+8*94]
	mov	r10, r9
	add	r10, r8
	mov	r9, r10
	mov	qword [rsp+8*146], r8
	mov	qword [rsp+8*94], r9
	mov	qword [rsp+8*147], r10
	
Lab_24:
	mov	r8, [rsp+8*100]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*148], r10
	mov	r8, [rsp+8*148]
	cmp	r8, 0
	je	Lab_26
	mov	r8, [rsp+8*93]
	mov	r9, [rsp+8*100]
	mov	r10, r8
	sub	r10, r9
	mov	r11, r8
	mov	r12, r10
	mov	qword [rsp+8*149], r10
	mov	qword rsi, r11
	mov	qword rdi, r12
	call	quicksort
	mov	r8, rax
	mov	r9, [rsp+8*94]
	mov	r10, r9
	add	r10, r8
	mov	r9, r10
	mov	qword [rsp+8*150], r8
	mov	qword [rsp+8*94], r9
	mov	qword [rsp+8*151], r10
	
Lab_26:
	mov	r8, [rsp+8*94]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
calc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, 1
	mov	r8, r9
	mov	qword [rsp+8*152], r8
	
Lab_27:
	mov	r8, [rsp+8*152]
	mov	r9, [gbl+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*153], r10
	mov	r8, [rsp+8*153]
	cmp	r8, 0
	je	Lab_28
	mov	r8, [rsp+8*152]
	mov	r9, 1
	mov	r10, r8
	sub	r10, r9
	mov	r12, [gbl+8*113]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	r14, 1
	mov	r15, r8
	add	r15, r14
	mov	r10, [gbl+8*120]
	mov	r9, r10
	mov	qword [rsp+8*155], r11
	mov	r11,r8
	add	r11,1
	shl	r11,4
	add	r11,r9
	mov	[r11],r15
	mov	qword [rsp+8*158], r9
	mov	qword [rsp+8*159], r11
	mov	qword [rsp+8*156], r13
	mov	qword [rsp+8*157], r15
	
Lab_29:
	mov	r9, [rsp+8*152]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*160], r8
	mov	qword [rsp+8*152], r9
	jmp	Lab_27
	
Lab_28:
	mov	r9, 0
	mov	r8, r9
	mov	r11, [gbl+8*3]
	mov	r10, r11
	mov	qword [rsp+8*161], r8
	mov	qword [rsp+8*152], r10
	
Lab_30:
	mov	r8, [rsp+8*152]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*162], r10
	mov	r8, [rsp+8*162]
	cmp	r8, 0
	je	Lab_31
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*152]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [gbl+8*113]
	mov	r13, r14
	mov	r15,r12
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	qword [rsp+8*163], r8
	mov	r8, [r15]
	mov	qword [rsp+8*164], r11
	mov	r11, r8
	mov	qword [rsp+8*168], r8
	mov	r8, r9
	mov	qword [rsp+8*165], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	qword [rsp+8*170], r8
	mov	r8, [r12]
	mov	qword [rsp+8*171], r12
	mov	qword [rsp+8*166], r13
	mov	r13, [gbl+8*120]
	mov	r12, r13
	mov	qword [rsp+8*167], r15
	mov	r15,r8
	add	r15,1
	shl	r15,4
	add	r15,r12
	mov	qword [rsp+8*172], r8
	mov	r8, [r15]
	mov	qword [rsp+8*173], r12
	mov	r12, r8
	mov	qword [rsp+8*175], r8
	mov	r8, r13
	mov	qword [rsp+8*174], r15
	mov	r15,r11
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*177], r8
	mov	r8, r14
	mov	qword [rsp+8*178], r15
	mov	r15,r12
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r11
	mov	qword [rsp+8*179], r8
	mov	r8, [rsp+8*161]
	mov	qword [rsp+8*180], r15
	mov	r15, r8
	add	r15, r12
	mov	qword [rsp+8*176], r12
	mov	r12, r15
	sub	r12, r11
	mov	qword [rsp+8*169], r11
	mov	r11, 2
	mov	r15, r12
	sub	r15, r11
	mov	r8, r15
	mov	qword [rsp+8*161], r8
	mov	qword [rsp+8*182], r12
	mov	qword [rsp+8*183], r15
	
Lab_32:
	mov	r9, [rsp+8*152]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	sub	r9, r10
	mov	qword [rsp+8*184], r8
	mov	qword [rsp+8*152], r9
	jmp	Lab_30
	
Lab_31:
	mov	r8, [rsp+8*161]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
mergesort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 1
	mov	r13, r8
	add	r13, r12
	cmp	r13,r10
	mov	r14, 0
	sete	r14B
	mov	qword [rsp+8*185], r8
	mov	qword [rsp+8*186], r10
	mov	qword [rsp+8*187], r13
	mov	qword [rsp+8*188], r14
	mov	r8, [rsp+8*188]
	cmp	r8, 0
	je	Lab_34
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_34:
	mov	r8, [rsp+8*185]
	mov	r9, [rsp+8*186]
	mov	r10, r8
	add	r10, r9
	mov	r11, 1
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, r12
	mov	r15, 0
	mov	r14, r15
	mov	r10, r13
	mov	r11, r8
	mov	qword rsi, r10
	mov	qword rdi, r11
	mov	qword [rsp+8*190], r12
	mov	qword [rsp+8*191], r13
	mov	qword [rsp+8*192], r14
	call	mergesort
	mov	r8, rax
	mov	r9, [rsp+8*192]
	mov	r10, r9
	add	r10, r8
	mov	r9, r10
	mov	r12, [rsp+8*186]
	mov	r11, r12
	mov	r14, [rsp+8*191]
	mov	r13, r14
	mov	qword [rsp+8*193], r8
	mov	qword [rsp+8*192], r9
	mov	qword [rsp+8*194], r10
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	mergesort
	mov	r8, rax
	mov	r9, [rsp+8*192]
	mov	r10, r9
	add	r10, r8
	mov	r9, r10
	mov	r12, 0
	mov	r11, r12
	mov	r14, 0
	mov	r13, r14
	mov	qword [rsp+8*195], r8
	mov	r8, [rsp+8*185]
	mov	r15, r8
	mov	qword [rsp+8*192], r9
	mov	qword [rsp+8*196], r10
	mov	qword [rsp+8*197], r11
	mov	qword [rsp+8*198], r13
	mov	qword [rsp+8*199], r15
	
Lab_35:
	mov	r8, [rsp+8*199]
	mov	r9, [rsp+8*191]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*200], r10
	mov	r8, [rsp+8*200]
	cmp	r8, 0
	je	Lab_36
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*199]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*197]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*201], r8
	mov	qword [rsp+8*202], r11
	mov	r11, [gbl+8*113]
	mov	r8, r11
	mov	r15,r13
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*205], r8
	mov	qword [rsp+8*203], r12
	mov	qword [rsp+8*204], r13
	mov	qword [rsp+8*197], r14
	mov	qword [rsp+8*206], r15
	
Lab_37:
	mov	r9, [rsp+8*199]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*207], r8
	mov	qword [rsp+8*199], r9
	jmp	Lab_35
	
Lab_36:
	mov	r9, [rsp+8*191]
	mov	r8, r9
	mov	qword [rsp+8*199], r8
	
Lab_38:
	mov	r8, [rsp+8*199]
	mov	r9, [rsp+8*186]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*208], r10
	mov	r8, [rsp+8*208]
	cmp	r8, 0
	je	Lab_39
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*199]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*198]
	mov	r13, r14
	mov	r15, 1
	mov	r14, r14
	add	r14, r15
	mov	qword [rsp+8*209], r8
	mov	qword [rsp+8*210], r11
	mov	r11, [gbl+8*120]
	mov	r8, r11
	mov	r15,r13
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	[r15],r12
	mov	qword [rsp+8*213], r8
	mov	qword [rsp+8*211], r12
	mov	qword [rsp+8*212], r13
	mov	qword [rsp+8*198], r14
	mov	qword [rsp+8*214], r15
	
Lab_40:
	mov	r9, [rsp+8*199]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*215], r8
	mov	qword [rsp+8*199], r9
	jmp	Lab_38
	
Lab_39:
	mov	r9, 0
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, [rsp+8*185]
	mov	r12, r13
	mov	qword [rsp+8*216], r8
	mov	qword [rsp+8*217], r10
	mov	qword [rsp+8*218], r12
	
Lab_41:
	mov	r8, [rsp+8*216]
	mov	r9, [rsp+8*197]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*219], r10
	mov	r8, [rsp+8*219]
	cmp	r8, 0
	jne	Lab_43
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*220], r8
	jmp	Lab_44
	
Lab_43:
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*198]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*221], r10
	mov	r9, [rsp+8*221]
	mov	r8, r9
	mov	qword [rsp+8*220], r8
	
Lab_44:
	mov	r8, [rsp+8*220]
	cmp	r8, 0
	je	Lab_42
	mov	r9, [rsp+8*192]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*113]
	mov	r11, r12
	mov	r13, [rsp+8*216]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	qword [rsp+8*222], r8
	mov	r10, [gbl+8*120]
	mov	r8, r10
	mov	qword [rsp+8*223], r11
	mov	r11, [rsp+8*217]
	mov	qword [rsp+8*224], r14
	mov	r14,r11
	add	r14,1
	shl	r14,4
	add	r14,r8
	mov	qword [rsp+8*226], r8
	mov	r8, [r14]
	cmp	r15,r8
	mov	qword [rsp+8*227], r14
	mov	r14, 0
	setl	r14B
	mov	qword [rsp+8*228], r8
	mov	qword [rsp+8*192], r9
	mov	qword [rsp+8*229], r14
	mov	qword [rsp+8*225], r15
	mov	r8, [rsp+8*229]
	cmp	r8, 0
	je	Lab_45
	mov	r9, [rsp+8*216]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*113]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [r13]
	mov	qword [rsp+8*230], r8
	mov	r8, [rsp+8*218]
	mov	r15, r8
	mov	r10, 1
	mov	r8, r8
	add	r8, r10
	mov	qword [rsp+8*231], r11
	mov	r11, [gbl+8*8]
	mov	r10, r11
	mov	qword [rsp+8*232], r13
	mov	r13,r15
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r14
	mov	qword [rsp+8*218], r8
	mov	qword [rsp+8*216], r9
	mov	qword [rsp+8*235], r10
	mov	qword [rsp+8*236], r13
	mov	qword [rsp+8*233], r14
	mov	qword [rsp+8*234], r15
	jmp	Lab_46
	
Lab_45:
	mov	r9, [rsp+8*217]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*120]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [r13]
	mov	qword [rsp+8*237], r8
	mov	r8, [rsp+8*218]
	mov	r15, r8
	mov	r10, 1
	mov	r8, r8
	add	r8, r10
	mov	qword [rsp+8*238], r11
	mov	r11, [gbl+8*8]
	mov	r10, r11
	mov	qword [rsp+8*239], r13
	mov	r13,r15
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r14
	mov	qword [rsp+8*218], r8
	mov	qword [rsp+8*217], r9
	mov	qword [rsp+8*242], r10
	mov	qword [rsp+8*243], r13
	mov	qword [rsp+8*240], r14
	mov	qword [rsp+8*241], r15
	
Lab_46:
	jmp	Lab_41
	
Lab_42:
	
Lab_47:
	mov	r8, [rsp+8*216]
	mov	r9, [rsp+8*197]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*244], r10
	mov	r8, [rsp+8*244]
	cmp	r8, 0
	je	Lab_48
	mov	r9, [rsp+8*216]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*113]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [r13]
	mov	qword [rsp+8*245], r8
	mov	r8, [rsp+8*218]
	mov	r15, r8
	mov	qword [rsp+8*216], r9
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	r10, [gbl+8*8]
	mov	r9, r10
	mov	qword [rsp+8*246], r11
	mov	r11,r15
	add	r11,1
	shl	r11,4
	add	r11,r9
	mov	[r11],r14
	mov	qword [rsp+8*218], r8
	mov	qword [rsp+8*250], r9
	mov	qword [rsp+8*251], r11
	mov	qword [rsp+8*247], r13
	mov	qword [rsp+8*248], r14
	mov	qword [rsp+8*249], r15
	jmp	Lab_47
	
Lab_48:
	
Lab_49:
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*198]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*252], r10
	mov	r8, [rsp+8*252]
	cmp	r8, 0
	je	Lab_50
	mov	r9, [rsp+8*217]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*120]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [r13]
	mov	qword [rsp+8*253], r8
	mov	r8, [rsp+8*218]
	mov	r15, r8
	mov	qword [rsp+8*217], r9
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*218], r8
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10,r15
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r14
	mov	qword [rsp+8*258], r8
	mov	qword [rsp+8*259], r10
	mov	qword [rsp+8*254], r11
	mov	qword [rsp+8*255], r13
	mov	qword [rsp+8*256], r14
	mov	qword [rsp+8*257], r15
	jmp	Lab_49
	
Lab_50:
	mov	r8, [rsp+8*192]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
heapsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, 0
	mov	r8, r9
	mov	r11, 1
	mov	r10, r11
	mov	qword [rsp+8*260], r8
	mov	qword [rsp+8*261], r10
	
Lab_51:
	mov	r8, [rsp+8*261]
	mov	r9, [gbl+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*262], r10
	mov	r8, [rsp+8*262]
	cmp	r8, 0
	je	Lab_52
	mov	r9, [gbl+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*261]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [gbl+8*266]
	mov	r13, r14
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	qword [rsp+8*263], r8
	mov	r8, r10
	mov	qword [rsp+8*269], r8
	mov	qword [rsp+8*264], r11
	mov	qword [rsp+8*265], r12
	mov	qword [rsp+8*267], r13
	mov	qword [rsp+8*268], r15
	
Lab_54:
	mov	r8, [rsp+8*269]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	setne	r10B
	mov	qword [rsp+8*270], r10
	mov	r8, [rsp+8*270]
	cmp	r8, 0
	je	Lab_55
	mov	r9, [rsp+8*260]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*266]
	mov	r11, r12
	mov	r13, [rsp+8*269]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	qword [rsp+8*271], r8
	mov	r8, 1
	mov	r10,r13
	mov	rcx, r8
	shr	r10, cl
	mov	r8, r12
	mov	qword [rsp+8*272], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*276], r8
	mov	r8, [r11]
	cmp	r15,r8
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*278], r8
	mov	qword [rsp+8*260], r9
	mov	qword [rsp+8*279], r10
	mov	qword [rsp+8*277], r11
	mov	qword [rsp+8*273], r14
	mov	qword [rsp+8*274], r15
	mov	r8, [rsp+8*279]
	cmp	r8, 0
	je	Lab_57
	jmp	Lab_55
	
Lab_57:
	mov	r9, [gbl+8*266]
	mov	r8, r9
	mov	r10, [rsp+8*269]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	r14, 1
	mov	r15,r10
	mov	rcx, r14
	shr	r15, cl
	mov	qword [rsp+8*280], r8
	mov	r8, r9
	mov	qword [rsp+8*281], r11
	mov	r11,r15
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*285], r8
	mov	r8, [r11]
	mov	qword [rsp+8*286], r11
	mov	r11, r9
	mov	qword [rsp+8*282], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r11
	mov	[r12],r8
	mov	qword [rsp+8*287], r8
	mov	r8, 1
	mov	qword [rsp+8*288], r11
	mov	r11,r10
	mov	rcx, r8
	shr	r11, cl
	mov	r8, r9
	mov	qword [rsp+8*289], r12
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	[r12],r13
	mov	qword [rsp+8*291], r8
	mov	r8, 1
	mov	r11,r10
	mov	rcx, r8
	shr	r11, cl
	mov	r10, r11
	mov	qword [rsp+8*269], r10
	mov	qword [rsp+8*293], r11
	mov	qword [rsp+8*292], r12
	mov	qword [rsp+8*283], r13
	mov	qword [rsp+8*284], r15
	jmp	Lab_54
	
Lab_55:
	
Lab_53:
	mov	r9, [rsp+8*261]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*294], r8
	mov	qword [rsp+8*261], r9
	jmp	Lab_51
	
Lab_52:
	mov	r9, [gbl+8*3]
	mov	r8, r9
	mov	r11, 1
	mov	r10, r11
	mov	qword [rsp+8*295], r8
	mov	qword [rsp+8*261], r10
	
Lab_58:
	mov	r8, [rsp+8*261]
	mov	r9, [gbl+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*296], r10
	mov	r8, [rsp+8*296]
	cmp	r8, 0
	je	Lab_59
	mov	r9, [gbl+8*266]
	mov	r8, r9
	mov	r10, 1
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [gbl+8*8]
	mov	r13, r14
	mov	r15, [rsp+8*261]
	mov	qword [rsp+8*297], r8
	mov	r8,r15
	add	r8,1
	shl	r8,4
	add	r8,r13
	mov	[r8],r12
	mov	qword [rsp+8*301], r8
	mov	r10, [rsp+8*295]
	mov	r8, r10
	mov	qword [rsp+8*298], r11
	mov	r11, 1
	mov	r10, r10
	sub	r10, r11
	mov	r11, r9
	mov	qword [rsp+8*299], r12
	mov	r12,r8
	add	r12,1
	shl	r12,4
	add	r12,r11
	mov	qword [rsp+8*302], r8
	mov	r8, [r12]
	mov	qword [rsp+8*303], r11
	mov	r11, r9
	mov	qword [rsp+8*304], r12
	mov	r12, 1
	mov	qword [rsp+8*300], r13
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r8
	mov	qword [rsp+8*305], r8
	mov	qword [rsp+8*306], r11
	mov	r11, 1
	mov	r8, r11
	mov	qword [rsp+8*308], r8
	mov	qword [rsp+8*295], r10
	mov	qword [rsp+8*307], r13
	
Lab_61:
	mov	r8, [rsp+8*308]
	mov	r9, 1
	mov	r10,r8
	mov	rcx, r9
	shl	r10, cl
	mov	r11, [rsp+8*295]
	cmp	r10,r11
	mov	r12, 0
	setle	r12B
	mov	qword [rsp+8*309], r10
	mov	qword [rsp+8*310], r12
	mov	r8, [rsp+8*310]
	cmp	r8, 0
	je	Lab_62
	mov	r8, [rsp+8*308]
	mov	r9, 1
	mov	r10,r8
	mov	rcx, r9
	shl	r10, cl
	mov	r11, r10
	mov	r12, 1
	mov	r13, r11
	add	r13, r12
	mov	r14, r13
	mov	r15, r11
	mov	r9, [rsp+8*295]
	cmp	r14,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*316], r10
	mov	qword [rsp+8*312], r11
	mov	qword [rsp+8*313], r13
	mov	qword [rsp+8*314], r14
	mov	qword [rsp+8*315], r15
	mov	r8, [rsp+8*316]
	cmp	r8, 0
	je	Lab_64
	mov	r9, [rsp+8*260]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*266]
	mov	r11, r12
	mov	r13, [rsp+8*314]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	qword [rsp+8*317], r8
	mov	r8, r12
	mov	r10, [rsp+8*312]
	mov	qword [rsp+8*318], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*321], r8
	mov	r8, [r11]
	cmp	r15,r8
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*323], r8
	mov	qword [rsp+8*260], r9
	mov	qword [rsp+8*324], r10
	mov	qword [rsp+8*322], r11
	mov	qword [rsp+8*319], r14
	mov	qword [rsp+8*320], r15
	mov	r8, [rsp+8*324]
	cmp	r8, 0
	je	Lab_66
	mov	r9, [rsp+8*314]
	mov	r8, r9
	mov	qword [rsp+8*315], r8
	
Lab_66:
	
Lab_64:
	mov	r9, [rsp+8*260]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	r12, [gbl+8*266]
	mov	r11, r12
	mov	r13, [rsp+8*308]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	qword [rsp+8*325], r8
	mov	r8, r12
	mov	r10, [rsp+8*315]
	mov	qword [rsp+8*326], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*329], r8
	mov	r8, [r11]
	cmp	r15,r8
	mov	qword [rsp+8*330], r11
	mov	r11, 0
	setl	r11B
	mov	qword [rsp+8*331], r8
	mov	qword [rsp+8*260], r9
	mov	qword [rsp+8*332], r11
	mov	qword [rsp+8*327], r14
	mov	qword [rsp+8*328], r15
	mov	r8, [rsp+8*332]
	cmp	r8, 0
	je	Lab_68
	jmp	Lab_62
	
Lab_68:
	mov	r9, [gbl+8*266]
	mov	r8, r9
	mov	r10, [rsp+8*308]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	r14, r9
	mov	r15, [rsp+8*315]
	mov	qword [rsp+8*333], r8
	mov	r8,r15
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	qword [rsp+8*334], r11
	mov	r11, [r8]
	mov	qword [rsp+8*337], r8
	mov	r8, r9
	mov	qword [rsp+8*335], r12
	mov	r12,r10
	add	r12,1
	shl	r12,4
	add	r12,r8
	mov	[r12],r11
	mov	qword [rsp+8*339], r8
	mov	r8, r9
	mov	qword [rsp+8*338], r11
	mov	r11,r15
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	[r11],r13
	mov	r13, r10
	mov	r10, r15
	mov	r15, r13
	mov	qword [rsp+8*341], r8
	mov	qword [rsp+8*308], r10
	mov	qword [rsp+8*342], r11
	mov	qword [rsp+8*340], r12
	mov	qword [rsp+8*283], r13
	mov	qword [rsp+8*336], r14
	mov	qword [rsp+8*315], r15
	jmp	Lab_61
	
Lab_62:
	
Lab_60:
	mov	r9, [rsp+8*261]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*343], r8
	mov	qword [rsp+8*261], r9
	jmp	Lab_58
	
Lab_59:
	mov	r8, [rsp+8*260]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2864
	mov	r9, 100000
	mov	r8, r9
	mov	qword [gbl+8*344], r8
	mov	rdi, [gbl+8*344]
	call	_newarr
	mov	qword [gbl+8*345], rax
	mov	r9, [gbl+8*345]
	mov	r8, r9
	mov	qword [gbl+8*8], r8
	mov	rdi, [gbl+8*344]
	call	_newarr
	mov	qword [gbl+8*346], rax
	mov	r9, [gbl+8*346]
	mov	r8, r9
	mov	qword [gbl+8*19], r8
	mov	rdi, [gbl+8*344]
	call	_newarr
	mov	qword [gbl+8*347], rax
	mov	r9, [gbl+8*347]
	mov	r8, r9
	mov	qword [gbl+8*113], r8
	mov	rdi, [gbl+8*344]
	call	_newarr
	mov	qword [gbl+8*348], rax
	mov	r9, [gbl+8*348]
	mov	r8, r9
	mov	qword [gbl+8*120], r8
	mov	rdi, [gbl+8*344]
	call	_newarr
	mov	qword [gbl+8*349], rax
	mov	r9, [gbl+8*349]
	mov	r8, r9
	mov	qword [gbl+8*266], r8
	mov	r8, [rsp+8*350]
	mov	rax, r8
	leave
	ret
	_mor:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	dword [rbp-34H], edi
	mov	qword [rbp-40H], rsi
	mov	eax, dword [rbp-34H]
	add	eax, 1
	movsxd	rdx, eax
	mov	rax, qword [rbp-40H]
	mov	rax, qword [rax]
	cmp	rdx, rax
	jnz	CL_005
	mov	eax, dword [rbp-34H]
	movsxd	rdx, eax
	mov	rax, qword [rbp-40H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rax, qword [rax]
	mov	rdi, rax
	call	_newarr
	jmp	CL_008

CL_005:
	mov	eax, dword [rbp-34H]
	movsxd	rdx, eax
	mov	rax, qword [rbp-40H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rax, qword [rax]
	mov	qword [rbp-20H], rax
	mov	rax, qword [rbp-20H]
	mov	rdi, rax
	call	_newarr
	mov	qword [rbp-28H], rax
	mov	dword [rbp-14H], 0
	jmp	CL_007

CL_006:
	mov	eax, dword [rbp-14H]
	movsxd	rdx, eax
	mov	rax, qword [rbp-28H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rbx, rax
	mov	eax, dword [rbp-34H]
	lea	edx, [rax+1H]
	mov	rax, qword [rbp-40H]
	mov	rsi, rax
	mov	edi, edx
	call	_mor
	mov	qword [rbx], rax
	add	dword [rbp-14H], 1
CL_007:
	mov	eax, dword [rbp-14H]
	cdqe
	cmp	rax, qword [rbp-20H]
	jl	CL_006
	mov	rax, qword [rbp-28H]
CL_008:
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret


_morarr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	qword [rbp-8H], rdi
	mov	rax, qword [rbp-8H]
	mov	rsi, rax
	mov	edi, 0
	call	_mor
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

_getInt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, [rbp-8H]
	mov	rsi, rax
	mov	edi, GS_31
	mov	eax, 0
	call	scanf
	mov	rax, qword [rbp-8H]
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
	resb	4848
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
	
