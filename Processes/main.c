#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>

#define SLEEP_TIME 5

/* a bash cmd just for delay */
const char* bash_delay = "sleep 5";

/* a function for a child process to run */
void do_smth_important();

int main(int argc,char **argv)
{

  /* variables for exit code, status and PID
   * of created child process */
  int exit_code;
  int status;
  pid_t child_PID;

  /* print the parent program PID */
  printf("Parent program PID - %d\n", (int)getpid());

  printf("\n%20s\n\n", "system()");

  /* creating process by system() function call */
  printf("Starting process by system()\n");
  if ( 0 != ( exit_code = system(bash_delay) ) )
  {
  	printf("%s\n","System() cannot create child process");
  }
  else
  {
	printf(
  	  "Process created by system has been finished; "
  	  "exit code - %d\n", exit_code);
  }


  printf("\n%20s\n\n", "execl()");

  printf("Starting process by execl()\n");

  if ( 0 == ( child_PID = fork() ) )
  {
  	/* child process that would 
  	 * be replaced by execl() */
  	printf(
  	  "This is child process by execl with PID - %d\n", 
  	  (int)child_PID);

  	exit_code = execl("/bin/bash", "bash", "-c",
  	 bash_delay, NULL);

  	/* execl returns only if an error has occured
  	 * while creating process */

  	if ( -1 == exit_code )
  	{
  	  printf("Errno - %d", errno);
   	  perror("execl");
  	}

  }
  else if ( -1 == child_PID )
  {
  	/* print errno and error message */
  	printf("Errno - %d", errno);
    perror("fork");
  }
  else
  {

  	/* parent process */


  	/* here i don't use wait
  	 * let the parent do the rest of the job */

   printf("Execl process with PID - %d started\n", 
   	(int)child_PID);

  }

  printf("\n%20s\n\n", "fork()");

  /* copy parent by fork */
  if ( ( child_PID = fork() ) == 0 )
  {
    /* child process */
    do_smth_important();
    
  }
  else
  {
    /* parent process */

    printf("Process created by fork\n");
    printf("This is child process with PID - %d\n", 
    	(int)child_PID);
  	

    /* wait for child process to finish */
    
    if ( ( child_PID = waitpid(child_PID,&status,0) ) 
    	&& WIFEXITED(status))
    {
      if ( child_PID < 0 )
      {
      	printf("Errno - %d", errno);
      	perror("");
      } 
      else
      {

     	printf("Fork process with PID - %d exited\n", 
     		(int)child_PID);

      	exit_code = WEXITSTATUS(status);

      	printf(
      		"Process created by fork has been finished; "
      		"exit code - %d\n", exit_code);
      }
    }


    /* daemonize program */
    setsid();
 	daemon(1, 1);

  	/* endless work for a "daemon" */
 	while (1) ;

  }
  
  return 0;
}

void do_smth_important()
{
  /* do something very usefull */
  sleep(SLEEP_TIME);
}
