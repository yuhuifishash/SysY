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
    %r20 = phi i32 [0,%L1],[%r17,%L6]
    %r19 = phi i32 [0,%L1],[%r14,%L6]
    %r8 = icmp slt i32 %r20,100
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r11 = icmp eq i32 %r20,50
    br i1 %r11, label %L5, label %L6
L4:  ;
    ret i32 %r19
L5:  ;
    br label %L4
L6:  ;latch
    %r14 = add i32 %r19,%r20
    %r17 = add i32 %r20,1
    br label %L2
}
