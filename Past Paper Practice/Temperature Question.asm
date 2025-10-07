INCLUDE Irvine32.inc 
.data

	n DWORD ?
	nInteger BYTE "Enter Number of Days: ", 0
	tempInput BYTE "Enter Temperature: ", 0
	tempArr DWORD 100 DUP (?)
	sum DWORD ?
	sumMsg BYTE "Sum of all Temperatures: ", 0
	diffArr SDWORD 100 DUP (?)
	diffMsg BYTE "Differences: ", 0
	readingMsg BYTE "Number of Reading: ", 0
	memMsg BYTE "Totol Memory Used: ", 0

.code
main PROC 

	avg = 39
	mov edx, OFFSET nInteger
	call WriteString
	call ReadInt
	mov n, eax

	mov ecx, eax
	mov esi, 0
inputLoop:	
		mov edx, OFFSET tempInput
		call WriteString
		call ReadInt
		mov tempArr[esi*TYPE tempArr], eax
		inc esi
loop inputLoop
		
	mov esi, 0
	mov eax, 0
	mov ecx, [n]
sumLoop: 
		add eax, tempArr[esi * TYPE tempArr]
		inc esi
loop sumLoop
	mov sum, eax
	mov edx, OFFSET sumMsg
	call WriteString 
	call WriteDec

	call Crlf

	mov ecx, n
	mov esi, 0
	mov edx, OFFSET diffMsg
	call WriteString
diffLoop: 
		mov eax, avg
		sub eax, tempArr[esi * TYPE tempArr]
		call Crlf
		call WriteInt
		mov diffArr[esi * TYPE diffArr], eax
		inc esi
loop diffLoop 

	call Crlf
	mov eax, n
	mov edx, OFFSET readingMsg
	call WriteString
	call WriteDec
	call Crlf

exit 
main ENDP 
END main
