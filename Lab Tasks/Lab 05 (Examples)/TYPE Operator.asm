INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	var1 BYTE 20h
	var2 WORD 1000h
	var3 DWORD ?
	var4 BYTE 10, 20, 30, 40, 50
	msg BYTE "File not found", 0

.code
main PROC 
	
	mov ax, type var1 ; AX = 0001
	mov ax, type var2 ; AX = 0002
	mov ax, type var3 ; AX = 0004
	mov ax, type var4 ; AX = 0001
	mov ax, type msg ;AX = 0001

exit
main ENDP
END main
