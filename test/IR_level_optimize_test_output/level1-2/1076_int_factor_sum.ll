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
@N = global i32 zeroinitializer
@newline = global i32 zeroinitializer
define i32 @factor(i32 %r0)
{
L0:
    br label %L1
L1:
    %r11 = add i32 %r0,1
    %r12 = icmp slt i32 1,%r11
    br i1 %r12, label %L8, label %L5
L3:
    %r39 = phi i32 [1,%L8],[%r27,%L4]
    %r37 = phi i32 [0,%L8],[%r36,%L4]
    %r17 = srem i32 %r0,%r39
    %r19 = icmp eq i32 %r17,0
    br i1 %r19, label %L6, label %L7
L4:
    %r32 = icmp slt i32 %r27,%r31
    br i1 %r32, label %L3, label %L5
L5:
    %r38 = phi i32 [0,%L1],[%r36,%L4]
    ret i32 %r38
L6:
    %r24 = add i32 %r37,%r39
    br label %L7
L7:
    %r36 = phi i32 [%r37,%L3],[%r24,%L6]
    %r27 = add i32 %r39,1
    br label %L4
L8:
    %r31 = add i32 %r0,1
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 4, ptr @N
    store i32 10, ptr @newline
    %r10 = call i32 @factor(i32 1478)
    ret i32 %r10
}
