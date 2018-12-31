org 000h
	mov r0,#30h		;Set pointer to base of array
	mov r1,#0Ah		;Set N
rpt:	cjne @r0, #7Ah, next	;Immediate data '7A'  is the search key
	mov p0,#00h
	sjmp done
next:	inc r0
	djnz r1,rpt
	mov p0,#0FFh
done:
	end