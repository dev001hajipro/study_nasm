; $ nasm -f elf64 countdown.asm && gcc countdown.o -o countdown && ./countdown
	extern	printf
	section .data
fmt:	db	"%d", 0x0a, 0
	section	.text
	global	main
main:
	xor	rsi, rsi		; reset
	mov	rcx, 10
loop:
	push	rax
	push	rcx
	
	mov	rdi, fmt
	mov	rsi, rcx
	xor	rax, rax
	call	printf WRT ..plt	; printf("%d", x);

	pop	rcx
	pop	rax

	dec	rcx
	jnz	loop

	mov	rax, 60			; sys_exit(0)
	mov	rdi, 0
	syscall
