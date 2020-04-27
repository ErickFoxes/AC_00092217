org 100h

mov cx, 00000000b;Carnet 00092217 = 21 y 21/5=4.5 redondeando 4
mov ax,cx
ADD ax,9d
ADD ax,2d
ADD ax,2d
ADD ax,1d
ADD ax,7d
mov bx,5d
DIV bx

int 10h