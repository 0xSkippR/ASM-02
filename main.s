global main
main:
    mov rdi, 9
    call write_digit

    mov rax, 60
    mov rdi, 0
    syscall

write_digit:
    push rbp
    mov rbp, rsp
    sub rsp, 16

    add dil, 0x30
    mov byte [rsp], dil

    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 1
    syscall

    leave
    ret