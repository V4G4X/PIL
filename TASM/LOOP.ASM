.model small
.data
  n_line DB 0AH,0DH,"$"
  msg db "PICT$ ",13,10
.code
   mov ax,@data
   mov ds,ax

   lea dx,n_line
   mov ah,09h

   mov cx,10
loop: int 21h
      dec cx
      jnz loop

      mov ah,04ch
      int 21h
END
