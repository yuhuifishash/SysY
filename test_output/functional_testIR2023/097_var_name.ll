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
define i32 @main()
{
L0:
    %r9 = alloca i32
    %r4 = alloca [20 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,2
    store i32 %r1, ptr %r0
    %r3 = add i32 0,20
    store i32 %r3, ptr %r2
    call void @llvm.memset.p0.i32(ptr %r4,i8 0,i32 80,i1 0)
    %r5 = add i32 0,1
    %r6 = getelementptr [20 x i32], ptr %r4, i32 0, i32 0
    store i32 %r5, ptr %r6
    %r7 = add i32 0,2
    %r8 = getelementptr [20 x i32], ptr %r4, i32 0, i32 1
    store i32 %r7, ptr %r8
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r0
    %r12 = load i32, ptr %r2
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L3, label %L5
L3:
    %r16 = load i32, ptr %r0
    %r17 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r16
    %r18 = load i32, ptr %r17
    %r19 = load i32, ptr %r0
    %r20 = add i32 0,1
    %r21 = sub i32 %r19,%r20
    %r22 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = add i32 %r18,%r23
    %r25 = load i32, ptr %r0
    %r26 = add i32 0,2
    %r27 = sub i32 %r25,%r26
    %r28 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 %r24,%r29
    %r31 = load i32, ptr %r0
    %r32 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r31
    store i32 %r30, ptr %r32
    %r33 = load i32, ptr %r9
    %r34 = load i32, ptr %r0
    %r35 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r34
    %r36 = load i32, ptr %r35
    %r37 = add i32 %r33,%r36
    store i32 %r37, ptr %r9
    %r38 = load i32, ptr %r0
    %r39 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r38
    %r40 = load i32, ptr %r39
    call void @putint(i32 %r40)
    %r41 = add i32 0,10
    call void @putch(i32 %r41)
    %r42 = load i32, ptr %r0
    %r43 = add i32 0,1
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r0
    br label %L4
L4:
    %r45 = load i32, ptr %r0
    %r46 = load i32, ptr %r2
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L3, label %L5
L5:
    %r50 = load i32, ptr %r9
    ret i32 %r50
}
