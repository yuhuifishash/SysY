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
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 zeroinitializer
@other = global i32 zeroinitializer
@cur_token = global i32 zeroinitializer
define i32 @next_char()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @getch()
    store i32 %r0, ptr @last_char
    %r1 = load i32, ptr @last_char
    ret i32 %r1
}
define i32 @is_space(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 32,0
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L2, label %L5
L2:
    %r8 = add i32 1,0
    ret i32 %r8
L3:
    %r9 = add i32 0,0
    ret i32 %r9
L5:
    %r5 = load i32, ptr %r1
    %r6 = add i32 10,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
}
define i32 @next_token()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r0 = load i32, ptr @last_char
    %r1 = call i32 @is_space(i32 %r0)
    %r2 = icmp ne i32 %r1,0
    br i1 %r2, label %L3, label %L4
L3:
    %r3 = call i32 @next_char()
    br label %L2
L4:
    %r4 = load i32, ptr @last_char
    %r5 = call i32 @is_num(i32 %r4)
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L5, label %L6
L5:
    %r7 = load i32, ptr @last_char
    %r8 = add i32 48,0
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr @num
    br label %L8
L6:
    %r21 = load i32, ptr @last_char
    store i32 %r21, ptr @other
    %r22 = call i32 @next_char()
    %r23 = load i32, ptr @TOKEN_OTHER
    store i32 %r23, ptr @cur_token
    br label %L7
L7:
    %r24 = load i32, ptr @cur_token
    ret i32 %r24
