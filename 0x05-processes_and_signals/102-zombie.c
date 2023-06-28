#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>

/**
 * infinite_while - Creates an infinite loop
 *
 * Return: Always returns 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}

	return (0);
}

/**
 * main - Entry point
 *
 * Description: Creates 5 zombie processes.
 *              Displays the message "Zombie process created,
 *              PID: ZOMBIE_PID" for each zombie process.
 *              Uses the infinite_while function to keep the program running.
 *
 *Return: Always returns 0
 */
int main(void)
{
	pid_t child_pid;
	int ai;

	for (ai = 0; ai < 5; ai++)
	{
		child_pid = fork();
		if (child_pid > 0)
		{
		    /* Parent process */
			printf("Zombie process created, PID: %d\n", child_pid);
			sleep(1);
		}
		else
		{
		    /* Child process */
			exit(0);
		}
	}

	infinite_while();
	return (EXIT_SUCCESS);
}
