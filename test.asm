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
	sub	rsp, 736
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2720
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
	mov	rdi, 2
	call	_newarr
	mov	qword [rsp+8*4], rax
	mov	r8, [rsp+8*4]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [rsp+8*3]
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r11
	mov	qword [rsp+8*5], r10
	mov	rdi, [rsp+8*4]
	call	_morarr
	mov	qword [rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*6], r8
	mov	qword [rsp+8*7], r10
	
Lab_3:
	mov	r8, [rsp+8*7]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*8], r10
	mov	r8, [rsp+8*8]
	cmp	r8, 0
	je	Lab_4
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*9], r8
	
Lab_6:
	mov	r8, [rsp+8*9]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*10], r10
	mov	r8, [rsp+8*10]
	cmp	r8, 0
	je	Lab_7
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*11], r8
	
Lab_9:
	mov	r8, [rsp+8*11]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*12], r10
	mov	r8, [rsp+8*12]
	cmp	r8, 0
	je	Lab_10
	mov	r8, [rsp+8*7]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*13], r10
	mov	r8, [rsp+8*13]
	cmp	r8, 0
	jne	Lab_12
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	jmp	Lab_13
	
Lab_12:
	mov	r8, [rsp+8*9]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*15], r10
	mov	r9, [rsp+8*15]
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	
Lab_13:
	mov	r8, [rsp+8*14]
	cmp	r8, 0
	jne	Lab_14
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*16], r8
	jmp	Lab_15
	
Lab_14:
	mov	r8, [rsp+8*11]
	mov	r9, 0
	cmp	r8,r9
	mov	r10, 0
	setg	r10B
	mov	qword [rsp+8*17], r10
	mov	r9, [rsp+8*17]
	mov	r8, r9
	mov	qword [rsp+8*16], r8
	
Lab_15:
	mov	r8, [rsp+8*16]
	cmp	r8, 0
	je	Lab_17
	xor	rdx, rdx
	mov	r8, [rsp+8*7]
	mov	rax, r8
	mov	r9, [rsp+8*9]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	xor	rdx, rdx
	mov	rax, r9
	mov	r11, [rsp+8*11]
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rdx
	cmp	r10,r12
	mov	r13, 0
	setne	r13B
	mov	qword [rsp+8*18], r10
	mov	qword [rsp+8*19], r12
	mov	qword [rsp+8*20], r13
	mov	r8, [rsp+8*20]
	cmp	r8, 0
	jne	Lab_18
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*21], r8
	jmp	Lab_19
	
Lab_18:
	xor	rdx, rdx
	mov	r8, [rsp+8*9]
	mov	rax, r8
	mov	r9, [rsp+8*11]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	xor	rdx, rdx
	mov	rax, r9
	mov	r11, [rsp+8*7]
	mov	rbx, r11
	cdq
	idiv rbx
	mov	r12, rdx
	cmp	r10,r12
	mov	r13, 0
	setne	r13B
	mov	qword [rsp+8*22], r10
	mov	qword [rsp+8*23], r12
	mov	qword [rsp+8*24], r13
	mov	r9, [rsp+8*24]
	mov	r8, r9
	mov	qword [rsp+8*21], r8
	
Lab_19:
	mov	r8, [rsp+8*21]
	cmp	r8, 0
	jne	Lab_20
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*25], r8
	jmp	Lab_21
	
Lab_20:
	xor	rdx, rdx
	mov	r8, [rsp+8*7]
	mov	rax, r8
	mov	r9, [rsp+8*9]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rdx
	xor	rdx, rdx
	mov	r11, [rsp+8*11]
	mov	rax, r11
	mov	rbx, r8
	cdq
	idiv rbx
	mov	r12, rdx
	cmp	r10,r12
	mov	r13, 0
	setne	r13B
	mov	qword [rsp+8*26], r10
	mov	qword [rsp+8*27], r12
	mov	qword [rsp+8*28], r13
	mov	r9, [rsp+8*28]
	mov	r8, r9
	mov	qword [rsp+8*25], r8
	
