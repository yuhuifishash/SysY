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
define i32 @fun(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r17 = phi i32 [%r0,%L1],[%r16,%L3]
    %r16 = phi i32 [%r1,%L1],[%r11,%L3]
    %r8 = icmp sgt i32 %r16,0
    br i1 %r8, label %L3, label %L4
L3:  ;latch
    %r11 = srem i32 %r17,%r16
    br label %L2
L4:  ;
    ret i32 %r17
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call i32 @getint()
    %r7 = call i32 @getint()
    %r10 = call i32 @fun(i32 %r6,i32 %r7)
    call void @putint(i32 %r10)
    ret i32 0
}
