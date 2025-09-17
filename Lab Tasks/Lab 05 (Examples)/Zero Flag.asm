INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
.code
main PROC 
	
	mov ax, 0FFFFh 
	inc ax 
	call DumpRegs
	
exit
main ENDP
END main