Lab_21:
	mov	r8, [rsp+8*25]
	cmp	r8, 0
	je	Lab_23
	mov	r8, [rsp+8*7]
	mov	r9, [rsp+8*9]
	mov	r10, r8
	and	r10, r9
	mov	r11, [rsp+8*11]
	mov	r12, r10
	and	r12, r11
	mov	r13, r8
	add	r13, r9
	mov	r14, r13
	add	r14, r11
	mov	r15, r14
	mov	r10, r12
	mov	qword rdi, r10
	mov	qword [rsp+8*30], r12
	mov	qword [rsp+8*31], r13
	mov	qword [rsp+8*32], r14
	mov	qword rsi, r15
	call	xorshift
	mov	r8, rax
	mov	r10, [rsp+8*6]
	mov	r9, r10
	mov	r11, [rsp+8*7]
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	r9, [r12]
	mov	r13, [rsp+8*9]
	mov	r12,r13
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	[r12],r8
	mov	qword [rsp+8*35], r8
	mov	qword [rsp+8*36], r9
	mov	qword [rsp+8*37], r12
	
Lab_23:
	
Lab_17:
	
Lab_11:
	mov	r8, [rsp+8*11]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*11], r8
	jmp	Lab_9
	
Lab_10:
	
Lab_8:
	mov	r8, [rsp+8*9]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*9], r8
	jmp	Lab_6
	
Lab_7:
	
Lab_5:
	mov	r8, [rsp+8*7]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*7], r8
	jmp	Lab_3
	
Lab_4:
	mov	r9, 0
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*38], r8
	mov	qword [rsp+8*7], r10
	
Lab_24:
	mov	r8, [rsp+8*7]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*39], r10
	mov	r8, [rsp+8*39]
	cmp	r8, 0
	je	Lab_25
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*9], r8
	
Lab_27:
	mov	r8, [rsp+8*9]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*40], r10
	mov	r8, [rsp+8*40]
	cmp	r8, 0
	je	Lab_28
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*11], r8
	
Lab_30:
	mov	r8, [rsp+8*11]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*41], r10
	mov	r8, [rsp+8*41]
	cmp	r8, 0
	je	Lab_31
	mov	r8, [rsp+8*7]
	mov	r9, [rsp+8*9]
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*42], r10
	mov	r8, [rsp+8*42]
	cmp	r8, 0
	jne	Lab_33
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*43], r8
	jmp	Lab_34
	
Lab_33:
	mov	r8, [rsp+8*9]
	mov	r9, [rsp+8*11]
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*44], r10
	mov	r9, [rsp+8*44]
	mov	r8, r9
	mov	qword [rsp+8*43], r8
	
Lab_34:
	mov	r8, [rsp+8*43]
	cmp	r8, 0
	je	Lab_36
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	r10, [rsp+8*7]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [rsp+8*9]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, [r11]
	mov	r14, [rsp+8*38]
	mov	r15, r14
	add	r15, r13
	mov	qword [rsp+8*45], r8
	mov	r8, 1073741823
	mov	r9, r15
	and	r9, r8
	mov	r14, r9
	mov	qword [rsp+8*49], r9
	mov	qword [rsp+8*46], r11
	mov	qword [rsp+8*47], r13
	mov	qword [rsp+8*38], r14
	mov	qword [rsp+8*48], r15
	
Lab_36:
	
Lab_32:
	mov	r8, [rsp+8*11]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*11], r8
	jmp	Lab_30
	
Lab_31:
	
Lab_29:
	mov	r8, [rsp+8*9]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*9], r8
	jmp	Lab_27
	
Lab_28:
	
Lab_26:
	mov	r8, [rsp+8*7]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*7], r8
	jmp	Lab_24
	
