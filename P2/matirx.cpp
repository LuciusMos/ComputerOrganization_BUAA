#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
int a[10][10],b[10][10],re[10][10];
int main()
{
	int i,j,k,n,sum;
	scanf("%d",&n);
	for(i=0;i<n;i++) for(j=0;j<n;j++) 
		scanf("%d",&a[i][j]);
	for(i=0;i<n;i++) for(j=0;j<n;j++) 
		scanf("%d",&b[i][j]);
	for(i=0;i<n;i++)
		for(j=0;j<n;j++){
			sum=0;
			for(k=0;k<n;k++)
				sum+=a[i][k]*b[k][j];
			re[i][j]=sum;
		}
	for(i=0;i<n;i++) for(j=0;j<n;j++) printf("%d\n",re[i][j]);
	return 0;
}

