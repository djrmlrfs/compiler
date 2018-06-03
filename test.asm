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
	sub	rsp, 128
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2112
	add	rax, rdx
	mov	qword [trsp], rsp
	mov	rsp, rax
	mov	eax, 0
	call	_init
	mov	r8, rax
	mov	r9, [gbl+8*2]
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
	
lol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 128
	mov	r9, rdi
	mov	r8, r9
	mov	r10, 1
	mov	r11, r8
	add	r11, r10
	mov	rax, r11
	mov	qword [rsp+8*4], r8
	mov	qword [rsp+8*5], r11
	leave
	ret
	mov	r8, 0
	mov	rax, r8
	leave
	ret
	
_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 128
	mov	r9, 123
	mov	r8, r9
	mov	r10, r8
	mov	qword [gbl+8*6], r8
	mov	qword rdi, r10
	call	lol
	mov	r8, rax
	mov	r9, r8
	mov	qword [gbl+8*7], r8
	mov	qword [gbl+8*2], r9
	mov	r8, [rsp+8*8]
	mov	rax, r8
	leave
	ret
	
QED:
	

	section	.bss
gbl:
	resb	2112
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
	
