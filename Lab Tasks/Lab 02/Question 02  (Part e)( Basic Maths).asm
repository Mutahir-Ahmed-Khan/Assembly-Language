INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC   
	mov eax, 111b
	sub eax, 12d
	add eax, 1F3h
	sub eax, 745o

	call WriteInt 
exit
main ENDP
END main
