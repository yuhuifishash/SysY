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
@i = global [1x i32] zeroinitializer
@k = global [1x i32] zeroinitializer
define void @inc_impl(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r7 = getelementptr i32, ptr %r0, i32 0
    %r10 = load i32, ptr %r7
    %r12 = add i32 %r10,1
    store i32 %r12, ptr %r7
    br label %L4
L3:  ;
    %r14 = getelementptr i32, ptr %r0, i32 0
    %r17 = load i32, ptr %r14
    %r19 = mul i32 %r17,2
    store i32 %r19, ptr %r14
    %r20 = getelementptr i32, ptr %r0
    %r23 = sub i32 %r1,1
    call void @inc_impl(ptr %r20,i32 %r23)
    br label %L4
L4:  ;
    ret void
}
define void @inc(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = getelementptr i32, ptr %r0
    %r3 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r4 = load i32, ptr %r3
    call void @inc_impl(ptr %r1,i32 %r4)
    ret void
}
define void @add_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r2,0
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r8
    %r13 = getelementptr i32, ptr %r1, i32 0
    %r14 = load i32, ptr %r13
    %r15 = add i32 %r11,%r14
    store i32 %r15, ptr %r8
    br label %L4
L3:  ;
    %r17 = getelementptr i32, ptr %r0, i32 0
    %r20 = load i32, ptr %r17
    %r22 = mul i32 %r20,2
    store i32 %r22, ptr %r17
    %r23 = getelementptr i32, ptr %r0
    %r24 = getelementptr i32, ptr %r1
    %r27 = sub i32 %r2,1
    call void @add_impl(ptr %r23,ptr %r24,i32 %r27)
    br label %L4
L4:  ;
    ret void
}
define void @add(ptr %r0,ptr %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r6 = load i32, ptr %r5
    call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define void @sub_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r2,0
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r8
    %r13 = getelementptr i32, ptr %r1, i32 0
    %r14 = load i32, ptr %r13
    %r15 = sub i32 %r11,%r14
    store i32 %r15, ptr %r8
    br label %L4
L3:  ;
    %r17 = getelementptr i32, ptr %r0, i32 0
    %r20 = load i32, ptr %r17
    %r22 = mul i32 %r20,2
    store i32 %r22, ptr %r17
    %r23 = getelementptr i32, ptr %r0
    %r24 = getelementptr i32, ptr %r1
    %r27 = sub i32 %r2,1
    call void @sub_impl(ptr %r23,ptr %r24,i32 %r27)
    br label %L4
L4:  ;
    ret void
}
define void @sub(ptr %r0,ptr %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r6 = load i32, ptr %r5
    call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [1 x [2 x i32]]
    %r1 = alloca [1 x i32]
    %r0 = alloca [1 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 8,i1 0)
    %r5 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 -1, ptr %r5
    %r7 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r8 = call i32 @getint()
    store i32 %r8, ptr %r7
    %r10 = getelementptr [1 x i32], ptr %r1, i32 0, i32 0
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r13 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0
    %r14 = call i32 @getarray(ptr %r13)
    br label %L2
L2:  ;
    %r17 = load i32, ptr %r10
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L3, label %L4
L3:  ;
    %r20 = getelementptr [1 x i32], ptr %r0, i32 0, i32 0
    %r24 = load i32, ptr %r5
    store i32 %r24, ptr %r20
    br label %L5
L4:  ;
    call void @putch(i32 10)
    ret i32 0
L5:  ;
    %r27 = load i32, ptr %r20
    %r29 = icmp slt i32 %r27,5
    br i1 %r29, label %L6, label %L7
L6:  ;
    %r31 = getelementptr [1 x i32], ptr @i, i32 0, i32 0
    %r32 = load i32, ptr %r31
    call void @putint(i32 %r32)
    %r35 = load i32, ptr %r20
    call void @putint(i32 %r35)
    %r38 = load i32, ptr %r10
    call void @putint(i32 %r38)
    %r42 = load i32, ptr %r5
    call void @putint(i32 %r42)
    %r45 = getelementptr [1 x i32], ptr %r1, i32 0
    call void @add(ptr %r13,ptr %r45)
    %r46 = getelementptr [1 x i32], ptr %r0, i32 0
    call void @add(ptr %r46,ptr %r45)
    call void @sub(ptr %r13,ptr %r45)
    br label %L5
L7:  ;
    %r51 = getelementptr [1 x i32], ptr @i, i32 0
    call void @inc(ptr %r51)
    call void @add(ptr %r51,ptr %r13)
    %r56 = getelementptr [1 x i32], ptr @i, i32 0, i32 0
    %r57 = load i32, ptr %r56
    %r60 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 1
    %r61 = load i32, ptr %r60
    %r62 = icmp eq i32 %r57,%r61
    br i1 %r62, label %L8, label %L9
L8:  ;
    br label %L4
L9:  ;
    br label %L2
}
