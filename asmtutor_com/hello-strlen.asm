; nasm -f elf helloworld.asm && ld -m elf_i386 helloworld.o -o helloworld && ./helloworld
;
	section	.data
msg	db	'Hello, brave new world!', 0Ah

	section	.text
	global	_start

_start:
	mov	eax, msg
	call	strlen

	; sys_write	
	mov	edx, eax		; letval = eax
	mov	ecx, msg
	mov	ebx, 1
	mov	eax, 4
	int 	80h

	; sys_exit
	mov	ebx, 0
	mov	eax, 1
	int	80h

strlen:
	push	ebx			; save msg
	mov	ebx, eax
nextchar:
	cmp	byte [eax], 0
	jz	finished
	inc	eax
	jmp	nextchar
finished:
	sub	eax, ebx		; retval eax.
	pop	ebx			; restore msg
	ret
