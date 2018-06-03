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
	sub	rsp, 104
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2088
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r9, 12
	mov	rax, r9
	mov	qword [rsp+8*1], r8
	mov	rsp, qword [trsp]
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	mov	rsp, qword [trsp]
	leave
	ret
	jmp	QED
	
qq:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 104
	mov	r9, 1
	mov	r8, r9
	mov	qword [rsp+8*2], r8
	
Lab_0:
	mov	r8, [rsp+8*2]
	mov	r9, 100
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*3], r10
	mov	r8, [rsp+8*3]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 2
	mov	r8, r9
	mov	qword [rsp+8*4], r8
	
Lab_2:
	mov	r8, [rsp+8*2]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*2], r8
	jmp	Lab_0
	
Lab_1:
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_global_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 104
	mov	r8, [rsp+8*5]
	mov	rax, r8
	leave
	ret
	
QED:
	

	section	.bss
gbl:
	resb	2088
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
	
