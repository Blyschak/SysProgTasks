#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define FORK

const char* bash_loop = "for i in {1..10000}; do :; done";

void do_smth_important();

int main(int argc,char **argv)
{

  int exit_code;
  int status;
  pid_t child_PID;

  printf("Parent program PID - %d\n", (int)getpid());

  /* creating process by system() function call */
  printf("Starting process by system()\n");
  exit_code = system(bash_loop);
  printf("Process created by system; exit code - %d\n", exit_code);

  if ( ( child_PID = fork() ) == 0 )
  {
    /* creating process by execl() call */
    printf("Starting process by execl()\n");
    return execl("/bin/bash", "bash", "-c", bash_loop, NULL);
    
  } else {

    if ( ( child_PID = waitpid(child_PID,&status,0) ) && WIFEXITED(status))
    {
      exit_code = WEXITSTATUS(status);
      printf("Process created by execl; exit code - %d\n", exit_code);
    }
  }

#ifdef FORK

  if ( ( child_PID = fork() ) == 0 )
  {
    /* child process */
    do_smth_important();
    printf("Fork process created\n");
    
  } else
  {
    /* parent process */

    /* daemonize process
     * setsid();
     * daemon(1, 1);
     */

    printf("Process created by fork\n");
    printf("This is child process with PID - %d\n", (int)child_PID);

    /* wait for child process to finish */
    
    if ( ( child_PID = waitpid(child_PID,&status,0) ) && WIFEXITED(status))
    {
      printf("Fork process with PID - %d exited\n", (int)child_PID);
      exit_code = WEXITSTATUS(status);
      printf("Process created by fork; exit code - %d\n", exit_code);
    }
  }

#endif
  
  return 0;
}

void do_smth_important()
{
  for (int64_t i = 0; i < 1000000 ; ++i)
  {
    /* very important job here */
  }
}
