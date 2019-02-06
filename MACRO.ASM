.model small
.data 
	msg1 db "Hello",10,13,'$'
	msg2 db "PICT", 13,10,'$'
	msg3 db "Good Day",10,13,'$'
.code
	print macro
	mov ah,9h
	int 21h
	ENDM
	
	finish macro
	mov ah,4ch
	int 21h
	ENDM
	
	mov ax,@data
	mov ds,ax

	LEA dx,msg1
	print

	LEA dx,msg2
	print

	LEA dx,msg3
	print
	
	finish
	END	
