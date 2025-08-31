INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC  
	mov eax, 5d

	mov ebx, 6F1h

	sub ebx, eax
	add ebx, 92d
	add ebx, 47o
	sub ebx, 11011001b
	add ebx, 6Ch

	mov eax, ebx

	call WriteInt 

exit
main ENDP
END main
