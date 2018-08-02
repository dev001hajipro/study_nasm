;
; $ nasm -f elf64 pri.asm && gcc pri.o -o pri && ./pri
; PIC対応なのでprintfは以下のようにWRT ..pltを記述して呼び出す
; call printf WRT ..plt
;
	extern	printf

	section	.data
fmt:	db	"x=%d", 0x0A, 0

	section	.text
	global	main
main:
	mov	rdi, fmt
	mov	rsi, 198
	xor	rax, rax
	call	printf WRT ..plt

	; sys_exit
	mov	rax, 60
	mov	rdi, 1
	syscall	
