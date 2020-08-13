#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
char a[20];
int main()
{
	int n;
	scanf("%d",&n); getchar();
	int i,j,k,nn,bj;
	//for(i=0;i<n;i++) a[i]=getchar();
	gets(a); 
	i=(n-1)/2;
	j=n/2;
	nn=n/2;
	bj=1;
	for(k=0;k<nn;k++){
		if(a[i]!=a[j]){
			bj=0;
			break;
		}
		i--;
		j++;
	}
	printf("%d",bj);
	
	return 0;
}

