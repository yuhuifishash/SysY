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
@A = global [1024x i32] zeroinitializer
@B = global [1024x i32] zeroinitializer
define i32 @f(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r19 = phi i32 [1,%L1],[%r15,%L3]
    %r12 = icmp sle i32 %r19,%r1
    br i1 %r12, label %L3, label %L4
L3:  ;
    %r15 = add i32 %r19,%r0
    br label %L2
L4:  ;
    %r18 = add i32 %r19,%r3
    ret i32 %r18
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r21 = phi i32 [0,%L1],[%r18,%L3]
    %r20 = phi i32 [0,%L1],[%r15,%L3]
    %r6 = icmp slt i32 %r21,1024
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r9 = getelementptr [1024 x i32], ptr @A, i32 0, i32 %r21
    %r10 = load i32, ptr %r9
    %r12 = getelementptr [1024 x i32], ptr @B, i32 0, i32 %r21
    %r13 = load i32, ptr %r12
    %r14 = mul i32 %r10,%r13
    %r15 = add i32 %r20,%r14
    %r18 = add i32 %r21,1
    br label %L2
L4:  ;
    ret i32 %r20
}
