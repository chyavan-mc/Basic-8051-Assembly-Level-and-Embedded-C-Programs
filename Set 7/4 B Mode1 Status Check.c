#include<reg51.h>
sbit mybit = P1^5;

void timer(char);

coid main(void)
{	TMOD = 0x01;
	while(1)
	{	mybit=1;
		timer(1);
		mybit=0;
		timer(2);
	}
}

void timer(char n)
{	unsigned char i;
	for(i=0; i<n; i++)
	{	TL0 = 0xFF;
		TH0 = 0xB7;
		TR0 = 1;
		while(!TF0);
		TR0 = 0;
		TF0 = 0;
	}
}