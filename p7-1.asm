assume cs:code,ds:data

data segment
	db 'unIX'	;equals to "db 75h,6eh,49h,58h"
	db 'foRK'
data ends

code segment
start:
	mov al,'a'	;mov al,61h
	mov bl,'b'
	mov ax,4c00h
	int 21h
code ends

end start