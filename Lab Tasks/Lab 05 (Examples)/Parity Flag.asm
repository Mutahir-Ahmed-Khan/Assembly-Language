INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
.code
main PROC 
	
	mov al, 011011b
	add al,  ;Parity Flags are Changed on add,sub, or etc. operations, mov won't affect it 
	call DumpRegs
	
exit
main ENDP
END main
