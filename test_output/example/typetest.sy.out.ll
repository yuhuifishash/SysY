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
define i32 @f(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7)
{
L0:  ;
    br label %L1
L1:  ;
    %r19 = add i32 %r0,%r1
    %r21 = add i32 %r19,%r2
    %r23 = add i32 %r21,%r3
    %r25 = add i32 %r23,%r4
    %r27 = add i32 %r25,%r5
    %r29 = add i32 %r27,%r6
    %r31 = add i32 %r29,%r7
    %r114 = add i32 %r31,%r31
    %r116 = add i32 %r114,%r31
    %r118 = add i32 %r116,%r31
    %r120 = add i32 %r118,%r31
    %r122 = add i32 %r120,%r31
    ret i32 %r122
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r5 = icmp ne i32 %r1,0
    br i1 %r5, label %L4, label %L3
L2:  ;
    %r10 = add i32 %r1,5
    br label %L3
L3:  ;
    %r14 = phi i32 [%r1,%L1],[%r1,%L4],[%r10,%L2]
    %r13 = add i32 %r14,%r3
    ret i32 %r13
L4:  ;
    %r7 = icmp ne i32 %r3,0
    br i1 %r7, label %L2, label %L3
}
