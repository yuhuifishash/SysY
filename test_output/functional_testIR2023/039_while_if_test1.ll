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
define i32 @whileIf()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r0
    %r5 = add i32 100,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r0
    %r8 = add i32 5,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L5, label %L6
L4:
    %r21 = load i32, ptr %r2
    ret i32 %r21
L5:
    %r10 = add i32 25,0
    store i32 %r10, ptr %r2
    br label %L7
L6:
    %r11 = load i32, ptr %r0
    %r12 = add i32 10,0
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L8, label %L9
L7:
    %r18 = load i32, ptr %r0
    %r19 = add i32 1,0
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r0
    br label %L2
L8:
    %r14 = add i32 42,0
    store i32 %r14, ptr %r2
    br label %L10
L9:
    %r15 = load i32, ptr %r0
    %r16 = add i32 2,0
    %r17 = mul i32 %r15,%r16
    store i32 %r17, ptr %r2
    br label %L10
L10:
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @whileIf()
    ret i32 %r0
}
