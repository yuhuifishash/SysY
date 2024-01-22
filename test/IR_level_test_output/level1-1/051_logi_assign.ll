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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = call i32 @getint()
    store i32 %r0, ptr @a
    %r1 = call i32 @getint()
    store i32 %r1, ptr @b
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr @a
    %r5 = load i32, ptr @b
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L4, label %L2
L1:
    %r17 = add i32 0,1
    store i32 %r17, ptr %r2
    br label %L3
L2:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r2
    br label %L3
L3:
    %r19 = load i32, ptr %r2
    ret i32 %r19
L4:
    %r9 = load i32, ptr @a
    %r10 = add i32 0,3
    %r11 = icmp ne i32 %r9,%r10
    br i1 %r11, label %L1, label %L2
}
