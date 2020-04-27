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

mov cl, "M"
mov [200h], cl
mov cl, "E"
mov [201h], cl
mov cl, "R"
mov [202h], cl
mov cl, "E"
mov [203h], cl
mov cl, "C"
mov [204h], cl
mov cl, "U"
mov [205h], cl
mov cl, "P"
mov [206h], cl
mov cl, "E"
mov [207h], cl
mov cl, "R"
mov [208h], cl
mov cl, "O"
mov [209h], cl

int 10h