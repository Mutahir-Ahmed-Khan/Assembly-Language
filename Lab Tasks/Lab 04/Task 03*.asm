INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data 

	valA SBYTE -15
	valB BYTE 25
	valC WORD ? 

.code
main PROC 

	movsx eax, valA  
	add eax, valB  
	sub eax, 5 

	mov valC, eax

	exit
main ENDP
END main
