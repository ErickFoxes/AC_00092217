org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di

	mov 	si, 106d ; X -> Columna
	mov 	di, 45d ; Y -> Fila
	call 	linea_1

	mov 	si, 106d ; X -> Columna
	mov 	di, 45d ; Y -> Fila
	call 	linea_2

	mov 	si, 156d ; X -> Columna
	mov 	di, 45d ; Y -> Fila
	call 	linea_3

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_1:
lupi_v1:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 155d
	jne 	lupi_v1
	ret

linea_2: 
lupi_h2:mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 156d
	jne 	lupi_h2
	ret

linea_3:
lupi_v3:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 69d
	jne 	lupi_v3
	ret


kb: 	mov	ah, 00h
	int 	16h
	ret

section .data