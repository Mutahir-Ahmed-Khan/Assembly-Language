INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data


.code
main PROC

	mov ax, 10 
	mov bx, 20

	xchg ax, bx

	movzx eax, ax
	mov edx, msg1 
	call WriteDec
	movzx eax, bx
	call Crlf 
	call WriteDec

exit
main ENDP
END main
