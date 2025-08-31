INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC  
	mov ebx, 6d

	mov eax,4C2h 

	sub eax, ebx
	add eax, 72o 
	add eax, 55d 
	sub eax, 11101011b 
	add eax, 180

	call WriteInt 
exit
main ENDP
END main
