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
define i32 @concat(ptr %r0,ptr %r1,ptr %r2)
{
L0:
    br label %L1
L1:
    br label %L10
L3:
    %r51 = phi i32 [%r18,%L4],[0,%L10]
    %r12 = getelementptr i32, ptr %r0, i32 %r51
    %r13 = load i32, ptr %r12
    %r15 = getelementptr i32, ptr %r2, i32 %r51
    store i32 %r13, ptr %r15
    %r18 = add i32 %r51,1
    br label %L4
L4:
    %r21 = icmp slt i32 %r18,3
    br i1 %r21, label %L3, label %L5
L5:
    br label %L11
L7:
    %r53 = phi i32 [%r39,%L8],[%r18,%L11]
    %r49 = phi i32 [%r42,%L8],[0,%L11]
    %r33 = getelementptr i32, ptr %r1, i32 %r49
    %r34 = load i32, ptr %r33
    %r36 = getelementptr i32, ptr %r2, i32 %r53
    store i32 %r34, ptr %r36
    %r39 = add i32 %r53,1
    %r42 = add i32 %r49,1
    br label %L8
L8:
    %r45 = icmp slt i32 %r42,3
    br i1 %r45, label %L7, label %L9
L9:
    ret i32 0
L10:
    br label %L3
L11:
    br label %L7
}
define i32 @main()
{
L0:
    %r6 = alloca [6 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    %r2 = alloca [3 x i32]
    %r1 = alloca [3 x i32]
    %r0 = alloca [3 x i32]
    br label %L1
L1:
    br label %L10
L3:
    %r71 = phi i32 [0,%L10],[%r37,%L4]
    %r19 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %r71
    store i32 %r71, ptr %r19
    %r22 = getelementptr [3 x i32], ptr %r1, i32 0, i32 %r71
    store i32 %r71, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r2, i32 0, i32 %r71
    store i32 %r71, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r71
    store i32 %r71, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r71
    store i32 %r71, ptr %r31
    %r34 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r71
    store i32 %r71, ptr %r34
    %r37 = add i32 %r71,1
    br label %L4
L4:
    %r40 = icmp slt i32 %r37,3
    br i1 %r40, label %L3, label %L5
L5:
    %r43 = getelementptr i32, ptr %r0, i32 0
    %r44 = getelementptr i32, ptr %r3, i32 0
    %r45 = getelementptr i32, ptr %r6, i32 0
    %r46 = call i32 @concat(ptr %r43,ptr %r44,ptr %r45)
    %r51 = icmp slt i32 %r46,6
    br i1 %r51, label %L11, label %L9
L7:
    %r73 = phi i32 [%r60,%L8],[%r46,%L11]
    %r55 = getelementptr [6 x i32], ptr %r6, i32 0, i32 %r73
    %r56 = load i32, ptr %r55
    call void @putint(i32 %r56)
    %r60 = add i32 %r73,1
    br label %L8
L8:
    %r63 = icmp slt i32 %r60,6
    br i1 %r63, label %L7, label %L9
L9:
    call void @putch(i32 10)
    ret i32 0
L10:
    br label %L3
L11:
    br label %L7
}
