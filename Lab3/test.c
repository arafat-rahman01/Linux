#include<bits/stdc++.h>
#include<unistd.h>
#include<sys/wait.h>
using namesapce std;
int main(){
    int status;
    pid_t pid=fork();
    if(pid==0){
        cout<<"Child : Working..."<<endl;
        sleep(2);
        exit(5);
    }
    else if(pid>0){
        wait(&status);
        if(WIFEXITED(status)){
            cout<<"Parent: child exited with code"
                << WEXITSTATUS(status)<<endl;
        }
    }else{
        perror("fork failed");
        return 1;
    }
    return 0;
}