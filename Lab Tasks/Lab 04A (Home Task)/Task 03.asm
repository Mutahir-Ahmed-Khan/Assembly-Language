INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	day DD 30
	night DD 18 
	msg BYTE "Difference: ",0
	msg1 BYTE "Increment the Night by 2: "

.code
main PROC

	mov eax, day
	sub eax, night
	mov edx, OFFSET msg
	call WriteString
	call WriteInt

	call Crlf

	mov eax, night
	add eax, 2
	mov edx, OFFSET msg1
	call WriteString 
	call WriteInt

exit
main ENDP
END main
