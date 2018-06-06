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
	sub	rsp, 296
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2280
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
	mov	r11, 1
	mov	r10, r11
	mov	qword [rsp+8*3], r8
	mov	qword [rsp+8*4], r10
	
Lab_7:
	mov	r8, [rsp+8*4]
	mov	r9, [rsp+8*3]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*5], r10
	mov	r8, [rsp+8*5]
	cmp	r8, 0
	je	Lab_8
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	qword rdi, r8
	call	dp
	mov	r8, rax
	mov	r9, r8
	mov	r10, r9
	mov	qword [rsp+8*7], r8
	mov	qword rdi, r9
	mov	qword [rsp+8*8], r10
	mov	rdi, [rsp+8*8]
	call	_toString
	mov	qword[rsp+8*9], rax
	mov	r9, [rsp+8*9]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*10], r10
	mov	rdi, [rsp+8*10] 
	add	rdi, 1
	call	puts
	
Lab_9:
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*11], r8
	mov	qword [rsp+8*4], r9
	jmp	Lab_7
	
Lab_8:
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
	
add:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 296
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r12, r8
	add	r12, r10
	xor	rdx, rdx
	mov	rax, r12
	mov	r13, 233
	mov	rbx, r13
	cdq
	idiv rbx
	mov	r14, rdx
	mov	rax, r14
	mov	qword [rsp+8*12], r8
	mov	qword [rsp+8*14], r10
	mov	qword [rsp+8*15], r12
	mov	qword [rsp+8*16], r14
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
dp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 296
	mov	r9, rdi
	mov	r8, r9
	mov	r10, 1
	cmp	r8,r10
	mov	r11, 0
	setle	r11B
	mov	qword [rsp+8*17], r8
	mov	qword [rsp+8*18], r11
	mov	r8, [rsp+8*18]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 36
	mov	r8, r9
	mov	rax, r8
	mov	qword [rsp+8*19], r8
	leave
	ret
	
Lab_1:
	mov	r9, 0
	mov	r8, r9
	mov	r11, 2
	mov	r10, r11
	mov	qword [rsp+8*20], r8
	mov	qword [rsp+8*21], r10
	
Lab_2:
	mov	r8, [rsp+8*21]
	mov	r9, [rsp+8*17]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*22], r10
	mov	r8, [rsp+8*22]
	cmp	r8, 0
	je	Lab_3
	mov	r8, [rsp+8*17]
	mov	r9, [rsp+8*21]
	mov	r10, r8
	xor	r10, r9
	cmp	r10,r8
	mov	r11, 0
	setl	r11B
	mov	qword [rsp+8*23], r10
	mov	qword [rsp+8*24], r11
	mov	r8, [rsp+8*24]
	cmp	r8, 0
	je	Lab_6
	mov	r8, [rsp+8*17]
	mov	r9, [rsp+8*21]
	mov	r10, r8
	xor	r10, r9
	mov	r11, r10
	mov	qword [rsp+8*25], r10
	mov	qword rdi, r11
	call	dp
	mov	r8, rax
	mov	r9, r8
	mov	r11, [rsp+8*20]
	mov	r10, r11
	mov	qword [rsp+8*26], r8
	mov	qword rsi, r9
	mov	qword rdi, r10
	call	add
	mov	r8, rax
	mov	r9, r8
	mov	qword [rsp+8*27], r8
	mov	qword [rsp+8*20], r9
	
Lab_6:
	
Lab_4:
	mov	r9, [rsp+8*21]
	mov	r8, r9
	mov	r10, 1
	mov	r9, r9
	add	r9, r10
	mov	qword [rsp+8*28], r8
	mov	qword [rsp+8*21], r9
	jmp	Lab_2
	
Lab_3:
	mov	r8, [rsp+8*20]
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
	sub	rsp, 296
	mov	r8, [rsp+8*29]
	mov	rax, r8
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
	resb	2280
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
	
