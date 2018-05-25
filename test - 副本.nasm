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
	sub    rsp, 184
	mov     rax, 536870912
        cdqe
        mov     rdi, rax
        call    malloc
        mov     edx, dword 536870912
        movsxd  rdx, edx
        sub     rdx, 2168
        add     rax, rdx
        mov     qword [trsp], rsp
        mov     rsp, rax
        mov     eax, 0
	call global_init
	mov r8 , rax
	mov r10,  [rsp+8*2]
	mov r9,r10
	mov r12,  [rsp+8*4]
	mov r11,r12
	mov r13,  [rsp+8*6]
	mov r14,  [rsp+8*7]
	mov r15,r13
	add r15,r14
	mov qword [rsp+8*1],r8
	mov r8,r15
	mov qword [rsp+8*9],r8
	mov qword [rsp+8*3],r9
	mov r9,  [rsp+8*10]
	mov r8,r9
	mov r9,r8
	mov qword rdi,r8
	mov qword [rsp+8*12],r9
	mov qword [rsp+8*5],r11
	mov qword [rsp+8*8],r15
	mov rdi, format
	mov rsi,[rsp+8*12] 
	add rsi, 1 
	xor rax, rax
	call printf
	mov r8,  [rsp+8*13]
	mov rax,r8
	        mov     rsp, qword [trsp]
	leave
	ret
	mov r8,  [rsp+8*14]
	mov rax,r8
	        mov     rsp, qword [trsp]
	leave
	ret
	jmp QED
	
global_init:
	push   rbp
	mov    rbp, rsp
	sub    rsp, 184
	mov r8,  [rsp+8*15]
	mov rax,r8
	leave
	ret
	
QED:
	
	 section   .bss
gbl:         resb   2168
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
	
t67:
	 db 7,"aaaooo",61,"" ,0


