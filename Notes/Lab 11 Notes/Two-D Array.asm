INCLUDE Irvine32.inc
.data

tableW WORD 10h, 20h, 30h, 40h, 50h
RowSizeW = ($ - tableW)
    WORD 60h, 70h, 80h, 90h, 0A0h
    WORD 0B0h, 0C0h, 0D0h, 0E0h, 0F0h

.code
main PROC

    row_index = 1
    column_index = 3

    mov ebx, OFFSET tableW
    add ebx, RowSizeW * row_index
    mov esi, column_index
    mov eax, [ebx + esi * TYPE tableW]

    call WriteHex
    call Crlf

    exit
main ENDP

END main
