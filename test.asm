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
	sub	rsp, 912
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2896
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	qword [rsp+8*1], r8
	call	_getInt
	mov	[rsp+8*2], rax
	call	_getInt
	mov	[rsp+8*3], rax
	call	_getInt
	mov	[rsp+8*4], rax
	call	_getInt
	mov	[rsp+8*5], rax
	call	_getInt
	mov	[rsp+8*6], rax
	call	_getInt
	mov	[rsp+8*7], rax
	mov	r9, 30
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 0
	mov	r12, r13
	mov	r15, 0
	mov	r14, r15
	mov	r11, 0
	mov	r9, r11
	mov	r13, [rsp+8*2]
	mov	r11, r13
	mov	qword [rsp+8*8], r8
	mov	qword [rsp+8*12], r9
	mov	qword [rsp+8*9], r10
	mov	qword [rsp+8*13], r11
	mov	qword [rsp+8*10], r12
	mov	qword [rsp+8*11], r14
	
Lab_12:
	mov	r8, [rsp+8*13]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*14], r10
	mov	r8, [rsp+8*14]
	cmp	r8, 0
	je	Lab_13
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	qword [rsp+8*15], r8
	
Lab_15:
	mov	r8, [rsp+8*15]
	mov	r9, [rsp+8*5]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*16], r10
	mov	r8, [rsp+8*16]
	cmp	r8, 0
	je	Lab_16
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	qword [rsp+8*17], r8
	
Lab_18:
	mov	r8, [rsp+8*17]
	mov	r9, [rsp+8*7]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*18], r10
	mov	r8, [rsp+8*18]
	cmp	r8, 0
	je	Lab_19
	mov	r9, [rsp+8*17]
	mov	r8, r9
	mov	r11, [rsp+8*8]
	mov	r10, r11
	mov	r13, [rsp+8*2]
	mov	r12, r13
	mov	qword [arg+8*2], r8
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	getnumber
	mov	r8, rax
	mov	r10, [rsp+8*17]
	mov	r9, r10
	mov	r12, [rsp+8*8]
	mov	r11, r12
	mov	r14, [rsp+8*13]
	mov	r13, r14
	mov	qword [rsp+8*22], r8
	mov	qword [arg+8*2], r9
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	getnumber
	mov	r8, rax
	mov	r10, [rsp+8*17]
	mov	r9, r10
	mov	r12, [rsp+8*8]
	mov	r11, r12
	mov	r14, [rsp+8*15]
	mov	r13, r14
	mov	qword [rsp+8*23], r8
	mov	qword [arg+8*2], r9
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	getnumber
	mov	r8, rax
	mov	r9, [rsp+8*13]
	mov	r10, [rsp+8*15]
	mov	r11, r9
	xor	r11, r10
	mov	r13, [rsp+8*17]
	mov	r12, r13
	mov	r15, [rsp+8*8]
	mov	r14, r15
	mov	r15, r11
	mov	qword [rsp+8*24], r8
	mov	qword [rsp+8*25], r11
	mov	qword [arg+8*2], r12
	mov	qword rsi, r14
	mov	qword rdi, r15
	call	getnumber
	mov	r8, rax
	mov	r10, 1
	mov	r9, r10
	mov	r12, [rsp+8*17]
	mov	r11, r12
	mov	qword [rsp+8*26], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	xorshift
	mov	r8, rax
	mov	r10, 1
	mov	r9, r10
	mov	r12, [rsp+8*15]
	mov	r11, r12
	mov	qword [rsp+8*27], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*27]
	mov	r10, r9
	xor	r10, r8
	mov	r12, 1
	mov	r11, r12
	mov	r14, [rsp+8*13]
	mov	r13, r14
	mov	qword [rsp+8*28], r8
	mov	qword [rsp+8*29], r10
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*29]
	mov	r10, r9
	xor	r10, r8
	mov	r11, [rsp+8*22]
	mov	r12, r11
	xor	r12, r10
	mov	r14, 1
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*30], r8
	mov	qword [rsp+8*31], r10
	mov	qword [rsp+8*32], r12
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*9]
	mov	r9, r9
	add	r9, r8
	mov	r10, [rsp+8*23]
	mov	r11, [rsp+8*31]
	mov	r12, r10
	xor	r12, r11
	mov	r14, 1
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*33], r8
	mov	qword [rsp+8*9], r9
	mov	qword [rsp+8*34], r12
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*10]
	mov	r9, r9
	add	r9, r8
	mov	r10, [rsp+8*24]
	mov	r11, [rsp+8*31]
	mov	r12, r10
	xor	r12, r11
	mov	r14, 1
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*35], r8
	mov	qword [rsp+8*10], r9
	mov	qword [rsp+8*36], r12
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*11]
	mov	r9, r9
	add	r9, r8
	mov	r10, [rsp+8*26]
	mov	r11, [rsp+8*31]
	mov	r12, r10
	xor	r12, r11
	mov	r14, 1
	mov	r13, r14
	mov	r15, r12
	mov	qword [rsp+8*37], r8
	mov	qword [rsp+8*11], r9
	mov	qword [rsp+8*38], r12
	mov	qword rsi, r13
	mov	qword rdi, r15
	call	xorshift
	mov	r8, rax
	mov	r9, [rsp+8*12]
	mov	r9, r9
	add	r9, r8
	mov	qword [rsp+8*39], r8
	mov	qword [rsp+8*12], r9
	
