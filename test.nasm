	 global    main
	 extern    puts
	 extern    printf
	 extern    scanf
	 extern    malloc
	 extern    strlen
	 extern    strcmp
	 extern    memset

	 section   .text

main:
	push   rbp
	mov    rbp, rsp
	sub    rsp, 128
	mov     rax, 536870912
        cdqe
        mov     rdi, rax
        call    malloc
        mov     edx, dword 536870912
        movsxd  rdx, edx
        sub     rdx, 2112
        add     rax, rdx
        mov     qword [trsp], rsp
        mov     rsp, rax
        mov     eax, 0
	call global_init
	mov r8 , rax
	mov r9,mov r10,  3
	r10
	mov r11,mov r12,  2
	r12
	xor rdx, rdx
	mov rax, mov r13,  [rsp+8*4]
	r13
	mov rbx, mov r14,  [rsp+8*5]
	r14
	cdq
	idiv rbx
	mov r15, rdx
	mov mov qword [rsp+8*1],r8
	r8,r15
	mov rax,mov qword [rsp+8*7],r8
	mov r8,  0
	r8
	mov qword [rsp+8*2],r9
	mov qword [rsp+8*3],r11
	mov qword [rsp+8*6],r15
	        mov     rsp, qword [trsp]
	leave
	ret
	jmp QED
	
global_init:
	push   rbp
	mov    rbp, rsp
	sub    rsp, 128
	mov rax,mov r8,  [rsp+8*8]
	r8
	leave
	ret
	
QED:
	
	 section   .bss
gbl:         resb   2112
buff.1788:
        resb    256
arg:
        resb    1024

trsp:         resb   1024
	 section   .data

formatln:
	db  "%s", 10, 0
	
format:
	db  "%s",  0
	
GS_31:
	db 25H, 6CH, 64H, 00H
	
GS_32:
	db 25H, 73H, 00H
	
