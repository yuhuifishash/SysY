#include <pthread.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdint.h>
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
    va_list arg_ptr;
    pthread_t threads[4];

    int argssize = len1*4 + len2*8;
    char args[argssize + 12];
    char args1[argssize + 12];
    char args2[argssize + 12];
    char args3[argssize + 12];

    ((int*)args)[0] = 0;
    ((int*)args)[1] = st;
    ((int*)args)[2] = ed;

    if(argssize != 0){
        int iargs[len1];
        void* fargs[len2];
        va_start(arg_ptr,len2);
        for(int i = 0;i < len1; i++){
            iargs[i] = va_arg(arg_ptr,int);
            // printf("%d\n", iargs[i]);
        }
        memcpy((char*)args+12,iargs,sizeof(iargs));
        const int index_bg = 12+len1*4;
        for(int i = 0;i < len2; i++){
            void* x = va_arg(arg_ptr,void*);
            *(long long*)(args + 8*i + index_bg) = x;
        }
        va_end(arg_ptr);
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