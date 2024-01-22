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
@a = global i32 7
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L16
L3:
    %r36 = phi i32 [%r35,%L4],[0,%L16]
    %r33 = phi i32 [%r19,%L4],[0,%L16]
    br label %L11
L4:
    %r22 = icmp slt i32 %r19,100
    br i1 %r22, label %L3, label %L5
L5:
    %r27 = icmp slt i32 %r35,100
    br i1 %r27, label %L8, label %L9
L6:
    %r16 = add i32 %r36,1
    br label %L7
L7:
    %r35 = phi i32 [%r36,%L12],[%r16,%L6]
    %r19 = add i32 %r33,1
    br label %L4
L8:
    call void @putint(i32 1)
    br label %L10
L9:
    call void @putint(i32 0)
    br label %L10
L10:
    ret i32 0
L11:
    br label %L13
L12:
    %r9 = phi i32 [1,%L14],[0,%L15]
    %r11 = icmp eq i32 %r9,1
    br i1 %r11, label %L6, label %L7
L13:
    %r39 = icmp eq i32 1,%r38
    br i1 %r39, label %L14, label %L15
L14:
    br label %L12
L15:
    br label %L12
L16:
    %r38 = load i32, ptr @a
    br label %L3
}
define i32 @func()
{
L0:
    br label %L1
L1:
    %r1 = load i32, ptr @a
    %r6 = icmp eq i32 1,%r1
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
}
