;
; PIC非対応の場合は、printf関数は、'call printf'で呼び出せる
; この場合は、gccでリンケージするときに -no-pie オプションを追加する
;
; $ nasm -f elf64 use_c_printf_no_pic.asm 
; $ gcc use_c_printf_no_pic.o -no-pie -o pri
; $ ./pri
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
	call	printf

	; sys_exit
	mov	rax, 60
	mov	rdi, 1
	syscall	
