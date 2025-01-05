#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <syslog.h>
#include <string.h>

#include "batteryd.h"

int main()
{
  {
    pid_t pid;

    /* Fork off the parent process */
    pid = fork();

    /* An error occurred */
    if (pid < 0)
      exit(EXIT_FAILURE);

    /* Success: Let the parent terminate */
    if (pid > 0)
      exit(EXIT_SUCCESS);

    /* On success: The child process becomes session leader */
    if (setsid() < 0)
      exit(EXIT_FAILURE);

    /* Fork off for the second time*/
    pid = fork();

    /* An error occurred */
    if (pid < 0)
      exit(EXIT_FAILURE);

    /* Success: Let the parent terminate */
    if (pid > 0)
      exit(EXIT_SUCCESS);
  }
  /* Set new file permissions */
  umask(0);
    
  close (STDIN_FILENO);
  close (STDOUT_FILENO);
  close (STDERR_FILENO);

  batteryd();
  return(EXIT_SUCCESS);
}
