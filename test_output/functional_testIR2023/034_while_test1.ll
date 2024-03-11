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
define i32 @doubleWhile()
{
L0:  ;
    br label %L1
L1:  ;  preheader1
    br label %L2
L2:  ;  exiting1  header1
    %r24 = phi i32 [5,%L1],[%r11,%L7]
    %r23 = phi i32 [7,%L1],[%r20,%L7]
    %r8 = icmp slt i32 %r24,100
    br i1 %r8, label %L3, label %L4
L3:  ;  preheader0
    %r11 = add i32 %r24,30
    br label %L5
L4:  ;
    ret i32 %r23
L5:  ;  exiting0  header0
    %r22 = phi i32 [%r23,%L3],[%r17,%L6]
    %r14 = icmp slt i32 %r22,100
    br i1 %r14, label %L6, label %L7
L6:  ;  latch0
    %r17 = add i32 %r22,6
    br label %L5
L7:  ;  latch1
    %r20 = sub i32 %r22,100
    br label %L2
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @doubleWhile()
    ret i32 %r0
}
