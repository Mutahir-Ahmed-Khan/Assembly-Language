INCLUDE Irvine32.inc
.data

num1    DD 25
num2    DD 47
num3    DD 88
num4    DD 64
num5    DD 120h   
num6    DD 23     
sumRes  DD ?  

.code
main PROC
    mov eax, num1
    add eax, num2
    add eax, num3
    add eax, num4
    add eax, num5
    add eax, num6        

    mov sumRes, eax      

    call WriteDec                   

    exit
main ENDP
END main
