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

	mov 	si, 120d ; X -> Columna
	mov 	di, 69d ; Y -> Fila
	call 	linea_2

	mov 	si, 120d ; X -> Columna
	mov 	di, 69d ; Y -> Fila
	call 	linea_5

	mov 	si, 120d ; X -> Columna
	mov 	di, 93d ; Y -> Fila
	call 	linea_2

	mov 	si, 120d ; X -> Columna
	mov 	di, 117d ; Y -> Fila
	call 	linea_2

	mov 	si, 156d ; X -> Columna
	mov 	di, 93d ; Y -> Fila
	call 	linea_7

	mov 	si, 120d ; X -> Columna
	mov 	di,117d ; Y -> Fila
	call 	linea_9

	mov 	si, 106d ; X -> Columna
	mov 	di, 155d ; Y -> Fila
	call 	linea_10

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
	cmp 	di, 156d
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

linea_5:
lupi_v5:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 93d
	jne 	lupi_v5
	ret

linea_7:
lupi_v7:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 117d
	jne 	lupi_v7
	ret

linea_9:
lupi_v9:mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 155d
	jne 	lupi_v9
	ret

linea_10: 
lupi_h10:mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 120d
	jne 	lupi_h10
	ret


kb: 	mov	ah, 00h
	int 	16h
	ret

section .data