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
define i32 @func(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp sle i32 %r0,50
    br i1 %r4, label %L2, label %L3
L2:  ;
    call void @putint(i32 %r0)
    ret i32 1
L3:  ;
    call void @putint(i32 %r0)
    ret i32 0
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = call i32 @func(i32 0)
    %r5 = icmp eq i32 %r3,1
    br i1 %r5, label %L2, label %L5
L2:  ;
    br label %L4
L3:  ;
    br label %L4
L4:  ;
    %r17 = call i32 @func(i32 50)
    %r19 = icmp eq i32 %r17,1
    br i1 %r19, label %L11, label %L10
L5:  ;
    %r7 = call i32 @func(i32 50)
    %r9 = icmp eq i32 %r7,1
    br i1 %r9, label %L6, label %L3
L6:  ;
    %r11 = call i32 @func(i32 100)
    %r13 = icmp eq i32 %r11,0
    br i1 %r13, label %L2, label %L3
L7:  ;
    br label %L9
L8:  ;
    br label %L9
L9:  ;
    ret i32 0
L10:  ;
    %r25 = call i32 @func(i32 1)
    %r27 = icmp eq i32 %r25,1
    br i1 %r27, label %L7, label %L8
L11:  ;
    %r21 = call i32 @func(i32 40)
    %r23 = icmp eq i32 %r21,1
    br i1 %r23, label %L7, label %L10
}
