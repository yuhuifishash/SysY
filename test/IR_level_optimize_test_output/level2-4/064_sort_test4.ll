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
define i32 @select_sort(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r13 = sub i32 %r1,1
    %r14 = icmp slt i32 0,%r13
    br i1 %r14, label %L14, label %L5
L3:
    %r82 = phi i32 [%r64,%L4],[0,%L14]
    %r20 = add i32 %r82,1
    %r23 = icmp slt i32 %r20,%r1
    br i1 %r23, label %L15, label %L9
L4:
    %r69 = icmp slt i32 %r64,%r68
    br i1 %r69, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r80 = phi i32 [%r38,%L8],[%r20,%L15]
    %r76 = phi i32 [%r75,%L8],[%r82,%L15]
    %r27 = getelementptr i32, ptr %r0, i32 %r76
    %r28 = load i32, ptr %r27
    %r30 = getelementptr i32, ptr %r0, i32 %r80
    %r31 = load i32, ptr %r30
    %r32 = icmp sgt i32 %r28,%r31
    br i1 %r32, label %L10, label %L11
L8:
    %r41 = icmp slt i32 %r38,%r1
    br i1 %r41, label %L7, label %L9
L9:
    %r77 = phi i32 [%r82,%L3],[%r75,%L8]
    %r46 = icmp ne i32 %r77,%r82
    br i1 %r46, label %L12, label %L13
L10:
    br label %L11
L11:
    %r75 = phi i32 [%r76,%L7],[%r80,%L10]
    %r38 = add i32 %r80,1
    br label %L8
L12:
    %r52 = getelementptr i32, ptr %r0, i32 %r77
    %r53 = load i32, ptr %r52
    %r55 = getelementptr i32, ptr %r0, i32 %r82
    %r56 = load i32, ptr %r55
    store i32 %r56, ptr %r52
    store i32 %r53, ptr %r55
    br label %L13
L13:
    %r64 = add i32 %r82,1
    br label %L4
L14:
    %r68 = sub i32 %r1,1
    br label %L3
L15:
    br label %L7
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r31
    %r35 = getelementptr i32, ptr %r1, i32 0
    %r36 = load i32, ptr @n
    %r37 = call i32 @select_sort(ptr %r35,i32 %r36)
    %r40 = icmp slt i32 %r37,%r36
    br i1 %r40, label %L6, label %L5
L3:
    %r60 = phi i32 [%r37,%L6],[%r53,%L4]
    %r46 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r60
    %r47 = load i32, ptr %r46
    call void @putint(i32 %r47)
    call void @putch(i32 10)
    %r53 = add i32 %r60,1
    br label %L4
L4:
    %r55 = load i32, ptr @n
    %r56 = icmp slt i32 %r53,%r55
    br i1 %r56, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
