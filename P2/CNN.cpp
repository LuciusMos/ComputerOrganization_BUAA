#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
int a[10][10],b[10][10];
int main()
{
	int m1,n1,m2,n2,mm,nn,sum;
	scanf("%d %d %d %d",&m1,&n1,&m2,&n2);
	int i,j,p,q;
	for(i=0;i<m1;i++) for(j=0;j<n1;j++) scanf("%d",&a[i][j]);
	for(i=0;i<m2;i++) for(j=0;j<n2;j++) scanf("%d",&b[i][j]);
	mm=m1-m2+1;
	nn=n1-n2+1;
	for(i=0;i<mm;i++){
		for(j=0;j<nn;j++){
			sum=0;
			for(p=0;p<m2;p++)
				for(q=0;q<n2;q++)
					sum+=a[i+p][j+q]*b[p][q];
			printf("%d ",sum);
		}
		printf("\n");
	}
	return 0;
}

