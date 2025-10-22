INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter 5 numbers: ",0
msg2 BYTE "Reversed order: ",0
arr DWORD 5 DUP(?)

.code
main PROC
    mov edx,OFFSET msg1
    call WriteString

    mov ecx,5
    mov esi,OFFSET arr

input_loop:
    call ReadInt
    mov [esi],eax
    add esi,4
    loop input_loop

    mov edx,OFFSET msg2
    call WriteString
    call Crlf

    mov ecx,5
    mov esi,OFFSET arr
    add esi,16

output_loop:
    mov eax,[esi]
    call WriteDec
    mov al,' '
    call WriteChar
    sub esi,4
    loop output_loop

    call Crlf
    exit
main ENDP
END main
