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
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,10
    store i32 %r2, ptr %r0
    %r3 = load i32, ptr %r0
    %r4 = icmp eq i32 %r3,0
    %r5 = zext i1 %r4 to i32
    %r6 = icmp eq i32 %r5,0
    %r7 = zext i1 %r6 to i32
    %r8 = icmp eq i32 %r7,0
    %r9 = zext i1 %r8 to i32
    %r10 = sub i32 0,%r9
    %r11 = add i32 0,%r10
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L1, label %L2
L1:
    %r13 = add i32 0,1
    %r14 = sub i32 0,%r13
    %r15 = sub i32 0,%r14
    %r16 = sub i32 0,%r15
    store i32 %r16, ptr %r0
    br label %L3
L2:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r0
    br label %L3
L3:
    %r18 = load i32, ptr %r0
    ret i32 %r18
}
