INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

;Referring Question 11 of Lab 04A

.data

	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh 
	val4 WORD 7FFFh

	msg1 BYTE "After incrementing val2: ", 0
	msg2 BYTE "After subtracting val3 from EAX: ", 0
	msg3 BYTE "After subtracting val4 from val2: ", 0
	msg4 BYTE "Value of BL after moving val1: ", 0


.code
main PROC

	inc val2
	mov edx, OFFSET msg1
	call WriteString
	movzx eax, val2
	call WriteHex

	call Crlf 

	mov eax, 1000h ;assuming that eax conatin this value
	sub eax, val3
	mov edx, OFFSET msg2
	call WriteString
	call WriteHex

	call Crlf

	movzx eax, val2
	sub ax, val4
	movzx eax, ax
	mov edx, OFFSET msg3 
	call WriteString
	call WriteHex

	call Crlf 

	mov bl, val1
	movzx eax, bl
	mov edx, OFFSET msg4
	call WriteString
	call WriteHex


exit
main ENDP
END main
