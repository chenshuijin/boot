;
org	07c00h
;bits 32
section .text
	;org	07c00h
	global _start
_start:
	mov	ax, cs
	mov	ds, ax
	mov	es, ax

	call	dispStr
	jmp	$

dispStr:
	mov	ax, bootMessage
	mov	bp, ax
	mov	cx, 12
	mov	ax, 01301h
	mov	bx, 000ah

	mov	dh, 05h
	mov	dl, 05h

	int 10h

	ret

	bootMessage:	db	"hello world!"

	times	510-$+$$	db	0

dw	0xaa55
