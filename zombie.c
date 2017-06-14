#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <signal.h>
#include <stdio.h>


int main(int argc, char **argv)
{
	int exit_code, status;
	pid_t ch_PID;

	printf("Parents PID - %d\n", (int)getpid());

	if ( 0 == ( ch_PID = fork() ) )
	{
		/* child process */

		//sleep(2);
	}
	else if ( ch_PID < 0 )
	{
		perror("fork");
		return 1
	}
	else
	{
		/* parent process */

		printf("Child PID - %d\n", ch_PID);

		sleep(3);

		if ( ch_PID > 0 )
		{
			kill(ch_PID, SIGKILL);
		}

		if ( ( ch_PID = waitpid(ch_PID, &status, 0) ) 
			&& WIFEXITED(status) )
		{

			if ( ch_PID < 0 )
			{
				perror("waitpid");
				return 1
			}

			exit_code = WEXITSTATUS(status);

			printf("Child process %d finished - %d\n",
				ch_PID, exit_code);

		}
	}
}