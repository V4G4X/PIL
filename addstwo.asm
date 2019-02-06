.model small
.data
	no1 dw 215
	no2 dw 125
	no3 dw ?
.code
	mov ax,@data
	mov ds,ax
	
	mov ax,no1
	add ax,no2
	mov no3,ax
	
	mov dx,no3
	and dx,0F00h
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	add dx,30h
	mov ah,02h
	int 21h
	
	mov dx,no3
	and dx,00F0h
	ror dx,01
	ror dx,01
	ror dx,01
	ror dx,01
	add dx,30h
	mov ah,02h
	int 21h
	
	mov dx,no3
	and dx,000Fh
	add dx,30h
	mov ah,02h
	int 21h
	
	mov ah,4ch
	int 21h
	
	end
