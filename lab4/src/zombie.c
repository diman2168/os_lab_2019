#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int main(void)
{
	pid_t pids[10];
	int i;

	for (i = 0; i < 10; i++) 
    {
		pids[i] = fork();
		if (pids[i] > 0) 
        {
            //wait(0);
			sleep(i);
		}
        else {
            exit(0);
        }
        if (i == 9) printf("\nThe end of program\n"); 
	}
/*
	for (i = 0; i < 0; i++)
		waitpid(pids[i], NULL, 0);

	return 0;*/
}