#include <stdio.h>

void func3(void)
{
    printf("\n Inside func3 \n");

    for( unsigned int i=0; i<0xffffff; i++ );

    return;
}
