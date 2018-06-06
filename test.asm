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
	sub	rsp, 1264
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 3248
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
	mov	qword [rsp+8*3], r8
	call	_getInt
	mov	[rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	qword [rsp+8*5], r8
	call	_getInt
	mov	[rsp+8*6], rax
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	qword [rsp+8*7], r8
	call	_getInt
	mov	[rsp+8*8], rax
	mov	r9, [rsp+8*8]
	mov	r8, r9
	mov	qword [rsp+8*9], r8
	call	_getInt
	mov	[rsp+8*10], rax
	mov	r9, [rsp+8*10]
	mov	r8, r9
	mov	qword [rsp+8*11], r8
	call	_getInt
	mov	[rsp+8*12], rax
	mov	r9, [rsp+8*12]
	mov	r8, r9
	mov	r11, 30
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	r15, 0
	mov	r14, r15
	mov	r11, 0
	mov	r9, r11
	mov	r13, 0
	mov	r11, r13
	mov	r15, [rsp+8*3]
	mov	r13, r15
	mov	qword [rsp+8*13], r8
	mov	qword [rsp+8*17], r9
	mov	qword [rsp+8*14], r10
	mov	qword [rsp+8*18], r11
	mov	qword [rsp+8*15], r12
	mov	qword [rsp+8*19], r13
	mov	qword [rsp+8*16], r14
	
Lab_12:
	mov	r8, [rsp+8*19]
	mov	r9, [rsp+8*5]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*20], r10
	mov	r8, [rsp+8*20]
	cmp	r8, 0
	je	Lab_13
	mov	r9, [rsp+8*7]
	mov	r8, r9
	mov	qword [rsp+8*21], r8
	
Lab_15:
	mov	r8, [rsp+8*21]
	mov	r9, [rsp+8*9]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*22], r10
	mov	r8, [rsp+8*22]
	cmp	r8, 0
	je	Lab_16
	mov	r9, [rsp+8*11]
	mov	r8, r9
	mov	qword [rsp+8*23], r8
	
Lab_18:
	mov	r8, [rsp+8*23]
	mov	r9, [rsp+8*13]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*24], r10
	mov	r8, [rsp+8*24]
	cmp	r8, 0
	je	Lab_19
	mov	r9, [rsp+8*23]
	mov	r8, r9
	mov	r11, [rsp+8*14]
	mov	r10, r11
	mov	r13, [rsp+8*3]
	mov	r12, r13
	mov	r14, r12
	mov	r15, r10
	mov	r13, r8
	mov	qword rdi, r12
	mov	r12, 31
	mov	qword rsi, r10
	mov	r10, r13
	and	r10, r12
	mov	r9, r10
	mov	qword [rsp+8*32], r9
	mov	r9, r15
	mov	qword rsi, r9
	mov	r9, r14
	mov	qword rdi, r9
	mov	qword [rsp+8*28], r14
	mov	r14, rdi
	mov	r9, r14
	mov	qword [rsp+8*33], r9
	mov	r9, rsi
	mov	r14, r9
	mov	r9, [rsp+8*33]
	mov	qword [rsp+8*34], r14
	mov	r14, 1
	mov	qword [rsp+8*29], r15
	mov	r15, r9
	add	r15, r14
	mov	qword [rsp+8*35], r15
	mov	r9, [rsp+8*35]
	mov	r15, r9
	mov	qword [rsp+8*36], r15
	mov	r9, 0
	mov	r15, r9
	mov	qword [arg+8*2], r8
	mov	qword [rsp+8*31], r10
	mov	qword [rsp+8*30], r13
	mov	qword [rsp+8*37], r15
	
Lab_365:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_366
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_368
	
Lab_368:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_370
	
Lab_370:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_372
	
Lab_372:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_374
	
Lab_374:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_376
	
Lab_376:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_378
	
Lab_378:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_380
	
Lab_380:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_381:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_365
	
Lab_366:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_383
	
Lab_383:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*32]
	mov	r11, r12
	mov	r13, r10
	mov	r14, r13
	mov	r15, r11
	mov	qword rdi, r13
	mov	r13,r14
	mov	rcx, r15
	shl	r13, cl
	mov	r9, 65535
	mov	r11, r9
	mov	qword rsi, r11
	mov	qword [rsp+8*42], r13
	mov	r13, 32767
	mov	r11, r13
	mov	qword rdi, r11
	mov	r13, rdi
	mov	r11, r13
	mov	qword [rsp+8*43], r11
	mov	r11, rsi
	mov	r13, r11
	mov	r11, [rsp+8*43]
	mov	qword [rsp+8*44], r13
	mov	r13, 16
	mov	r9,r11
	mov	rcx, r13
	shl	r9, cl
	mov	qword [rsp+8*45], r9
	mov	r9, [rsp+8*44]
	mov	r11, [rsp+8*45]
	mov	r13, r9
	or	r13, r11
	mov	qword [rsp+8*46], r13
	mov	r9, [rsp+8*46]
	mov	r13, r9
	mov	qword [rsp+8*72], r8
	mov	qword [rsp+8*73], r10
	mov	qword [rsp+8*47], r13
	mov	qword [rsp+8*40], r14
	mov	qword [rsp+8*41], r15
	jmp	Lab_385
	
Lab_385:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_387
	
Lab_387:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, 32
	mov	r11, [rsp+8*32]
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r15, [rsp+8*73]
	mov	r14, r15
	mov	qword rdi, r14
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r14, r13
	mov	r9, rsi
	mov	r13, r9
	mov	qword [rsp+8*54], r13
	mov	r13, 65535
	mov	r9, r13
	mov	qword rsi, r9
	mov	qword [rsp+8*53], r14
	mov	r14, 32767
	mov	r9, r14
	mov	qword rdi, r9
	mov	r14, rdi
	mov	r9, r14
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r14, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	r13,r9
	mov	rcx, r14
	shl	r13, cl
	mov	qword [rsp+8*45], r13
	mov	r13, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r14, r13
	or	r14, r9
	mov	qword [rsp+8*46], r14
	mov	r9, [rsp+8*46]
	mov	r14, r9
	mov	qword [rsp+8*74], r8
	mov	qword [rsp+8*75], r12
	mov	qword [rsp+8*47], r14
	jmp	Lab_389
	
Lab_389:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_391
	
Lab_391:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_393
	
Lab_393:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*74]
	mov	r11, r10
	or	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*77], r11
	mov	qword [rsp+8*78], r12
	jmp	Lab_395
	
