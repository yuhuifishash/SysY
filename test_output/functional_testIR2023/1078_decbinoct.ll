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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r34 = phi i32 [0,%L1],[%r23,%L3]
    %r33 = phi i32 [1,%L1],[%r26,%L3]
    %r31 = phi i32 [%r0,%L1],[%r29,%L3]
    %r15 = icmp ne i32 %r31,0
    br i1 %r15, label %L3, label %L4
L3:  ;latch
    %r18 = srem i32 %r31,2
    %r21 = mul i32 %r33,%r18
    %r23 = add i32 %r21,%r34
    %r26 = mul i32 %r33,10
    %r29 = sdiv i32 %r31,2
    br label %L2
L4:  ;
    ret i32 %r34
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call i32 @dec2bin(i32 400)
    call void @putint(i32 %r6)
    call void @putch(i32 10)
    ret i32 0
}
