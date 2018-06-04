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
	sub	rsp, 3264
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 5248
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	qword [rsp+8*1], r8
	
Lab_101:
	mov	r8, 1
	cmp	r8, 0
	je	Lab_102
	call	_getInt
	mov	[rsp+8*2], rax
	mov	r9, [rsp+8*2]
	mov	r8, r9
	mov	r10, 0
	cmp	r8,r10
	mov	r11, 0
	sete	r11B
	mov	qword [rsp+8*3], r8
	mov	qword [rsp+8*4], r11
	mov	r8, [rsp+8*4]
	cmp	r8, 0
	je	Lab_104
	jmp	Lab_102
	
Lab_104:
	mov	r8, [rsp+8*3]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*5], r10
	mov	r8, [rsp+8*5]
	cmp	r8, 0
	je	Lab_105
	call	_getString
	mov	[rsp+8*6], rax
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	r10, r8
	mov	qword [rsp+8*7], r8
	mov	qword rdi, r10
	call	computeSHA1
	mov	r8, rax
	mov	qword [rsp+8*9], r8
	jmp	Lab_106
	
Lab_105:
	mov	r8, [rsp+8*3]
	mov	r9, 2
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*10], r10
	mov	r8, [rsp+8*10]
	cmp	r8, 0
	je	Lab_108
	call	_getString
	mov	[rsp+8*11], rax
	mov	r9, [rsp+8*11]
	mov	r8, r9
	mov	r10, r8
	mov	qword [rsp+8*7], r8
	mov	qword rdi, r10
	call	crackSHA1
	mov	r8, rax
	mov	qword [rsp+8*12], r8
	
Lab_108:
	
Lab_106:
	jmp	Lab_101
	
Lab_102:
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
	
hex2int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	qword [rsp+8*13], r8
	mov	qword [rsp+8*14], r10
	mov	qword [rsp+8*15], r12
	
Lab_0:
	mov	r9, [rsp+8*13]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	r11, [r11]
	mov	r12, 255
	mov	r11, r11
	and	r11, r12
	mov	r13, [rsp+8*15]
	cmp	r13,r11
	mov	r14, 0
	setl	r14B
	mov	qword [rsp+8*16], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*18], r11
	mov	qword [rsp+8*19], r14
	mov	r8, [rsp+8*19]
	cmp	r8, 0
	je	Lab_1
	mov	r9, [rsp+8*13]
	mov	r8, r9
	mov	r11, [rsp+8*15]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*20], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	mov	rdi, rdi
	call	_ord
	mov	qword [rsp+8*21], rax
	mov	r9, [rsp+8*21]
	mov	r8, r9
	mov	r10, 48
	cmp	r8,r10
	mov	r11, 0
	setge	r11B
	mov	qword [rsp+8*22], r8
	mov	qword [rsp+8*23], r11
	mov	r8, [rsp+8*23]
	cmp	r8, 0
	jne	Lab_3
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*24], r8
	jmp	Lab_4
	
Lab_3:
	mov	r8, [rsp+8*22]
	mov	r9, 57
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*25], r10
	mov	r9, [rsp+8*25]
	mov	r8, r9
	mov	qword [rsp+8*24], r8
	
Lab_4:
	mov	r8, [rsp+8*24]
	cmp	r8, 0
	je	Lab_5
	mov	r8, [rsp+8*14]
	mov	r9, 16
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*22]
	mov	r12, r10
	add	r12, r11
	mov	r13, 48
	mov	r14, r12
	sub	r14, r13
	mov	r8, r14
	mov	qword [rsp+8*14], r8
	mov	qword [rsp+8*26], r10
	mov	qword [rsp+8*27], r12
	mov	qword [rsp+8*28], r14
	jmp	Lab_6
	
Lab_5:
	mov	r8, [rsp+8*22]
	mov	r9, 65
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*29], r10
	mov	r8, [rsp+8*29]
	cmp	r8, 0
	jne	Lab_7
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*30], r8
	jmp	Lab_8
	
Lab_7:
	mov	r8, [rsp+8*22]
	mov	r9, 70
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*31], r10
	mov	r9, [rsp+8*31]
	mov	r8, r9
	mov	qword [rsp+8*30], r8
	
Lab_8:
	mov	r8, [rsp+8*30]
	cmp	r8, 0
	je	Lab_9
	mov	r8, [rsp+8*14]
	mov	r9, 16
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*22]
	mov	r12, r10
	add	r12, r11
	mov	r13, 65
	mov	r14, r12
	sub	r14, r13
	mov	r15, 10
	mov	r9, r14
	add	r9, r15
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	mov	qword [rsp+8*35], r9
	mov	qword [rsp+8*32], r10
	mov	qword [rsp+8*33], r12
	mov	qword [rsp+8*34], r14
	jmp	Lab_10
	
Lab_9:
	mov	r8, [rsp+8*22]
	mov	r9, 97
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*36], r10
	mov	r8, [rsp+8*36]
	cmp	r8, 0
	jne	Lab_11
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*37], r8
	jmp	Lab_12
	
Lab_11:
	mov	r8, [rsp+8*22]
	mov	r9, 102
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*38], r10
	mov	r9, [rsp+8*38]
	mov	r8, r9
	mov	qword [rsp+8*37], r8
	
Lab_12:
	mov	r8, [rsp+8*37]
	cmp	r8, 0
	je	Lab_13
	mov	r8, [rsp+8*14]
	mov	r9, 16
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*22]
	mov	r12, r10
	add	r12, r11
	mov	r13, 97
	mov	r14, r12
	sub	r14, r13
	mov	r15, 10
	mov	r9, r14
	add	r9, r15
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	mov	qword [rsp+8*42], r9
	mov	qword [rsp+8*39], r10
	mov	qword [rsp+8*40], r12
	mov	qword [rsp+8*41], r14
	jmp	Lab_14
	
Lab_13:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_14:
	
Lab_10:
	
Lab_6:
	
Lab_2:
	mov	r9, [rsp+8*15]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*43], r8
	mov	qword [rsp+8*15], r9
	jmp	Lab_0
	
Lab_1:
	mov	r8, [rsp+8*14]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
int2chr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r10, 32
	cmp	r8,r10
	mov	r11, 0
	setge	r11B
	mov	qword [rsp+8*44], r8
	mov	qword [rsp+8*45], r11
	mov	r8, [rsp+8*45]
	cmp	r8, 0
	jne	Lab_15
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*46], r8
	jmp	Lab_16
	
Lab_15:
	mov	r8, [rsp+8*44]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*47], r10
	mov	r9, [rsp+8*47]
	mov	r8, r9
	mov	qword [rsp+8*46], r8
	
