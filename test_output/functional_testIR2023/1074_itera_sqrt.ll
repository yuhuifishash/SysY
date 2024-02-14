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
define i32 @fsqrt(i32 %r0)
{
L0:
    br label %L1
L1:
    %r8 = sdiv i32 %r0,2
    br label %L2
L2:
    %r25 = phi i32 [0,%L1],[%r24,%L3]
    %r24 = phi i32 [%r8,%L1],[%r22,%L3]
    %r11 = sub i32 %r25,%r24
    %r13 = icmp ne i32 %r11,0
    br i1 %r13, label %L3, label %L4
L3:
    %r18 = sdiv i32 %r0,%r24
    %r19 = add i32 %r24,%r18
    %r22 = sdiv i32 %r19,2
    br label %L2
L4:
    ret i32 %r24
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r6 = call i32 @fsqrt(i32 400)
    call void @putint(i32 %r6)
    call void @putch(i32 10)
    ret i32 0
}