Lab_25:
	mov	r9, [rsp+8*38]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*50], r10
	mov	rdi, [rsp+8*50]
	call	_toString
	mov	qword[rsp+8*51], rax
	mov	rsi, [rsp+8*51]
	mov	rdi, _t185
	call	_stradd
	mov	[rsp+8*52], rax
	mov	r9, [rsp+8*52]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*53], r10
	mov	rdi, [rsp+8*53] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	
shift_l:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 736
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
	mov	qword [rsp+8*54], r8
	mov	qword [rsp+8*55], r10
	mov	qword [rsp+8*56], r12
	mov	qword [rsp+8*57], r13
	mov	qword [rsp+8*58], r15
	leave
	ret
	
shift_r:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 736
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, 2147483647
	mov	r12, r13
	mov	r10, r10
	mov	r14,r12
	mov	rcx, r10
	shr	r14, cl
	mov	r15, 2
	mov	qword [rsp+8*61], r12
	mov	r12,r14
	mov	rcx, r15
	shl	r12, cl
	mov	r13, 1
	mov	r14, r12
	add	r14, r13
	mov	r12,r8
	mov	rcx, r10
	shr	r12, cl
	mov	qword [rsp+8*59], r8
	mov	r8, r14
	and	r8, r12
	mov	qword [rsp+8*60], r10
	mov	r12, 2147483647
	mov	r10, r12
	mov	r12, r8
	and	r12, r10
	mov	rax, r12
	mov	qword [rsp+8*66], r8
	mov	qword [rsp+8*67], r10
	mov	qword [rsp+8*68], r12
	mov	qword [rsp+8*64], r14
	leave
	ret
	
xorshift:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 736
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, 1
	mov	r13, r8
	add	r13, r12
	mov	r14, r13
	mov	qword [rsp+8*69], r8
	mov	r8, 0
	mov	r15, r8
	mov	qword [rsp+8*70], r10
	mov	qword [rsp+8*71], r13
	mov	qword [rsp+8*72], r14
	mov	qword [rsp+8*73], r15
	
Lab_0:
	mov	r8, [rsp+8*70]
	mov	r9, 10
	mov	r10, r8
	imul	r10, r9
	mov	r11, [rsp+8*73]
	cmp	r11,r10
	mov	r12, 0
	setl	r12B
	mov	qword [rsp+8*74], r10
	mov	qword [rsp+8*75], r12
	mov	r8, [rsp+8*75]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 13
	mov	r8, r9
	mov	r11, [rsp+8*72]
	mov	r10, r11
	mov	qword rsi, r8
	mov	qword rdi, r10
	call	shift_l
	mov	r8, rax
	mov	r9, [rsp+8*72]
	mov	r10, r9
	xor	r10, r8
	mov	r9, r10
	mov	r12, 17
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*76], r8
	mov	qword [rsp+8*72], r9
	mov	qword [rsp+8*77], r10
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	shift_r
	mov	r8, rax
	mov	r9, [rsp+8*72]
	mov	r10, r9
	xor	r10, r8
	mov	r9, r10
	mov	r12, 5
	mov	r11, r12
	mov	r13, r9
	mov	qword [rsp+8*78], r8
	mov	qword [rsp+8*72], r9
	mov	qword [rsp+8*79], r10
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	shift_l
	mov	r8, rax
	mov	r9, [rsp+8*72]
	mov	r10, r9
	xor	r10, r8
	mov	r9, r10
	mov	qword [rsp+8*80], r8
	mov	qword [rsp+8*72], r9
	mov	qword [rsp+8*81], r10
	
Lab_2:
	mov	r9, [rsp+8*73]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*82], r8
	mov	qword [rsp+8*73], r9
	jmp	Lab_0
	
Lab_1:
	mov	r8, [rsp+8*72]
	mov	r9, 123456789
	mov	r10, r8
	xor	r10, r9
	mov	rax, r10
	mov	qword [rsp+8*83], r10
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 736
	mov	r8, [rsp+8*84]
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
	resb	2720
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
	
_t185:
	 db 7,"Ans is ",0

