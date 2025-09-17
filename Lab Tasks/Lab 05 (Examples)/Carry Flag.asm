INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
.code
main PROC 
	
	mov al, 0Fh
	add al, 0F1h
	call DumpRegs
	
exit
main ENDP
END main
