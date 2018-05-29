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
	sub	rsp, 144
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2128
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r10, 1
	mov	r9, r10
	mov	r12, 10
	mov	r11, r12
	mov	qword [rsp+8*1], r8
	mov	qword rsi, r9
	mov	qword rdi, r11
	call	gcd
	mov	r8, rax
	mov	qword [rsp+8*4], r8
	mov	rdi, [rsp+8*4]
	call	_toString
	mov	qword[rsp+8*5], rax
	mov	rdi, [rsp+8*5] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
gcd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	xor	rdx, rdx
	mov	rax, r8
	mov	rbx, r10
	cdq
	idiv rbx
	mov	r12, rdx
	mov	r13, 0
	cmp	r12,r13
	mov	r14, 0
	sete	r14B
	mov	qword [rsp+8*6], r8
	mov	qword [rsp+8*7], r10
	mov	qword [rsp+8*8], r12
	mov	qword [rsp+8*9], r14
	mov	r8, [rsp+8*9]
	cmp	r8, 0
	je	Lab_1
	mov	r8, 1
	mov	rax, r8
	leave
	ret
	
Lab_1:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_global_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 144
	mov	r8, [rsp+8*10]
	mov	rax, r8
	leave
	ret
	
QED:
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
	resb	2128
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
	