Lab_16:
	mov	r8, [rsp+8*46]
	cmp	r8, 0
	je	Lab_18
	mov	r9, [gbl+8*48]
	mov	r8, r9
	mov	r10, [rsp+8*44]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r14
	mov	r10, r12
	mov	r11, r8
	mov	qword [rsp+8*49], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*50], r12
	mov	qword [rsp+8*51], r14
	mov	qword rsi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*53], rax
	mov	r8, [rsp+8*53]
	mov	rax, r8
	leave
	ret
	
Lab_18:
	mov	r8, _t131
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
toStringHex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, _t133
	mov	r10, r11
	mov	r13, 28
	mov	r12, r13
	mov	qword [rsp+8*54], r8
	mov	qword [rsp+8*55], r10
	mov	qword [rsp+8*56], r12
	
Lab_19:
	mov	r8, [rsp+8*56]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*57], r10
	mov	r8, [rsp+8*57]
	cmp	r8, 0
	je	Lab_20
	mov	r8, [rsp+8*54]
	mov	r9, [rsp+8*56]
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
	mov	qword [rsp+8*58], r10
	mov	qword [rsp+8*59], r12
	mov	qword [rsp+8*60], r13
	mov	qword [rsp+8*61], r15
	mov	r8, [rsp+8*61]
	cmp	r8, 0
	je	Lab_22
	mov	r8, 48
	mov	r9, [rsp+8*60]
	mov	r10, r8
	add	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*62], r10
	mov	qword rdi, r11
	call	int2chr
	mov	r8, rax
	mov	qword [rsp+8*63], r8
	mov	rsi, [rsp+8*63]
	mov	rdi, [rsp+8*55]
	call	_stradd
	mov	[rsp+8*64], rax
	mov	r9, [rsp+8*64]
	mov	r8, r9
	mov	qword [rsp+8*55], r8
	jmp	Lab_23
	
Lab_22:
	mov	r8, 65
	mov	r9, [rsp+8*60]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	r13, r12
	mov	qword [rsp+8*65], r10
	mov	qword [rsp+8*66], r12
	mov	qword rdi, r13
	call	int2chr
	mov	r8, rax
	mov	qword [rsp+8*67], r8
	mov	rsi, [rsp+8*67]
	mov	rdi, [rsp+8*55]
	call	_stradd
	mov	[rsp+8*68], rax
	mov	r9, [rsp+8*68]
	mov	r8, r9
	mov	qword [rsp+8*55], r8
	
Lab_23:
	
Lab_21:
	mov	r8, [rsp+8*56]
	mov	r9, 4
	mov	r10, r8
	sub	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*56], r8
	mov	qword [rsp+8*69], r10
	jmp	Lab_19
	
Lab_20:
	mov	r8, [rsp+8*55]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
rotate_left:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 1
	cmp	r10,r12
	mov	r13, 0
	sete	r13B
	mov	qword [rsp+8*70], r8
	mov	qword [rsp+8*71], r10
	mov	qword [rsp+8*72], r13
	mov	r8, [rsp+8*72]
	cmp	r8, 0
	je	Lab_25
	mov	r8, [rsp+8*70]
	mov	r9, 2147483647
	mov	r10, r8
	and	r10, r9
	mov	r11, 1
	mov	r12,r10
	mov	rcx, r11
	shl	r12, cl
	mov	r13, 31
	mov	r14,r8
	mov	rcx, r13
	shr	r14, cl
	mov	r15, 1
	mov	r9, r14
	and	r9, r15
	mov	r10, r12
	or	r10, r9
	mov	rax, r10
	mov	qword [rsp+8*76], r9
	mov	qword [rsp+8*77], r10
	mov	qword [rsp+8*74], r12
	mov	qword [rsp+8*75], r14
	leave
	ret
	
Lab_25:
	mov	r8, [rsp+8*71]
	mov	r9, 31
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*78], r10
	mov	r8, [rsp+8*78]
	cmp	r8, 0
	je	Lab_27
	mov	r8, [rsp+8*70]
	mov	r9, 1
	mov	r10, r8
	and	r10, r9
	mov	r11, 31
	mov	r12,r10
	mov	rcx, r11
	shl	r12, cl
	mov	r13, 1
	mov	r14,r8
	mov	rcx, r13
	shr	r14, cl
	mov	r15, 2147483647
	mov	r9, r14
	and	r9, r15
	mov	r10, r12
	or	r10, r9
	mov	rax, r10
	mov	qword [rsp+8*82], r9
	mov	qword [rsp+8*83], r10
	mov	qword [rsp+8*80], r12
	mov	qword [rsp+8*81], r14
	leave
	ret
	
Lab_27:
	mov	r8, 32
	mov	r9, [rsp+8*71]
	mov	r10, r8
	sub	r10, r9
	mov	r11, 1
	mov	r12,r11
	mov	rcx, r10
	shl	r12, cl
	mov	r13, 1
	mov	r14, r12
	sub	r14, r13
	mov	r15, [rsp+8*70]
	mov	r8, r15
	and	r8, r14
	mov	r10,r8
	mov	rcx, r9
	shl	r10, cl
	mov	r8, 32
	mov	r11, r8
	sub	r11, r9
	mov	r8,r15
	mov	rcx, r11
	shr	r8, cl
	mov	r11, 1
	mov	r12,r11
	mov	rcx, r9
	shl	r12, cl
	mov	r9, 1
	mov	r11, r12
	sub	r11, r9
	mov	r9, r8
	and	r9, r11
	mov	r8, r10
	or	r8, r9
	mov	rax, r8
	mov	qword [rsp+8*94], r8
	mov	qword [rsp+8*93], r9
	mov	qword [rsp+8*88], r10
	mov	qword [rsp+8*92], r11
	mov	qword [rsp+8*91], r12
	mov	qword [rsp+8*86], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
add:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 65535
	mov	r13, r8
	and	r13, r12
	mov	r14, 65535
	mov	r15, r10
	and	r15, r14
	mov	r12, r13
	add	r12, r15
	mov	r13, r12
	mov	r12, 16
	mov	r14,r8
	mov	rcx, r12
	shr	r14, cl
	mov	qword [rsp+8*95], r8
	mov	r8, 65535
	mov	r12, r14
	and	r12, r8
	mov	r8, 16
	mov	r14,r10
	mov	rcx, r8
	shr	r14, cl
	mov	r8, 65535
	mov	qword [rsp+8*96], r10
	mov	r10, r14
	and	r10, r8
	mov	r8, r12
	add	r8, r10
	mov	r10, 16
	mov	r12,r13
	mov	rcx, r10
	shr	r12, cl
	mov	r10, r8
	add	r10, r12
	mov	r8, 65535
	mov	r12, r10
	and	r12, r8
	mov	r8, r12
	mov	r10, 16
	mov	r12,r8
	mov	rcx, r10
	shl	r12, cl
	mov	qword [rsp+8*109], r8
	mov	r8, 65535
	mov	r10, r13
	and	r10, r8
	mov	r8, r12
	or	r8, r10
	mov	rax, r8
	mov	qword [rsp+8*112], r8
	mov	qword [rsp+8*111], r10
	mov	qword [rsp+8*110], r12
	mov	qword [rsp+8*100], r13
	mov	qword [rsp+8*103], r14
	mov	qword [rsp+8*98], r15
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
lohi:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 16
	mov	r13,r10
	mov	rcx, r12
	shl	r13, cl
	mov	r14, r8
	or	r14, r13
	mov	rax, r14
	mov	qword [rsp+8*113], r8
	mov	qword [rsp+8*114], r10
	mov	qword [rsp+8*115], r13
	mov	qword [rsp+8*116], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
sha1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 64
	mov	r13, r10
	add	r13, r12
	mov	r14, 56
	mov	r15, r13
	sub	r15, r14
	xor	rdx, rdx
	mov	rax, r15
	mov	r12, 64
	mov	rbx, r12
	cdq
	idiv rbx
	mov	r13, rax
	mov	r12, 1
	mov	r14, r13
	add	r14, r12
	mov	r12, r14
	mov	r13, [gbl+8*124]
	cmp	r12,r13
	mov	r14, 0
	setg	r14B
	mov	qword [rsp+8*117], r8
	mov	qword [rsp+8*118], r10
	mov	qword [rsp+8*123], r12
	mov	qword [rsp+8*125], r14
	mov	qword [rsp+8*120], r15
	mov	r8, [rsp+8*125]
	cmp	r8, 0
	je	Lab_29
	mov	r9, _t249
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*126], r10
	mov	rdi, [rsp+8*126] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_29:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	
Lab_30:
	mov	r8, [rsp+8*128]
	mov	r9, [rsp+8*123]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*129], r10
	mov	r8, [rsp+8*129]
	cmp	r8, 0
	je	Lab_31
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*130], r8
	
Lab_33:
	mov	r8, [rsp+8*130]
	mov	r9, 80
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*131], r10
	mov	r8, [rsp+8*131]
	cmp	r8, 0
	je	Lab_34
	mov	r9, [gbl+8*132]
	mov	r8, r9
	mov	r10, [rsp+8*128]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [rsp+8*130]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, 0
	mov	[r11],r13
	mov	qword [rsp+8*133], r8
	mov	qword [rsp+8*134], r11
	
Lab_35:
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*135], r8
	mov	qword [rsp+8*130], r9
	jmp	Lab_33
	
Lab_34:
	
Lab_32:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*136], r8
	mov	qword [rsp+8*128], r9
	jmp	Lab_30
	
Lab_31:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*128], r8
	
Lab_36:
	mov	r8, [rsp+8*128]
	mov	r9, [rsp+8*118]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*137], r10
	mov	r8, [rsp+8*137]
	cmp	r8, 0
	je	Lab_37
	xor	rdx, rdx
	mov	r8, [rsp+8*128]
	mov	rax, r8
	mov	r9, 64
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r11, 64
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rdx
	xor	rdx, rdx
	mov	rax, r12
	mov	r13, 4
	mov	rbx, r13
	cdq
	idiv rbx
	mov	r14, rax
	mov	r9, [gbl+8*132]
	mov	r15, r9
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r15
	mov	r15, [r11]
	mov	r11,r14
	add	r11,1
	shl	r11,4
	add	r11,r15
	mov	r10, [r11]
	mov	qword [rsp+8*142], r11
	mov	r12, [rsp+8*117]
	mov	r11, r12
	mov	r12,r8
	add	r12,1
	shl	r12,4
	add	r12,r11
	mov	qword [rsp+8*144], r11
	mov	r11, [r12]
	xor	rdx, rdx
	mov	rax, r8
	mov	qword [rsp+8*145], r12
	mov	r12, 4
	mov	rbx, r12
	cdq
	idiv rbx
	mov	r13, rdx
	mov	r12, 3
	mov	r14, r12
	sub	r14, r13
	mov	r12, 8
	mov	r13, r14
	imul	r13, r12
	mov	r12,r11
	mov	rcx, r13
	shl	r12, cl
	mov	qword [rsp+8*146], r11
	mov	r11, r10
	or	r11, r12
	xor	rdx, rdx
	mov	rax, r8
	mov	qword [rsp+8*143], r10
	mov	r10, 64
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r12, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r10, 64
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r13, rdx
	xor	rdx, rdx
	mov	rax, r13
	mov	r10, 4
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r14, rax
	mov	r10, r9
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	r10, [r13]
	mov	r13,r14
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r11
	mov	qword [rsp+8*155], r10
	mov	qword [rsp+8*151], r11
	mov	qword [rsp+8*152], r12
	mov	qword [rsp+8*156], r13
	mov	qword [rsp+8*154], r14
	mov	qword [rsp+8*141], r15
	
Lab_38:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*157], r8
	mov	qword [rsp+8*128], r9
	jmp	Lab_36
	
