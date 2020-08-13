#include<stdio.h>
#include<string.h>
char a[100];
char b[100];
int main(){
	FILE *fp1=fopen("aans.txt","r");
	FILE *fp2=fopen("aout.txt","r");
    //freopen("res.txt","w+",stdout);
	while((fscanf(fp1,"%s",a))!=EOF){
		fscanf(fp2,"%s",b);
		if(strcmp(a,b)==0)printf("right:r:%s w:%s\n",a,b);
		else {printf("wrong:r:%s w:%s\n",a,b);break;}
	}
	return 0;
}
//liangwang@outlook.com 
