org	100h

section .text

	call 	texto  	

	xor 	si, si
lupi:	call 	kb
	cmp 	al, "$" 
	je	mostrar
	mov	[300h+si], al 
	inc 	si
	jmp 	lupi

mostrar:call 	w_strng

	call 	kb

	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb:	mov	ah, 00h 
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