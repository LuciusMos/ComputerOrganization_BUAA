#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
int symbol[7],array[7];
int n;
void full_array(int index){
	int i;
	if(index>=n){
		for(i=0;i<n;i++) printf("%d ",array[i]);
		printf("\n");
		return;
	}
	for(i=0;i<n;i++)
		if(symbol[i]==0){
			array[index]=i+1;
			symbol[i]=1;
			full_array(index+1);
			symbol[i]=0; 
		}
	return;
}
int main()
{
	scanf("%d",&n);
	full_array(0); 
	return 0;
}

