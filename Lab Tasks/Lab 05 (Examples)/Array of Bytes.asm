INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayB BYTE 10h, 20h, 30h

.code
main PROC 
	
	mov esi, OFFSET arrayB ; ESI = address of first element
	mov al, [esi] ; AL = 10h
	inc esi ; Move to next element
	mov al, [esi] ; AL = 20h

exit
main ENDP
END main
