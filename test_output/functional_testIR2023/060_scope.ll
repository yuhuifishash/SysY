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
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = load i32, ptr @a
    store i32 %r1, ptr %r0
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr %r0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = load i32, ptr %r2
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    store i32 %r9, ptr %r2
    %r10 = add i32 1,0
    ret i32 %r10
L3:  ;
    %r11 = add i32 0,0
    ret i32 %r11
}
define i32 @main()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = add i32 100,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r7 = call i32 @func()
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L5, label %L6
L4:  ;
    %r16 = load i32, ptr %r0
    %r17 = add i32 100,0
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L7, label %L8
L5:  ;
    %r10 = load i32, ptr %r0
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r0
    br label %L6
L6:  ;
    %r13 = load i32, ptr %r2
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r2
    br label %L2
L7:  ;
    %r19 = add i32 1,0
    call void @putint(i32 %r19)
    br label %L9
L8:  ;
    %r20 = add i32 0,0
    call void @putint(i32 %r20)
    br label %L9
L9:  ;
    %r21 = add i32 0,0
    ret i32 %r21
}
