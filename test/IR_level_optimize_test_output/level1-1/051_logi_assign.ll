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
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @a
    %r1 = call i32 @getint()
    store i32 %r1, ptr @b
    %r4 = load i32, ptr @a
    %r5 = load i32, ptr @b
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L5, label %L3
L2:
    br label %L4
L3:
    br label %L4
L4:
    %r20 = phi i32 [0,%L3],[1,%L2]
    ret i32 %r20
L5:
    %r9 = load i32, ptr @a
    %r11 = icmp ne i32 %r9,3
    br i1 %r11, label %L2, label %L3
}
