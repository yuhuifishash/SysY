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
define i32 @dec2bin(i32 %r0)
{
L0:
    br label %L1
L1:
    %r15 = icmp ne i32 %r0,0
    br i1 %r15, label %L6, label %L5
L3:
    %r44 = phi i32 [0,%L6],[%r25,%L4]
    %r42 = phi i32 [1,%L6],[%r28,%L4]
    %r38 = phi i32 [%r31,%L4],[%r0,%L6]
    %r20 = srem i32 %r38,2
    %r23 = mul i32 %r42,%r20
    %r25 = add i32 %r23,%r44
    %r28 = mul i32 %r42,10
    %r31 = sdiv i32 %r38,2
    br label %L4
L4:
    %r34 = icmp ne i32 %r31,0
    br i1 %r34, label %L3, label %L5
L5:
    %r45 = phi i32 [0,%L1],[%r25,%L4]
    ret i32 %r45
L6:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r6 = call i32 @dec2bin(i32 400)
    call void @putint(i32 %r6)
    call void @putch(i32 10)
    ret i32 0
}
