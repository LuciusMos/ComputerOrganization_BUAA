#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
int m,n,a[10][10],cnt;
int x0,y0,x2,y2;
void dfs(int x,int y)
{
	//if(!(0<=x&&x<m&&0<=y&&y<n&&a[x][y]==0)) return;
	if(x<0||x>=m||y<0||y>=n||a[x][y]!=0) return;
	
	if(x==x2&&y==y2){
		cnt++;
		return;
	}
	a[x][y]=1;
	dfs(x-1,y);
	dfs(x+1,y);
	dfs(x,y-1);
	dfs(x,y+1);
	a[x][y]=0;
	
}
int main()
{
	scanf("%d %d",&m,&n);
	int i,j;
	for(i=0;i<m;i++) for(j=0;j<n;j++) scanf("%d",&a[i][j]);
	scanf("%d %d %d %d",&x0,&y0,&x2,&y2);
	x0--;y0--;x2--;y2--;
	cnt=0;
	dfs(x0,y0);
	printf("%d",cnt);
	return 0;
}
/*
4 5
00100
10001
10101
10000
1 1
4 5
*/

