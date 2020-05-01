#include <stdio.h>
#include <unistd.h>

int main(void) 
{
    execl("sequential_min_max"," ","200","128",NULL);
    return 0;
}