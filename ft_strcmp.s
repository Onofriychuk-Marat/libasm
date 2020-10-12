section .text
    global _ft_strcmp

_ft_strcmp:
    xor rax, rax

while:
    movsx rbx, byte[rsi+rax]
    movsx rcx, byte[rdi+rax]
    cmp rbx, rcx
    jl end_plus
    jg end_minus
    cmp rbx, 0
    jz end_zero
    inc rax
    jmp while

end_zero:
    xor rax, rax
    ret

end_plus:
    cmp rbx, 0
    jl end_minus
    mov rax, 1
    ret

end_minus:
    cmp rcx, 0
    jl end_plus
    mov rax, -1
    ret