Lab_395:
	mov	r9, [rsp+8*78]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*23]
	mov	r11, r12
	mov	r14, [rsp+8*14]
	mov	r13, r14
	mov	qword [rsp+8*79], r8
	mov	r8, [rsp+8*19]
	mov	r15, r8
	mov	qword rdi, r15
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r15, r13
	mov	r8, rsi
	mov	r13, r8
	mov	r8, r11
	mov	r12, 31
	mov	qword [rsp+8*80], r10
	mov	r10, r8
	and	r10, r12
	mov	r9, r10
	mov	qword [rsp+8*32], r9
	mov	r9, r13
	mov	qword rsi, r9
	mov	r9, r15
	mov	qword rdi, r9
	mov	qword [rsp+8*28], r15
	mov	r15, rdi
	mov	r9, r15
	mov	qword [rsp+8*33], r9
	mov	r9, rsi
	mov	r15, r9
	mov	r9, [rsp+8*33]
	mov	qword [rsp+8*34], r15
	mov	r15, 1
	mov	qword [rsp+8*29], r13
	mov	r13, r9
	add	r13, r15
	mov	qword [rsp+8*35], r13
	mov	r9, [rsp+8*35]
	mov	r13, r9
	mov	qword [rsp+8*36], r13
	mov	r9, 0
	mov	r13, r9
	mov	qword [rsp+8*30], r8
	mov	qword [rsp+8*31], r10
	mov	qword [arg+8*2], r11
	mov	qword [rsp+8*37], r13
	
Lab_396:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_397
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_399
	
Lab_399:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_401
	
Lab_401:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_403
	
Lab_403:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_405
	
Lab_405:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_407
	
Lab_407:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_409
	
Lab_409:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_411
	
Lab_411:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_412:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_396
	
Lab_397:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_414
	
Lab_414:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*32]
	mov	r11, r12
	mov	r13, r10
	mov	r14, r13
	mov	r15, r11
	mov	qword rdi, r13
	mov	r13,r14
	mov	rcx, r15
	shl	r13, cl
	mov	r9, 65535
	mov	r11, r9
	mov	qword rsi, r11
	mov	qword [rsp+8*42], r13
	mov	r13, 32767
	mov	r11, r13
	mov	qword rdi, r11
	mov	r13, rdi
	mov	r11, r13
	mov	qword [rsp+8*43], r11
	mov	r11, rsi
	mov	r13, r11
	mov	r11, [rsp+8*43]
	mov	qword [rsp+8*44], r13
	mov	r13, 16
	mov	r9,r11
	mov	rcx, r13
	shl	r9, cl
	mov	qword [rsp+8*45], r9
	mov	r9, [rsp+8*44]
	mov	r11, [rsp+8*45]
	mov	r13, r9
	or	r13, r11
	mov	qword [rsp+8*46], r13
	mov	r9, [rsp+8*46]
	mov	r13, r9
	mov	qword [rsp+8*72], r8
	mov	qword [rsp+8*73], r10
	mov	qword [rsp+8*47], r13
	mov	qword [rsp+8*40], r14
	mov	qword [rsp+8*41], r15
	jmp	Lab_416
	
Lab_416:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_418
	
Lab_418:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, 32
	mov	r11, [rsp+8*32]
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r15, [rsp+8*73]
	mov	r14, r15
	mov	qword rdi, r14
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r14, r13
	mov	r9, rsi
	mov	r13, r9
	mov	qword [rsp+8*54], r13
	mov	r13, 65535
	mov	r9, r13
	mov	qword rsi, r9
	mov	qword [rsp+8*53], r14
	mov	r14, 32767
	mov	r9, r14
	mov	qword rdi, r9
	mov	r14, rdi
	mov	r9, r14
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r14, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	r13,r9
	mov	rcx, r14
	shl	r13, cl
	mov	qword [rsp+8*45], r13
	mov	r13, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r14, r13
	or	r14, r9
	mov	qword [rsp+8*46], r14
	mov	r9, [rsp+8*46]
	mov	r14, r9
	mov	qword [rsp+8*74], r8
	mov	qword [rsp+8*75], r12
	mov	qword [rsp+8*47], r14
	jmp	Lab_420
	
Lab_420:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_422
	
Lab_422:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_424
	
Lab_424:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*74]
	mov	r11, r10
	or	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*77], r11
	mov	qword [rsp+8*78], r12
	jmp	Lab_426
	
Lab_426:
	mov	r9, [rsp+8*78]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*23]
	mov	r11, r12
	mov	r14, [rsp+8*14]
	mov	r13, r14
	mov	qword [rsp+8*81], r8
	mov	r8, [rsp+8*21]
	mov	r15, r8
	mov	qword rdi, r15
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r15, r13
	mov	r8, rsi
	mov	r13, r8
	mov	r8, r11
	mov	r12, 31
	mov	qword [rsp+8*82], r10
	mov	r10, r8
	and	r10, r12
	mov	r9, r10
	mov	qword [rsp+8*32], r9
	mov	r9, r13
	mov	qword rsi, r9
	mov	r9, r15
	mov	qword rdi, r9
	mov	qword [rsp+8*28], r15
	mov	r15, rdi
	mov	r9, r15
	mov	qword [rsp+8*33], r9
	mov	r9, rsi
	mov	r15, r9
	mov	r9, [rsp+8*33]
	mov	qword [rsp+8*34], r15
	mov	r15, 1
	mov	qword [rsp+8*29], r13
	mov	r13, r9
	add	r13, r15
	mov	qword [rsp+8*35], r13
	mov	r9, [rsp+8*35]
	mov	r13, r9
	mov	qword [rsp+8*36], r13
	mov	r9, 0
	mov	r13, r9
	mov	qword [rsp+8*30], r8
	mov	qword [rsp+8*31], r10
	mov	qword [arg+8*2], r11
	mov	qword [rsp+8*37], r13
	
Lab_427:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_428
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_430
	
Lab_430:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_432
	
Lab_432:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_434
	
Lab_434:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_436
	
Lab_436:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_438
	
Lab_438:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_440
	
Lab_440:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_442
	
Lab_442:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_443:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_427
	
Lab_428:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_445
	
