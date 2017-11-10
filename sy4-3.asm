assume cs:code

code segment
	mov ax,cs			;ax=cs
	mov ds,ax			;ds=cs
	mov ax,0020h		;ax=0020h
	mov es,ax			;es=0020h
	mov bx,0			;bx=0000h
	sub cx,5

s:	mov al,[bx]			;al=ds:[bx]
	mov es:[bx],al		;0020:[bx] = al
	inc bx				
	loop s
	
	mov ax,4c00h
	int 21h

code ends


end