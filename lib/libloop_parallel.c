#include <pthread.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
//args
/*
int ThreadID
int st
int ed
int step
......(the var def out of loop and use in loop)
*/

//step is constant
void ___parallel_loop_constant_100(void *fn, int st, int ed,int len1, int len2, ...)
{
    pthread_t threads[4];

    int argssize = len1*4 + len2*8;
    void* args[argssize + 12];
    void* args1[argssize + 12];
    void* args2[argssize + 12];
    void* args3[argssize + 12];

    ((int*)args)[0] = 0;
    ((int*)args)[1] = st;
    ((int*)args)[2] = ed;
    if(argssize != 0){
        va_list arg_ptr;
        int fargs[argssize];
        va_start(arg_ptr,len2);
        for(int i = 0;i < 2; ++i){ 
            fargs[i] = va_arg(arg_ptr,int);
        }
        va_end(arg_ptr);
        memcpy((char*)args+12,fargs,argssize);
    }    

    memcpy(args1,args,argssize+12);
    memcpy(args2,args,argssize+12);
    memcpy(args3,args,argssize+12);

    ((int*)args1)[0] = 1;
    ((int*)args2)[0] = 2;
    ((int*)args3)[0] = 3;

    pthread_create(&threads[0],NULL,fn,args);
    pthread_create(&threads[1],NULL,fn,args1);
    pthread_create(&threads[2],NULL,fn,args2);
    pthread_create(&threads[3],NULL,fn,args3);
    
    for(int i = 0; i < 4; ++i){
        pthread_join(threads[i],NULL);
    }
}