INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
.code
main PROC 
	
	mov al, 72h ;114
	add al, 0Eh ;14 
	;out of range of 8 bits
	call DumpRegs
	
exit
main ENDP
END main
