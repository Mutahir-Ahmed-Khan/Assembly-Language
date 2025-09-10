INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

	num1 BYTE 25d
	num2 WORD 1200h
	num3 DWORD ?

.code
main PROC  

	mov al, num1
	mov ax, num2

	movzx eax, al
	mov num3, eax

	movzx eax, ax
	mov num3, eax

	call WriteInt 
	
exit
main ENDP
END main
