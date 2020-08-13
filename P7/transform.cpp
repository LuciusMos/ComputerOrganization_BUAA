#include<bits/stdc++.h>
#define rre(i,r,l) for(int i=(r);i>=(l);i--)
#define re(i,l,r) for(int i=(l);i<=(r);i++)
#define Clear(a,b) memset(a,b,sizeof(a))
#define inout(x) printf("%d",(x))
#define douin(x) scanf("%lf",&x)
#define strin(x) scanf("%s",(x))
#define op operator
typedef unsigned long long ULL;
typedef const int cint;
typedef long long LL;
using namespace std;
template<typename Q>
void inin(Q &x)
{
	x=0;int f=0;char ch=getchar();
	while(ch<'0'||ch>'9'){if(ch=='-')f=1;ch=getchar();}
	while(ch>='0'&&ch<='9')x=x*10+ch-'0',ch=getchar();
	x=f?-x:x;
}
string a[10010];
char ss[100];
int main()
{
	freopen("ans.txt","r",stdin);
	freopen("aans.txt","w",stdout);
	int tot=0;
	while(gets(ss))a[++tot]=ss;
	sort(a+1,a+tot+1);
	re(i,1,tot)if(a[i].length()>20)a[i].erase(0,20),cout<<a[i]<<"\n";
	
	
	freopen("out.txt","r",stdin);
	freopen("aout.txt","w",stdout);
	tot=0;
	while(gets(ss))a[++tot]=ss;
	sort(a+1,a+tot+1);
	re(i,1,tot)if(a[i].length()>20)a[i].erase(0,20),cout<<a[i]<<"\n";
	return 0;
}

