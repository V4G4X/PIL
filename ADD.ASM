.model small
.data
    msg db 'numbers are',13,10,'$'
.code

    mov ax,@data
    mov ds,ax

    lea dx,msg
    mov ah,9h
    int 21h

    mov cx,10     ;counter=10
    mov dl,48     ; dl=0
    mov ah,02
loop: int 21h
      inc dl      ;increment dl
      dec cx      ;dec counter
      jnz loop

      mov ah,4ch
      int 21h

     END
