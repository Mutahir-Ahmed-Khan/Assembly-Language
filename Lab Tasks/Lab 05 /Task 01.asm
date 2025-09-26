INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	

.code
main PROC 

	mov eax, 15000
	add eax,1

	call DumpRegs

	;Observe = Positive thus SF would be 0 and in Range thus no Carry Flag

exit
main ENDP
END main
