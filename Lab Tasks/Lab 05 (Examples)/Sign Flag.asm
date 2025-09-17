INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
.code
main PROC 
	
	mov al, 15
	sub al, 97
	call DumpRegs
	
exit
main ENDP
END main