Lab_445:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*32]
	mov	r11, r12
	mov	r13, r10
	mov	r14, r13
	mov	r15, r11
	mov	qword rdi, r13
	mov	r13,r14
	mov	rcx, r15
	shl	r13, cl
	mov	r9, 65535
	mov	r11, r9
	mov	qword rsi, r11
	mov	qword [rsp+8*42], r13
	mov	r13, 32767
	mov	r11, r13
	mov	qword rdi, r11
	mov	r13, rdi
	mov	r11, r13
	mov	qword [rsp+8*43], r11
	mov	r11, rsi
	mov	r13, r11
	mov	r11, [rsp+8*43]
	mov	qword [rsp+8*44], r13
	mov	r13, 16
	mov	r9,r11
	mov	rcx, r13
	shl	r9, cl
	mov	qword [rsp+8*45], r9
	mov	r9, [rsp+8*44]
	mov	r11, [rsp+8*45]
	mov	r13, r9
	or	r13, r11
	mov	qword [rsp+8*46], r13
	mov	r9, [rsp+8*46]
	mov	r13, r9
	mov	qword [rsp+8*72], r8
	mov	qword [rsp+8*73], r10
	mov	qword [rsp+8*47], r13
	mov	qword [rsp+8*40], r14
	mov	qword [rsp+8*41], r15
	jmp	Lab_447
	
Lab_447:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_449
	
Lab_449:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, 32
	mov	r11, [rsp+8*32]
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r15, [rsp+8*73]
	mov	r14, r15
	mov	qword rdi, r14
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r14, r13
	mov	r9, rsi
	mov	r13, r9
	mov	qword [rsp+8*54], r13
	mov	r13, 65535
	mov	r9, r13
	mov	qword rsi, r9
	mov	qword [rsp+8*53], r14
	mov	r14, 32767
	mov	r9, r14
	mov	qword rdi, r9
	mov	r14, rdi
	mov	r9, r14
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r14, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	r13,r9
	mov	rcx, r14
	shl	r13, cl
	mov	qword [rsp+8*45], r13
	mov	r13, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r14, r13
	or	r14, r9
	mov	qword [rsp+8*46], r14
	mov	r9, [rsp+8*46]
	mov	r14, r9
	mov	qword [rsp+8*74], r8
	mov	qword [rsp+8*75], r12
	mov	qword [rsp+8*47], r14
	jmp	Lab_451
	
Lab_451:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_453
	
Lab_453:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_455
	
Lab_455:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*74]
	mov	r11, r10
	or	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*77], r11
	mov	qword [rsp+8*78], r12
	jmp	Lab_457
	
Lab_457:
	mov	r9, [rsp+8*78]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*19]
	mov	r12, [rsp+8*21]
	mov	r13, r11
	xor	r13, r12
	mov	r15, [rsp+8*23]
	mov	r14, r15
	mov	qword [rsp+8*83], r8
	mov	r11, [rsp+8*14]
	mov	r8, r11
	mov	r11, r13
	mov	r13, r11
	mov	qword rdi, r11
	mov	r11, r8
	mov	qword rsi, r8
	mov	r8, r14
	mov	qword [arg+8*2], r14
	mov	r14, 31
	mov	r12, r8
	and	r12, r14
	mov	qword [rsp+8*30], r8
	mov	r8, r12
	mov	r12, r11
	mov	qword [rsp+8*29], r11
	mov	r11, r13
	mov	qword [rsp+8*28], r13
	mov	r13, r11
	mov	r14, r12
	mov	qword rdi, r11
	mov	r11, 1
	mov	qword rsi, r12
	mov	r12, r13
	add	r12, r11
	mov	r15, r12
	mov	qword [rsp+8*36], r15
	mov	qword [rsp+8*34], r14
	mov	r14, 0
	mov	r15, r14
	mov	qword [rsp+8*32], r8
	mov	qword [rsp+8*84], r10
	mov	qword [rsp+8*35], r12
	mov	qword [rsp+8*33], r13
	mov	qword [rsp+8*37], r15
	
Lab_458:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_459
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_461
	
Lab_461:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_463
	
Lab_463:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_465
	
Lab_465:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_467
	
Lab_467:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_469
	
Lab_469:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_471
	
Lab_471:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_473
	
Lab_473:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_474:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_458
	
Lab_459:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_476
	
Lab_476:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, r8
	mov	r12, [rsp+8*32]
	mov	r11, r12
	mov	r13, r10
	mov	r14, r13
	mov	r15, r11
	mov	qword [rsp+8*72], r8
	mov	r8,r14
	mov	rcx, r15
	shl	r8, cl
	mov	qword rdi, r13
	mov	r13, 65535
	mov	r11, r13
	mov	qword rsi, r11
	mov	r9, 32767
	mov	r11, r9
	mov	qword rdi, r11
	mov	qword [rsp+8*42], r8
	mov	r8, rdi
	mov	r11, r8
	mov	qword [rsp+8*43], r11
	mov	r11, rsi
	mov	r8, r11
	mov	r11, [rsp+8*43]
	mov	qword [rsp+8*44], r8
	mov	r8, 16
	mov	r9,r11
	mov	rcx, r8
	shl	r9, cl
	mov	qword [rsp+8*45], r9
	mov	r9, [rsp+8*44]
	mov	r8, [rsp+8*45]
	mov	r11, r9
	or	r11, r8
	mov	qword [rsp+8*46], r11
	mov	r8, [rsp+8*46]
	mov	r11, r8
	mov	qword [rsp+8*73], r10
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*40], r14
	mov	qword [rsp+8*41], r15
	jmp	Lab_478
	
Lab_478:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_480
	
Lab_480:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, 32
	mov	r11, [rsp+8*32]
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r15, [rsp+8*73]
	mov	r14, r15
	mov	r10, r14
	mov	r11, r13
	mov	r12, 65535
	mov	r13, r12
	mov	r15, 32767
	mov	r14, r15
	mov	qword rdi, r14
	mov	qword rsi, r13
	mov	r13, rdi
	mov	r14, r13
	mov	r9, rsi
	mov	r13, r9
	mov	r9, 16
	mov	qword [rsp+8*44], r13
	mov	r13,r14
	mov	rcx, r9
	shl	r13, cl
	mov	qword [rsp+8*45], r13
	mov	r13, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	qword [rsp+8*43], r14
	mov	r14, r13
	or	r14, r9
	mov	qword [rsp+8*46], r14
	mov	r9, [rsp+8*46]
	mov	r14, r9
	mov	qword [rsp+8*74], r8
	mov	qword [rsp+8*53], r10
	mov	qword [rsp+8*54], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_482
	
Lab_482:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_484
	
Lab_484:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_486
	
Lab_486:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*74]
	mov	r11, r10
	or	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*77], r11
	mov	qword [rsp+8*78], r12
	jmp	Lab_488
	
