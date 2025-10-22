INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter 5 numbers: ",0
msg2 BYTE "Largest number: ",0
msg3 BYTE "Smallest number: ",0
arr DWORD 5 DUP(?)
largest DWORD ?
smallest DWORD ?

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

    mov esi,OFFSET arr
    mov eax,[esi]
    mov largest,eax
    mov smallest,eax
    add esi,4
    mov ecx,4

compare_loop:
    mov eax,[esi]
    cmp eax,largest
    jle check_small
    mov largest,eax

check_small:
    cmp eax,smallest
    jge next_num
    mov smallest,eax

next_num:
    add esi,4
    loop compare_loop

    mov edx,OFFSET msg2
    call WriteString
    mov eax,largest
    call WriteDec
    call Crlf

    mov edx,OFFSET msg3
    call WriteString
    mov eax,smallest
    call WriteDec
    call Crlf

    exit
main ENDP
END main
