section .text
    global _ft_strcpy

_ft_strcpy:
    xor rax, rax

while:
    mov cl, byte [rsi+rax]
    cmp cl, 0
    jz  end
    mov byte[rdi+rax], cl
    inc rax
    jmp while

end:
    mov byte[rdi+rax], 0
    mov rax, rdi
    ret