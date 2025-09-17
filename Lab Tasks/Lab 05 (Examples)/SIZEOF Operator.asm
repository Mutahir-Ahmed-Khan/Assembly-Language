INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	intArray WORD 32 DUP(0)

.code
main PROC 
	
	mov eax,SIZEOF intArray ; returns 64 = 32 * 2

exit
main ENDP
END main
