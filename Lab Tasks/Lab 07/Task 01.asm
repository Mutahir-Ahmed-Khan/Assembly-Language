INCLUDE Irvine32.inc
.data

	var1 BYTE 01011010b
	var2 BYTE 11110000b
	var3 BYTE 11001100b
	onMsg BYTE "Bit 0 is On", 0 
	offMsg BYTE "Bit 0 is Off", 0

.code
main PROC
	mov al, var1
	or al, 55h

	mov bl, var2
	xor bl, 55h

	mov cl, var3
	and al,55h

	test al,00000001
	jnz bitON 
	jmp bitOFF

bitOFF:
	mov edx, OFFSET offMsg
	call WriteString
	jmp exitt

bitON: 
	mov edx, OFFSET onMsg
	call WriteString
	jmp exitt


exitt: 
	exit


main ENDP
END main
