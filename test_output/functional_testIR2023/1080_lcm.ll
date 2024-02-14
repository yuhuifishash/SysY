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
@n = global i32 zeroinitializer
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r16 = icmp slt i32 %r0,%r1
    br i1 %r16, label %L2, label %L3
L2:  ;
    br label %L3
L3:  ;
    %r40 = phi i32 [%r0,%L1],[%r1,%L2]
    %r38 = phi i32 [%r1,%L1],[%r0,%L2]
    %r37 = phi i32 [0,%L1],[%r0,%L2]
    %r22 = srem i32 %r40,%r38
    br label %L4
L4:  ;
    %r41 = phi i32 [%r40,%L3],[%r39,%L5]
    %r39 = phi i32 [%r38,%L3],[%r36,%L5]
    %r36 = phi i32 [%r22,%L3],[%r30,%L5]
    %r25 = icmp ne i32 %r36,0
    br i1 %r25, label %L5, label %L6
L5:  ;
    %r30 = srem i32 %r39,%r36
    br label %L4
L6:  ;
    %r33 = mul i32 %r0,%r1
    %r35 = sdiv i32 %r33,%r39
    ret i32 %r35
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r8 = call i32 @gcd(i32 %r4,i32 %r5)
    ret i32 %r8
}
