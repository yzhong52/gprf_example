#include <stdio.h>

void func2(void)
{
    printf("\n Inside func2 \n");

    int sum = 10; 
    for( unsigned int i=0; i<0xffffff; i++ ){
    	sum *= sum - 90; 
    }
    
    return;
}