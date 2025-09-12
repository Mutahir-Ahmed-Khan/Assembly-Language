INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	msg BYTE 100 DUP(?)
	stringToStore BYTE "COMPUTER ORGANIZATION & ASSEMBLY LANGUAGE LAB",0	

.code
main PROC

	mov esi, OFFSET stringToStore ;pointer to store the address of the source
	mov edi, OFFSET msg ;pointer to store the address of the destination

	mov ecx, LENGTHOF stringToStore ;we can say that it calculates the length of the string or number of bytes to move 

	cld; clears direction flag that tells CPU to go forward or backward, as we clear it now it would be moving forward EDI and ESI ->
	rep movsb ;rep means that it would run (ECX) times 
				;movsb means that it would take one Byte from esi to edi and ++ beacause of the cld instruction

	mov edx, OFFSET msg ;edx register is used to store strings and to print
	call WriteString 

exit
main ENDP
END main
