declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define void @move(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    call void @putint(i32 %r0)
    call void @putch(i32 32)
    call void @putint(i32 %r1)
    call void @putch(i32 44)
    call void @putch(i32 32)
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r1 = call i32 @getint()
    br label %L2
L2:  ;  exiting0  header0
    %r14 = phi i32 [%r1,%L1],[%r12,%L3]
    %r4 = icmp sgt i32 %r14,0
    br i1 %r4, label %L3, label %L4
L3:  ;  latch0
    %r5 = call i32 @getint()
    call void @hanoi(i32 %r5,i32 1,i32 2,i32 3)
    call void @putch(i32 10)
    %r12 = sub i32 %r14,1
    br label %L2
L4:  ;
    ret i32 0
}
define void @hanoi(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:  ;
    br label %L1
L1:  ;
    %r10 = icmp eq i32 %r0,1
    br i1 %r10, label %L2, label %L3
L2:  ;
    call void @move(i32 %r1,i32 %r3)
    br label %L4
L3:  ;
    %r15 = sub i32 %r0,1
    call void @hanoi(i32 %r15,i32 %r1,i32 %r3,i32 %r2)
    call void @move(i32 %r1,i32 %r3)
    call void @hanoi(i32 %r15,i32 %r2,i32 %r1,i32 %r3)
    br label %L4
L4:  ;
    ret void
}
