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
@a = global i32 -1
@b = global i32 1
define i32 @inc_a()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = load i32, ptr @a
    %r4 = add i32 %r1,1
    store i32 %r4, ptr @a
    %r6 = load i32, ptr @a
    ret i32 %r6
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r41 = phi i32 [5,%L1],[%r34,%L11]
    %r4 = icmp sge i32 %r41,0
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r5 = call i32 @inc_a()
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L8, label %L6
L4:  ;
    %r35 = load i32, ptr @a
    call void @putint(i32 %r35)
    call void @putch(i32 32)
    %r37 = load i32, ptr @b
    call void @putint(i32 %r37)
    call void @putch(i32 10)
    %r39 = load i32, ptr @a
    ret i32 %r39
L5:  ;
    %r11 = load i32, ptr @a
    call void @putint(i32 %r11)
    call void @putch(i32 32)
    %r13 = load i32, ptr @b
    call void @putint(i32 %r13)
    call void @putch(i32 10)
    br label %L6
L6:  ;
    %r15 = call i32 @inc_a()
    %r17 = icmp slt i32 %r15,14
    br i1 %r17, label %L9, label %L12
L7:  ;
    %r9 = call i32 @inc_a()
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L5, label %L6
L8:  ;
    %r7 = call i32 @inc_a()
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L7, label %L6
L9:  ;
    %r26 = load i32, ptr @a
    call void @putint(i32 %r26)
    call void @putch(i32 10)
    %r28 = load i32, ptr @b
    %r30 = mul i32 %r28,2
    store i32 %r30, ptr @b
    br label %L11
L10:  ;
    %r31 = call i32 @inc_a()
    br label %L11
L11:  ;
    %r40 = phi i32 [%r41,%L9],[%r41,%L10]
    %r34 = sub i32 %r40,1
    br label %L2
L12:  ;
    %r18 = call i32 @inc_a()
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L13, label %L10
L13:  ;
    %r20 = call i32 @inc_a()
    %r21 = call i32 @inc_a()
    %r22 = sub i32 %r20,%r21
    %r24 = add i32 %r22,1
    %r25 = icmp ne i32 %r24,0
    br i1 %r25, label %L9, label %L10
}
