#include <stdio.h>
#include <string.h>
#define max_vector    2
#define constant5     5

typedef unsigned char    uchar;

int    i, j, k, l, m;
int    i2, j2, k2;
int    g3, h3, i3, k3, m3;
int    i4, j4;
int    i5, j5, k5;

double flt_1, flt_2, flt_3, flt_4, flt_5, flt_6;

int    ivector[3];
uchar  ivector2[3];
short  ivector4[6];
int    ivector5[100];

#ifndef NO_PROTOTYPES
void   dead_code(int, char *);
void   unnecessary_loop(void);
void   loop_jamming(int);
void   loop_unrolling(int);
int    jump_compression(int, int, int, int, int);
#else
void   dead_code(a, b);
void   unnecessary_loop();
void   loop_jamming(x);
void   loop_unrolling(x);
int    jump_compression(i, j, k, l, m);
#endif

int  main(int argc,
	char **argv)           

{

	j4 = 2;
	printf("%d", j4);
	if (i2 < j4 && i4 < j4) {
		i2 = 2;
		printf("%d", i2);
	}
	j4 = k5;
	printf("%d", j4);
	if (i2 < j4 && i4 < j4) {
		i5 = 3;
		printf("%d", i5);
	}
	

	i3 = 1 + 2;
	flt_1 = 2.4 + 6.3;
	i2 = 5;
	j2 = i + 0;
	k2 = i / 1;
	i4 = i * 1;
	i5 = i * 0;

#ifndef NO_ZERO_DIVIDE
	
	i2 = i / 0;
	flt_2 = flt_1 / 0.0;
#else
	printf("This compiler handles divide-by-zero as \
                    an error\n");
#endif
	flt_3 = 2.4 / 1.0;
	flt_4 = 1.0 + 0.0000001;
	flt_5 = flt_6 * 0.0;
	flt_6 = flt_2 * flt_3;

	k3 = 1;
	k3 = 1;

	k2 = 4 * j5;
	for (i = 0; i <= 5; i++)
		ivector4[i] = i * 2;



	j5 = 0;
	k5 = 10000;
	do {
		k5 = k5 - 1;
		j5 = j5 + 1;
		i5 = (k5 * 3) / (j5 * constant5);
	} while (k5 > 0);

	for (i = 0; i < 100; i++)
		ivector5[i * 2 + 3] = 5;


	if (i < 10)
		j5 = i5 + i2;
	else
		k5 = i5 + i2;

	ivector[0] = 1; 
	printf("%d", ivector[0]);
	ivector[i2] = 2; 
	printf("%d", ivector[i2]);
	ivector[i2] = 2; 
	printf("%d", ivector[i2]);
	ivector[2] = 3;  
	printf("%d", ivector[2]);


	if ((h3 + k3) < 0 || (h3 + k3) > 5)
		printf("Common subexpression elimination\n");
	else {
		m3 = (h3 + k3) / i3;
		printf("%d", m3);
		g3 = i3 + (h3 + k3);
		printf("%d", g3);
	}

	for (i4 = 0; i4 <= max_vector; i4++){
		ivector2[i4] = j * k;
	printf("%d", ivector2[i4]);
}

	dead_code(1, "This line should not be printed");


	unnecessary_loop();

	loop_jamming(7);
	loop_unrolling(7);
	jump_compression(1, 2, 3, 4, 5);

}

void dead_code(int a,
	char *b)
{
	int idead_store;

	idead_store = a;
	if (0)
		printf("%s\n", b);
}

void unnecessary_loop()
{
	int x;

	x = 0;
	for (i = 0; i < 5; i++)			
		k5 = x + j5;
	printf("%d", k5);
}	

void loop_jamming(int x)
{
	for (i = 0; i < 5; i++) {
		k5 = x + j5 * i;

		printf("%d", k5);
	}
	for (i = 0; i < 5; i++) {
		i5 = x * k5 * i;
		printf("%d", k5);
	}
}	

void loop_unrolling(int x)
{
	for (i = 0; i < 6; i++) {
		ivector4[i] = 0;
		printf("%d", ivector4[i]);
	}
}  

int jump_compression(int i, int j, int k, int l, int m)
{
beg_1:
	if (i < j)
		if (j < k)
			if (k < l)
				if (l < m)
					l += m;
				else
					goto end_1;
			else
				k += l;
		else {
			j += k;
			printf("%d", j);
		end_1:
			goto beg_1;
		}
	else
		i += j;
	return(i + j + k + l + m);
}	