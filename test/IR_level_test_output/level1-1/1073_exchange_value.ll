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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r6 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = call i32 @getint()
    store i32 %r4, ptr %r0
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r2
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r8 = load i32, ptr %r0
    store i32 %r8, ptr %r6
    %r9 = load i32, ptr %r2
    store i32 %r9, ptr %r0
    %r10 = load i32, ptr %r6
    store i32 %r10, ptr %r2
    %r11 = load i32, ptr %r0
    call void @putint(i32 %r11)
    %r12 = add i32 0,10
    store i32 %r12, ptr %r6
    %r13 = load i32, ptr %r6
    call void @putch(i32 %r13)
    %r14 = load i32, ptr %r2
    call void @putint(i32 %r14)
    %r15 = add i32 0,10
    store i32 %r15, ptr %r6
    %r16 = load i32, ptr %r6
    call void @putch(i32 %r16)
    %r17 = add i32 0,0
    ret i32 %r17
}