Lab_37:
	xor	rdx, rdx
	mov	r8, [rsp+8*128]
	mov	rax, r8
	mov	r9, 64
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r11, 64
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rdx
	xor	rdx, rdx
	mov	rax, r12
	mov	r13, 4
	mov	rbx, r13
	cdq
	idiv rbx
	mov	r14, rax
	mov	r9, [gbl+8*132]
	mov	r15, r9
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r15
	mov	r15, [r11]
	mov	r11,r14
	add	r11,1
	shl	r11,4
	add	r11,r15
	mov	r10, [r11]
	xor	rdx, rdx
	mov	rax, r8
	mov	qword [rsp+8*162], r11
	mov	r11, 4
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rdx
	mov	r11, 3
	mov	r13, r11
	sub	r13, r12
	mov	r11, 8
	mov	r12, r13
	imul	r12, r11
	mov	r11, 128
	mov	r13,r11
	mov	rcx, r12
	shl	r13, cl
	mov	r11, r10
	or	r11, r13
	xor	rdx, rdx
	mov	rax, r8
	mov	qword [rsp+8*163], r10
	mov	r10, 64
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r12, rax
	xor	rdx, rdx
	mov	rax, r8
	mov	r10, 64
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r13, rdx
	xor	rdx, rdx
	mov	rax, r13
	mov	r10, 4
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r14, rax
	mov	r10, r9
	mov	r13,r12
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	r10, [r13]
	mov	r13,r14
	add	r13,1
	shl	r13,4
	add	r13,r10
	mov	[r13],r11
	mov	qword [rsp+8*172], r10
	mov	r10, [rsp+8*118]
	mov	r11, 3
	mov	r12,r10
	mov	rcx, r11
	shl	r12, cl
	mov	r11, [rsp+8*123]
	mov	qword [rsp+8*173], r13
	mov	r13, 1
	mov	r14, r11
	sub	r14, r13
	mov	r13, r9
	mov	qword [rsp+8*161], r15
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	r13, [r15]
	mov	r14, 15
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	[r15],r12
	mov	r12, 29
	mov	qword [rsp+8*176], r13
	mov	r13,r10
	mov	rcx, r12
	shr	r13, cl
	mov	r10, 7
	mov	r12, r13
	and	r12, r10
	mov	r10, 1
	mov	r13, r11
	sub	r13, r10
	mov	r10, r9
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r10
	mov	r10, [r14]
	mov	r13, 14
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r10
	mov	[r14],r12
	mov	qword [rsp+8*181], r10
	mov	r12, 1732584193
	mov	r10, r12
	mov	r13, 61389
	mov	r12, r13
	mov	qword [rsp+8*182], r14
	mov	r14, 43913
	mov	r13, r14
	mov	qword [rsp+8*183], r10
	mov	qword rsi, r12
	mov	qword rdi, r13
	mov	qword [rsp+8*177], r15
	call	lohi
	mov	r8, rax
	mov	r9, r8
	mov	r11, 39098
	mov	r10, r11
	mov	r13, 56574
	mov	r12, r13
	mov	qword [rsp+8*184], r8
	mov	qword [rsp+8*185], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	lohi
	mov	r8, rax
	mov	r9, r8
	mov	r11, 271733878
	mov	r10, r11
	mov	r13, 50130
	mov	r12, r13
	mov	r15, 57840
	mov	r14, r15
	mov	qword [rsp+8*186], r8
	mov	qword [rsp+8*187], r9
	mov	qword [rsp+8*188], r10
	mov	qword rsi, r12
	mov	qword rdi, r14
	call	lohi
	mov	r8, rax
	mov	r9, r8
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*189], r8
	mov	qword [rsp+8*190], r9
	mov	qword [rsp+8*128], r10
	
Lab_39:
	mov	r8, [rsp+8*128]
	mov	r9, [rsp+8*123]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*191], r10
	mov	r8, [rsp+8*191]
	cmp	r8, 0
	je	Lab_40
	mov	r9, 16
	mov	r8, r9
	mov	qword [rsp+8*130], r8
	
Lab_42:
	mov	r8, [rsp+8*130]
	mov	r9, 80
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*192], r10
	mov	r8, [rsp+8*192]
	cmp	r8, 0
	je	Lab_43
	mov	r8, [rsp+8*130]
	mov	r9, 3
	mov	r10, r8
	sub	r10, r9
	mov	r12, [gbl+8*132]
	mov	r11, r12
	mov	r13, [rsp+8*128]
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r11, [r14]
	mov	r14,r10
	add	r14,1
	shl	r14,4
	add	r14,r11
	mov	r15, [r14]
	mov	r9, 8
	mov	r10, r8
	sub	r10, r9
	mov	r9, r12
	mov	qword [rsp+8*194], r11
	mov	r11,r13
	add	r11,1
	shl	r11,4
	add	r11,r9
	mov	r9, [r11]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r9
	mov	qword [rsp+8*198], r9
	mov	r9, [r11]
	mov	r10, r15
	xor	r10, r9
	mov	qword [rsp+8*200], r9
	mov	r9, 14
	mov	qword [rsp+8*199], r11
	mov	r11, r8
	sub	r11, r9
	mov	r9, r12
	mov	qword [rsp+8*195], r14
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r9
	mov	r9, [r14]
	mov	r14,r11
	add	r14,1
	shl	r14,4
	add	r14,r9
	mov	qword [rsp+8*203], r9
	mov	r9, [r14]
	mov	r11, r10
	xor	r11, r9
	mov	qword [rsp+8*205], r9
	mov	r9, 16
	mov	r10, r8
	sub	r10, r9
	mov	r9, r12
	mov	qword [rsp+8*204], r14
	mov	r14,r13
	add	r14,1
	shl	r14,4
	add	r14,r9
	mov	r9, [r14]
	mov	r14,r10
	add	r14,1
	shl	r14,4
	add	r14,r9
	mov	qword [rsp+8*208], r9
	mov	r9, [r14]
	mov	r10, r11
	xor	r10, r9
	mov	qword [rsp+8*210], r9
	mov	r11, 1
	mov	r9, r11
	mov	r11, r10
	mov	qword rsi, r9
	mov	qword [rsp+8*211], r10
	mov	qword rdi, r11
	mov	qword [rsp+8*209], r14
	mov	qword [rsp+8*196], r15
	call	rotate_left
	mov	r8, rax
	mov	r10, [gbl+8*132]
	mov	r9, r10
	mov	r11, [rsp+8*128]
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	r9, [r12]
	mov	r13, [rsp+8*130]
	mov	r12,r13
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	[r12],r8
	mov	qword [rsp+8*212], r8
	mov	qword [rsp+8*213], r9
	mov	qword [rsp+8*214], r12
	
Lab_44:
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*215], r8
	mov	qword [rsp+8*130], r9
	jmp	Lab_42
	
Lab_43:
	mov	r9, [rsp+8*183]
	mov	r8, r9
	mov	r11, [rsp+8*185]
	mov	r10, r11
	mov	r13, [rsp+8*187]
	mov	r12, r13
	mov	r15, [rsp+8*188]
	mov	r14, r15
	mov	r13, [rsp+8*190]
	mov	r15, r13
	mov	r11, 0
	mov	r13, r11
	mov	qword [rsp+8*216], r8
	mov	qword [rsp+8*217], r10
	mov	qword [rsp+8*218], r12
	mov	qword [rsp+8*130], r13
	mov	qword [rsp+8*219], r14
	mov	qword [rsp+8*220], r15
	