Lab_488:
	mov	r9, [rsp+8*78]
	mov	r8, r9
	mov	r10, r8
	mov	r12, 1
	mov	r11, r12
	mov	r14, [rsp+8*23]
	mov	r13, r14
	mov	r15, r13
	mov	qword [rsp+8*86], r8
	mov	r8, r11
	mov	r9, 1
	mov	r12, r15
	add	r12, r9
	mov	qword rdi, r13
	mov	r13, r12
	mov	qword rsi, r11
	mov	r14, 0
	mov	r11, r14
	mov	qword [rsp+8*34], r8
	mov	qword [rsp+8*87], r10
	mov	qword [rsp+8*37], r11
	mov	qword [rsp+8*35], r12
	mov	qword [rsp+8*36], r13
	mov	qword [rsp+8*33], r15
	
Lab_182:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_183
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_185
	
Lab_185:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_187
	
Lab_187:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_189
	
Lab_189:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_191
	
Lab_191:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_193
	
Lab_193:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_195
	
Lab_195:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_197
	
Lab_197:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_198:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_182
	
Lab_183:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_200
	
Lab_200:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r11, 1
	mov	r10, r11
	mov	r13, [rsp+8*21]
	mov	r12, r13
	mov	r14, r12
	mov	r15, r10
	mov	r11, 1
	mov	qword rdi, r12
	mov	r12, r14
	add	r12, r11
	mov	qword rsi, r10
	mov	r10, r12
	mov	r9, 0
	mov	r13, r9
	mov	qword [rsp+8*88], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*35], r12
	mov	qword [rsp+8*37], r13
	mov	qword [rsp+8*33], r14
	mov	qword [rsp+8*34], r15
	
Lab_201:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_202
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_204
	
Lab_204:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_206
	
Lab_206:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_208
	
Lab_208:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_210
	
Lab_210:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_212
	
Lab_212:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_214
	
Lab_214:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_216
	
Lab_216:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_217:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_201
	
Lab_202:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_219
	
Lab_219:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*88]
	mov	r11, r10
	xor	r11, r8
	mov	r13, 1
	mov	r12, r13
	mov	r15, [rsp+8*19]
	mov	r14, r15
	mov	qword [rsp+8*89], r8
	mov	r8, r14
	mov	r10, r12
	mov	r13, 1
	mov	qword rdi, r14
	mov	r14, r8
	add	r14, r13
	mov	qword rsi, r12
	mov	r12, r14
	mov	r9, 0
	mov	r15, r9
	mov	qword [rsp+8*33], r8
	mov	qword [rsp+8*34], r10
	mov	qword [rsp+8*90], r11
	mov	qword [rsp+8*36], r12
	mov	qword [rsp+8*35], r14
	mov	qword [rsp+8*37], r15
	
Lab_220:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_221
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_223
	
Lab_223:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_225
	
Lab_225:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_227
	
Lab_227:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_229
	
Lab_229:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_231
	
Lab_231:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_233
	
Lab_233:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_235
	
Lab_235:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_236:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_220
	
Lab_221:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_238
	
Lab_238:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*90]
	mov	r11, r10
	xor	r11, r8
	mov	r12, r11
	mov	r13, [rsp+8*80]
	mov	r14, r13
	xor	r14, r12
	mov	qword [rsp+8*91], r8
	mov	r8, 1
	mov	r15, r8
	mov	r8, r14
	mov	r10, r8
	mov	r11, r15
	mov	r13, 1
	mov	r14, r10
	add	r14, r13
	mov	qword rdi, r8
	mov	r8, r14
	mov	qword rsi, r15
	mov	r9, 0
	mov	r15, r9
	mov	qword [rsp+8*36], r8
	mov	qword [rsp+8*33], r10
	mov	qword [rsp+8*34], r11
	mov	qword [rsp+8*93], r12
	mov	qword [rsp+8*35], r14
	mov	qword [rsp+8*37], r15
	
Lab_239:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_240
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_242
	
Lab_242:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_244
	
Lab_244:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_246
	
Lab_246:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_248
	
Lab_248:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_250
	
Lab_250:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_252
	
Lab_252:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_254
	
Lab_254:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_255:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_239
	
Lab_240:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_257
	
Lab_257:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*15]
	mov	r11, r10
	add	r11, r8
	mov	r10, r11
	mov	r12, [rsp+8*82]
	mov	r13, [rsp+8*93]
	mov	r14, r12
	xor	r14, r13
	mov	qword [rsp+8*95], r8
	mov	r8, 1
	mov	r15, r8
	mov	r8, r14
	mov	r11, r8
	mov	r12, r15
	mov	r14, 1
	mov	qword rdi, r8
	mov	r8, r11
	add	r8, r14
	mov	qword rsi, r15
	mov	r15, r8
	mov	qword [rsp+8*15], r10
	mov	r9, 0
	mov	r10, r9
	mov	qword [rsp+8*35], r8
	mov	qword [rsp+8*37], r10
	mov	qword [rsp+8*33], r11
	mov	qword [rsp+8*34], r12
	mov	qword [rsp+8*36], r15
	
Lab_258:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_259
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_261
	
Lab_261:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_263
	
Lab_263:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_265
	
Lab_265:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_267
	
Lab_267:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_269
	
Lab_269:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_271
	
Lab_271:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_273
	
Lab_273:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_274:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_258
	
Lab_259:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_276
	
Lab_276:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*16]
	mov	r11, r10
	add	r11, r8
	mov	r10, r11
	mov	r12, [rsp+8*84]
	mov	r13, [rsp+8*93]
	mov	r14, r12
	xor	r14, r13
	mov	qword [rsp+8*98], r8
	mov	r8, 1
	mov	r15, r8
	mov	r8, r14
	mov	r11, r8
	mov	r12, r15
	mov	r14, 1
	mov	qword rdi, r8
	mov	r8, r11
	add	r8, r14
	mov	qword rsi, r15
	mov	r15, r8
	mov	qword [rsp+8*16], r10
	mov	r9, 0
	mov	r10, r9
	mov	qword [rsp+8*35], r8
	mov	qword [rsp+8*37], r10
	mov	qword [rsp+8*33], r11
	mov	qword [rsp+8*34], r12
	mov	qword [rsp+8*36], r15
	
Lab_277:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_278
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	qword rsi, r8
	mov	r8, 32767
	mov	r10, r8
	mov	qword rdi, r10
	mov	r11, rdi
	mov	r10, r11
	mov	qword [rsp+8*42], r14
	mov	r14, rsi
	mov	r11, r14
	mov	r14, 16
	mov	qword [rsp+8*44], r11
	mov	r11,r10
	mov	rcx, r14
	shl	r11, cl
	mov	qword [rsp+8*45], r11
	mov	r11, [rsp+8*44]
	mov	qword [rsp+8*43], r10
	mov	r10, [rsp+8*45]
	mov	r14, r11
	or	r14, r10
	mov	qword [rsp+8*46], r14
	mov	r10, [rsp+8*46]
	mov	r14, r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*47], r14
	jmp	Lab_280
	
