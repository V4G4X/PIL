.model small
.data
        ab db "Hello$",10
.code
        mov ax,@data
        mov ds,ax

;       Accept Input and store it in al
;       mov ah,01h
;       int 21h
     
;       mov dl,al
;       mov ah,02h
;       int 21h

;       mov dl,41h
;       mov ah,02h
;       int 21h

        lea dx,ab
        mov ah,9h
        int 21h

        mov ah,04ch
        int 21h
END
