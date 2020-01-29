#include <stdio.h>

#ifdef DEBUG
#define message_for(a, b)  \
        printf(#a " and " #b ": We love you!\n")
#else
#define message_for(a, b)  
#endif

#define tokenpaster(n) printf ("token" #n " = %d", token##n)


/**
 * 编译1：cc -o macro -DDEBUG macro.c
 * 编译2：cc -o macro macro.c
 */

int main(void)
{
   message_for(Carole, Debra);

   int token34 = 40;
      
   tokenpaster(34);
   return 0;
}
