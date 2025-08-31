INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC   

	mov eax, 11010110b
	sub eax, 9C4h
	add eax, 220
	add eax, 18 
	add eax, 1011110b
	sub eax, 0Dh
	add eax, 12

	call WriteInt

exit
main ENDP
END main
