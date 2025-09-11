INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data 
	
	num1 BYTE 25d
	num2 WORD 1200h
	num3 DWORD ?

.code
main PROC 

	mov al, num1 ;8 to 8
	mov ax, num2 ;16 to 16

	movzx eax, al; 8 to 32
	mov num3,eax ;32 to 32

	movzx eax, ax ;16 to 32
	mov num3, eax ;32 to 32
	
exit
main ENDP
END main
