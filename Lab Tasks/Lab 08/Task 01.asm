INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter number ",0
colon BYTE ": ",0
posMsg BYTE "Positive numbers: ",0
negMsg BYTE "Negative numbers: ",0
zeroMsg BYTE "Zeros: ",0
posCount DWORD 0
negCount DWORD 0
zeroCount DWORD 0
num DWORD ?

.code
main PROC
    mov ecx,5
    mov ebx,1

input_loop:
    mov edx,OFFSET msg1
    call WriteString
    mov eax,ebx
    call WriteDec
    mov edx,OFFSET colon
    call WriteString
    call ReadInt
    mov num,eax

    cmp eax,0
    jg positive
    jl negative
    je zero

positive:
    inc posCount
    jmp next_input

negative:
    inc negCount
    jmp next_input

zero:
    inc zeroCount

next_input:
    inc ebx
    loop input_loop

    mov edx,OFFSET posMsg
    call WriteString
    mov eax,posCount
    call WriteDec
    call Crlf

    mov edx,OFFSET negMsg
    call WriteString
    mov eax,negCount
    call WriteDec
    call Crlf

    mov edx,OFFSET zeroMsg
    call WriteString
    mov eax,zeroCount
    call WriteDec
    call Crlf

    exit
main ENDP
END main
