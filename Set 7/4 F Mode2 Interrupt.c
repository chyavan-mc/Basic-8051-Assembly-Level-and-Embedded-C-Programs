#include<reg51.h>
sbit mybit = P1^5;
int a=0;

void timer(void) interrupt 1
{	TR0 = 0;
	if(!mybit){	if(a==0x90){mybit=1;a=0;}
			else{a++;}	}
	else{	if(a==0x48){mybit=0;a=0;}
		else{a++;}	}
	TR0=1;
}

void main(void)
{	TMOD = 0x02;
	IE = 0x82;
	TH0 = 0x00;
	TL0 = 0x00;
	TR0=1;
	while(1);
}