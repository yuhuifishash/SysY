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
define void @inc(ptr %r0)
{
L0:
    br label %L1
L1:
    %r1 = getelementptr i32, ptr %r0
    %r3 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r4 = load i32, ptr %r3
    call void @inc_impl(ptr %r1,i32 %r4)
    ret void
}
define void @inc_impl(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:
    %r9 = getelementptr i32, ptr %r0, i32 0
    %r10 = load i32, ptr %r9
    %r12 = add i32 %r10,1
    store i32 %r12, ptr %r9
    br label %L4
L3:
    %r16 = getelementptr i32, ptr %r0, i32 0
    %r17 = load i32, ptr %r16
    %r19 = mul i32 %r17,2
    store i32 %r19, ptr %r16
    %r22 = getelementptr i32, ptr %r0
    %r25 = sub i32 %r1,1
    call void @inc_impl(ptr %r22,i32 %r25)
    br label %L4
L4:
    ret void
}
define void @add_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r6 = icmp eq i32 %r2,0
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r10
    %r13 = getelementptr i32, ptr %r1, i32 0
    %r14 = load i32, ptr %r13
    %r15 = add i32 %r11,%r14
    store i32 %r15, ptr %r10
    br label %L4
L3:
    %r19 = getelementptr i32, ptr %r0, i32 0
    %r20 = load i32, ptr %r19
    %r22 = mul i32 %r20,2
    store i32 %r22, ptr %r19
    %r25 = getelementptr i32, ptr %r0
    %r26 = getelementptr i32, ptr %r1
    %r29 = sub i32 %r2,1
    call void @add_impl(ptr %r25,ptr %r26,i32 %r29)
    br label %L4
L4:
    ret void
}
define void @add(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r6 = load i32, ptr %r5
    call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define void @sub_impl(ptr %r0,ptr %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r6 = icmp eq i32 %r2,0
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r10
    %r13 = getelementptr i32, ptr %r1, i32 0
    %r14 = load i32, ptr %r13
    %r15 = sub i32 %r11,%r14
    store i32 %r15, ptr %r10
    br label %L4
L3:
    %r19 = getelementptr i32, ptr %r0, i32 0
    %r20 = load i32, ptr %r19
    %r22 = mul i32 %r20,2
    store i32 %r22, ptr %r19
    %r25 = getelementptr i32, ptr %r0
    %r26 = getelementptr i32, ptr %r1
    %r29 = sub i32 %r2,1
    call void @sub_impl(ptr %r25,ptr %r26,i32 %r29)
    br label %L4
L4:
    ret void
}
define void @sub(ptr %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r2 = getelementptr i32, ptr %r0
    %r3 = getelementptr i32, ptr %r1
    %r5 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r6 = load i32, ptr %r5
    call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
    ret void
}
define i32 @main()
{
L0:
    %r2 = alloca [1 x [2 x i32]]
    %r1 = alloca [1 x i32]
    %r0 = alloca [1 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r2,i8 0,i32 8,i1 0)
    %r5 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    store i32 -1, ptr %r5
    %r6 = call i32 @getint()
    %r8 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    store i32 %r6, ptr %r8
    %r9 = call i32 @getint()
    %r11 = getelementptr [1 x i32], ptr %r1, i32 0, i32 0
    store i32 %r9, ptr %r11
    %r13 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0
    %r14 = call i32 @getarray(ptr %r13)
    %r17 = load i32, ptr %r11
    %r18 = icmp ne i32 %r17,0
    br i1 %r18, label %L28, label %L5
L3:
    %r22 = load i32, ptr %r21
    store i32 %r22, ptr %r24
    %r27 = load i32, ptr %r24
    %r29 = icmp slt i32 %r27,5
    br i1 %r29, label %L29, label %L9
L4:
    %r75 = getelementptr [1 x i32], ptr %r1, i32 0, i32 0
    %r76 = load i32, ptr %r75
    %r77 = icmp ne i32 %r76,0
    br i1 %r77, label %L3, label %L5
L5:
    call void @putch(i32 10)
    ret i32 0
L7:
    %r34 = load i32, ptr %r33
    call void @putint(i32 %r34)
    %r37 = load i32, ptr %r36
    call void @putint(i32 %r37)
    %r40 = load i32, ptr %r39
    call void @putint(i32 %r40)
    %r44 = load i32, ptr %r43
    call void @putint(i32 %r44)
    br label %L13
L8:
    %r55 = load i32, ptr %r36
    %r57 = icmp slt i32 %r55,5
    br i1 %r57, label %L7, label %L9
L9:
    br label %L16
L10:
    br label %L5
L11:
    br label %L4
L13:
    br label %L15
L14:
    br label %L19
L15:
    %r83 = load i32, ptr %r82
    call void @add_impl(ptr %r80,ptr %r81,i32 %r83)
    br label %L14
L16:
    br label %L18
L17:
    br label %L22
L18:
    %r86 = load i32, ptr %r85
    call void @inc_impl(ptr %r84,i32 %r86)
    br label %L17
L19:
    br label %L21
L20:
    br label %L25
L21:
    %r90 = load i32, ptr %r82
    call void @add_impl(ptr %r87,ptr %r81,i32 %r90)
    br label %L20
L22:
    br label %L24
L23:
    %r66 = load i32, ptr %r65
    %r70 = load i32, ptr %r69
    %r71 = icmp eq i32 %r66,%r70
    br i1 %r71, label %L10, label %L11
L24:
    %r94 = load i32, ptr %r85
    call void @add_impl(ptr %r84,ptr %r92,i32 %r94)
    br label %L23
L25:
    br label %L27
L26:
    br label %L8
L27:
    %r98 = load i32, ptr %r82
    call void @sub_impl(ptr %r80,ptr %r81,i32 %r98)
    br label %L26
L28:
    %r21 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    %r24 = getelementptr [1 x i32], ptr %r0, i32 0, i32 0
    %r60 = getelementptr i32, ptr @i, i32 0
    %r63 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0
    %r84 = getelementptr i32, ptr %r60
    %r85 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r65 = getelementptr [1 x i32], ptr @i, i32 0, i32 0
    %r69 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 1
    %r92 = getelementptr i32, ptr %r63
    br label %L3
L29:
    %r33 = getelementptr [1 x i32], ptr @i, i32 0, i32 0
    %r36 = getelementptr [1 x i32], ptr %r0, i32 0, i32 0
    %r39 = getelementptr [1 x i32], ptr %r1, i32 0, i32 0
    %r43 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0, i32 0
    %r46 = getelementptr [1 x [2 x i32]], ptr %r2, i32 0, i32 0
    %r47 = getelementptr i32, ptr %r1, i32 0
    %r48 = getelementptr i32, ptr %r0, i32 0
    %r80 = getelementptr i32, ptr %r46
    %r81 = getelementptr i32, ptr %r47
    %r82 = getelementptr [1 x i32], ptr @k, i32 0, i32 0
    %r87 = getelementptr i32, ptr %r48
    br label %L7
}
