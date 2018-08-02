	.file	"factorial.c"
	.intel_syntax noprefix
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB11:
	.cfi_startproc
	mov	eax, 1
	cmp	edi, 1
	jle	.L8
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, edi
	lea	edi, -1[rdi]
	call	factorial
	imul	eax, ebx
	pop	rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L8:
	rep ret
	.cfi_endproc
.LFE11:
	.size	factorial, .-factorial
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"result=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 5
	call	factorial
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
