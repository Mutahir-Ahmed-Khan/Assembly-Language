INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayW WORD 1000h, 2000h, 3000h

.code
main PROC 
	
	mov esi, OFFSET arrayW ; ESI = address of first element
	mov ax, [esi] ; AX = 1000h
	add esi, 2 ; Move to next element
	mov ax, [esi] ; AX = 2000h

exit
main ENDP
END main
