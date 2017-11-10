assume cs:code

a segment
	dw 1,2,3,4,5,6,7,8,9,0ah,0bh,0dh,0eh,0fh,0ffh
a ends

b segment
	dw 0,0,0,0,0,0,0,0
b ends

code segment
start:
	mov ax,a
	mov ss,ax
	mov sp,0				;init stack

	mov ax,b
	mov ds,ax
	mov cx,8
	mov bx,14
loop0:
	pop ds:[bx]
	sub bx,2
	loop loop0

	mov ax,4c00h
	int 21h

code ends

end start