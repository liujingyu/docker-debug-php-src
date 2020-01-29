#include<stdio.h>
#include "b.c"

int main()
{
    extern void func();
    func();
    return 0;
}