L8:
    %r10 = call i32 @next_char()
    %r11 = call i32 @is_num(i32 %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L9, label %L10
L9:
    %r13 = load i32, ptr @num
    %r14 = add i32 10,0
    %r15 = mul i32 %r13,%r14
    %r16 = load i32, ptr @last_char
    %r17 = add i32 %r15,%r16
    %r18 = add i32 48,0
    %r19 = sub i32 %r17,%r18
    store i32 %r19, ptr @num
    br label %L8
L10:
    %r20 = load i32, ptr @TOKEN_NUM
    store i32 %r20, ptr @cur_token
    br label %L7
}
define i32 @get_op_prec(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 43,0
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L2, label %L4
L2:
    %r8 = add i32 10,0
    ret i32 %r8
L3:
    %r9 = load i32, ptr %r1
    %r10 = add i32 42,0
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L5, label %L8
L4:
    %r5 = load i32, ptr %r1
    %r6 = add i32 45,0
    %r7 = icmp eq i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L5:
    %r18 = add i32 20,0
    ret i32 %r18
L6:
    %r19 = add i32 0,0
    ret i32 %r19
L7:
    %r15 = load i32, ptr %r1
    %r16 = add i32 37,0
    %r17 = icmp eq i32 %r15,%r16
    br i1 %r17, label %L5, label %L6
L8:
    %r12 = load i32, ptr %r1
    %r13 = add i32 47,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L5, label %L7
}
define i32 @panic()
{
L0:
    br label %L1
L1:
    %r0 = add i32 112,0
    call void @putch(i32 %r0)
    %r1 = add i32 97,0
    call void @putch(i32 %r1)
    %r2 = add i32 110,0
    call void @putch(i32 %r2)
    %r3 = add i32 105,0
    call void @putch(i32 %r3)
    %r4 = add i32 99,0
    call void @putch(i32 %r4)
    %r5 = add i32 33,0
    call void @putch(i32 %r5)
    %r6 = add i32 10,0
    call void @putch(i32 %r6)
    %r7 = add i32 1,0
    %r8 = sub i32 0,%r7
    ret i32 %r8
}
define i32 @is_num(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:
    %r2 = load i32, ptr %r1
    %r3 = add i32 48,0
    %r4 = icmp sge i32 %r2,%r3
    br i1 %r4, label %L5, label %L3
L2:
    %r8 = add i32 1,0
    ret i32 %r8
L3:
    %r9 = add i32 0,0
    ret i32 %r9
L5:
    %r5 = load i32, ptr %r1
    %r6 = add i32 57,0
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
}
define void @stack_push(ptr %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:
    %r3 = add i32 0,0
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = add i32 0,0
    %r6 = getelementptr i32, ptr %r0, i32 %r5
    %r7 = load i32, ptr %r6
    %r8 = add i32 1,0
    %r9 = add i32 %r7,%r8
    store i32 %r9, ptr %r4
    %r10 = add i32 0,0
    %r11 = getelementptr i32, ptr %r0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = load i32, ptr %r2
    store i32 %r14, ptr %r13
    ret void
}
define i32 @stack_size(ptr %r0)
{
L0:
    br label %L1
L1:
    %r1 = add i32 0,0
    %r2 = getelementptr i32, ptr %r0, i32 %r1
    %r3 = load i32, ptr %r2
    ret i32 %r3
}
define i32 @stack_pop(ptr %r0)
{
L0:
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    %r3 = getelementptr i32, ptr %r0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    store i32 %r6, ptr %r1
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = add i32 0,0
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 1,0
    %r13 = sub i32 %r11,%r12
    store i32 %r13, ptr %r8
    %r14 = load i32, ptr %r1
    ret i32 %r14
}
define i32 @stack_peek(ptr %r0)
{
L0:
    br label %L1
L1:
    %r1 = add i32 0,0
    %r2 = getelementptr i32, ptr %r0, i32 %r1
    %r3 = load i32, ptr %r2
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    ret i32 %r5
}
define i32 @eval_op(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    store i32 %r1, ptr %r4
    store i32 %r2, ptr %r5
    br label %L1
L1:
    %r6 = load i32, ptr %r3
    %r7 = add i32 43,0
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r4
    %r10 = load i32, ptr %r5
    %r11 = add i32 %r9,%r10
    ret i32 %r11
L3:
    %r12 = load i32, ptr %r3
    %r13 = add i32 45,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L4, label %L5
L4:
    %r15 = load i32, ptr %r4
    %r16 = load i32, ptr %r5
    %r17 = sub i32 %r15,%r16
    ret i32 %r17
L5:
    %r18 = load i32, ptr %r3
    %r19 = add i32 42,0
    %r20 = icmp eq i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:
    %r21 = load i32, ptr %r4
    %r22 = load i32, ptr %r5
    %r23 = mul i32 %r21,%r22
    ret i32 %r23
L7:
    %r24 = load i32, ptr %r3
    %r25 = add i32 47,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L8, label %L9
L8:
    %r27 = load i32, ptr %r4
    %r28 = load i32, ptr %r5
    %r29 = sdiv i32 %r27,%r28
    ret i32 %r29
L9:
    %r30 = load i32, ptr %r3
    %r31 = add i32 37,0
    %r32 = icmp eq i32 %r30,%r31
    br i1 %r32, label %L10, label %L11
L10:
    %r33 = load i32, ptr %r4
    %r34 = load i32, ptr %r5
    %r35 = srem i32 %r33,%r34
    ret i32 %r35
L11:
    %r36 = add i32 0,0
    ret i32 %r36
}
define i32 @eval()
{
L0:
    %r60 = alloca i32
    %r57 = alloca i32
    %r54 = alloca i32
    %r33 = alloca i32
    %r30 = alloca i32
    %r27 = alloca i32
    %r12 = alloca i32
    %r1 = alloca [256 x i32]
    %r0 = alloca [256 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 1024,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 1024,i1 0)
    %r2 = load i32, ptr @cur_token
    %r3 = load i32, ptr @TOKEN_NUM
    %r4 = icmp ne i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r5 = call i32 @panic()
    ret i32 %r5
L3:
    %r6 = getelementptr [256 x i32], ptr %r0, i32 0
    %r7 = load i32, ptr @num
    call void @stack_push(ptr %r6,i32 %r7)
    %r8 = call i32 @next_token()
    br label %L4
L4:
    %r9 = load i32, ptr @cur_token
    %r10 = load i32, ptr @TOKEN_OTHER
    %r11 = icmp eq i32 %r9,%r10
    br i1 %r11, label %L5, label %L6
L5:
    %r13 = load i32, ptr @other
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r12
    %r15 = call i32 @get_op_prec(i32 %r14)
    %r16 = icmp eq i32 %r15,0
    br i1 %r16, label %L7, label %L8
L6:
    %r50 = call i32 @next_token()
    br label %L16
L7:
    br label %L6
L8:
    %r17 = call i32 @next_token()
    br label %L10
L10:
    %r18 = getelementptr [256 x i32], ptr %r1, i32 0
    %r19 = call i32 @stack_size(ptr %r18)
    %r20 = icmp ne i32 %r19,0
    br i1 %r20, label %L13, label %L12
L11:
    %r28 = getelementptr [256 x i32], ptr %r1, i32 0
    %r29 = call i32 @stack_pop(ptr %r28)
    store i32 %r29, ptr %r27
    %r31 = getelementptr [256 x i32], ptr %r0, i32 0
    %r32 = call i32 @stack_pop(ptr %r31)
    store i32 %r32, ptr %r30
    %r34 = getelementptr [256 x i32], ptr %r0, i32 0
    %r35 = call i32 @stack_pop(ptr %r34)
    store i32 %r35, ptr %r33
    %r36 = getelementptr [256 x i32], ptr %r0, i32 0
    %r37 = load i32, ptr %r27
    %r38 = load i32, ptr %r33
    %r39 = load i32, ptr %r30
    %r40 = call i32 @eval_op(i32 %r37,i32 %r38,i32 %r39)
    call void @stack_push(ptr %r36,i32 %r40)
    br label %L10
L12:
    %r41 = getelementptr [256 x i32], ptr %r1, i32 0
    %r42 = load i32, ptr %r12
    call void @stack_push(ptr %r41,i32 %r42)
    %r43 = load i32, ptr @cur_token
    %r44 = load i32, ptr @TOKEN_NUM
    %r45 = icmp ne i32 %r43,%r44
    br i1 %r45, label %L14, label %L15
L13:
    %r21 = getelementptr [256 x i32], ptr %r1, i32 0
    %r22 = call i32 @stack_peek(ptr %r21)
    %r23 = call i32 @get_op_prec(i32 %r22)
    %r24 = load i32, ptr %r12
    %r25 = call i32 @get_op_prec(i32 %r24)
    %r26 = icmp sge i32 %r23,%r25
    br i1 %r26, label %L11, label %L12
L14:
    %r46 = call i32 @panic()
    ret i32 %r46
L15:
    %r47 = getelementptr [256 x i32], ptr %r0, i32 0
    %r48 = load i32, ptr @num
    call void @stack_push(ptr %r47,i32 %r48)
    %r49 = call i32 @next_token()
    br label %L4
L16:
    %r51 = getelementptr [256 x i32], ptr %r1, i32 0
    %r52 = call i32 @stack_size(ptr %r51)
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L17, label %L18
L17:
    %r55 = getelementptr [256 x i32], ptr %r1, i32 0
    %r56 = call i32 @stack_pop(ptr %r55)
    store i32 %r56, ptr %r54
    %r58 = getelementptr [256 x i32], ptr %r0, i32 0
    %r59 = call i32 @stack_pop(ptr %r58)
    store i32 %r59, ptr %r57
    %r61 = getelementptr [256 x i32], ptr %r0, i32 0
    %r62 = call i32 @stack_pop(ptr %r61)
    store i32 %r62, ptr %r60
    %r63 = getelementptr [256 x i32], ptr %r0, i32 0
    %r64 = load i32, ptr %r54
    %r65 = load i32, ptr %r60
    %r66 = load i32, ptr %r57
    %r67 = call i32 @eval_op(i32 %r64,i32 %r65,i32 %r66)
    call void @stack_push(ptr %r63,i32 %r67)
    br label %L16
L18:
    %r68 = getelementptr [256 x i32], ptr %r0, i32 0
    %r69 = call i32 @stack_peek(ptr %r68)
    ret i32 %r69
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r2 = call i32 @getch()
    %r3 = call i32 @next_token()
    br label %L2
L2:
    %r4 = load i32, ptr %r0
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L3, label %L4
L3:
    %r6 = call i32 @eval()
    call void @putint(i32 %r6)
    %r7 = add i32 10,0
    call void @putch(i32 %r7)
    %r8 = load i32, ptr %r0
    %r9 = add i32 1,0
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r0
    br label %L2
L4:
    %r11 = add i32 0,0
    ret i32 %r11
}
