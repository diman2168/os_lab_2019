#include "revert_string.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
void RevertString(char *str)
{
	char *temp = malloc(sizeof(char) * strlen(str) + 1);
    int len = sizeof(char) * strlen(str);
    strcpy(temp, str);
    int i;
    for(i=0;i<len;i++)
    {
        str[i]=temp[len-i-1]; 
    }
    str[len+1]='\0';
    free(temp);

}