Lab_45:
	mov	r8, [rsp+8*130]
	mov	r9, 80
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*221], r10
	mov	r8, [rsp+8*221]
	cmp	r8, 0
	je	Lab_46
	mov	r8, [rsp+8*130]
	mov	r9, 20
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*222], r10
	mov	r8, [rsp+8*222]
	cmp	r8, 0
	je	Lab_48
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*218]
	mov	r10, r8
	and	r10, r9
	mov	r11,r8
	not	r11
	mov	r12, [rsp+8*219]
	mov	r13, r11
	and	r13, r12
	mov	r14, r10
	or	r14, r13
	mov	r15, r14
	mov	r11, 1518500249
	mov	r10, r11
	mov	qword [rsp+8*228], r10
	mov	qword [rsp+8*225], r13
	mov	qword [rsp+8*226], r14
	mov	qword [rsp+8*227], r15
	jmp	Lab_49
	
Lab_48:
	mov	r8, [rsp+8*130]
	mov	r9, 40
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*229], r10
	mov	r8, [rsp+8*229]
	cmp	r8, 0
	je	Lab_50
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*218]
	mov	r10, r8
	xor	r10, r9
	mov	r11, [rsp+8*219]
	mov	r12, r10
	xor	r12, r11
	mov	r13, r12
	mov	r15, 1859775393
	mov	r14, r15
	mov	qword [rsp+8*230], r10
	mov	qword [rsp+8*231], r12
	mov	qword [rsp+8*227], r13
	mov	qword [rsp+8*228], r14
	jmp	Lab_51
	
Lab_50:
	mov	r8, [rsp+8*130]
	mov	r9, 60
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*232], r10
	mov	r8, [rsp+8*232]
	cmp	r8, 0
	je	Lab_52
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*218]
	mov	r10, r8
	and	r10, r9
	mov	r11, [rsp+8*219]
	mov	r12, r8
	and	r12, r11
	mov	r13, r10
	or	r13, r12
	mov	r14, r9
	and	r14, r11
	mov	r15, r13
	or	r15, r14
	mov	r10, r15
	mov	r13, 36635
	mov	r12, r13
	mov	r14, 48348
	mov	r13, r14
	mov	qword [rsp+8*227], r10
	mov	qword rsi, r12
	mov	qword rdi, r13
	mov	qword [rsp+8*237], r15
	call	lohi
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*238], r8
	mov	qword [rsp+8*228], r9
	jmp	Lab_53
	
Lab_52:
	mov	r8, [rsp+8*217]
	mov	r9, [rsp+8*218]
	mov	r10, r8
	xor	r10, r9
	mov	r11, [rsp+8*219]
	mov	r12, r10
	xor	r12, r11
	mov	r13, r12
	mov	r15, 51810
	mov	r14, r15
	mov	r12, 49622
	mov	r10, r12
	mov	qword rdi, r10
	mov	qword [rsp+8*227], r13
	mov	qword rsi, r14
	call	lohi
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*241], r8
	mov	qword [rsp+8*228], r9
	
Lab_53:
	
Lab_51:
	
Lab_49:
	mov	r9, 5
	mov	r8, r9
	mov	r11, [rsp+8*216]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	rotate_left
	mov	r8, rax
	mov	r10, [rsp+8*220]
	mov	r9, r10
	mov	r11, r8
	mov	qword [rsp+8*242], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	add
	mov	r8, rax
	mov	r10, [rsp+8*228]
	mov	r9, r10
	mov	r12, [rsp+8*227]
	mov	r11, r12
	mov	qword [rsp+8*243], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*243]
	mov	r10, r11
	mov	qword [rsp+8*244], r8
	mov	qword rsi, r9
	mov	qword rdi, r10
	call	add
	mov	r8, rax
	mov	r10, [gbl+8*132]
	mov	r9, r10
	mov	r11, [rsp+8*128]
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	r9, [r12]
	mov	r13, [rsp+8*130]
	mov	r12,r13
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	r14, [r12]
	mov	r15, r14
	mov	qword [rsp+8*246], r9
	mov	r9, r8
	mov	qword [rsp+8*245], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*247], r12
	mov	qword [rsp+8*248], r14
	mov	qword rsi, r15
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*219]
	mov	r10, r11
	mov	r12, [rsp+8*218]
	mov	r11, r12
	mov	r14, 30
	mov	r13, r14
	mov	qword [rsp+8*249], r8
	mov	r8, [rsp+8*217]
	mov	r15, r8
	mov	qword [rsp+8*250], r9
	mov	qword [rsp+8*220], r10
	mov	qword [rsp+8*219], r11
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	rotate_left
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*216]
	mov	r10, r11
	mov	r12, [rsp+8*250]
	mov	r11, r12
	mov	qword [rsp+8*251], r8
	mov	qword [rsp+8*218], r9
	mov	qword [rsp+8*217], r10
	mov	qword [rsp+8*216], r11
	
Lab_47:
	mov	r9, [rsp+8*130]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*252], r8
	mov	qword [rsp+8*130], r9
	jmp	Lab_45
	
Lab_46:
	mov	r9, [rsp+8*216]
	mov	r8, r9
	mov	r11, [rsp+8*183]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*217]
	mov	r10, r11
	mov	r13, [rsp+8*185]
	mov	r12, r13
	mov	qword [rsp+8*253], r8
	mov	qword [rsp+8*183], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*218]
	mov	r10, r11
	mov	r13, [rsp+8*187]
	mov	r12, r13
	mov	qword [rsp+8*254], r8
	mov	qword [rsp+8*185], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*219]
	mov	r10, r11
	mov	r13, [rsp+8*188]
	mov	r12, r13
	mov	qword [rsp+8*255], r8
	mov	qword [rsp+8*187], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*220]
	mov	r10, r11
	mov	r13, [rsp+8*190]
	mov	r12, r13
	mov	qword [rsp+8*256], r8
	mov	qword [rsp+8*188], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*257], r8
	mov	qword [rsp+8*190], r9
	
Lab_41:
	mov	r9, [rsp+8*128]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*258], r8
	mov	qword [rsp+8*128], r9
	jmp	Lab_39
	
Lab_40:
	mov	r9, [gbl+8*259]
	mov	r8, r9
	mov	r10, 0
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [rsp+8*183]
	mov	[r11],r12
	mov	r13, r9
	mov	r14, 1
	mov	r15,r14
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	qword [rsp+8*260], r8
	mov	r8, [rsp+8*185]
	mov	[r15],r8
	mov	r8, r9
	mov	r10, 2
	mov	qword [rsp+8*261], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*264], r8
	mov	r8, [rsp+8*187]
	mov	[r11],r8
	mov	r8, r9
	mov	r10, 3
	mov	qword [rsp+8*265], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*266], r8
	mov	r8, [rsp+8*188]
	mov	[r11],r8
	mov	r8, r9
	mov	r10, 4
	mov	qword [rsp+8*267], r11
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	qword [rsp+8*268], r8
	mov	r8, [rsp+8*190]
	mov	[r11],r8
	mov	rax, r9
	mov	qword [rsp+8*269], r11
	mov	qword [rsp+8*262], r13
	mov	qword [rsp+8*263], r15
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
computeSHA1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*270], r8
	mov	qword [rsp+8*271], r10
	
