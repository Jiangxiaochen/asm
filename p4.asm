assume cs:code

code segment
	mov ax,0ffffh
	mov ds,ax
	mov bx,0h
	mov cx,0bh
	mov dx,0h
	mov ah,0h

s:	mov al,[bx]
	add dx,ax
	inc bx
	loop s

	mov ax,4c00h
	int 21h
code ends

end