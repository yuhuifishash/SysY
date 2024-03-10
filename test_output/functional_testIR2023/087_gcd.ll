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
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r1,0
    br i1 %r6, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;
    %r11 = srem i32 %r0,%r1
    %r12 = call i32 @gcd(i32 %r1,i32 %r11)
    ret i32 %r12
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    br label %L2
L2:  ;
    %r17 = phi i32 [%r1,%L1],[%r15,%L3]
    %r4 = icmp sgt i32 %r17,0
    br i1 %r4, label %L3, label %L4
L3:  ;latch
    %r6 = call i32 @getint()
    %r8 = call i32 @getint()
    %r11 = call i32 @gcd(i32 %r6,i32 %r8)
    call void @putint(i32 %r11)
    call void @putch(i32 10)
    %r15 = sub i32 %r17,1
    br label %L2
L4:  ;
    ret i32 0
}
