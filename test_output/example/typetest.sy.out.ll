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
define i32 @func()
{
L0:  ;
    br label %L1
L1:  ;  preheader1
    br label %L2
L2:  ;  exiting1  header1
    %r38 = phi i32 [0,%L1],[%r40,%L14]
    %r37 = phi i32 [0,%L1],[%r41,%L14]
    %r6 = icmp sle i32 %r37,100
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r9 = mul i32 %r38,%r37
    %r11 = icmp eq i32 %r9,5
    br i1 %r11, label %L5, label %L6
L4:  ;
    ret i32 %r38
L5:  ;
    %r14 = add i32 %r37,1
    br label %L14
L6:  ;  preheader3
    br label %L8
L8:  ;  exiting3  header3
    %r39 = phi i32 [%r38,%L6],[%r42,%L15]
    %r36 = phi i32 [0,%L6],[%r43,%L15]
    %r19 = icmp sle i32 %r36,100
    br i1 %r19, label %L9, label %L10
L9:  ;
    %r21 = icmp ne i32 %r39,0
    br i1 %r21, label %L11, label %L12
L10:  ;
    %r30 = add i32 %r39,%r37
    %r33 = add i32 %r37,1
    br label %L14
L11:  ;
    br label %L15
L12:  ;
    %r24 = add i32 %r36,1
    %r27 = add i32 %r39,%r24
    br label %L15
L14:  ;latch1
    %r40 = phi i32 [%r38,%L5],[%r30,%L10]
    %r41 = phi i32 [%r14,%L5],[%r33,%L10]
    br label %L2
L15:  ;latch3
    %r42 = phi i32 [%r39,%L11],[%r27,%L12]
    %r43 = phi i32 [%r36,%L11],[%r24,%L12]
    br label %L8
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    ret i32 0
}
