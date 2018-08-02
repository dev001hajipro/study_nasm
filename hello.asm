	global	_start

	section	.data
message:	db	"Hello, World", 0x0A ; newline
; dd is Defining Data
popo:		db	0x55


	section	.text
_start:	mov	rax, 1		; syscall write
	mov	rdi, 1		; stdout
	mov	rsi, message
	mov	rdx, 13
	syscall

	mov	rax, 60
	xor	rdi, rdi
	syscall