Lab_54:
	mov	r9, [rsp+8*270]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	r11, [r11]
	mov	r12, 255
	mov	r11, r11
	and	r11, r12
	mov	r13, [rsp+8*271]
	cmp	r13,r11
	mov	r14, 0
	setl	r14B
	mov	qword [rsp+8*272], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*273], r11
	mov	qword [rsp+8*274], r14
	mov	r8, [rsp+8*274]
	cmp	r8, 0
	je	Lab_55
	mov	r9, [rsp+8*270]
	mov	r8, r9
	mov	r11, [rsp+8*271]
	mov	r10, r11
	mov	r12, r8
	mov	qword [rsp+8*275], r8
	mov	qword rdi, r10
	mov	qword [arg+8*63], r12
	mov	rdi, rdi
	call	_ord
	mov	qword [rsp+8*276], rax
	mov	r9, [gbl+8*277]
	mov	r8, r9
	mov	r10, [rsp+8*271]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [rsp+8*276]
	mov	[r11],r12
	mov	qword [rsp+8*278], r8
	mov	qword [rsp+8*279], r11
	
Lab_56:
	mov	r9, [rsp+8*271]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*280], r8
	mov	qword [rsp+8*271], r9
	jmp	Lab_54
	
Lab_55:
	mov	r9, [rsp+8*270]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	r11, [r11]
	mov	r12, 255
	mov	r11, r11
	and	r11, r12
	mov	r13, r11
	mov	r15, [gbl+8*277]
	mov	r14, r15
	mov	qword [rsp+8*281], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*282], r11
	mov	qword rsi, r13
	mov	qword rdi, r14
	call	sha1
	mov	r8, rax
	mov	r9, r8
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*283], r8
	mov	qword [rsp+8*284], r9
	mov	qword [rsp+8*271], r10
	
Lab_57:
	mov	r9, [rsp+8*284]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	r11, [r11]
	mov	r12, [rsp+8*271]
	cmp	r12,r11
	mov	r13, 0
	setl	r13B
	mov	qword [rsp+8*285], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*286], r11
	mov	qword [rsp+8*287], r13
	mov	r8, [rsp+8*287]
	cmp	r8, 0
	je	Lab_58
	mov	r9, [rsp+8*284]
	mov	r8, r9
	mov	r10, [rsp+8*271]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	qword [rsp+8*288], r8
	mov	qword [rsp+8*289], r11
	mov	qword [rsp+8*290], r12
	mov	qword rdi, r13
	call	toStringHex
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*291], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*292], r10
	mov	rdi, format
	mov	rsi,[rsp+8*292] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	
Lab_59:
	mov	r9, [rsp+8*271]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*293], r8
	mov	qword [rsp+8*271], r9
	jmp	Lab_57
	
Lab_58:
	mov	r9, _t482
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*294], r10
	mov	rdi, [rsp+8*294] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
nextLetter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r10, 122
	cmp	r8,r10
	mov	r11, 0
	sete	r11B
	mov	qword [rsp+8*295], r8
	mov	qword [rsp+8*296], r11
	mov	r8, [rsp+8*296]
	cmp	r8, 0
	je	Lab_61
	mov	r8, 1
	mov	r9,r8
	neg	r9
	mov	rax, r9
	mov	qword [rsp+8*297], r9
	leave
	ret
	
Lab_61:
	mov	r8, [rsp+8*295]
	mov	r9, 90
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*298], r10
	mov	r8, [rsp+8*298]
	cmp	r8, 0
	je	Lab_63
	mov	r8, 97
	mov	rax, r8
	leave
	ret
	
Lab_63:
	mov	r8, [rsp+8*295]
	mov	r9, 57
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*299], r10
	mov	r8, [rsp+8*299]
	cmp	r8, 0
	je	Lab_65
	mov	r8, 65
	mov	rax, r8
	leave
	ret
	
Lab_65:
	mov	r8, [rsp+8*295]
	mov	r9, 1
	mov	r10, r8
	add	r10, r9
	mov	rax, r10
	mov	qword [rsp+8*300], r10
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
nextText:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 1
	mov	r13, r10
	sub	r13, r12
	mov	r14, r13
	mov	qword [rsp+8*301], r8
	mov	qword [rsp+8*302], r10
	mov	qword [rsp+8*303], r13
	mov	qword [rsp+8*304], r14
	
Lab_66:
	mov	r8, [rsp+8*304]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*305], r10
	mov	r8, [rsp+8*305]
	cmp	r8, 0
	je	Lab_67
	mov	r9, [rsp+8*301]
	mov	r8, r9
	mov	r10, [rsp+8*304]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	qword [rsp+8*306], r8
	mov	qword [rsp+8*307], r11
	mov	qword [rsp+8*308], r12
	mov	qword rdi, r13
	call	nextLetter
	mov	r8, rax
	mov	r10, [rsp+8*301]
	mov	r9, r10
	mov	r11, [rsp+8*304]
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	[r12],r8
	mov	r13, r10
	mov	r14,r11
	add	r14,1
	shl	r14,4
	add	r14,r13
	mov	r15, [r14]
	mov	qword [rsp+8*309], r8
	mov	r8, 1
	mov	qword [rsp+8*310], r9
	mov	r9,r8
	neg	r9
	cmp	r15,r9
	mov	r8, 0
	sete	r8B
	mov	qword [rsp+8*316], r8
	mov	qword [rsp+8*315], r9
	mov	qword [rsp+8*311], r12
	mov	qword [rsp+8*312], r13
	mov	qword [rsp+8*313], r14
	mov	qword [rsp+8*314], r15
	mov	r8, [rsp+8*316]
	cmp	r8, 0
	je	Lab_69
	mov	r9, [rsp+8*301]
	mov	r8, r9
	mov	r10, [rsp+8*304]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, 48
	mov	[r11],r12
	mov	qword [rsp+8*317], r8
	mov	qword [rsp+8*318], r11
	jmp	Lab_70
	
Lab_69:
	mov	r8, 1
	mov	rax, r8
	leave
	ret
	
Lab_70:
	
Lab_68:
	mov	r9, [rsp+8*304]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	sub	r9, r10
	mov	qword [rsp+8*319], r8
	mov	qword [rsp+8*304], r9
	jmp	Lab_66
	
