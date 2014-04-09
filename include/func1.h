#include <stdio.h>

void func1(void)
{
    printf("\n Inside func1 \n");

    for( unsigned int i=0; i<0xffffff; i++ );
    
    return;
}