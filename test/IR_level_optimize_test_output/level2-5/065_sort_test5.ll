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
define i32 @swap(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = getelementptr i32, ptr %r0, i32 %r1
    %r9 = load i32, ptr %r8
    %r11 = getelementptr i32, ptr %r0, i32 %r2
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r8
    store i32 %r9, ptr %r11
    ret i32 0
}
define i32 @heap_sort(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r9 = sdiv i32 %r1,2
    %r11 = sub i32 %r9,1
    %r15 = icmp sgt i32 %r11,-1
    br i1 %r15, label %L13, label %L5
L3:
    %r69 = phi i32 [%r27,%L4],[%r11,%L13]
    %r24 = call i32 @heap_ajust(ptr %r21,i32 %r69,i32 %r20)
    %r27 = sub i32 %r69,1
    br label %L4
L4:
    %r31 = icmp sgt i32 %r27,-1
    br i1 %r31, label %L3, label %L5
L5:
    %r36 = sub i32 %r1,1
    %r39 = icmp sgt i32 %r36,0
    br i1 %r39, label %L14, label %L9
L7:
    %r71 = phi i32 [%r36,%L14],[%r51,%L8]
    br label %L10
L8:
    %r61 = icmp sgt i32 %r51,0
    br i1 %r61, label %L7, label %L9
L9:
    ret i32 0
L10:
    br label %L12
L11:
    %r51 = sub i32 %r71,1
    %r55 = call i32 @heap_ajust(ptr %r45,i32 0,i32 %r51)
    br label %L8
L12:
    %r74 = load i32, ptr %r73
    %r75 = getelementptr i32, ptr %r45, i32 %r71
    %r76 = load i32, ptr %r75
    store i32 %r76, ptr %r73
    store i32 %r74, ptr %r75
    br label %L11
L13:
    %r20 = sub i32 %r1,1
    %r21 = getelementptr i32, ptr %r0
    br label %L3
L14:
    %r45 = getelementptr i32, ptr %r0
    %r73 = getelementptr i32, ptr %r45, i32 0
    br label %L7
}
define i32 @heap_ajust(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r12 = mul i32 %r1,2
    %r14 = add i32 %r12,1
    %r18 = add i32 %r2,1
    %r19 = icmp slt i32 %r14,%r18
    br i1 %r19, label %L16, label %L5
L3:
    %r75 = phi i32 [%r72,%L4],[%r1,%L16]
    %r73 = phi i32 [%r63,%L4],[%r14,%L16]
    %r24 = icmp slt i32 %r73,%r2
    br i1 %r24, label %L8, label %L7
L4:
    %r67 = add i32 %r2,1
    %r68 = icmp slt i32 %r63,%r67
    br i1 %r68, label %L3, label %L5
L5:
    ret i32 0
L6:
    %r43 = add i32 %r73,1
    br label %L7
L7:
    %r72 = phi i32 [%r73,%L3],[%r73,%L8],[%r43,%L6]
    %r45 = getelementptr i32, ptr %r0, i32 %r75
    %r46 = load i32, ptr %r45
    %r48 = getelementptr i32, ptr %r0, i32 %r72
    %r49 = load i32, ptr %r48
    %r50 = icmp sgt i32 %r46,%r49
    br i1 %r50, label %L10, label %L11
L8:
    %r28 = getelementptr i32, ptr %r0, i32 %r73
    %r29 = load i32, ptr %r28
    %r32 = add i32 %r73,1
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = icmp slt i32 %r29,%r34
    br i1 %r35, label %L6, label %L7
L10:
    ret i32 0
L11:
    %r54 = getelementptr i32, ptr %r0
    br label %L13
L12:
    br label %L4
L13:
    br label %L15
L14:
    %r61 = mul i32 %r72,2
    %r63 = add i32 %r61,1
    br label %L12
L15:
    %r77 = getelementptr i32, ptr %r54, i32 %r75
    %r78 = load i32, ptr %r77
    %r79 = getelementptr i32, ptr %r54, i32 %r72
    %r80 = load i32, ptr %r79
    store i32 %r80, ptr %r77
    store i32 %r78, ptr %r79
    br label %L14
L16:
    br label %L3
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
    %r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
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
