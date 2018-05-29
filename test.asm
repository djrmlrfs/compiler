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
	sub	rsp, 88
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2072
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_global_init
	mov	r8, rax
	mov	r10, 5
	mov	r9, r10
	mov	r11, 1
	mov	r9, r9
	add	r9, r11
	mov	rax, r9
	mov	qword [rsp+8*1], r8
	mov	qword [rsp+8*2], r9
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
	sub	rsp, 88
	mov	r8, [rsp+8*3]
	mov	rax, r8
	leave
	ret
	
QED:
	

	section	.bss
gbl:
	resb	2072
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
	
