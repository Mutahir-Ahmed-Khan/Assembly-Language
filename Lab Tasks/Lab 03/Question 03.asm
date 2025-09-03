INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k0030 
.data
	
	num1 DWORD 200
	num2 DWORD 100
.code
main PROC

	mov eax, num1
	mov ebx, num2
	add eax, ebx

exit
main ENDP
END main
