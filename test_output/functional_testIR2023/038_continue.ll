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
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r23 = phi i32 [0,%L1],[%r24,%L8]
    %r22 = phi i32 [0,%L1],[%r25,%L8]
    %r8 = icmp slt i32 %r23,100
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r11 = icmp eq i32 %r23,50
    br i1 %r11, label %L5, label %L6
L4:  ;
    ret i32 %r22
L5:  ;
    %r14 = add i32 %r23,1
    br label %L8
L6:  ;
    %r17 = add i32 %r22,%r23
    %r20 = add i32 %r23,1
    br label %L8
L8:  ;latch
    %r24 = phi i32 [%r14,%L5],[%r20,%L6]
    %r25 = phi i32 [%r22,%L5],[%r17,%L6]
    br label %L2
}
