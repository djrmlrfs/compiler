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
	sub	rsp, 408
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2392
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	r10, 3100
	mov	r9, r10
	mov	r12, 0
	mov	r11, r12
	mov	r14, 1
	mov	r13, r14
	mov	r15, r9
	mov	qword [rsp+8*1], r8
	mov	r8, r15
	mov	qword [rsp+8*6], r8
	mov	qword [rsp+8*2], r9
	mov	qword [rsp+8*3], r11
	mov	qword [rsp+8*4], r13
	mov	qword rdi, r15
	mov	rdi, [rsp+8*6]
	call	_toString
	mov	qword[rsp+8*7], rax
	mov	r9, [rsp+8*7]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*8], r10
	mov	rdi, [rsp+8*8] 
	add	rdi, 1
	call	puts
	call	cost_a_lot_of_time
	mov	r8, rax
	mov	r10, 3
	mov	r9, r10
	mov	r12, 5
	mov	r11, r12
	mov	r14, 7
	mov	r13, r14
	mov	qword [rsp+8*9], r8
	mov	qword [arg+8*2], r9
	mov	qword rsi, r11
	mov	qword rdi, r13
	call	foo
	mov	r8, rax
	mov	qword [rsp+8*12], r8
	mov	rdi, 10
	call	_newarr
	mov	qword [rsp+8*13], rax
	mov	r9, [rsp+8*13]
	mov	r8, r9
	mov	qword [rsp+8*14], r8
	mov	rdi, 2
	call	_newarr
	mov	qword [rsp+8*15], rax
	mov	r9, [rsp+8*15]
	mov	r8, r9
	mov	r10, 0
	mov	rax, r10
	mov	qword [rsp+8*16], r8
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
cost_a_lot_of_time:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 408
	mov	r9, 3100
	mov	r8, r9
	mov	r11, 0
	mov	r10, r11
	mov	r13, 1
	mov	r12, r13
	mov	r14, r8
	mov	r15, r14
	mov	qword [rsp+8*17], r8
	mov	qword [rsp+8*18], r10
	mov	qword [rsp+8*19], r12
	mov	qword rdi, r14
	mov	qword [rsp+8*20], r15
	mov	rdi, [rsp+8*20]
	call	_toString
	mov	qword[rsp+8*21], rax
	mov	r9, [rsp+8*21]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*22], r10
	mov	rdi, [rsp+8*22] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
foo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 408
	mov	r9, rdi
	mov	r8, r9
	mov	r11, rsi
	mov	r10, r11
	mov	r13, [arg+8*2]
	mov	r12, r13
	mov	r14, 1000
	mov	r15, r8
	imul	r15, r14
	mov	r14, 10
	mov	r9, r10
	imul	r9, r14
	mov	r14, r15
	add	r14, r9
	mov	r9, r14
	add	r9, r12
	mov	r14, r9
	mov	r9, r14
	mov	qword [rsp+8*23], r8
	mov	qword [rsp+8*30], r9
	mov	qword [rsp+8*24], r10
	mov	qword [rsp+8*25], r12
	mov	qword rdi, r14
	mov	qword [rsp+8*26], r15
	mov	rdi, [rsp+8*30]
	call	_toString
	mov	qword[rsp+8*31], rax
	mov	r9, [rsp+8*31]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*32], r10
	mov	rdi, [rsp+8*32] 
	add	rdi, 1
	call	puts
	mov	r8, [rsp+8*23]
	mov	r9, 1
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*33], r10
	mov	r8, [rsp+8*33]
	cmp	r8, 0
	je	Lab_4
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
Lab_4:
	mov	r9, [rsp+8*24]
	mov	r8, r9
	mov	r10, [rsp+8*25]
	mov	r9, r10
	mov	r10, r8
	mov	r11, r10
	mov	r12, r9
	mov	r14, 1
	mov	r13, r14
	mov	qword [rsp+8*34], r8
	mov	qword [rsp+8*24], r9
	mov	qword [rsp+8*25], r10
	mov	qword [arg+8*2], r11
	mov	qword rsi, r12
	mov	qword rdi, r13
	call	foo
	mov	r8, rax
	mov	r9, [rsp+8*23]
	mov	r10, 1000
	mov	r11, r9
	imul	r11, r10
	mov	r12, [rsp+8*24]
	mov	r13, 10
	mov	r14, r12
	imul	r14, r13
	mov	r15, r11
	add	r15, r14
	mov	qword [rsp+8*35], r8
	mov	r8, [rsp+8*25]
	mov	r9, r15
	add	r9, r8
	mov	r8, r9
	mov	r9, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*40], r9
	mov	qword [rsp+8*36], r11
	mov	qword [rsp+8*37], r14
	mov	qword [rsp+8*38], r15
	mov	rdi, [rsp+8*40]
	call	_toString
	mov	qword[rsp+8*41], rax
	mov	r9, [rsp+8*41]
	mov	r8, r9
	mov	r10, r8
	mov	qword rdi, r8
	mov	qword [rsp+8*42], r10
	mov	rdi, [rsp+8*42] 
	add	rdi, 1
	call	puts
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 408
	mov	r8, [rsp+8*43]
	mov	rax, r8
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
	resb	2392
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
	
