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
@n = global i32 zeroinitializer
define i32 @insertsort(ptr %r0)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r48 = phi i32 [1,%L1],[%r43,%L7]
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 %r48,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r10 = getelementptr i32, ptr %r0, i32 %r48
    %r11 = load i32, ptr %r10
    %r16 = sub i32 %r48,1
    br label %L5
L4:
    ret i32 0
L5:
    %r46 = phi i32 [%r16,%L3],[%r35,%L6]
    %r20 = icmp sgt i32 %r46,-1
    br i1 %r20, label %L8, label %L7
L6:
    %r28 = add i32 %r46,1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r31 = getelementptr i32, ptr %r0, i32 %r46
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r29
    %r35 = sub i32 %r46,1
    br label %L5
L7:
    %r38 = add i32 %r46,1
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    store i32 %r11, ptr %r39
    %r43 = add i32 %r48,1
    br label %L2
L8:
    %r23 = getelementptr i32, ptr %r0, i32 %r46
    %r24 = load i32, ptr %r23
    %r25 = icmp slt i32 %r11,%r24
    br i1 %r25, label %L6, label %L7
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r3
    %r6 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r6
    %r9 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r9
    %r12 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r12
    %r15 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r15
    %r18 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r18
    %r21 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r21
    %r24 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r24
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r27
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r30
    %r34 = getelementptr [10 x i32], ptr %r1, i32 0
    %r35 = call i32 @insertsort(ptr %r34)
    br label %L2
L2:
    %r51 = phi i32 [%r35,%L1],[%r49,%L3]
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r51,%r37
    br i1 %r38, label %L3, label %L4
L3:
    %r42 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r51
    %r43 = load i32, ptr %r42
    call void @putint(i32 %r43)
    call void @putch(i32 10)
    %r49 = add i32 %r51,1
    br label %L2
L4:
    ret i32 0
}
