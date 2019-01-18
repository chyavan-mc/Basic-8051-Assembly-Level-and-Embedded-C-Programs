org 000h
	mov r1,#09	;Data to be sqaured
	mov dptr,#100h	;Pointer to base of LUT
	mov a,r1
	movc a,@a+dptr
	mov r2,a
	end

org 100h
square: db 00h,01h,04h,09h,10h,19h,24h,31h,40h,51h,64h,79h,90h,0A9h,0C4h,0E1h
