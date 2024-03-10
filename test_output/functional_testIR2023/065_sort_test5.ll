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
L0:  ;
    br label %L1
L1:  ;
    %r8 = getelementptr i32, ptr %r0, i32 %r1
    %r9 = load i32, ptr %r8
    %r13 = getelementptr i32, ptr %r0, i32 %r2
    %r14 = load i32, ptr %r13
    store i32 %r14, ptr %r8
    store i32 %r9, ptr %r13
    ret i32 0
}
define i32 @heap_sort(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r9 = sdiv i32 %r1,2
    %r11 = sub i32 %r9,1
    br label %L2
L2:  ;
    %r52 = phi i32 [%r11,%L1],[%r25,%L3]
    %r15 = icmp sgt i32 %r52,-1
    br i1 %r15, label %L3, label %L4
L3:  ;latch
    %r18 = sub i32 %r1,1
    %r19 = getelementptr i32, ptr %r0
    %r22 = call i32 @heap_ajust(ptr %r19,i32 %r52,i32 %r18)
    %r25 = sub i32 %r52,1
    br label %L2
L4:  ;
    %r28 = sub i32 %r1,1
    br label %L5
L5:  ;
    %r53 = phi i32 [%r28,%L4],[%r41,%L6]
    %r31 = icmp sgt i32 %r53,0
    br i1 %r31, label %L6, label %L7
L6:  ;latch
    %r35 = getelementptr i32, ptr %r0
    %r38 = call i32 @swap(ptr %r35,i32 0,i32 %r53)
    %r41 = sub i32 %r53,1
    %r45 = call i32 @heap_ajust(ptr %r35,i32 0,i32 %r41)
    br label %L5
L7:  ;
    ret i32 0
}
define i32 @heap_ajust(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r12 = mul i32 %r1,2
    %r14 = add i32 %r12,1
    br label %L2
L2:  ;
    %r56 = phi i32 [%r1,%L1],[%r54,%L10]
    %r55 = phi i32 [%r14,%L1],[%r52,%L10]
    %r18 = add i32 %r2,1
    %r19 = icmp slt i32 %r55,%r18
    br i1 %r19, label %L3, label %L4
L3:  ;
    %r22 = icmp slt i32 %r55,%r2
    br i1 %r22, label %L7, label %L6
L4:  ;
    ret i32 0
L5:  ;
    br label %L6
L6:  ;
    %r54 = phi i32 [%r55,%L3],[%r55,%L7],[%r28,%L5]
    %r36 = getelementptr i32, ptr %r0, i32 %r56
    %r37 = load i32, ptr %r36
    %r39 = getelementptr i32, ptr %r0, i32 %r54
    %r40 = load i32, ptr %r39
    %r41 = icmp sgt i32 %r37,%r40
    br i1 %r41, label %L8, label %L9
L7:  ;
    %r24 = getelementptr i32, ptr %r0, i32 %r55
    %r25 = load i32, ptr %r24
    %r28 = add i32 %r55,1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp slt i32 %r25,%r30
    br i1 %r31, label %L5, label %L6
L8:  ;
    ret i32 0
L9:  ;
    %r43 = getelementptr i32, ptr %r0
    %r46 = call i32 @swap(ptr %r43,i32 %r56,i32 %r54)
    %r50 = mul i32 %r54,2
    %r52 = add i32 %r50,1
    br label %L10
L10:  ;latch
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r1 = alloca [10 x i32]
    br label %L1
L1:  ;
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
    %r35 = getelementptr [10 x i32], ptr %r1, i32 0
    %r36 = load i32, ptr @n
    %r37 = call i32 @heap_sort(ptr %r35,i32 %r36)
    br label %L2
L2:  ;
    %r53 = phi i32 [%r37,%L1],[%r51,%L3]
    %r39 = load i32, ptr @n
    %r40 = icmp slt i32 %r53,%r39
    br i1 %r40, label %L3, label %L4
L3:  ;latch
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r53
    %r45 = load i32, ptr %r44
    call void @putint(i32 %r45)
    call void @putch(i32 10)
    %r51 = add i32 %r53,1
    br label %L2
L4:  ;
    ret i32 0
}
