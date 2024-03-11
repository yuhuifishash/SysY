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
@k = global i32 zeroinitializer
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 3389, ptr @k
    %r1 = load i32, ptr @k
    %r3 = icmp slt i32 %r1,10000
    br i1 %r3, label %L2, label %L3
L2:  ;  preheader0
    %r4 = load i32, ptr @k
    %r6 = add i32 %r4,1
    store i32 %r6, ptr @k
    br label %L4
L3:  ;
    %r34 = load i32, ptr @k
    ret i32 %r34
L4:  ;  exiting0  header0
    %r36 = phi i32 [112,%L2],[%r37,%L8]
    %r11 = icmp sgt i32 %r36,10
    br i1 %r11, label %L5, label %L6
L5:  ;
    %r14 = sub i32 %r36,88
    %r17 = icmp slt i32 %r14,1000
    br i1 %r17, label %L7, label %L8
L6:  ;
    call void @putint(i32 %r36)
    br label %L3
L7:  ;
    %r25 = sub i32 %r14,10
    %r32 = add i32 %r25,22
    br label %L8
L8:  ;  latch0
    %r37 = phi i32 [%r14,%L5],[%r32,%L7]
    br label %L4
}