Lab_280:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_282
	
Lab_282:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword [rsp+8*36], r10
	mov	r10, 65535
	mov	r12, r10
	mov	qword rsi, r12
	mov	r9, 32767
	mov	r12, r9
	mov	qword rdi, r12
	mov	qword [rsp+8*54], r14
	mov	r14, rdi
	mov	r12, r14
	mov	qword [rsp+8*43], r12
	mov	r12, rsi
	mov	r14, r12
	mov	r12, [rsp+8*43]
	mov	qword [rsp+8*44], r14
	mov	r14, 16
	mov	qword [rsp+8*53], r15
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword [rsp+8*45], r15
	mov	r15, [rsp+8*44]
	mov	r12, [rsp+8*45]
	mov	r14, r15
	or	r14, r12
	mov	qword [rsp+8*46], r14
	mov	r12, [rsp+8*46]
	mov	r14, r12
	mov	qword [rsp+8*51], r8
	mov	qword [rsp+8*52], r11
	mov	qword [rsp+8*47], r14
	jmp	Lab_284
	
Lab_284:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	r9, r14
	add	r9, r15
	mov	r10, r9
	mov	qword [rsp+8*56], r10
	mov	r10, [rsp+8*53]
	mov	qword [rsp+8*59], r9
	mov	r9,r10
	mov	rcx, r11
	shr	r9, cl
	mov	qword [rsp+8*60], r9
	mov	r9, [rsp+8*56]
	mov	r10, [rsp+8*60]
	mov	r11, r9
	and	r11, r10
	mov	r9, r11
	mov	qword [rsp+8*56], r9
	mov	qword [rsp+8*61], r11
	mov	r11, 65535
	mov	r9, r11
	mov	qword rsi, r9
	mov	r11, 32767
	mov	r9, r11
	mov	qword rdi, r9
	mov	r11, rdi
	mov	r9, r11
	mov	qword [rsp+8*43], r9
	mov	r9, rsi
	mov	r11, r9
	mov	r9, [rsp+8*43]
	mov	qword [rsp+8*44], r11
	mov	r11, 16
	mov	r10,r9
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*45], r10
	mov	r10, [rsp+8*44]
	mov	r9, [rsp+8*45]
	mov	r11, r10
	or	r11, r9
	mov	qword [rsp+8*46], r11
	mov	r9, [rsp+8*46]
	mov	r11, r9
	mov	qword [rsp+8*55], r8
	mov	qword [rsp+8*47], r11
	mov	qword [rsp+8*57], r12
	mov	qword [rsp+8*58], r14
	jmp	Lab_286
	
Lab_286:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_288
	
Lab_288:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword rdi, r14
	mov	r14, r12
	mov	qword rsi, r12
	mov	r12,r15
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*42], r12
	mov	r12, 65535
	mov	r10, r12
	mov	qword rsi, r10
	mov	r12, 32767
	mov	r10, r12
	mov	qword rdi, r10
	mov	r12, rdi
	mov	r10, r12
	mov	qword [rsp+8*43], r10
	mov	r10, rsi
	mov	r12, r10
	mov	r10, [rsp+8*43]
	mov	qword [rsp+8*44], r12
	mov	r12, 16
	mov	qword [rsp+8*41], r14
	mov	r14,r10
	mov	rcx, r12
	shl	r14, cl
	mov	qword [rsp+8*45], r14
	mov	r14, [rsp+8*44]
	mov	r10, [rsp+8*45]
	mov	r12, r14
	or	r12, r10
	mov	qword [rsp+8*46], r12
	mov	r10, [rsp+8*46]
	mov	r12, r10
	mov	qword [rsp+8*65], r8
	mov	qword [rsp+8*66], r11
	mov	qword [rsp+8*47], r12
	mov	qword [rsp+8*40], r15
	jmp	Lab_290
	
Lab_290:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_292
	
Lab_292:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_293:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_277
	
Lab_278:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_295
	
Lab_295:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*17]
	mov	r11, r10
	add	r11, r8
	mov	r10, r11
	mov	r12, [rsp+8*87]
	mov	r13, [rsp+8*93]
	mov	r14, r12
	xor	r14, r13
	mov	qword [rsp+8*101], r8
	mov	r8, 1
	mov	r15, r8
	mov	r8, r14
	mov	r11, r8
	mov	r12, r15
	mov	r13, 1
	mov	r14, r11
	add	r14, r13
	mov	qword [rsp+8*33], r11
	mov	r11, r14
	mov	r14, 0
	mov	r13, r14
	mov	qword rdi, r8
	mov	qword [rsp+8*17], r10
	mov	qword [rsp+8*36], r11
	mov	qword [rsp+8*34], r12
	mov	qword [rsp+8*37], r13
	mov	qword rsi, r15
	
Lab_296:
	mov	r8, [rsp+8*34]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*37]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*38], r10
	mov	qword [rsp+8*39], r12
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_297
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*36]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r8
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 65535
	mov	r8, r15
	mov	r9, 32767
	mov	r10, r9
	mov	qword rdi, r10
	mov	qword rsi, r8
	mov	r8, rdi
	mov	r10, r8
	mov	r11, rsi
	mov	r8, r11
	mov	r11, 16
	mov	qword [rsp+8*42], r14
	mov	r14,r10
	mov	rcx, r11
	shl	r14, cl
	mov	qword [rsp+8*43], r10
	mov	r10, r8
	or	r10, r14
	mov	qword [rsp+8*46], r10
	mov	qword [rsp+8*44], r8
	mov	r8, [rsp+8*46]
	mov	r10, r8
	mov	qword [rsp+8*47], r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r13
	mov	qword [rsp+8*45], r14
	jmp	Lab_299
	
Lab_299:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_301
	
Lab_301:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 17
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword [rsp+8*51], r8
	mov	r8, r12
	mov	r11, 65535
	mov	r12, r11
	mov	r11, 32767
	mov	r14, r11
	mov	r11, r14
	mov	r13, r12
	mov	qword rdi, r14
	mov	r14, 16
	mov	qword rsi, r12
	mov	r12,r11
	mov	rcx, r14
	shl	r12, cl
	mov	qword [rsp+8*36], r10
	mov	r10, r13
	or	r10, r12
	mov	r9, r10
	mov	qword [rsp+8*54], r8
	mov	qword [rsp+8*47], r9
	mov	qword [rsp+8*46], r10
	mov	qword [rsp+8*43], r11
	mov	qword [rsp+8*45], r12
	mov	qword [rsp+8*44], r13
	mov	qword [rsp+8*53], r15
	jmp	Lab_303
	
