INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayB BYTE 20, 40, 60, 80

.code
main PROC 
	
	mov esi, 1
	mov al, arrayB[esi] ; AL = 40
	inc esi
	mov al, arrayB[esi] ; AL = 60
	mov esi, 3
	mov al, [arrayB + esi] ; AL = 80

exit
main ENDP
END main
