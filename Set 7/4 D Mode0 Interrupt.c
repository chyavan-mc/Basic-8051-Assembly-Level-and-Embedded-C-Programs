#include<reg51.h>
sbit mybit = P1^5;
int a=0;

void timer(void) interrupt 1
{	TR0 = 0;
	if(!mybit){	if(a==6){my=1;a=0;}
			else{a++;}	}
	else{	if(a==3){mybit=0;a=0;}
		else{a++;}	}
	TH0=0x50;
	TL0=0x00;
	TR0=1;
}

void main(void)
{	TMOD = 0x00;
	IE = 0x82;
	TH0 = 0x50;
	TL0 = 0x00;
	TR0=1;
	while(1);
}