Lab_67:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
array_equal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, r8
	mov	r13, r12
	mov	r14, r13
	mov	r14, [r14]
	mov	r15, r10
	mov	r13, r15
	mov	qword [rsp+8*322], r12
	mov	r12, r13
	mov	r12, [r12]
	cmp	r14,r12
	mov	qword [rsp+8*324], r15
	mov	r15, 0
	setne	r15B
	mov	qword [rsp+8*320], r8
	mov	qword [rsp+8*321], r10
	mov	qword [rsp+8*325], r12
	mov	qword [arg+8*63], r13
	mov	qword [rsp+8*323], r14
	mov	qword [rsp+8*326], r15
	mov	r8, [rsp+8*326]
	cmp	r8, 0
	je	Lab_72
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_72:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*327], r8
	
Lab_73:
	mov	r9, [rsp+8*320]
	mov	r8, r9
	mov	r10, r8
	mov	r11, r10
	mov	r11, [r11]
	mov	r12, [rsp+8*327]
	cmp	r12,r11
	mov	r13, 0
	setl	r13B
	mov	qword [rsp+8*328], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*329], r11
	mov	qword [rsp+8*330], r13
	mov	r8, [rsp+8*330]
	cmp	r8, 0
	je	Lab_74
	mov	r9, [rsp+8*320]
	mov	r8, r9
	mov	r10, [rsp+8*327]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r14, [rsp+8*321]
	mov	r13, r14
	mov	r15,r10
	add	r15,1
	shl	r15,4
	add	r15,r13
	mov	qword [rsp+8*331], r8
	mov	r8, [r15]
	cmp	r12,r8
	mov	r9, 0
	setne	r9B
	mov	qword [rsp+8*336], r8
	mov	qword [rsp+8*337], r9
	mov	qword [rsp+8*332], r11
	mov	qword [rsp+8*333], r12
	mov	qword [rsp+8*334], r13
	mov	qword [rsp+8*335], r15
	mov	r8, [rsp+8*337]
	cmp	r8, 0
	je	Lab_77
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_77:
	
Lab_75:
	mov	r9, [rsp+8*327]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*338], r8
	mov	qword [rsp+8*327], r9
	jmp	Lab_73
	
Lab_74:
	mov	r8, 1
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
crackSHA1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*339], r8
	mov	rdi, 5
	call	_newarr
	mov	qword [rsp+8*340], rax
	mov	r9, [rsp+8*340]
	mov	r8, r9
	mov	r11, [rsp+8*339]
	mov	r10, r11
	mov	r12, r10
	mov	r13, r12
	mov	r13, [r13]
	mov	r14, 255
	mov	r13, r13
	and	r13, r14
	mov	r15, 40
	cmp	r13,r15
	mov	r9, 0
	setne	r9B
	mov	qword [rsp+8*341], r8
	mov	qword [rsp+8*344], r9
	mov	qword [rsp+8*342], r10
	mov	qword [arg+8*63], r12
	mov	qword [rsp+8*343], r13
	mov	r8, [rsp+8*344]
	cmp	r8, 0
	je	Lab_79
	mov	r9, _t556
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*345], r10
	mov	rdi, [rsp+8*345] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_79:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*346], r8
	
Lab_80:
	mov	r8, [rsp+8*346]
	mov	r9, 5
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*347], r10
	mov	r8, [rsp+8*347]
	cmp	r8, 0
	je	Lab_81
	mov	r9, [rsp+8*341]
	mov	r8, r9
	mov	r10, [rsp+8*346]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, 0
	mov	[r11],r12
	mov	qword [rsp+8*348], r8
	mov	qword [rsp+8*349], r11
	
Lab_82:
	mov	r9, [rsp+8*346]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*350], r8
	mov	qword [rsp+8*346], r9
	jmp	Lab_80
	
Lab_81:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*346], r8
	
Lab_83:
	mov	r8, [rsp+8*346]
	mov	r9, 40
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*351], r10
	mov	r8, [rsp+8*351]
	cmp	r8, 0
	je	Lab_84
	xor	rdx, rdx
	mov	r8, [rsp+8*346]
	mov	rax, r8
	mov	r9, 8
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rax
	mov	r12, [rsp+8*341]
	mov	r11, r12
	mov	r13,r10
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r14, [r13]
	mov	r9, [rsp+8*339]
	mov	r15, r9
	mov	r9, 3
	mov	r10, r8
	add	r10, r9
	mov	r9, r10
	mov	r10, r8
	mov	qword [rsp+8*353], r11
	mov	r11, r15
	mov	qword rsi, r9
	mov	qword rdi, r10
	mov	qword [arg+8*63], r11
	mov	qword [rsp+8*354], r13
	mov	qword [rsp+8*355], r14
	mov	qword [rsp+8*356], r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*358], rax
	mov	r9, [rsp+8*358]
	mov	r8, r9
	mov	qword rdi, r8
	call	hex2int
	mov	r8, rax
	xor	rdx, rdx
	mov	r9, [rsp+8*346]
	mov	rax, r9
	mov	r10, 4
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r11, rax
	xor	rdx, rdx
	mov	rax, r11
	mov	r12, 2
	mov	rbx, r12
	cdq
	idiv rbx
	mov	r13, rdx
	mov	r14, 1
	mov	r15, r14
	sub	r15, r13
	mov	r10, 16
	mov	r11, r15
	imul	r11, r10
	mov	r10,r8
	mov	rcx, r11
	shl	r10, cl
	mov	qword [rsp+8*359], r8
	mov	r8, [rsp+8*355]
	mov	r11, r8
	or	r11, r10
	xor	rdx, rdx
	mov	rax, r9
	mov	r8, 8
	mov	rbx, r8
	cdq
	idiv rbx
	mov	r10, rax
	mov	r12, [rsp+8*341]
	mov	r8, r12
	mov	r13,r10
	add	r13,1
	shl	r13,4
	add	r13,r8
	mov	[r13],r11
	mov	qword [rsp+8*367], r8
	mov	qword [rsp+8*366], r10
	mov	qword [rsp+8*365], r11
	mov	qword [rsp+8*368], r13
	mov	qword [rsp+8*362], r15
	
Lab_85:
	mov	r8, [rsp+8*346]
	mov	r9, 4
	mov	r10, r8
	add	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*346], r8
	mov	qword [rsp+8*369], r10
	jmp	Lab_83
	
Lab_84:
	mov	r9, 4
	mov	r8, r9
	mov	r11, 1
	mov	r10, r11
	mov	qword [rsp+8*370], r8
	mov	qword [rsp+8*371], r10
	
