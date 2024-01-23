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
@maxN = global i32 1000
@space = global i32 32
@array = global [1000x i32] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r8 = icmp slt i32 0,%r1
    br i1 %r8, label %L6, label %L5
L3:
    %r33 = phi i32 [%r16,%L4],[0,%L6]
    %r11 = call i32 @getint()
    %r13 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r33
    store i32 %r11, ptr %r13
    %r16 = add i32 %r33,1
    br label %L4
L4:
    %r19 = icmp slt i32 %r16,%r1
    br i1 %r19, label %L3, label %L5
L5:
    %r27 = sub i32 %r1,1
    call void @findSmallest(i32 0,i32 %r27,i32 %r3,i32 %r1)
    ret i32 0
L6:
    br label %L3
}
define void @swap(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r0
    %r7 = load i32, ptr %r6
    %r9 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    %r10 = load i32, ptr %r9
    store i32 %r10, ptr %r6
    store i32 %r7, ptr %r9
    ret void
}
define i32 @findPivot(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    %r7 = load i32, ptr %r6
    %r14 = icmp slt i32 %r0,%r1
    br i1 %r14, label %L14, label %L5
L3:
    %r43 = phi i32 [%r0,%L14],[%r42,%L4]
    %r40 = phi i32 [%r0,%L14],[%r31,%L4]
    %r18 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r40
    %r19 = load i32, ptr %r18
    %r21 = icmp sle i32 %r19,%r7
    br i1 %r21, label %L6, label %L7
L4:
    %r34 = icmp slt i32 %r31,%r1
    br i1 %r34, label %L3, label %L5
L5:
    %r44 = phi i32 [%r0,%L1],[%r42,%L4]
    br label %L8
L6:
    br label %L11
L7:
    %r42 = phi i32 [%r43,%L3],[%r28,%L12]
    %r31 = add i32 %r40,1
    br label %L4
L8:
    br label %L10
L9:
    ret i32 %r44
L10:
    %r45 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    %r48 = load i32, ptr %r47
    store i32 %r48, ptr %r45
    store i32 %r46, ptr %r47
    br label %L9
L11:
    br label %L13
L12:
    %r28 = add i32 %r43,1
    br label %L7
L13:
    %r49 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r40
    %r50 = load i32, ptr %r49
    %r51 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r43
    %r52 = load i32, ptr %r51
    store i32 %r52, ptr %r49
    store i32 %r50, ptr %r51
    br label %L12
L14:
    br label %L3
}
define void @findSmallest(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r0,%r1
    br i1 %r10, label %L2, label %L3
L2:
    ret void
L3:
    %r16 = call i32 @findPivot(i32 %r0,i32 %r1)
    %r19 = icmp eq i32 %r2,%r16
    br i1 %r19, label %L5, label %L6
L4:
    ret void
L5:
    %r26 = icmp slt i32 0,%r16
    br i1 %r26, label %L15, label %L11
L6:
    %r43 = icmp slt i32 %r2,%r16
    br i1 %r43, label %L12, label %L13
L7:
    br label %L4
L9:
    %r59 = phi i32 [%r35,%L10],[0,%L15]
    %r30 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r59
    %r31 = load i32, ptr %r30
    call void @putint(i32 %r31)
    call void @putch(i32 32)
    %r35 = add i32 %r59,1
    br label %L10
L10:
    %r38 = icmp slt i32 %r35,%r16
    br i1 %r38, label %L9, label %L11
L11:
    br label %L7
L12:
    %r49 = sub i32 %r16,1
    call void @findSmallest(i32 %r0,i32 %r49,i32 %r2,i32 %r3)
    br label %L14
L13:
    %r54 = add i32 %r16,1
    call void @findSmallest(i32 %r54,i32 %r1,i32 %r2,i32 %r3)
    br label %L14
L14:
    br label %L7
L15:
    br label %L9
}
