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
define void @reverse(i32 %r0)
{
L0:  ;
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r1
    %r5 = add i32 1,0
    %r6 = icmp sle i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r2
    %r8 = load i32, ptr %r2
    call void @putint(i32 %r8)
    br label %L4
L3:  ;
    %r9 = call i32 @getint()
    store i32 %r9, ptr %r2
    %r10 = load i32, ptr %r1
    %r11 = add i32 1,0
    %r12 = sub i32 %r10,%r11
    call void @reverse(i32 %r12)
    %r13 = load i32, ptr %r2
    call void @putint(i32 %r13)
    br label %L4
L4:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 200,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr %r0
    call void @reverse(i32 %r2)
    %r3 = add i32 0,0
    ret i32 %r3
}
