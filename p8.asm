assume cs:code

code segment
	mov ax,0ffffh
	mov ds,ax
	mov cx,6
	mov bx,0
	mov dx,20h

s:	mov dx:[bx],[bx]
	inc bx
	inc bx
	loop s

	mov ax,4c00h
	int 21h
code ends
end