name
hello

page
55,132

title
HELLO.COM--print hello on terminal

 ;
 ; HELLO.COM:
demonstrates various components
 ;
of a functional .COM-type assembly-
 ;
language program, and an MS-DOS
 ;
function call.
 ;
 ; Ray Duncan, May 1988
 ;

 stdin
equ
0
; standard input handle
 stdout equ
1
; standard output handle
 stderr equ
2
; standard error handle

 cr
equ
0dh
; ASCII carriage return
 lf
equ
0ah
; ASCII linefeed

 _TEXT
segment word public 'CODE'

org
100h
; .COM files always have
; an origin of 100h


assume cs:_TEXT,ds:_TEXT,es:_TEXT,ss:_TEXT

 print
proc
near
; entry point from MS-DOS

mov
ah,40h
; function 40h = write
32:
mov
bx,stdout
; handle for standard output
33:
mov
cx,msg_len
; length of message
34:
mov
dx,offset msg
; address of message
35:
int
21h
; transfer to MS-DOS
36:
37:
mov
ax,4c00h
; exit, return code = 0
38:
int
21h
; transfer to MS-DOS
39:
40: print
endp
41:
42:
43: msg
db
cr,lf
; message to display
44:
db
'Hello World!',cr,lf
45:
46: msg_len equ
$-msg
; length of message
47:
48:
49: _TEXT
ends
50:
51:
end
print
; defines entry point
