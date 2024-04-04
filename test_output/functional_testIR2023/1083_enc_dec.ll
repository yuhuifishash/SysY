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
define i32 @enc(i32 %r0)
{
L0:  ;
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = add i32 25,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r5 = load i32, ptr %r1
    %r6 = add i32 60,0
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr %r1
    br label %L4
L3:  ;
    %r8 = load i32, ptr %r1
    %r9 = add i32 15,0
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r1
    br label %L4
L4:  ;
    %r11 = load i32, ptr %r1
    ret i32 %r11
}
define i32 @dec(i32 %r0)
{
L0:  ;
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr %r1
    %r3 = add i32 85,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r5 = load i32, ptr %r1
    %r6 = add i32 59,0
    %r7 = sub i32 %r5,%r6
    store i32 %r7, ptr %r1
    br label %L4
L3:  ;
    %r8 = load i32, ptr %r1
    %r9 = add i32 14,0
    %r10 = add i32 %r8,%r9
    store i32 %r10, ptr %r1
    br label %L4
L4:  ;
    %r11 = load i32, ptr %r1
    ret i32 %r11
}
define i32 @main()
{
L0:  ;
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 400,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r0
    %r6 = call i32 @enc(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    %r8 = call i32 @dec(i32 %r7)
    store i32 %r8, ptr %r3
    %r9 = load i32, ptr %r3
    call void @putint(i32 %r9)
    %r10 = add i32 10,0
    store i32 %r10, ptr %r3
    %r11 = load i32, ptr %r3
    call void @putch(i32 %r11)
    %r12 = add i32 0,0
    ret i32 %r12
}
