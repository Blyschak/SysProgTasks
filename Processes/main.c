#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#define SLEEP_TIME 50

/* variables for exit code, status and PID
 * of created child process */
int exit_code;
int status;
pid_t child_PID;

/* test functions to create
 * a separate process using
 * system(), execl() and fork() */
void create_by_system();
void create_by_execl();
void create_by_fork();

/* a function for a child processes
 * to run */
void do_smth_important();

int main(int argc,char **argv)
{

  /* for system and execl.
   * system() and execl() will run this program
   * as a separate process with parametr 1
   * to run do_smth_important() function */
  if (argc > 1 && 
  	( strcmp(argv[1],"1") == 0 ))
  {
  	do_smth_important();
  	exit(EXIT_SUCCESS);
  }

  /* print the parent process PID 
   * of this process */
  printf("Parent of parent program PID - %d\n", 
  	(int)getppid());

  /* print the parent process PID */
  printf("Parent program PID - %d\n", 
  	(int)getpid());

  /* test this functions */
  create_by_system();
  create_by_execl();
  create_by_fork();

  /* daemonize program */

  /* run a new session */
  setsid();
  /* change pwd to / and redirect 
   * all the output to /dev/null */
  daemon(0, 0);

  /* endless work for a "daemon" */
  while (1) ;
  
  return EXIT_SUCCESS;
}

void do_smth_important()
{
  /* do something very usefull in a 
   * separate process */
  sleep(SLEEP_TIME);
}

void create_by_system()
{
  printf("\n%20s\n\n", "system()");

  /* creating process by system() function call */
  printf("Starting process by system()\n");

  /* system() blocks the parent process until
   * the child process is finished */
  if ( 0 != ( exit_code = system("./main 1") ) )
  {
    printf("%s\n","System() cannot create child process"
    	"or child process didn't successfuly finished");
  }
  else
  {
    printf(
      "Process created by system has been finished; "
      "exit code - %d\n", exit_code);
  }
}

void create_by_execl()
{
  printf("\n%20s\n\n", "execl()");

  printf("Starting process by execl()\n");

  if ( 0 == ( child_PID = fork() ) )
  {
    /* child process that would 
     * be replaced by execl() */
    printf(
      "This is child process by execl with PID - %d\n", 
      (int)getpid());

    exit_code = execl("./main", "main", "1", NULL);

    /* execl returns only if an error has occured
     * while creating process */

    if ( -1 == exit_code )
    {
      printf("Errno - %d", errno);
      perror("execl()");
    }

  }
  else if ( -1 == child_PID )
  {
    /* print errno and error message */
    printf("Errno - %d", errno);
    perror("fork()");
  }
  else
  {

    /* parent process */

    /* here i don't use wait - 
     * let the parent do the rest of the job
     * and child run in the background */

   printf("Execl process with PID - %d started\n", 
    (int)child_PID);

  }
}

void create_by_fork()
{
  printf("\n%20s\n\n", "fork()");

  /* copy parent by fork */
  if ( 0 == ( child_PID = fork() ) )
  {
    /* child process */
    do_smth_important();
    exit(EXIT_SUCCESS);
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

  }
}