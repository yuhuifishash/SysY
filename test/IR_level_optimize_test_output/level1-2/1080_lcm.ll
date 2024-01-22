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
L0:
    br label %L1
L1:
    %r16 = icmp slt i32 %r0,%r1
    br i1 %r16, label %L2, label %L3
L2:
    br label %L3
L3:
    %r51 = phi i32 [%r1,%L1],[%r0,%L2]
    %r48 = phi i32 [%r0,%L1],[%r1,%L2]
    %r24 = srem i32 %r48,%r51
    %r27 = icmp ne i32 %r24,0
    br i1 %r27, label %L8, label %L7
L5:
    %r52 = phi i32 [%r51,%L8],[%r45,%L6]
    %r45 = phi i32 [%r34,%L6],[%r24,%L8]
    %r34 = srem i32 %r52,%r45
    br label %L6
L6:
    %r37 = icmp ne i32 %r34,0
    br i1 %r37, label %L5, label %L7
L7:
    %r53 = phi i32 [%r51,%L3],[%r45,%L6]
    %r42 = mul i32 %r0,%r1
    %r44 = sdiv i32 %r42,%r53
    ret i32 %r44
L8:
    br label %L5
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r8 = call i32 @gcd(i32 %r4,i32 %r5)
    ret i32 %r8
}
