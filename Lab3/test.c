#include<stdio.h>
#include<unistd.h>
int main(){
    pid_t pid=fork();
    if(pid<0){
        perror("fork failed");
        return 1;
    }
    else if(pid==0){
        printf("%d, %d\n",getpid(),getppid());
    }else{
        printf("%d,%d\n",getpid(),pid);
        sleep(1);
    }
    return 0;
}