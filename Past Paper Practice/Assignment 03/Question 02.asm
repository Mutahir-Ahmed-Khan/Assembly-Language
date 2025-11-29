INCLUDE Irvine32.inc
.data
userInput BYTE 30 DUP(?)
msg BYTE "Enter the String: ", 0
countOfA DWORD 0
countOfE DWORD 0
countOfI DWORD 0
countOfO DWORD 0
countOfU DWORD 0
stringLength DWORD ?
msgA BYTE "A or a = ", 0 
msgE BYTE "E or e = ", 0 
msgI BYTE "I or i = ", 0 
msgO BYTE "O or o = ", 0 
msgU BYTE "U or u = ", 0 

.code
main PROC

    mov edx, OFFSET msg
    call WriteString
    mov edx, OFFSET userInput
    mov ecx, 30
    call ReadString

    mov esi, OFFSET userInput
    xor ecx, ecx

calcLength:
    cmp BYTE PTR [esi], 0
    je lengthCovered
    inc ecx
    inc esi
    jmp calcLength

lengthCovered:
    mov stringLength, ecx

    xor esi, esi

findingVowels:
    cmp esi, stringLength
    je doneCounting
    mov al, userInput[esi]

    cmp al, 'a'
    je incA
    cmp al, 'A'
    je incA
    cmp al, 'e'
    je incE
    cmp al, 'E'
    je incE
    cmp al, 'i'
    je incI
    cmp al, 'I'
    je incI
    cmp al, 'o'
    je incO
    cmp al, 'O'
    je incO
    cmp al, 'u'
    je incU
    cmp al, 'U'
    je incU

nextChar:
    inc esi
    jmp findingVowels

incA:
    inc countOfA
    jmp nextChar
incE:
    inc countOfE
    jmp nextChar
incI:
    inc countOfI
    jmp nextChar
incO:
    inc countOfO
    jmp nextChar
incU:
    inc countOfU
    jmp nextChar

doneCounting:
    mov edx, OFFSET msgA
    call WriteString
    mov eax, countOfA
    call WriteDec
    call Crlf

    mov edx, OFFSET msgE
    call WriteString
    mov eax, countOfE
    call WriteDec
    call Crlf

    mov edx, OFFSET msgI
    call WriteString
    mov eax, countOfI
    call WriteDec
    call Crlf

    mov edx, OFFSET msgO
    call WriteString
    mov eax, countOfO
    call WriteDec
    call Crlf

    mov edx, OFFSET msgU
    call WriteString
    mov eax, countOfU
    call WriteDec
    call Crlf

    exit
main ENDP
END main
