INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayW WORD 1000h, 2000h, 3000h, 4000h

.code
main PROC 
	
	mov esi, 1
	mov ax, arrayW[esi * TYPE arrayW] ; AX = 2000h
	mov esi, 2
	mov bx, arrayW[esi * TYPE arrayW] ; BX = 3000h
	mov esi, 3
	mov cx, arrayW[esi * TYPE arrayW] ; CX = 4000h

exit
main ENDP
END main
