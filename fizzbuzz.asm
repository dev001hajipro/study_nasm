	extern	printf
	global	main
	section .text
main:

	mov	rcx, 0

	xor	rax, rax
	mov	rcx, 0
loop:

	push	rcx

	call	pri

	pop	rcx

	inc	rcx
	cmp	rcx, 10
	jbe	loop


	mov	rax, 60
	mov	rdi, 0	
	syscall

pri:
	mov	eax, 1
	mov	rdi, 1
	mov	rsi, fizz
	mov	rdx, flen
	syscall	
	ret

	section	.data
fizz:	db	'fizz', 0x0a
flen	equ	$ - fizz
buzz:	db	'buzz', 0x0a
blen	equ	$ - buzz

