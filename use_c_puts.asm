	global	main
	extern	puts

	section	.text
main:
	mov	rdi, message
	call	puts WRT ..plt
	ret
message:
	db	"Hola, mundo", 0
