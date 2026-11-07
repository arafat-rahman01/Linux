#include <bits/stdc++.h>
using namespace std;

int main() {

    pid_t pid = fork();

    if (pid < 0) {
        perror("fork failed");
        return 1;
    }
    else if (pid == 0) {
        cout << "CHILD: "
             << getpid() << ", "
             << getppid() << endl;
    }
    else {
        cout << "PARENT: "
             << getpid() << ", "
             << pid << endl;

        sleep(1);
    }

    return 0;
}