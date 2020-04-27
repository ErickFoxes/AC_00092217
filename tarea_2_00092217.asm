	org 100h
;------EJERCICIO 1---------
	mov cx, 0d;Carnet 00092217 = 21 y 21/5=4.5 redondeando 4
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
;------EJERCICIO 1---------
;------EJERCICIO 2---------
	mov ax, 0d;
	mov bx, 210h 
	mov al, 2d
	mov cx, 2d

lup: mul  cx
        mov [bx], ax
        cmp ah, 00h
        ja sumdos; mayor que
        cmp ah, 00h
        je sumuno;igual que

sumdos: add bx, 2h
         jmp menor;saltar a

sumuno: add bx, 1h

menor:	cmp bx, 21Fh
	jb lup;menor que


;------EJERCICIO 2---------
;------EJERCICIO 3---------
        mov ax, 0d
        mov [220h], ax
        mov ax, 1d
        mov [221h], ax
        mov bx, 222h
	
formu:	mov ax, 0000h
        mov [bx], ax
	sub bx, 2h
        mov al, [bx]
	add bx, 1h
        add ax, [bx]
        add bx, 1h
        mov [bx], ax
        add bx, 1h
        cmp bx, 22Fh
        jb formu; menor que

;------EJERCICIO 3---------
int 20h