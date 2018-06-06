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
	sub	rsp, 152
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2136
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	qword [rsp+8*1], r8
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*2], rax
	mov	r9, [rsp+8*2]
	mov	r8, r9
	mov	qword [rsp+8*3], r8
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*4], rax
	mov	r9, [rsp+8*4]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*5], r8
	mov	rsi, [rsp+8*4]
	mov	rdi, [rsp+8*3]
	call	_caladd
	mov	[rsp+8*6], rax
	mov	r8, [rsp+8*6]
	mov	r9, 10
	mov	[r8],r9
	mov	rdi, 1
	call	_newarr
	mov	qword [rsp+8*7], rax
	mov	r9, [rsp+8*7]
	mov	r8, r9
	mov	r10, 0
	mov	r8,r10
	add	r8,1
	shl	r8,4
	add	r8,r9
	mov	r11, 0
	mov	[r8],r11
	mov	qword [rsp+8*8], r8
	mov	rsi, [rsp+8*7]
	mov	rdi, [rsp+8*3]
	call	_caladd
	mov	[rsp+8*9], rax
	mov	r8, [rsp+8*9]
	mov	r8, [r8]
	mov	r9, 2
	mov	r10, r9
	imul	r10, r8
	mov	rax, r10
	mov	qword [rsp+8*9], r8
	mov	qword [rsp+8*10], r10
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 152
	mov	r8, [rsp+8*11]
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

_caladd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	qword [rbp-28H], rdi
	mov	qword [rbp-30H], rsi
	mov	rax, qword [rbp-30H]
	mov	rax, qword [rax]
	mov	qword [rbp-18H], rax
	cmp	qword [rbp-18H], 0
	jnz	mAd_005
	mov	rax, qword [rbp-28H]
	jmp	mAd_008

mAd_005:
	mov	rax, qword [rbp-28H]
	mov	qword [rbp-10H], rax
	mov	qword [rbp-8H], 1
	jmp	mAd_007

mAd_006:
	mov	rax, qword [rbp-8H]
	lea	rdx, [rax-1H]
	mov	rax, qword [rbp-30H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rdx, qword [rax]
	mov	rax, qword [rbp-10H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rax, qword [rax]
	mov	qword [rbp-10H], rax
	add	qword [rbp-8H], 1
mAd_007:
	mov	rax, qword [rbp-8H]
	cmp	rax, qword [rbp-18H]
	jl	mAd_006
	mov	rax, qword [rbp-18H]
	lea	rdx, [rax-1H]
	mov	rax, qword [rbp-30H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	rdx, qword [rax]
	mov	rax, qword [rbp-10H]
	mov	rsi, rdx
	mov	rdi, rax
	call	_address
	mov	qword [rbp-10H], rax
	mov	rax, qword [rbp-10H]
mAd_008:
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


QED:


	section	.bss
gbl:
	resb	2136
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
	
