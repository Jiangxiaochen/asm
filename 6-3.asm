assume cs:codesg

codesg segment
	dw 0123h,1234h,2345h,3456h,4567h
	dw 0,0,0,0,0

start:
	mov ax,cs
	mov ss,ax
	mov sp,14h

	mov bx,0
	mov cx,5

s0:	
	push cs:[bx]
	add bx,2
	loop s0

	mov bx,0
	mov cx,5
	
s1: 
	pop cs:[bx]
	add bx,2
	loop s1

	mov ax,4c00h
	int 21h

codesg ends

end start
