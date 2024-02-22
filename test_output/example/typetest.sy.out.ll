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
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    br label %L2
L2:  ;
    %r21 = phi i32 [%r1,%L1],[%r12,%L5],[%r21,%L6]
    %r20 = phi i32 [0,%L1],[%r15,%L5],[%r18,%L6]
    %r6 = icmp sle i32 %r20,100
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r9 = icmp slt i32 %r21,%r20
    br i1 %r9, label %L5, label %L6
L4:  ;
    ret i32 %r21
L5:  ;
    %r12 = add i32 %r21,%r20
    %r15 = add i32 %r20,1
    br label %L2
L6:  ;
    %r18 = add i32 %r20,1
    br label %L2
}
