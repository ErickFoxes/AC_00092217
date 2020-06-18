org 	100h

section .text
	call	w_meni;00092217 9+2+2+1+7 = 21 / 4.2 prox 4 me recupero
	xor 	si, si 	;lo mimso que: mov si, 0000h
	
lupi:	call 	kb
	cmp 	al, "$"
	je	ceros
	sub     al, 30h
	mov	[300h+si], al ; CS:0300h en adelante
	inc 	si
	jmp 	lupi

ceros:  mov     bx, 0d
        mov     ax, 0d

sumar:	add	al,[300h+bx]
	inc	bx
	cmp     bx, 5d
	jb	sumar
	mov     [310h], al
        mov     [317h], bl
        mov     cl, bl
        div     cl
        mov     [330h], al

mostrar:mov dx, nl     
	call 	w_strng
	cmp	al,4d
	je	nota4

nota4:	mov 	dx, msg2
        jmp     mostra2

mostra2:call 	w_strng
	call 	kb	; solo detenemos la ejecución
	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

kb: 	mov	ah, 1h
	int 	21h
	ret

w_strng:mov	ah, 09h
	int 	21h
	ret


w_meni:	mov dx,  msg
	mov ah, 9
	int 21h
	ret

section .data
msg	db 	"Digite cinco datos $";Haiku
msg2	db 	"Me recupero $"
nl	db 	0xA, 0xD, "$"