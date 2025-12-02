--------------------------------------------
            Printing 2D Array
--------------------------------------------
INCLUDE Irvine32.inc
.data 

	arr2D DWORD 10,30,60,80
		  DWORD 50,100,20,70
		  DWORD 110,40,90,120

	row DWORD ?
	col DWORD ?
	numberOfColoumns = 4

	spacer DWORD ' '

.code
main PROC
; ROW MAJOR: offset = (row*NumberOfColoumns + coloumn) * 4
			;BaseAddress = base + offset

		mov row, 0
		mov col, 0

	L1:
		mov eax, row
		imul eax, numberOfColoumns
		add eax, col
		shl eax, 2
		mov esi, offset arr2D
		mov edx, [esi + eax]

		mov eax, edx
		call WriteDec
		mov eax, spacer
		call WriteChar

		inc col
		cmp col, 3
		jg incRow

		jmp L1

	incRow: 
		inc row
		mov col, 0
		cmp row, 2
		jg donePrinting
		call Crlf
		jmp L1

	donePrinting:

exit 
main ENDP
END main
--------------------------------------------
            BUBBLE SORT 1D Array
--------------------------------------------
INCLUDE Irvine32.inc

.data
arr1D DWORD 30,10,80,40
spacer BYTE ' '

.code
main PROC

    mov ecx, 4       ; total elements

outerLoop:
    dec ecx
    cmp ecx, 0
    jl doneSort

    mov esi, OFFSET arr1D
    mov ebx, 0       ; inner loop index

innerLoop:
    mov eax, [esi + ebx*4]
    mov edx, [esi + ebx*4 + 4]
    cmp eax, edx
    jle noSwap

    mov [esi + ebx*4], edx
    mov [esi + ebx*4 + 4], eax

noSwap:
    inc ebx
    cmp ebx, ecx    ; stop before last element
    jl innerLoop

    jmp outerLoop

doneSort:

    ;--- Print array ---
    mov esi, OFFSET arr1D
    mov ecx, 4
printLoop:
    mov eax, [esi]
    call WriteDec
    mov al, spacer
    call WriteChar
    add esi, 4
    loop printLoop

    exit
main ENDP
END main