Lab_20:
	mov	r9, [rsp+8*17]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*40], r8
	mov	qword [rsp+8*17], r9
	jmp	Lab_18
	
Lab_19:
	
Lab_17:
	mov	r9, [rsp+8*15]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*41], r8
	mov	qword [rsp+8*15], r9
	jmp	Lab_15
	
Lab_16:
	
Lab_14:
	mov	r9, [rsp+8*13]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*42], r8
	mov	qword [rsp+8*13], r9
	jmp	Lab_12
	
Lab_13:
	mov	r9, [rsp+8*9]
	mov	r8, r9
	mov	qword rdi, r8
	call	toStringHex
	mov	r8, rax
	mov	qword [rsp+8*43], r8
	mov	rsi, _t219
	mov	rdi, [rsp+8*43]
	call	_stradd
	mov	rdi, rax
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*44], r8
	mov	rdi, format
	mov	rsi,[rsp+8*44] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*10]
	mov	r8, r9
	mov	qword rdi, r8
	call	toStringHex
	mov	r8, rax
	mov	qword [rsp+8*45], r8
	mov	rsi, _t224
	mov	rdi, [rsp+8*45]
	call	_stradd
	mov	rdi, rax
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*46], r8
	mov	rdi, format
	mov	rsi,[rsp+8*46] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*11]
	mov	r8, r9
	mov	qword rdi, r8
	call	toStringHex
	mov	r8, rax
	mov	qword [rsp+8*47], r8
	mov	rsi, _t229
	mov	rdi, [rsp+8*47]
	call	_stradd
	mov	rdi, rax
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*48], r8
	mov	rdi, format
	mov	rsi,[rsp+8*48] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, [rsp+8*12]
	mov	r8, r9
	mov	qword rdi, r8
	call	toStringHex
	mov	r8, rax
	mov	qword [rsp+8*49], r8
	mov	rsi, _t234
	mov	rdi, [rsp+8*49]
	call	_stradd
	mov	rdi, rax
	mov	r9, rdi
	mov	r8, r9
	mov	qword [rsp+8*50], r8
	mov	rdi, format
	mov	rsi,[rsp+8*50] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r9, _t238
	mov	r8, r9
	mov	qword [rsp+8*51], r8
	mov	rdi, [rsp+8*51] 
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
	
