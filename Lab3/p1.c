// 4.1 Program 1: Creating a Process and Printing Process IDs

#include <stdio.h>
#include <unistd.h>
 
int main() {
    pid_t pid = fork();              /* create a child process */
 
    if (pid < 0) {
        perror("fork failed");
        return 1;
    }
    else if (pid == 0) {             /* child gets 0 */
        printf("CHILD : PID = %d, Parent PID = %d\n", getpid(), getppid());
    }
    else {                           /* parent gets child's PID */
        printf("PARENT: PID = %d, Child PID = %d\n", getpid(), pid);
        sleep(1);                    /* let the child print first */
    }
    return 0;
}
