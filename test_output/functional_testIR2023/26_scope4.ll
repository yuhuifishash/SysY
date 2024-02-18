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
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @count
    %r3 = load i32, ptr @count
    ret i32 %r3
}
define void @f2()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = load i32, ptr @sum
    %r1 = load i32, ptr @a
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @sum
    %r4 = call i32 @getA()
    %r5 = load i32, ptr @sum
    %r6 = load i32, ptr @a
    %r7 = add i32 %r5,%r6
    store i32 %r7, ptr @sum
    ret void
}
define void @f1(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,%r0
    store i32 %r4, ptr @sum
    %r5 = call i32 @getA()
    %r6 = load i32, ptr @sum
    %r8 = add i32 %r6,%r5
    store i32 %r8, ptr @sum
    br label %L2
L2:  ;
    %r12 = call i32 @getA()
    %r13 = load i32, ptr @sum
    %r15 = add i32 %r13,%r12
    store i32 %r15, ptr @sum
    br label %L3
L3:  ;
    %r16 = load i32, ptr @sum
    %r18 = add i32 %r16,%r5
    store i32 %r18, ptr @sum
    %r19 = load i32, ptr @sum
    %r21 = add i32 %r19,%r5
    store i32 %r21, ptr @sum
    ret void
}
define void @f3()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getA()
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,%r1
    store i32 %r4, ptr @sum
    %r5 = call i32 @getA()
    %r6 = load i32, ptr @sum
    %r8 = add i32 %r6,%r5
    store i32 %r8, ptr @sum
    %r10 = call i32 @getA()
    %r11 = load i32, ptr @sum
    %r13 = add i32 %r11,%r5
    store i32 %r13, ptr @sum
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 0, ptr @sum
    %r1 = call i32 @getA()
    store i32 %r1, ptr @a
    %r2 = load i32, ptr @sum
    %r3 = load i32, ptr @a
    %r4 = add i32 %r2,%r3
    store i32 %r4, ptr @sum
    %r6 = call i32 @getA()
    call void @f1(i32 %r6)
    call void @f2()
    call void @f3()
    call void @f1(i32 %r6)
    call void @f2()
    call void @f3()
    %r10 = call i32 @getA()
    call void @f1(i32 %r6)
    call void @f2()
    call void @f3()
    %r13 = call i32 @getA()
    %r15 = call i32 @getA()
    call void @f1(i32 %r15)
    call void @f2()
    call void @f3()
    %r18 = call i32 @getA()
    call void @f1(i32 %r18)
    call void @f2()
    call void @f3()
    %r20 = call i32 @getA()
    call void @f1(i32 %r20)
    call void @f2()
    call void @f3()
    call void @f1(i32 %r6)
    call void @f2()
    call void @f3()
    br label %L2
L2:  ;
    br label %L3
L3:  ;
    br label %L5
L4:  ;
    %r52 = load i32, ptr @sum
    call void @putint(i32 %r52)
    ret i32 0
L5:  ;
    br label %L6
L6:  ;
    br label %L8
L7:  ;
    br label %L4
L8:  ;
    %r58 = phi i32 [%r6,%L6],[%r57,%L17],[%r48,%L19]
    %r56 = phi i32 [0,%L6],[%r46,%L17],[%r51,%L19]
    %r31 = icmp slt i32 %r56,3
    br i1 %r31, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    br label %L7
L11:  ;
    %r57 = phi i32 [%r58,%L9]
    br label %L12
L12:  ;
    br label %L14
L13:  ;
    %r40 = icmp eq i32 %r56,1
    br i1 %r40, label %L17, label %L18
L14:  ;
    call void @f1(i32 %r57)
    call void @f2()
    call void @f3()
    br label %L13
L17:  ;
    %r42 = call i32 @getA()
    call void @f1(i32 %r42)
    call void @f2()
    call void @f3()
    %r46 = add i32 %r56,1
    br label %L8
L18:  ;
    call void @f1(i32 %r57)
    call void @f2()
    call void @f3()
    br label %L19
L19:  ;
    %r48 = call i32 @getA()
    %r51 = add i32 %r56,1
    br label %L8
}
