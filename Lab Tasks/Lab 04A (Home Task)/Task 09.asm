INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	msg BYTE "SECONDS IN DAY: ",0
	sMsg BYTE "s", 0

.code
main PROC

	mov edx, OFFSET msg
	call WriteString 

	SecondsInDay = 24 * 60 * 60

	mov eax, SecondsInDay
	call WriteDec
	mov edx, OFFSET sMsg
	call WriteString

exit
main ENDP
END main
