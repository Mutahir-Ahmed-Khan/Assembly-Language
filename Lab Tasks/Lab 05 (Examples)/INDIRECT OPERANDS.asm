INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	byteVal BYTE 10h

.code
main PROC 
	
	mov esi, OFFSET byteVal ; ESI = address of byteVal
	mov al, [esi] ; AL = 10h 
	mov [esi], bl ; Store BL into memory at address ESI
	inc [esi] ; ERROR: operand must have size

	;Solution: Use the PTR operator to specify size
	inc BYTE PTR [esi] ; Increment 1 byte
	inc WORD PTR [esi] ; Increment 2 bytes
	inc DWORD PTR [esi] ; Increment 4 bytes	

exit
main ENDP
END main