hilo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 16
	mov	r13,r8
	mov	rcx, r12
	shl	r13, cl
	mov	r14, r10
	or	r14, r13
	mov	rax, r14
	mov	qword [rsp+8*52], r8
	mov	qword [rsp+8*53], r10
	mov	qword [rsp+8*54], r13
	mov	qword [rsp+8*55], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
shift_l:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12,r8
	mov	rcx, r10
	shl	r12, cl
	mov	r14, 2147483647
	mov	r13, r14
	mov	r15, r12
	and	r15, r13
	mov	rax, r15
	mov	qword [rsp+8*56], r8
	mov	qword [rsp+8*57], r10
	mov	qword [rsp+8*58], r12
	mov	qword [rsp+8*59], r13
	mov	qword [rsp+8*60], r15
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
shift_r:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, 2147483647
	mov	r12, r13
	mov	r14,r12
	mov	rcx, r10
	shr	r14, cl
	mov	r15, 1
	mov	r13,r14
	mov	rcx, r15
	shl	r13, cl
	mov	r14, 1
	mov	r12, r13
	add	r12, r14
	mov	r13,r8
	mov	rcx, r10
	shr	r13, cl
	mov	r12, r12
	and	r12, r13
	mov	qword [rsp+8*61], r8
	mov	qword [rsp+8*62], r10
	mov	r10, 2147483647
	mov	r8, r10
	mov	r10, r12
	and	r10, r8
	mov	rax, r10
	mov	qword [rsp+8*67], r8
	mov	qword [rsp+8*68], r10
	mov	qword [rsp+8*63], r12
	mov	qword [rsp+8*66], r13
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
xorshift:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 1
	mov	r13, r8
	add	r13, r12
	mov	r15, 0
	mov	r14, r15
	mov	qword [rsp+8*69], r8
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r13
	mov	qword [rsp+8*72], r14
	
Lab_0:
	mov	r8, [rsp+8*70]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*72]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*73], r10
	mov	qword [rsp+8*74], r12
	mov	r8, [rsp+8*74]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*71]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	shift_l
	mov	r8, rax
	mov	r9, [rsp+8*71]
	mov	r9, r9
	xor	r9, r8
	mov	r11, 17
	mov	r10, r11
	mov	r12, r9
	mov	qword [rsp+8*75], r8
	mov	qword [rsp+8*71], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	shift_r
	mov	r8, rax
	mov	r9, [rsp+8*71]
	mov	r9, r9
	xor	r9, r8
	mov	r11, 5
	mov	r10, r11
	mov	r12, r9
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*71], r9
	mov	qword rsi, r10
	mov	qword rdi, r12
	call	shift_l
	mov	r8, rax
	mov	r9, [rsp+8*71]
	mov	r9, r9
	xor	r9, r8
	mov	qword [rsp+8*77], r8
	mov	qword [rsp+8*71], r9
	
Lab_2:
	mov	r9, [rsp+8*72]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*78], r8
	mov	qword [rsp+8*72], r9
	jmp	Lab_0
	
Lab_1:
	mov	r8, [rsp+8*71]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	rax, r10
	mov	qword [rsp+8*79], r10
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
int2chr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r10, 32
	cmp	r8,r10
	mov	r11, 0
	setge	r11B
	mov	qword [rsp+8*80], r8
	mov	qword [rsp+8*81], r11
	mov	r8, [rsp+8*81]
	cmp	r8, 0
	jne	Lab_3
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*82], r8
	jmp	Lab_4
	
Lab_3:
	mov	r8, [rsp+8*80]
	mov	r9, 126
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*82], r10
	
Lab_4:
	mov	r8, [rsp+8*82]
	cmp	r8, 0
	je	Lab_6
	mov	r9, [gbl+8*83]
	mov	r8, r9
	mov	r10, [rsp+8*80]
	mov	r11, 32
	mov	r12, r10
	sub	r12, r11
	mov	r13, 32
	mov	r14, r10
	sub	r14, r13
	mov	r15, r12
	mov	r10, r8
	mov	qword [rsp+8*84], r8
	mov	qword [arg+8*63], r10
	mov	qword [rsp+8*85], r12
	mov	qword rsi, r14
	mov	qword rdi, r15
	mov	rsi, rsi
	mov	rdi, rdi
	call	_substring
	mov	[rsp+8*87], rax
	mov	r8, [rsp+8*87]
	mov	rax, r8
	leave
	ret
	
