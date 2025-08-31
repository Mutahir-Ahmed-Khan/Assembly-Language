INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC  
	mov ebx, 8d
	mov ecx, 9d

	sub ebx, ecx

	mov ecx, 101011010110b

	add ecx, 3Ah
	sub ecx, 64o 
	add ecx, ebx
	add ecx, 5d

	mov eax, ecx

	call WriteInt 

exit
main ENDP
END main
