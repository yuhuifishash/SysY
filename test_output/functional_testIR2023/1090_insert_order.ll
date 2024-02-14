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
@N = global i32 zeroinitializer
define i32 @insert(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r38 = phi i32 [0,%L1],[%r18,%L3]
    %r10 = getelementptr i32, ptr %r0, i32 %r38
    %r11 = load i32, ptr %r10
    %r12 = icmp sgt i32 %r1,%r11
    br i1 %r12, label %L5, label %L4
L3:
    %r18 = add i32 %r38,1
    br label %L2
L4:
    %r19 = load i32, ptr @N
    br label %L6
L5:
    %r14 = load i32, ptr @N
    %r15 = icmp slt i32 %r38,%r14
    br i1 %r15, label %L3, label %L4
L6:
    %r37 = phi i32 [%r19,%L4],[%r35,%L7]
    %r22 = icmp sgt i32 %r37,%r38
    br i1 %r22, label %L7, label %L8
L7:
    %r24 = getelementptr i32, ptr %r0, i32 %r37
    %r27 = sub i32 %r37,1
    %r28 = getelementptr i32, ptr %r0, i32 %r27
    %r29 = load i32, ptr %r28
    store i32 %r29, ptr %r24
    %r31 = getelementptr i32, ptr %r0, i32 %r38
    store i32 %r1, ptr %r31
    %r35 = sub i32 %r37,1
    br label %L6
L8:
    ret i32 0
}
define i32 @main()
{
L0:
    %r1 = alloca [11 x i32]
    br label %L1
L1:
    store i32 10, ptr @N
    %r3 = getelementptr [11 x i32], ptr %r1, i32 0, i32 0
    store i32 1, ptr %r3
    %r6 = getelementptr [11 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r6
    %r9 = getelementptr [11 x i32], ptr %r1, i32 0, i32 2
    store i32 4, ptr %r9
    %r12 = getelementptr [11 x i32], ptr %r1, i32 0, i32 3
    store i32 7, ptr %r12
    %r15 = getelementptr [11 x i32], ptr %r1, i32 0, i32 4
    store i32 8, ptr %r15
    %r18 = getelementptr [11 x i32], ptr %r1, i32 0, i32 5
    store i32 11, ptr %r18
    %r21 = getelementptr [11 x i32], ptr %r1, i32 0, i32 6
    store i32 13, ptr %r21
    %r24 = getelementptr [11 x i32], ptr %r1, i32 0, i32 7
    store i32 18, ptr %r24
    %r27 = getelementptr [11 x i32], ptr %r1, i32 0, i32 8
    store i32 56, ptr %r27
    %r30 = getelementptr [11 x i32], ptr %r1, i32 0, i32 9
    store i32 78, ptr %r30
    %r37 = call i32 @getint()
    %r38 = getelementptr [11 x i32], ptr %r1, i32 0
    %r40 = call i32 @insert(ptr %r38,i32 %r37)
    br label %L2
L2:
    %r55 = phi i32 [%r40,%L1],[10,%L3]
    %r54 = phi i32 [0,%L1],[%r52,%L3]
    %r42 = load i32, ptr @N
    %r43 = icmp slt i32 %r54,%r42
    br i1 %r43, label %L3, label %L4
L3:
    %r45 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r54
    %r46 = load i32, ptr %r45
    call void @putint(i32 %r46)
    call void @putch(i32 10)
    %r52 = add i32 %r54,1
    br label %L2
L4:
    ret i32 0
}
