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
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r24 = phi i32 [0,%L1],[%r23,%L6]
    %r22 = phi i32 [0,%L1],[%r15,%L6]
    %r6 = icmp slt i32 %r22,100
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = call i32 @func()
    %r9 = icmp eq i32 %r7,1
    br i1 %r9, label %L5, label %L6
L4:
    %r18 = icmp slt i32 %r24,100
    br i1 %r18, label %L7, label %L8
L5:
    %r12 = add i32 %r24,1
    br label %L6
L6:
    %r23 = phi i32 [%r24,%L3],[%r12,%L5]
    %r15 = add i32 %r22,1
    br label %L2
L7:
    call void @putint(i32 1)
    br label %L9
L8:
    call void @putint(i32 0)
    br label %L9
L9:
    ret i32 0
}
