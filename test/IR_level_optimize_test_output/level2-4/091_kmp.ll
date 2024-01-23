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
    %r1 = alloca [4096 x i32]
    %r0 = alloca [4096 x i32]
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = call i32 @read_str(ptr %r2)
    %r4 = getelementptr i32, ptr %r1, i32 0
    %r5 = call i32 @read_str(ptr %r4)
    %r8 = call i32 @KMP(ptr %r2,ptr %r4)
    call void @putint(i32 %r8)
    call void @putch(i32 10)
    ret i32 0
}
define i32 @KMP(ptr %r0,ptr %r1)
{
L0:
    %r2 = alloca [4096 x i32]
    br label %L1
L1:
    %r3 = getelementptr i32, ptr %r0
    %r4 = getelementptr i32, ptr %r2, i32 0
    call void @get_next(ptr %r3,ptr %r4)
    %r10 = getelementptr i32, ptr %r1, i32 0
    %r11 = load i32, ptr %r10
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L13, label %L5
L3:
    %r61 = phi i32 [0,%L13],[%r60,%L4]
    %r57 = phi i32 [%r56,%L4],[0,%L13]
    %r14 = getelementptr i32, ptr %r0, i32 %r61
    %r15 = load i32, ptr %r14
    %r17 = getelementptr i32, ptr %r1, i32 %r57
    %r18 = load i32, ptr %r17
    %r19 = icmp eq i32 %r15,%r18
    br i1 %r19, label %L6, label %L7
L4:
    %r51 = getelementptr i32, ptr %r1, i32 %r56
    %r52 = load i32, ptr %r51
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L3, label %L5
L5:
    ret i32 -1
L6:
    %r24 = add i32 %r61,1
    %r27 = add i32 %r57,1
    %r29 = getelementptr i32, ptr %r0, i32 %r24
    %r30 = load i32, ptr %r29
    %r31 = icmp eq i32 %r30,0
    br i1 %r31, label %L9, label %L10
L7:
    %r36 = getelementptr [4096 x i32], ptr %r2, i32 0, i32 %r61
    %r37 = load i32, ptr %r36
    %r41 = icmp eq i32 %r37,-1
    br i1 %r41, label %L11, label %L12
L8:
    %r60 = phi i32 [%r24,%L10],[%r63,%L12]
    %r56 = phi i32 [%r27,%L10],[%r59,%L12]
    br label %L4
L9:
    ret i32 %r27
L10:
    br label %L8
L11:
    %r46 = add i32 %r37,1
    %r49 = add i32 %r57,1
    br label %L12
L12:
    %r63 = phi i32 [%r37,%L7],[%r46,%L11]
    %r59 = phi i32 [%r57,%L7],[%r49,%L11]
    br label %L8
L13:
    br label %L3
}
define void @get_next(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r5 = getelementptr i32, ptr %r1, i32 0
    store i32 -1, ptr %r5
    %r12 = getelementptr i32, ptr %r0, i32 0
    %r13 = load i32, ptr %r12
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L11, label %L5
L3:
    %r53 = phi i32 [0,%L11],[%r52,%L4]
    %r50 = phi i32 [%r49,%L4],[-1,%L11]
    %r18 = icmp eq i32 %r50,-1
    br i1 %r18, label %L6, label %L9
L4:
    %r46 = getelementptr i32, ptr %r0, i32 %r52
    %r47 = load i32, ptr %r46
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L3, label %L5
L5:
    ret void
L6:
    %r35 = add i32 %r50,1
    %r38 = add i32 %r53,1
    %r41 = getelementptr i32, ptr %r1, i32 %r38
    store i32 %r35, ptr %r41
    br label %L8
L7:
    %r43 = getelementptr i32, ptr %r1, i32 %r50
    %r44 = load i32, ptr %r43
    br label %L8
L8:
    %r52 = phi i32 [%r38,%L6],[%r53,%L7]
    %r49 = phi i32 [%r35,%L6],[%r44,%L7]
    br label %L4
L9:
    %r22 = getelementptr i32, ptr %r0, i32 %r53
    %r23 = load i32, ptr %r22
    %r25 = getelementptr i32, ptr %r0, i32 %r50
    %r26 = load i32, ptr %r25
    %r27 = icmp eq i32 %r23,%r26
    br i1 %r27, label %L6, label %L7
L11:
    br label %L3
}
define i32 @read_str(ptr %r0)
{
L0:
    br label %L1
L1:
    br label %L9
L3:
    %r24 = phi i32 [%r17,%L4],[0,%L9]
    %r5 = call i32 @getch()
    %r7 = getelementptr i32, ptr %r0, i32 %r24
    store i32 %r5, ptr %r7
    %r10 = load i32, ptr %r7
    %r12 = icmp eq i32 %r10,10
    br i1 %r12, label %L6, label %L7
L4:
    br label %L3
L5:
    %r22 = getelementptr i32, ptr %r0, i32 %r24
    store i32 0, ptr %r22
    ret i32 %r24
L6:
    br label %L5
L7:
    %r17 = add i32 %r24,1
    br label %L4
L9:
    br label %L3
}
