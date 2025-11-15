INCLUDE Irvine32.inc
;Mutahir Ahmed Khan [24k-0030]

.data
arr DWORD 4 DUP(?)
msg BYTE "Enter Number: ", 0
count DWORD 4
primeMsg BYTE " is Prime", 0
notPrimeMsg BYTE " is Not Prime", 0

.code
main PROC
    mov ecx, 4
    mov esi, 0

input:
    mov edx, OFFSET msg
    call WriteString
    call ReadDec
    mov arr[esi * TYPE arr], eax
    inc esi
    loop input

    push OFFSET arr
    push count
    call checkPrime

    exit
main ENDP

checkPrime PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp + 8]
    mov ecx, [ebp + 12]

checkNext:
    mov eax, [esi]
    cmp eax, 2
    jl NotPrime

    mov ebx, 2

PrimeLoop:
    mov edx, 0
    div ebx
    cmp edx, 0
    je NotPrime
    inc ebx
    cmp ebx, eax
    jl PrimeLoop

Prime:
    mov eax, [esi]
    call WriteDec
    mov edx, OFFSET primeMsg
    call WriteString
    call Crlf
    jmp NextNum

NotPrime:
    mov eax, [esi]
    call WriteDec
    mov edx, OFFSET notPrimeMsg
    call WriteString
    call Crlf

NextNum:
    add esi, 4
    loop checkNext

    leave
    ret
checkPrime ENDP

END main
