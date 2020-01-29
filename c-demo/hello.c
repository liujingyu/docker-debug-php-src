#include <stdio.h>

void myFun(int x);    //声明也可写成：void myFun( int );

int main()
{
	myFun(100);//一般的函数调用
	return 0;
}

void myFun(int x)
{
	printf("myFun: %d\n",x);
}
