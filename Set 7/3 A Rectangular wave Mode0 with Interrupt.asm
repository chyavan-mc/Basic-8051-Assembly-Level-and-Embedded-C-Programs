org 000h
	ljmp main
org 000bh
	ljmp timer

org 100h
main:	mov tmod,#00h
	mov ie,#82h	;Enable timer0 interrupt
	mov th0,#50h
	mov tl0,#00h
	setb tr0
wait:	sjmp wait

org 200h
timer:	clr tr0
	jb p1.5,next1
	cjne a,#06h,next2
	setb p1.5
	clr a
	sjmp done
next2:	inc a
	sjmp done
next1:	cjne a,#03h,next3
	clr p1.5
	clr a
	sjmp done
next3:	inc a
done:	mov th0,#50h
	mov tl0,#00h
	setb tr0
	reti

	end