Lab_303:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, r8
	mov	r11, [rsp+8*54]
	mov	r12,r10
	mov	rcx, r11
	shr	r12, cl
	mov	r13, 1
	mov	r14,r12
	mov	rcx, r13
	shl	r14, cl
	mov	r15, 1
	mov	qword [rsp+8*55], r8
	mov	r8, r14
	add	r8, r15
	mov	r10, r8
	mov	r8, [rsp+8*53]
	mov	r12,r8
	mov	rcx, r11
	shr	r12, cl
	mov	r8, r10
	and	r8, r12
	mov	r10, r8
	mov	r11, 65535
	mov	r8, r11
	mov	r12, 32767
	mov	r11, r12
	mov	r12, r11
	mov	r13, r8
	mov	r14, 16
	mov	r15,r12
	mov	rcx, r14
	shl	r15, cl
	mov	qword rdi, r11
	mov	r11, r13
	or	r11, r15
	mov	r9, r11
	mov	qword rsi, r8
	mov	qword [rsp+8*47], r9
	mov	qword [rsp+8*56], r10
	mov	qword [rsp+8*46], r11
	mov	qword [rsp+8*43], r12
	mov	qword [rsp+8*44], r13
	mov	qword [rsp+8*45], r15
	jmp	Lab_305
	
Lab_305:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*56]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*62], r8
	mov	qword [rsp+8*63], r11
	mov	qword [rsp+8*64], r12
	jmp	Lab_307
	
Lab_307:
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	r13, 5
	mov	r12, r13
	mov	r14, r10
	mov	r15, r14
	mov	qword [rsp+8*65], r8
	mov	r8, r12
	mov	r9,r15
	mov	rcx, r8
	shl	r9, cl
	mov	qword [rsp+8*41], r8
	mov	r8, 65535
	mov	r12, r8
	mov	r8, 32767
	mov	r14, r8
	mov	r8, r14
	mov	r11, r12
	mov	r13, 16
	mov	qword [rsp+8*40], r15
	mov	r15,r8
	mov	rcx, r13
	shl	r15, cl
	mov	qword [rsp+8*43], r8
	mov	r8, r11
	or	r8, r15
	mov	qword [rsp+8*44], r11
	mov	r11, r8
	mov	qword [rsp+8*46], r8
	mov	qword [rsp+8*42], r9
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*47], r11
	mov	qword rsi, r12
	mov	qword rdi, r14
	mov	qword [rsp+8*45], r15
	jmp	Lab_309
	
Lab_309:
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	r10, [rsp+8*42]
	mov	r11, r10
	and	r11, r8
	mov	r12, r11
	mov	qword [rsp+8*48], r8
	mov	qword [rsp+8*49], r11
	mov	qword [rsp+8*50], r12
	jmp	Lab_311
	
Lab_311:
	mov	r9, [rsp+8*50]
	mov	r8, r9
	mov	r10, [rsp+8*36]
	mov	r11, r10
	xor	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*36], r10
	mov	qword [rsp+8*68], r11
	
Lab_312:
	mov	r9, [rsp+8*37]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*37], r9
	jmp	Lab_296
	
Lab_297:
	mov	r8, [rsp+8*36]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r11
	jmp	Lab_314
	
Lab_314:
	mov	r9, [rsp+8*71]
	mov	r8, r9
	mov	r10, [rsp+8*18]
	mov	r11, r10
	add	r11, r8
	mov	r10, r11
	mov	qword [rsp+8*104], r8
	mov	qword [rsp+8*18], r10
	mov	qword [rsp+8*105], r11
	
Lab_20:
	mov	r9, [rsp+8*23]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*106], r8
	mov	qword [rsp+8*23], r9
	jmp	Lab_18
	
Lab_19:
	
Lab_17:
	mov	r9, [rsp+8*21]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*107], r8
	mov	qword [rsp+8*21], r9
	jmp	Lab_15
	
Lab_16:
	
Lab_14:
	mov	r9, [rsp+8*19]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*108], r8
	mov	qword [rsp+8*19], r9
	jmp	Lab_12
	
Lab_13:
	mov	r9, [rsp+8*15]
	mov	r8, r9
	mov	r10, r8
	mov	r12, _t126
	mov	r11, r12
	mov	r14, 28
	mov	r13, r14
	mov	qword rdi, r8
	mov	qword [rsp+8*109], r10
	mov	qword [rsp+8*110], r11
	mov	qword [rsp+8*111], r13
	
Lab_95:
	mov	r8, [rsp+8*111]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*112], r10
	mov	r8, [rsp+8*112]
	cmp	r8, 0
	je	Lab_96
	mov	r8, [rsp+8*109]
	mov	r9, [rsp+8*111]
	mov	r10,r8
	mov	rcx, r9
	shr	r10, cl
	mov	r11, 15
	mov	r12, r10
	and	r12, r11
	mov	r13, r12
	mov	r14, 10
	cmp	r13,r14
	mov	r15, 0
	setl	r15B
	mov	qword [rsp+8*113], r10
	mov	qword [rsp+8*114], r12
	mov	qword [rsp+8*115], r13
	mov	qword [rsp+8*116], r15
	mov	r8, [rsp+8*116]
	cmp	r8, 0
	je	Lab_97
	mov	r8, 48
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r12, r11
	mov	r13, 32
	cmp	r12,r13
	mov	r14, 0
	setge	r14B
	mov	qword [rsp+8*117], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*118], r12
	mov	qword [rsp+8*119], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_98
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_99
	
Lab_98:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_99:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_100
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_102
	
Lab_100:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_102
	
Lab_102:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*129], r8
	mov	rsi, [rsp+8*129]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*130], rax
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	jmp	Lab_103
	
Lab_97:
	mov	r8, 65
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r14, r13
	mov	r15, 32
	cmp	r14,r15
	mov	qword rdi, r13
	mov	r13, 0
	setge	r13B
	mov	qword [rsp+8*131], r10
	mov	qword [rsp+8*132], r12
	mov	qword [rsp+8*119], r13
	mov	qword [rsp+8*118], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_104
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_105
	
Lab_104:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_105:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_106
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_108
	
Lab_106:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_108
	
