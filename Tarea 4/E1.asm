org	100h

section .text

	call 	texto  	

	xor 	si, si
	xor 	di, di
   	mov     cx, 0d
	mov 	ax,cx
lupi:	cmp 	di, 5d 
	je	nota
	call 	kb
	inc 	di	
	mov	[300h+si], al 
	inc 	si
	jmp 	lupi

nota:	mov	[300h+si], ax
	inc 	si
	call 	mostrar

mostrar:call 	w_strng

	call 	kb

	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb:	mov	ah, 00h 
	ADD 	ax,[300h+si]
	mov	bx, 2d
	DIV 	bx
	int 	16h	
	ret	

w_strng:mov	ah, 13h
	mov 	al, 01h 
	mov 	bh, 00h
	mov	bl, 00000100b 
	mov	cx, si 
	mov	dl, 43d ; columna inicial
	mov	dh, 17d	; fila inicial
	
	push 	cs 
	pop	es 
	mov	bp, 300h

	int 10h
	ret