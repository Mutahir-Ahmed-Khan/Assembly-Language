INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayW WORD 1000h, 2000h, 3000h

.code
main PROC 
	
	mov esi, OFFSET arrayW
	mov ax, [esi] ; AX = 1000h
	mov bx, [esi+2] ; BX = 2000h
	mov cx, [esi+4] ; CX = 3000h

exit
main ENDP
END main