Lab_108:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*133], r8
	mov	rsi, [rsp+8*133]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*134], rax
	mov	r9, [rsp+8*134]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	
Lab_103:
	
Lab_109:
	mov	r8, [rsp+8*111]
	mov	r9, 4
	mov	r10, r8
	sub	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*111], r8
	mov	qword [rsp+8*135], r10
	jmp	Lab_95
	
Lab_96:
	mov	r9, [rsp+8*110]
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	jmp	Lab_111
	
Lab_111:
	mov	r9, [rsp+8*136]
	mov	r8, r9
	mov	qword [rsp+8*137], r8
	mov	rsi, _t219
	mov	rdi, [rsp+8*137]
	call	_stradd
	mov	[rsp+8*138], rax
	mov	r9, [rsp+8*138]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*139], r10
	mov	rdi, format
	mov	rsi,[rsp+8*139] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*16]
	mov	r8, r9
	mov	r10, r8
	mov	r12, _t126
	mov	r11, r12
	mov	r14, 28
	mov	r13, r14
	mov	qword rdi, r8
	mov	qword [rsp+8*109], r10
	mov	qword [rsp+8*110], r11
	mov	qword [rsp+8*111], r13
	
Lab_112:
	mov	r8, [rsp+8*111]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*112], r10
	mov	r8, [rsp+8*112]
	cmp	r8, 0
	je	Lab_113
	mov	r8, [rsp+8*109]
	mov	r9, [rsp+8*111]
	mov	r10,r8
	mov	rcx, r9
	shr	r10, cl
	mov	r11, 15
	mov	r12, r10
	and	r12, r11
	mov	r13, r12
	mov	r14, 10
	cmp	r13,r14
	mov	r15, 0
	setl	r15B
	mov	qword [rsp+8*113], r10
	mov	qword [rsp+8*114], r12
	mov	qword [rsp+8*115], r13
	mov	qword [rsp+8*116], r15
	mov	r8, [rsp+8*116]
	cmp	r8, 0
	je	Lab_114
	mov	r8, 48
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r12, r11
	mov	r13, 32
	cmp	r12,r13
	mov	r14, 0
	setge	r14B
	mov	qword [rsp+8*117], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*118], r12
	mov	qword [rsp+8*119], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_115
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_116
	
Lab_115:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_116:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_117
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_119
	
Lab_117:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_119
	
Lab_119:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*129], r8
	mov	rsi, [rsp+8*129]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*130], rax
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	jmp	Lab_120
	
Lab_114:
	mov	r8, 65
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r14, r13
	mov	r15, 32
	cmp	r14,r15
	mov	qword rdi, r13
	mov	r13, 0
	setge	r13B
	mov	qword [rsp+8*131], r10
	mov	qword [rsp+8*132], r12
	mov	qword [rsp+8*119], r13
	mov	qword [rsp+8*118], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_121
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_122
	
Lab_121:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_122:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_123
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_125
	
Lab_123:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_125
	
Lab_125:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*133], r8
	mov	rsi, [rsp+8*133]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*134], rax
	mov	r9, [rsp+8*134]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	
Lab_120:
	
Lab_126:
	mov	r8, [rsp+8*111]
	mov	r9, 4
	mov	r10, r8
	sub	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*111], r8
	mov	qword [rsp+8*135], r10
	jmp	Lab_112
	
Lab_113:
	mov	r9, [rsp+8*110]
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	jmp	Lab_128
	
Lab_128:
	mov	r9, [rsp+8*136]
	mov	r8, r9
	mov	qword [rsp+8*140], r8
	mov	rsi, _t224
	mov	rdi, [rsp+8*140]
	call	_stradd
	mov	[rsp+8*141], rax
	mov	r9, [rsp+8*141]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*142], r10
	mov	rdi, format
	mov	rsi,[rsp+8*142] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*17]
	mov	r8, r9
	mov	r10, r8
	mov	r12, _t126
	mov	r11, r12
	mov	r14, 28
	mov	r13, r14
	mov	qword rdi, r8
	mov	qword [rsp+8*109], r10
	mov	qword [rsp+8*110], r11
	mov	qword [rsp+8*111], r13
	
Lab_129:
	mov	r8, [rsp+8*111]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*112], r10
	mov	r8, [rsp+8*112]
	cmp	r8, 0
	je	Lab_130
	mov	r8, [rsp+8*109]
	mov	r9, [rsp+8*111]
	mov	r10,r8
	mov	rcx, r9
	shr	r10, cl
	mov	r11, 15
	mov	r12, r10
	and	r12, r11
	mov	r13, r12
	mov	r14, 10
	cmp	r13,r14
	mov	r15, 0
	setl	r15B
	mov	qword [rsp+8*113], r10
	mov	qword [rsp+8*114], r12
	mov	qword [rsp+8*115], r13
	mov	qword [rsp+8*116], r15
	mov	r8, [rsp+8*116]
	cmp	r8, 0
	je	Lab_131
	mov	r8, 48
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r12, r11
	mov	r13, 32
	cmp	r12,r13
	mov	r14, 0
	setge	r14B
	mov	qword [rsp+8*117], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*118], r12
	mov	qword [rsp+8*119], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_132
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_133
	
Lab_132:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_133:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_134
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_136
	
Lab_134:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_136
	
Lab_136:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*129], r8
	mov	rsi, [rsp+8*129]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*130], rax
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	jmp	Lab_137
	
Lab_131:
	mov	r8, 65
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r14, r13
	mov	r15, 32
	cmp	r14,r15
	mov	qword rdi, r13
	mov	r13, 0
	setge	r13B
	mov	qword [rsp+8*131], r10
	mov	qword [rsp+8*132], r12
	mov	qword [rsp+8*119], r13
	mov	qword [rsp+8*118], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_138
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_139
	
Lab_138:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_139:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_140
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_142
	
Lab_140:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_142
	
Lab_142:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*133], r8
	mov	rsi, [rsp+8*133]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*134], rax
	mov	r9, [rsp+8*134]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	
Lab_137:
	
Lab_143:
	mov	r8, [rsp+8*111]
	mov	r9, 4
	mov	r10, r8
	sub	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*111], r8
	mov	qword [rsp+8*135], r10
	jmp	Lab_129
	
Lab_130:
	mov	r9, [rsp+8*110]
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	jmp	Lab_145
	
