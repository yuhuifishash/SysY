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
    %r10 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r10
    %r12 = icmp sgt i32 %r1,%r11
    br i1 %r12, label %L6, label %L5
L3:
    %r68 = phi i32 [%r25,%L8],[0,%L14]
    %r25 = add i32 %r68,1
    br label %L4
L4:
    %r28 = getelementptr i32, ptr %r0, i32 %r25
    %r29 = load i32, ptr %r28
    %r30 = icmp sgt i32 %r1,%r29
    br i1 %r30, label %L8, label %L5
L5:
    %r69 = phi i32 [0,%L1],[0,%L6],[%r25,%L4],[%r25,%L8]
    %r41 = load i32, ptr @N
    %r44 = icmp sgt i32 %r41,%r69
    br i1 %r44, label %L15, label %L13
L6:
    %r16 = load i32, ptr @N
    %r17 = icmp slt i32 0,%r16
    br i1 %r17, label %L14, label %L5
L8:
    %r34 = load i32, ptr @N
    %r35 = icmp slt i32 %r25,%r34
    br i1 %r35, label %L3, label %L5
L11:
    %r66 = phi i32 [%r49,%L12],[%r41,%L15]
    %r49 = sub i32 %r66,1
    %r50 = getelementptr i32, ptr %r0, i32 %r49
    %r51 = load i32, ptr %r50
    %r53 = getelementptr i32, ptr %r0, i32 %r66
    store i32 %r51, ptr %r53
    store i32 %r1, ptr %r56
    br label %L12
L12:
    %r62 = icmp sgt i32 %r49,%r69
    br i1 %r62, label %L11, label %L13
L13:
    ret i32 0
L14:
    br label %L3
L15:
    %r56 = getelementptr i32, ptr %r0, i32 %r69
    br label %L11
}
define i32 @main()
{
L0:
    %r1 = alloca [11 x i32]
    br label %L1
L1:
    store i32 10, ptr @N
    %r4 = getelementptr [11 x i32], ptr %r1, i32 0, i32 0
    store i32 1, ptr %r4
    %r7 = getelementptr [11 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [11 x i32], ptr %r1, i32 0, i32 2
    store i32 4, ptr %r10
    %r13 = getelementptr [11 x i32], ptr %r1, i32 0, i32 3
    store i32 7, ptr %r13
    %r16 = getelementptr [11 x i32], ptr %r1, i32 0, i32 4
    store i32 8, ptr %r16
    %r19 = getelementptr [11 x i32], ptr %r1, i32 0, i32 5
    store i32 11, ptr %r19
    %r22 = getelementptr [11 x i32], ptr %r1, i32 0, i32 6
    store i32 13, ptr %r22
    %r25 = getelementptr [11 x i32], ptr %r1, i32 0, i32 7
    store i32 18, ptr %r25
    %r28 = getelementptr [11 x i32], ptr %r1, i32 0, i32 8
    store i32 56, ptr %r28
    %r31 = getelementptr [11 x i32], ptr %r1, i32 0, i32 9
    store i32 78, ptr %r31
    %r37 = call i32 @getint()
    %r38 = getelementptr i32, ptr %r1, i32 0
    %r40 = call i32 @insert(ptr %r38,i32 %r37)
    %r42 = load i32, ptr @N
    %r43 = icmp slt i32 0,%r42
    br i1 %r43, label %L6, label %L5
L3:
    %r61 = phi i32 [0,%L6],[%r54,%L4]
    %r47 = getelementptr [11 x i32], ptr %r1, i32 0, i32 %r61
    %r48 = load i32, ptr %r47
    call void @putint(i32 %r48)
    call void @putch(i32 10)
    %r54 = add i32 %r61,1
    br label %L4
L4:
    %r56 = load i32, ptr @N
    %r57 = icmp slt i32 %r54,%r56
    br i1 %r57, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
