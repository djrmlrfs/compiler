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
	sub	rsp, 136
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2120
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r10, 5
	mov	r9, r10
	mov	r12, 0
	mov	r11, r12
	mov	r14, 1
	mov	r13, r14
	mov	qword [rsp+8*1], r8
	mov	qword [rsp+8*2], r9
	mov	qword [rsp+8*3], r11
	mov	qword [rsp+8*4], r13
	
Lab_0:
	mov	r8, [rsp+8*4]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*5], r10
	mov	r8, [rsp+8*5]
	cmp	r8, 0
	je	Lab_1
	mov	r9, 1
	mov	r8, r9
	mov	qword [rsp+8*6], r8
	
Lab_3:
	mov	r8, [rsp+8*6]
	mov	r9, [rsp+8*2]
	cmp	r8,r9
	mov	r10, 0
	setle	r10B
	mov	qword [rsp+8*7], r10
	mov	r8, [rsp+8*7]
	cmp	r8, 0
	je	Lab_4
	mov	r8, [rsp+8*3]
	mov	r9, [rsp+8*4]
	mov	r10, r8
	add	r10, r9
	mov	r8, r10
	mov	qword [rsp+8*3], r8
	mov	qword [rsp+8*8], r10
	
Lab_5:
	mov	r8, [rsp+8*6]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*6], r8
	jmp	Lab_3
	
Lab_4:
	
Lab_2:
	mov	r8, [rsp+8*4]
	mov	r9, 1
	mov	r8, r8
	add	r8, r9
	mov	qword [rsp+8*4], r8
	jmp	Lab_0
	
Lab_1:
	mov	r8, [rsp+8*3]
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
	
_global_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 136
	mov	r8, [rsp+8*9]
	mov	rax, r8
	leave
	ret
	
QED:
	

	section	.bss
gbl:
	resb	2120
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
	
