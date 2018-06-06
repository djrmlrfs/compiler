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
	sub	rsp, 512
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2496
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	r10, 700
	mov	r9, r10
	mov	qword [rsp+8*1], r8
	mov	qword [rsp+8*2], r9
	mov	rdi, 2
	call	_newarr
	mov	qword [rsp+8*3], rax
	mov	r8, [rsp+8*3]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [rsp+8*2]
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r11
	mov	qword [rsp+8*4], r10
	mov	rdi, [rsp+8*3]
	call	_morarr
	mov	qword [rsp+8*3], rax
	mov	r9, [rsp+8*3]
	mov	r8, r9
	mov	qword [rsp+8*5], r8
	mov	rdi, 2
	call	_newarr
	mov	qword [rsp+8*6], rax
	mov	r8, [rsp+8*6]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [rsp+8*2]
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r11
	mov	qword [rsp+8*7], r10
	mov	rdi, [rsp+8*6]
	call	_morarr
	mov	qword [rsp+8*6], rax
	mov	r9, [rsp+8*6]
	mov	r8, r9
	mov	qword [rsp+8*8], r8
	mov	rdi, 2
	call	_newarr
	mov	qword [rsp+8*9], rax
	mov	r8, [rsp+8*9]
	mov	r9, 0
	mov	r10,r9
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	r11, [rsp+8*2]
	mov	[r10],r11
	mov	r12, 1
	mov	r10,r12
	add	r10,1
	shl	r10,4
	add	r10,r8
	mov	[r10],r11
	mov	qword [rsp+8*10], r10
	mov	rdi, [rsp+8*9]
	call	_morarr
	mov	qword [rsp+8*9], rax
	mov	r9, [rsp+8*9]
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*11], r8
	mov	qword [rsp+8*12], r10
	
Lab_0:
	mov	r8, [rsp+8*12]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*13], r10
	mov	r8, [rsp+8*13]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	
Lab_3:
	mov	r8, [rsp+8*14]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*15], r10
	mov	r8, [rsp+8*15]
	cmp	r8, 0
	je	Lab_4
	mov	r8, [rsp+8*12]
	mov	r9, [rsp+8*14]
	mov	r10, r8
	add	r10, r9
	mov	r12, [rsp+8*5]
	mov	r11, r12
	mov	r13,r8
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	r11, [r13]
	mov	r13,r9
	add	r13,1
	shl	r13,4
	add	r13,r11
	mov	[r13],r10
	mov	qword [rsp+8*16], r10
	mov	qword [rsp+8*17], r11
	mov	qword [rsp+8*18], r13
	
Lab_5:
	mov	r8, [rsp+8*14]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*14], r8
	jmp	Lab_3
	
Lab_4:
	
Lab_2:
	mov	r8, [rsp+8*12]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*12], r8
	jmp	Lab_0
	
Lab_1:
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*12], r8
	
Lab_6:
	mov	r8, [rsp+8*12]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*19], r10
	mov	r8, [rsp+8*19]
	cmp	r8, 0
	je	Lab_7
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	
Lab_9:
	mov	r8, [rsp+8*14]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*20], r10
	mov	r8, [rsp+8*20]
	cmp	r8, 0
	je	Lab_10
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*21], r8
	
