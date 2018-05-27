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
	sub	rsp, 192
	mov	rax, 536870912
	cdqe
	mov	rdi, rax
	call	malloc
	mov	edx, dword 536870912
	movsxd	rdx, edx
	sub	rdx, 2176
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
	mov	r13, 0
	cmp	r11,r13
	mov	r14, 0
	setne	r14B
	mov	qword [rsp+8*1], r8
	mov	qword [rsp+8*2], r9
	mov	qword [rsp+8*3], r11
	mov	qword [rsp+8*4], r14
	mov	r8, [rsp+8*4]
	cmp	r8, 0
	jne	Lab_0
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*5], r8
	jmp	Lab_1
	
Lab_0:
	xor	rdx, rdx
	mov	r8, [rsp+8*2]
	mov	rax, r8
	mov	r9, [rsp+8*3]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rax
	mov	r11, 1
	cmp	r10,r11
	mov	r12, 0
	setne	r12B
	mov	qword [rsp+8*6], r10
	mov	qword [rsp+8*7], r12
	mov	r9, [rsp+8*7]
	mov	r8, r9
	mov	qword [rsp+8*5], r8
	
Lab_1:
	mov	r8, [rsp+8*5]
	cmp	r8, 0
	je	Lab_2
	mov	r9, 10
	mov	r8, r9
	mov	qword [rsp+8*8], r8
	jmp	Lab_3
	
Lab_2:
	mov	r9, 20
	mov	r8, r9
	mov	qword [rsp+8*8], r8
	
Lab_3:
	mov	r8, [rsp+8*8]
	mov	r9, 10
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*9], r10
	mov	r8, [rsp+8*9]
	cmp	r8, 0
	jne	Lab_4
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*10], r8
	jmp	Lab_5
	
Lab_4:
	xor	rdx, rdx
	mov	r8, [rsp+8*2]
	mov	rax, r8
	mov	r9, [rsp+8*3]
	mov	rbx, r9
	cdq
	idiv rbx
	mov	r10, rax
	mov	r11, 0
	cmp	r10,r11
	mov	r12, 0
	sete	r12B
	mov	qword [rsp+8*11], r10
	mov	qword [rsp+8*12], r12
	mov	r9, [rsp+8*12]
	mov	r8, r9
	mov	qword [rsp+8*10], r8
	
Lab_5:
	mov	r8, [rsp+8*10]
	cmp	r8, 0
	jne	Lab_6
	mov	r9, 0
	mov	r8, r9
	mov	qword [rsp+8*13], r8
	jmp	Lab_7
	
Lab_6:
	mov	r8, [rsp+8*2]
	mov	r9, 5
	cmp	r8,r9
	mov	r10, 0
	sete	r10B
	mov	qword [rsp+8*14], r10
	mov	r9, [rsp+8*14]
	mov	r8, r9
	mov	qword [rsp+8*13], r8
	
Lab_7:
	mov	r8, 0
	mov	r9, [rsp+8*13]
	cmp	r9, 0
	sete	r8B
	cmp	r8, 0
	mov	qword [rsp+8*15], r8
	je	Lab_9
	mov	r9, 30
	mov	r8, r9
	mov	qword [rsp+8*8], r8
	
Lab_9:
	mov	r8, [rsp+8*8]
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
	sub	rsp, 192
	mov	r8, [rsp+8*16]
	mov	rax, r8
	leave
	ret
	
QED:
	

	section	.bss
gbl:
	resb	2176
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
	