Lab_145:
	mov	r9, [rsp+8*136]
	mov	r8, r9
	mov	qword [rsp+8*143], r8
	mov	rsi, _t229
	mov	rdi, [rsp+8*143]
	call	_stradd
	mov	[rsp+8*144], rax
	mov	r9, [rsp+8*144]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*145], r10
	mov	rdi, format
	mov	rsi,[rsp+8*145] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*18]
	mov	r8, r9
	mov	r10, r8
	mov	r12, _t126
	mov	r11, r12
	mov	r14, 28
	mov	r13, r14
	mov	qword rdi, r8
	mov	qword [rsp+8*109], r10
	mov	qword [rsp+8*110], r11
	mov	qword [rsp+8*111], r13
	
Lab_146:
	mov	r8, [rsp+8*111]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*112], r10
	mov	r8, [rsp+8*112]
	cmp	r8, 0
	je	Lab_147
	mov	r8, [rsp+8*109]
	mov	r9, [rsp+8*111]
	mov	r10,r8
	mov	rcx, r9
	shr	r10, cl
	mov	r11, 15
	mov	r12, r10
	and	r12, r11
	mov	r13, r12
	mov	r14, 10
	cmp	r13,r14
	mov	r15, 0
	setl	r15B
	mov	qword [rsp+8*113], r10
	mov	qword [rsp+8*114], r12
	mov	qword [rsp+8*115], r13
	mov	qword [rsp+8*116], r15
	mov	r8, [rsp+8*116]
	cmp	r8, 0
	je	Lab_148
	mov	r8, 48
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	r12, r11
	mov	r13, 32
	cmp	r12,r13
	mov	r14, 0
	setge	r14B
	mov	qword [rsp+8*117], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*118], r12
	mov	qword [rsp+8*119], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_149
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_150
	
Lab_149:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_150:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_151
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r9, r12
	mov	qword rdi, r9
	mov	r9, r8
	mov	qword [rsp+8*123], r8
	mov	qword [arg+8*63], r9
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_153
	
Lab_151:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_153
	
Lab_153:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*129], r8
	mov	rsi, [rsp+8*129]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*130], rax
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	jmp	Lab_154
	
Lab_148:
	mov	r8, 65
	mov	r9, [rsp+8*115]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	r14, r13
	mov	r15, 32
	cmp	r14,r15
	mov	r8, 0
	setge	r8B
	mov	qword [rsp+8*119], r8
	mov	qword [rsp+8*131], r10
	mov	qword [rsp+8*132], r12
	mov	qword rdi, r13
	mov	qword [rsp+8*118], r14
	mov	r8, [rsp+8*119]
	cmp	r8, 0
	jne	Lab_155
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	jmp	Lab_156
	
Lab_155:
	mov	r8, [rsp+8*118]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*121], r10
	mov	r9, [rsp+8*121]
	mov	r8, r9
	mov	qword [rsp+8*120], r8
	
Lab_156:
	mov	r8, [rsp+8*120]
	cmp	r8, 0
	je	Lab_157
	mov	r9, [gbl+8*122]
	mov	r8, r9
	mov	r10, [rsp+8*118]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r10, r12
	mov	r11, r8
	mov	qword [rsp+8*123], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*124], r12
	mov	qword [rsp+8*125], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*127], rax
	mov	r9, [rsp+8*127]
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_159
	
Lab_157:
	mov	r9, _t124
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	jmp	Lab_159
	
Lab_159:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	qword [rsp+8*133], r8
	mov	rsi, [rsp+8*133]
	mov	rdi, [rsp+8*110]
	call	_stradd
	mov	[rsp+8*134], rax
	mov	r9, [rsp+8*134]
	mov	r8, r9
	mov	qword [rsp+8*110], r8
	
Lab_154:
	
Lab_160:
	mov	r8, [rsp+8*111]
	mov	r9, 4
	mov	r10, r8
	sub	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*111], r8
	mov	qword [rsp+8*135], r10
	jmp	Lab_146
	
Lab_147:
	mov	r9, [rsp+8*110]
	mov	r8, r9
	mov	qword [rsp+8*136], r8
	jmp	Lab_162
	
Lab_162:
	mov	r9, [rsp+8*136]
	mov	r8, r9
	mov	qword [rsp+8*146], r8
	mov	rsi, _t234
	mov	rdi, [rsp+8*146]
	call	_stradd
	mov	[rsp+8*147], rax
	mov	r9, [rsp+8*147]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*148], r10
	mov	rdi, format
	mov	rsi,[rsp+8*148] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, _t238
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*149], r10
	mov	rdi, [rsp+8*149] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1264
	mov	r9, _t109
	mov	r8, r9
	mov	qword [gbl+8*122], r8
	mov	r8, [rsp+8*150]
	mov	rax, r8
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

_substring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	qword [rbp-28H], rdi
	mov	qword [rbp-30H], rsi
	mov	r8,qword [arg+8*63]
	mov	qword [rbp-18H], r8
	mov	rax, qword [rbp-28H]
	mov	rdx, qword [rbp-30H]
	sub	rdx, rax
	mov	rax, rdx
	add	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword [rbp-20H], rax
	mov	rax, qword [rbp-30H]
	mov	edx, eax
	mov	rax, qword [rbp-28H]
	sub	edx, eax
	mov	eax, edx
	add	eax, 1
	mov	edx, eax
	mov	rax, qword [rbp-20H]
	mov	byte [rax], dl
	mov	qword [rbp-10H], 0
	mov	rax, qword [rbp-28H]
	mov	qword [rbp-8H], rax
	jmp	PSL_022
PSL_021:
	add	qword [rbp-10H], 1
	mov	rdx, qword [rbp-10H]
	mov	rax, qword [rbp-20H]
	add	rdx, rax
	mov	rax, qword [rbp-8H]
	lea	rcx, [rax+1H]
	mov	rax, qword [rbp-18H]
	add	rax, rcx
	movzx	eax, byte [rax]
	mov	byte [rdx], al
	add	qword [rbp-8H], 1
PSL_022:
	mov	rax, qword [rbp-8H]
	cmp	rax, qword [rbp-30H]
	jle	PSL_021
	add	qword [rbp-10H], 1
	mov	rdx, qword [rbp-10H]
	mov	rax, qword [rbp-20H]
	add	rax, rdx
	mov	byte [rax], 0
	mov	rax, qword [rbp-20H]
	leave
	ret


QED:


	section	.bss
gbl:
	resb	3248
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
	
_t126:
	 db 0,"",0

_t238:
	 db 0,"",0

_t229:
	 db 1," ",0

_t109:
	 db 95," !",34,"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[",92,"]^_`abcdefghijklmnopqrstuvwxyz{|}~",0

_t219:
	 db 1," ",0

_t124:
	 db 0,"",0

_t234:
	 db 1," ",0

_t224:
	 db 1," ",0