Lab_12:
	mov	r8, [rsp+8*21]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*22], r10
	mov	r8, [rsp+8*22]
	cmp	r8, 0
	je	Lab_13
	mov	r8, [rsp+8*14]
	mov	r9, [rsp+8*12]
	cmp	r8,r9
	mov	r10, 0
	setge	r10B
	mov	qword [rsp+8*23], r10
	mov	r8, [rsp+8*23]
	cmp	r8, 0
	je	Lab_16
	mov	r9, [rsp+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*12]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [rsp+8*14]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, [r11]
	mov	r15, [rsp+8*5]
	mov	r14, r15
	mov	qword [rsp+8*24], r8
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	r14, [r8]
	mov	qword [rsp+8*25], r11
	mov	r11, [rsp+8*21]
	mov	r8,r11
	add	r8,1
	shl	r8,4
	add	r8,r14
	mov	qword [rsp+8*27], r14
	mov	r14, [r8]
	mov	qword [rsp+8*28], r8
	mov	r8, r15
	mov	r15,r11
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	r8, [r15]
	mov	r15,r12
	add	r15,1
	shl	r15,4
	add	r15,r8
	mov	qword [rsp+8*30], r8
	mov	r8, [r15]
	mov	qword [rsp+8*31], r15
	mov	r15, r8
	mov	qword [rsp+8*32], r8
	mov	r8, r14
	mov	qword [rsp+8*29], r14
	mov	r14, r13
	mov	qword rsi, r8
	mov	qword [rsp+8*26], r13
	mov	qword rdi, r14
	mov	qword [arg+8*2], r15
	call	func
	mov	r8, rax
	mov	r10, [rsp+8*8]
	mov	r9, r10
	mov	r11, [rsp+8*12]
	mov	r12,r11
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	r9, [r12]
	mov	r13, [rsp+8*14]
	mov	r12,r13
	add	r12,1
	shl	r12,4
	add	r12,r9
	mov	[r12],r8
	mov	qword [rsp+8*36], r8
	mov	qword [rsp+8*37], r9
	mov	qword [rsp+8*38], r12
	
Lab_16:
	
Lab_14:
	mov	r8, [rsp+8*21]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*21], r8
	jmp	Lab_12
	
Lab_13:
	
Lab_11:
	mov	r8, [rsp+8*14]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*14], r8
	jmp	Lab_9
	
Lab_10:
	
Lab_8:
	mov	r8, [rsp+8*12]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*12], r8
	jmp	Lab_6
	
Lab_7:
	mov	r9, 0
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	qword [rsp+8*39], r8
	mov	qword [rsp+8*12], r10
	
Lab_17:
	mov	r8, [rsp+8*12]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*40], r10
	mov	r8, [rsp+8*40]
	cmp	r8, 0
	je	Lab_18
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	
Lab_20:
	mov	r8, [rsp+8*14]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setl	r10B
	mov	qword [rsp+8*41], r10
	mov	r8, [rsp+8*41]
	cmp	r8, 0
	je	Lab_21
	mov	r9, [rsp+8*8]
	mov	r8, r9
	mov	r10, [rsp+8*12]
	mov	r11,r10
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r8, [r11]
	mov	r12, [rsp+8*14]
	mov	r11,r12
	add	r11,1
	shl	r11,4
	add	r11,r8
	mov	r13, [r11]
	mov	r14, [rsp+8*39]
	mov	r15, r14
	add	r15, r13
	mov	qword [rsp+8*42], r8
	mov	r8, 1073741823
	mov	r9, r15
	and	r9, r8
	mov	r14, r9
	mov	qword [rsp+8*46], r9
	mov	qword [rsp+8*43], r11
	mov	qword [rsp+8*44], r13
	mov	qword [rsp+8*39], r14
	mov	qword [rsp+8*45], r15
	
Lab_22:
	mov	r8, [rsp+8*14]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*14], r8
	jmp	Lab_20
	
Lab_21:
	
Lab_19:
	mov	r8, [rsp+8*12]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*12], r8
	jmp	Lab_17
	
Lab_18:
	mov	r9, [rsp+8*39]
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
	mov	rdi, format
	mov	rsi,[rsp+8*49] 
	add	rsi, 1 
	xor	rax, rax
	call	printf
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	
func:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 512
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, [arg+8*2]
	mov	r12, r13
	mov	r14, r8
	add	r14, r10
	mov	r15, r14
	add	r15, r12
	mov	qword [rsp+8*50], r8
	mov	r8, 1073741823
	mov	r9, r15
	and	r9, r8
	mov	rax, r9
	mov	qword [rsp+8*55], r9
	mov	qword [rsp+8*51], r10
	mov	qword [rsp+8*52], r12
	mov	qword [rsp+8*53], r14
	mov	qword [rsp+8*54], r15
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 512
	mov	r8, [rsp+8*56]
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
	resb	2496
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
	
