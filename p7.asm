assume cs:code

code segment
	mov ax,0
	mov ds,ax
	mov ds:[26h],ax		;存放着重要数据，写入导致死机

	mov ax,4c00h
	int 21h
code ends

end