Lab_86:
	mov	r8, [rsp+8*371]
	mov	r9, [rsp+8*370]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*372], r10
	mov	r8, [rsp+8*372]
	cmp	r8, 0
	je	Lab_87
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*346], r8
	
Lab_89:
	mov	r8, [rsp+8*346]
	mov	r9, [rsp+8*371]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*373], r10
	mov	r8, [rsp+8*373]
	cmp	r8, 0
	je	Lab_90
	mov	r9, [gbl+8*277]
	mov	r8, r9
	mov	r10, [rsp+8*346]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, 48
	mov	[r11],r12
	mov	qword [rsp+8*374], r8
	mov	qword [rsp+8*375], r11
	
Lab_91:
	mov	r9, [rsp+8*346]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*376], r8
	mov	qword [rsp+8*346], r9
	jmp	Lab_89
	
Lab_90:
	
Lab_92:
	mov	r8, 1
	cmp	r8, 0
	je	Lab_93
	mov	r9, [rsp+8*371]
	mov	r8, r9
	mov	r11, [gbl+8*277]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	sha1
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*341]
	mov	r10, r11
	mov	r12, r9
	mov	qword [rsp+8*377], r8
	mov	qword [rsp+8*378], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	array_equal
	mov	r8, rax
	cmp	r8, 0
	mov	qword [rsp+8*379], r8
	je	Lab_95
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*346], r8
	
Lab_96:
	mov	r8, [rsp+8*346]
	mov	r9, [rsp+8*371]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*380], r10
	mov	r8, [rsp+8*380]
	cmp	r8, 0
	je	Lab_97
	mov	r9, [gbl+8*277]
	mov	r8, r9
	mov	r10, [rsp+8*346]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r12, [r11]
	mov	r13, r12
	mov	qword [rsp+8*381], r8
	mov	qword [rsp+8*382], r11
	mov	qword [rsp+8*383], r12
	mov	qword rdi, r13
	call	int2chr
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*384], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*385], r10
	mov	rdi, format
	mov	rsi,[rsp+8*385] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	
Lab_98:
	mov	r9, [rsp+8*346]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*386], r8
	mov	qword [rsp+8*346], r9
	jmp	Lab_96
	
Lab_97:
	mov	r9, _t624
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*387], r10
	mov	rdi, [rsp+8*387] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_95:
	mov	r9, [rsp+8*371]
	mov	r8, r9
	mov	r11, [gbl+8*277]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	nextText
	mov	r8, rax
	mov	r9, 0
	cmp	r8, 0
	sete	r9B
	cmp	r9, 0
	mov	qword [rsp+8*388], r8
	mov	qword [rsp+8*389], r9
	je	Lab_100
	jmp	Lab_93
	
Lab_100:
	jmp	Lab_92
	
Lab_93:
	
Lab_88:
	mov	r9, [rsp+8*371]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*390], r8
	mov	qword [rsp+8*371], r9
	jmp	Lab_86
	
Lab_87:
	mov	r9, _t630
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*391], r10
	mov	rdi, [rsp+8*391] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 3264
	mov	r9, _t116
	mov	r8, r9
	mov	r11, 100
	mov	r10, r11
	mov	r12, 1
	mov	r13, r10
	sub	r13, r12
	mov	r14, 64
	mov	r15, r13
	imul	r15, r14
	mov	qword [gbl+8*48], r8
	mov	r8, 16
	mov	r9, r15
	sub	r9, r8
	mov	r8, r9
	mov	qword [gbl+8*395], r8
	mov	qword [gbl+8*394], r9
	mov	qword [gbl+8*124], r10
	mov	qword [gbl+8*392], r13
	mov	qword [gbl+8*393], r15
	mov	rdi, 2
	call	_newarr
	mov	qword [gbl+8*396], rax
	mov	r8, [gbl+8*396]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [gbl+8*124]
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r13, 80
	mov	[r10],r13
	mov	qword [gbl+8*397], r10
	mov	rdi, [gbl+8*396]
	call	_morarr
	mov	qword [gbl+8*396], rax
	mov	r9, [gbl+8*396]
	mov	r8, r9
	mov	qword [gbl+8*132], r8
	mov	rdi, [gbl+8*395]
	call	_newarr
	mov	qword [gbl+8*398], rax
	mov	r9, [gbl+8*398]
	mov	r8, r9
	mov	qword [gbl+8*277], r8
	mov	rdi, 5
	call	_newarr
	mov	qword [gbl+8*399], rax
	mov	r9, [gbl+8*399]
	mov	r8, r9
	mov	qword [gbl+8*259], r8
	mov	r8, [rsp+8*400]
	mov	rax, r8
	leave
	ret
	_ord	push	rbp
	mov	rbp, rsp
	mov	qword [rbp-18H], rdi
	mov	r8,qword [arg+8*63]
	mov	qword [rbp-8H], r8
	mov	rax, qword [rbp-18H]
	lea	rdx, [rax+1H]
	mov	rax, qword [rbp-8H]
	add	rax, rdx
	movzx	eax, byte [rax]
	movzx	eax, al
	pop	rbp
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

_getString:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	esi, buff.1788
	mov	edi, GS_32
	mov	eax, 0
	call	scanf
	mov	edi, buff.1788
	call	strlen
	mov	qword [rbp-10H], rax
	mov	rax, qword [rbp-10H]
	add	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword [rbp-18H], rax
	mov	rax, qword [rbp-10H]
	mov	edx, eax
	mov	rax, qword [rbp-18H]
	mov	byte [rax], dl
	mov	qword [rbp-8H], 1
	jmp	GS_20
GS_19:
	mov	rdx, qword [rbp-8H]
	mov	rax, qword [rbp-18H]
	add	rdx, rax
	mov	rax, qword [rbp-8H]
	sub	rax, 1
movzx	eax, byte [abs buff.1788+rax]
	mov	byte [rdx], al
	add	qword [rbp-8H], 1
GS_20:
	mov	rax, qword [rbp-8H]
	cmp	rax, qword [rbp-10H]
	jle	GS_19
	mov	rax, qword [rbp-18H]
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
	resb	5248
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
	
_t116:
	 db 95," !",34,"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[",92,"]^_`abcdefghijklmnopqrstuvwxyz{|}~",0

_t556:
	 db 13,"Invalid input",0

_t249:
	 db 18,"nChunk > MAXCHUNK!",0

_t624:
	 db 0,"",0

_t482:
	 db 0,"",0

_t131:
	 db 0,"",0

_t133:
	 db 0,"",0

_t630:
	 db 10,"Not Found!",0

