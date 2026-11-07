//4.3 Program 3: Running a New Program using exec()
#include <bits/stdc++.h>
#include <unistd.h>
#include <sys/wait.h>
using namespace std;
int main() {
    pid_t pid = fork();
    if (pid == 0) {
        cout << "CHILD : running 'ls -l' using exec" << endl;
        execlp("ls", "ls", "-l", NULL);
        perror("exec failed");
        exit(1);
    }
    else if (pid > 0) {
        wait(NULL);
        cout << "PARENT: child has finished" << endl;
    }
    return 0;
}
