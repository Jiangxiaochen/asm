assume cs:codesg,ds:datasg

datasg segment
	db 'BaSiC'
	db 'AakK'
datasg ends

codesg segment
start:
	mov bx,0
	mov ax,datasg
	mov ds,ax

	mov cx,5
loop_da_xie:
	and ds:[bx],11011111b
	inc bx
	loop loop_da_xie

	mov cx,4
loop_xiao_xie:
	or ds:[bx],00100000b
	inc bx
	loop loop_xiao_xie

	mov ax,4c00h
	int 21h
codesg ends
end start