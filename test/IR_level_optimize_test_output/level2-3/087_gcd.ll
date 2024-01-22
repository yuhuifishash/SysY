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
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    br label %L4
L1:
    %r16 = phi i32 [%r13,%L3],[%r1,%L4]
    %r15 = phi i32 [%r16,%L3],[%r0,%L4]
    %r6 = icmp eq i32 %r16,0
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r15
L3:
    %r13 = srem i32 %r15,%r16
    br label %L1
L4:
    br label %L1
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r4 = icmp sgt i32 %r1,0
    br i1 %r4, label %L6, label %L5
L3:
    %r24 = phi i32 [%r17,%L4],[%r1,%L6]
    %r8 = call i32 @getint()
    %r10 = call i32 @getint()
    %r13 = call i32 @gcd(i32 %r8,i32 %r10)
    call void @putint(i32 %r13)
    call void @putch(i32 10)
    %r17 = sub i32 %r24,1
    br label %L4
L4:
    %r20 = icmp sgt i32 %r17,0
    br i1 %r20, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
