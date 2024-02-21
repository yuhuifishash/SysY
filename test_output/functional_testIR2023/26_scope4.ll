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
@sum = global i32 zeroinitializer
@count = global i32 0
define i32 @getA()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = load i32, ptr @count
    %r1 = add i32 1,0
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @count
    %r3 = load i32, ptr @count
    ret i32 %r3
}
define void @f2()
{
L0:  ;
    %r3 = alloca i32
    br label %L1
L1:  ;
    %r0 = load i32, ptr @sum
    %r1 = load i32, ptr @a
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @sum
    %r4 = call i32 @getA()
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr @sum
    %r7 = add i32 %r5,%r1
    store i32 %r7, ptr @sum
    ret void
}
define void @f1(i32 %r0)
{
L0:  ;
    %r11 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r2 = load i32, ptr @sum
    %r3 = load i32, ptr %r1
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r5 = call i32 @getA()
    store i32 %r5, ptr %r1
    %r6 = load i32, ptr @sum
    %r7 = load i32, ptr %r1
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr @sum
    %r9 = add i32 1,0
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L2, label %L3
L2:  ;
    %r12 = call i32 @getA()
    store i32 %r12, ptr %r11
    %r13 = load i32, ptr @sum
    %r14 = load i32, ptr %r11
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr @sum
    br label %L3
L3:  ;
    %r16 = load i32, ptr @sum
    %r17 = load i32, ptr %r1
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr @sum
    %r19 = load i32, ptr @sum
    %r20 = load i32, ptr %r1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr @sum
    ret void
}
define void @f3()
{
L0:  ;
    %r9 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @getA()
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr @sum
    %r3 = load i32, ptr %r0
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r5 = call i32 @getA()
    store i32 %r5, ptr %r0
    %r6 = load i32, ptr @sum
    %r7 = load i32, ptr %r0
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr @sum
    %r10 = call i32 @getA()
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr @sum
    %r12 = load i32, ptr %r0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr @sum
    ret void
}
define i32 @main()
{
L0:  ;
    %r41 = alloca i32
    %r27 = alloca i32
    %r17 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r9 = alloca i32
    %r5 = alloca i32
    br label %L1
L1:  ;
    %r0 = add i32 0,0
    store i32 %r0, ptr @sum
    %r1 = call i32 @getA()
    store i32 %r1, ptr @a
    %r2 = load i32, ptr @sum
    %r3 = load i32, ptr @a
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r6 = call i32 @getA()
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r5
    call void @f1(i32 %r7)
    call void @f2()
    call void @f3()
    %r8 = load i32, ptr %r5
    call void @f1(i32 %r8)
    call void @f2()
    call void @f3()
    %r10 = call i32 @getA()
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r5
    call void @f1(i32 %r11)
    call void @f2()
    call void @f3()
    %r13 = call i32 @getA()
    store i32 %r13, ptr %r12
    %r15 = call i32 @getA()
    store i32 %r15, ptr %r14
    %r16 = load i32, ptr %r14
    call void @f1(i32 %r16)
    call void @f2()
    call void @f3()
    %r18 = call i32 @getA()
    store i32 %r18, ptr %r17
    %r19 = load i32, ptr %r17
    call void @f1(i32 %r19)
    call void @f2()
    call void @f3()
    %r20 = call i32 @getA()
    store i32 %r20, ptr %r17
    %r21 = load i32, ptr %r17
    call void @f1(i32 %r21)
    call void @f2()
    call void @f3()
    %r22 = load i32, ptr %r5
    call void @f1(i32 %r22)
    call void @f2()
    call void @f3()
    br label %L2
L2:  ;
    %r23 = add i32 1,0
    %r24 = icmp ne i32 %r23,0
    br i1 %r24, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r52 = load i32, ptr @sum
    call void @putint(i32 %r52)
    %r53 = add i32 0,0
    ret i32 %r53
L5:  ;
    %r25 = add i32 1,0
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L6, label %L7
L6:  ;
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    br label %L8
L7:  ;
    br label %L4
L8:  ;
    %r29 = load i32, ptr %r27
    %r30 = add i32 3,0
    %r31 = icmp slt i32 %r29,%r30
    br i1 %r31, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    br label %L7
L11:  ;
    %r32 = add i32 1,0
    %r33 = icmp ne i32 %r32,0
    br i1 %r33, label %L12, label %L13
L12:  ;
    %r34 = add i32 1,0
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L14, label %L15
L13:  ;
    %r38 = load i32, ptr %r27
    %r39 = add i32 1,0
    %r40 = icmp eq i32 %r38,%r39
    br i1 %r40, label %L17, label %L18
L14:  ;
    %r36 = load i32, ptr %r5
    call void @f1(i32 %r36)
    call void @f2()
    call void @f3()
    br label %L13
L15:  ;
    %r37 = call i32 @getA()
    store i32 %r37, ptr %r5
    br label %L11
L17:  ;
    %r42 = call i32 @getA()
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r41
    call void @f1(i32 %r43)
    call void @f2()
    call void @f3()
    %r44 = load i32, ptr %r27
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r27
    br label %L8
L18:  ;
    %r47 = load i32, ptr %r5
    call void @f1(i32 %r47)
    call void @f2()
    call void @f3()
    br label %L19
L19:  ;
    %r48 = call i32 @getA()
    store i32 %r48, ptr %r5
    %r49 = load i32, ptr %r27
    %r50 = add i32 1,0
    %r51 = add i32 %r49,%r50
    store i32 %r51, ptr %r27
    br label %L8
}
