#include<reg51.h>
sbit mybit = P1^5;

void timer(char);

coid main(void)
{	TMOD = 0x00;
	while(1)
	{	mybit=1;
		timer(1);
		mybit=0;
		timer(2);
	}
}

void timer(char n)
{	unsigned char i;
	for(i=0; i<3*n); i++)
	{	TL0 = 0x00;
		TH0 = 0x50;
		TR0 = 1;
		while(!TF0);
		TR0 = 0;
		TF0 = 0;
	}
}