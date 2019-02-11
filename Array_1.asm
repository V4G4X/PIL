.model  small
.data                                                     ; initialize data segment

	array  db 03h,09h,06h,05h,08h             ; accept an array
        count  db 05h  
        msg db "SUM OF ARRAY IS $"                ; initialze counter
        R dw ?                                    ; store the result in R
        rem db ?
.code                                             ; beginning of program code
start:

mov ax,@data                                          ; initialize data section
mov ds,ax                                             ; assign data to data segment

xor ax,ax					;Clear AX

lea si,array	                                ; load effective address of array in source index
mov cl,count					;initialize counter to 5

up: add al,[si]          			  ; add al and contents of si  (begninning of loop)
inc si                                            ; increment si
dec cl                                            ; decrement counter
jnz up                                            ; jump if not zero to up

mov bl,10                                         ;get the units place
div bl                                            ;by dividing by 10

mov rem,ah                                        ;moving the higher 8 bits in rem varialbe


add al,30h                                        ;adding 30 to lower bits
mov R,ax                                  	  ;move result into R 

mov ah,09h                        		  ;printing variable msg
lea dx,msg
int 21h                                   
                               
mov ah,02h                                        ;printing the tens place
mov dx,R                                          ;by using 02h interrupt
int 21h                                              

add rem,30h                                       ;now adding 30 to other bits
mov dl,rem                                        ;for converting to original
mov ah,02h                                        ;number
int 21h

mov ah,4ch                                        ; normal termination to DOS
int 21h                                           ; normal program termination

END start                                         ; end of program



