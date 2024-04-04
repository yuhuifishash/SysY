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
define i32 @doubleWhile()
{
L0:  ;
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 5,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = add i32 7,0
    store i32 %r5, ptr %r3
    br label %L2
L2:  ;
    %r6 = load i32, ptr %r0
    %r7 = add i32 100,0
    %r8 = icmp slt i32 %r6,%r7
    br i1 %r8, label %L3, label %L4
L3:  ;
    %r9 = load i32, ptr %r0
    %r10 = add i32 30,0
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r0
    br label %L5
L4:  ;
    %r21 = load i32, ptr %r3
    ret i32 %r21
L5:  ;
    %r12 = load i32, ptr %r3
    %r13 = add i32 100,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L6, label %L7
L6:  ;
    %r15 = load i32, ptr %r3
    %r16 = add i32 6,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r3
    br label %L5
L7:  ;
    %r18 = load i32, ptr %r3
    %r19 = add i32 100,0
    %r20 = sub i32 %r18,%r19
    store i32 %r20, ptr %r3
    br label %L2
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @doubleWhile()
    ret i32 %r0
}
