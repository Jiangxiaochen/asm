assume cs:code,ds:data,ss:stack

data segment
	dw 0123h,0456h,0789h,0abch,0defh
data ends

stack segment
	dw 0,0,0,0,0
stack ends

code segment

start:
	mov ax,stack
	mov ss,ax
	mov sp,10

	mov ax,data
	mov ds,ax

	mov bx,0
	mov cx,5

s0:
	push [bx]
	add bx,2
	loop s0			;将data中的数据入栈

	mov bx,0
	mov cx,5

s1:
	pop [bx]
	add bx,2
	loop s1			;出栈存入data中

	mov ax,4c00h
	int 21h			;程序返回

code ends

end start