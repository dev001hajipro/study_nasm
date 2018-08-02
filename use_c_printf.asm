	extern	printf

	section	.data
fmt:	db	"x=%d", 0x0A, 0

	section	.text
	global	main
main:
	mov	rdi, fmt
	mov	rsi, 198
	xor	rax, rax
;	call	printf WRT ..plt
	call	printf

	; sys_exit
	mov	rax, 60
	mov	rdi, 1
	syscall	
