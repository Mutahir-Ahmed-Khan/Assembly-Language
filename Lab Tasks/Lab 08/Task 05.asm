INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter a number: ",0
msg2 BYTE "Factorial: ",0
num DWORD ?
fact DWORD 1

.code
main PROC
    mov edx,OFFSET msg1
    call WriteString
    call ReadInt
    mov num,eax

    mov ecx,num
    mov eax,1

factorial_loop:
    cmp ecx,0
    je done
    mul ecx
    loop factorial_loop

done:
    mov edx,OFFSET msg2
    call WriteString
    call WriteDec
    call Crlf

    exit
main ENDP
END main