Lab_6:
	mov	r8, _t124
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
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, _t126
	mov	r10, r11
	mov	r13, 28
	mov	r12, r13
	mov	qword [rsp+8*88], r8
	mov	qword [rsp+8*89], r10
	mov	qword [rsp+8*90], r12
	
Lab_7:
	mov	r8, [rsp+8*90]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*91], r10
	mov	r8, [rsp+8*91]
	cmp	r8, 0
	je	Lab_8
	mov	r8, [rsp+8*88]
	mov	r9, [rsp+8*90]
	mov	r10,r8
	mov	rcx, r9
	shr	r10, cl
	mov	r11, 15
	mov	r12, r10
	and	r12, r11
	mov	r13, 10
	cmp	r12,r13
	mov	r14, 0
	setl	r14B
	mov	qword [rsp+8*92], r10
	mov	qword [rsp+8*93], r12
	mov	qword [rsp+8*94], r14
	mov	r8, [rsp+8*94]
	cmp	r8, 0
	je	Lab_10
	mov	r8, 48
	mov	r9, [rsp+8*93]
	mov	r10, r8
	add	r10, r9
	mov	qword rdi, r10
	call	int2chr
	mov	r8, rax
	mov	qword [rsp+8*95], r8
	mov	rsi, [rsp+8*95]
	mov	rdi, [rsp+8*89]
	call	_stradd
	mov	[rsp+8*89], rax
	jmp	Lab_11
	
Lab_10:
	mov	r8, 65
	mov	r9, [rsp+8*93]
	mov	r10, r8
	add	r10, r9
	mov	r11, 10
	mov	r12, r10
	sub	r12, r11
	mov	qword [rsp+8*96], r10
	mov	qword rdi, r12
	call	int2chr
	mov	r8, rax
	mov	qword [rsp+8*97], r8
	mov	rsi, [rsp+8*97]
	mov	rdi, [rsp+8*89]
	call	_stradd
	mov	[rsp+8*89], rax
	
Lab_11:
	
Lab_9:
	mov	r8, [rsp+8*90]
	mov	r9, 4
	mov	r8, r8
	sub	r8, r9
	mov	qword [rsp+8*90], r8
	jmp	Lab_7
	
Lab_8:
	mov	r8, [rsp+8*89]
	mov	rax, r8
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
getnumber:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, [arg+8*2]
	mov	r12, r13
	mov	r14, 31
	mov	r15, r12
	and	r15, r14
	mov	r11, r10
	mov	r9, r8
	mov	qword [rsp+8*98], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*99], r10
	mov	qword rsi, r11
	mov	qword [rsp+8*100], r12
	mov	qword [rsp+8*101], r15
	call	xorshift
	mov	r8, rax
	mov	r10, [rsp+8*101]
	mov	r9, r10
	mov	r11, r8
	mov	qword [rsp+8*102], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	shift_l
	mov	r8, rax
	mov	r9, 32
	mov	r10, [rsp+8*101]
	mov	r11, r9
	sub	r11, r10
	mov	r13, [rsp+8*102]
	mov	r12, r13
	mov	qword [rsp+8*103], r8
	mov	qword rsi, r11
	mov	qword rdi, r12
	call	shift_r
	mov	r8, rax
	mov	r9, [rsp+8*103]
	mov	r10, r9
	or	r10, r8
	mov	rax, r10
	mov	qword [rsp+8*104], r8
	mov	qword [rsp+8*105], r10
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 912
	mov	r9, _t109
	mov	r8, r9
	mov	qword [gbl+8*83], r8
	mov	r8, [rsp+8*106]
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
	resb	2896
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

