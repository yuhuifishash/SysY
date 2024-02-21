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
define void @move(i32 %r0,i32 %r1)
{
L0:  ;
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    call void @putint(i32 %r4)
    %r5 = add i32 32,0
    call void @putch(i32 %r5)
    %r6 = load i32, ptr %r3
    call void @putint(i32 %r6)
    %r7 = add i32 44,0
    call void @putch(i32 %r7)
    %r8 = add i32 32,0
    call void @putch(i32 %r8)
    ret void
}
define i32 @main()
{
L0:  ;
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L2
L2:  ;
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r5 = call i32 @getint()
    %r6 = add i32 1,0
    %r7 = add i32 2,0
    %r8 = add i32 3,0
    call void @hanoi(i32 %r5,i32 %r6,i32 %r7,i32 %r8)
    %r9 = add i32 10,0
    call void @putch(i32 %r9)
    %r10 = load i32, ptr %r0
    %r11 = add i32 1,0
    %r12 = sub i32 %r10,%r11
    store i32 %r12, ptr %r0
    br label %L2
L4:  ;
    %r13 = add i32 0,0
    ret i32 %r13
}
define void @hanoi(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:  ;
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    store i32 %r0, ptr %r4
    store i32 %r1, ptr %r5
    store i32 %r2, ptr %r6
    store i32 %r3, ptr %r7
    br label %L1
L1:  ;
    %r8 = load i32, ptr %r4
    %r9 = add i32 1,0
    %r10 = icmp eq i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:  ;
    %r11 = load i32, ptr %r5
    %r12 = load i32, ptr %r7
    call void @move(i32 %r11,i32 %r12)
    br label %L4
L3:  ;
<<<<<<< HEAD
    %r13 = load i32, ptr %r4
    %r14 = add i32 1,0
    %r15 = sub i32 %r13,%r14
    %r16 = load i32, ptr %r5
    %r17 = load i32, ptr %r7
    %r18 = load i32, ptr %r6
    call void @hanoi(i32 %r15,i32 %r16,i32 %r17,i32 %r18)
    %r19 = load i32, ptr %r5
    %r20 = load i32, ptr %r7
    call void @move(i32 %r19,i32 %r20)
    %r21 = load i32, ptr %r4
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    %r24 = load i32, ptr %r6
    %r25 = load i32, ptr %r5
    %r26 = load i32, ptr %r7
    call void @hanoi(i32 %r23,i32 %r24,i32 %r25,i32 %r26)
=======
    %r15 = sub i32 %r0,1
    call void @hanoi(i32 %r15,i32 %r1,i32 %r3,i32 %r2)
    call void @move(i32 %r1,i32 %r3)
    call void @hanoi(i32 %r15,i32 %r2,i32 %r1,i32 %r3)
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L4
L4:  ;
    ret void
}
