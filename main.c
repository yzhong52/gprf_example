#include <stdio.h>

#include "func1.h"
#include "func2.h"


void func1();
void func2();
void func3();

int main(void)
{
    printf("\n Inside main()\n");
    
    func1();
    func2();
    func3();

    return 0;
}