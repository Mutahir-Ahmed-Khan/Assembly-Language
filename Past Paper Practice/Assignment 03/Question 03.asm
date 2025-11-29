INCLUDE Irvine32.inc

.data
str1 BYTE "###FAST",0
trimChar BYTE '#'

.code
main PROC
    mov edi, OFFSET str1
    mov al, trimChar
    call StrTrimLeading

    mov edx, OFFSET str1
    call WriteString

    exit
main ENDP

StrTrimLeading PROC
    push esi
    push ecx

    mov esi, edi

findFirst:
    cmp BYTE PTR [esi], 0
    je done
    cmp BYTE PTR [esi], al
    jne done
    inc esi
    jmp findFirst

done:
    cmp esi, edi
    je finish

    mov ecx, 0
    mov edx, esi
countRemaining:
    cmp BYTE PTR [edx], 0
    je copyChars
    inc ecx
    inc edx
    jmp countRemaining
copyChars:
    inc ecx

    mov esi, esi
    mov edi, edi
    rep movsb

finish:
    pop ecx
    pop esi
    ret
StrTrimLeading ENDP

END main
