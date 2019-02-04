#include<reg51.h>
sbit mybit = P1^5;
int a=0;

void timer(void) interrupt 1
{	TR0 = 0;
	if(mybit){	mybit=0;
			TH0=0x6F;
			TL0=0xFE;}
	else{	mybit=1;
		TH0=0xB7;
		TL0=0xFF;}
	TR0=1;
}

void main(void)
{	TMOD = 0x01;
	IE = 0x82;
	TH0 = 0xB7;
	TL0 = 0xFF;
	TR0=1;
	while(1);
}