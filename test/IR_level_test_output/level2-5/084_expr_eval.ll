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
declare void @starttime()
declare void @stoptime()
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
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,32
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L1, label %L4
L1:
    %r15 = add i32 0,1
    ret i32 %r15
L2:
    %r16 = add i32 0,0
    ret i32 %r16
L4:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,10
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L1, label %L2
}
define i32 @panic()
{
L0:
    %r0 = add i32 0,112
    call void @putch(i32 %r0)
    %r1 = add i32 0,97
    call void @putch(i32 %r1)
    %r2 = add i32 0,110
    call void @putch(i32 %r2)
    %r3 = add i32 0,105
    call void @putch(i32 %r3)
    %r4 = add i32 0,99
    call void @putch(i32 %r4)
    %r5 = add i32 0,33
    call void @putch(i32 %r5)
    %r6 = add i32 0,10
    call void @putch(i32 %r6)
    %r7 = add i32 0,1
    %r8 = sub i32 0,%r7
    ret i32 %r8
}
define i32 @get_op_prec(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,43
    %r4 = icmp eq i32 %r2,%r3
    br i1 %r4, label %L1, label %L3
L1:
    %r15 = add i32 0,10
    ret i32 %r15
L2:
    %r16 = load i32, ptr %r1
    %r17 = add i32 0,42
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L5, label %L9
L3:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,45
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L1, label %L2
L5:
    %r37 = add i32 0,20
    ret i32 %r37
L6:
    %r38 = add i32 0,0
    ret i32 %r38
L7:
    %r29 = load i32, ptr %r1
    %r30 = add i32 0,37
    %r31 = icmp eq i32 %r29,%r30
    br i1 %r31, label %L5, label %L6
L9:
    %r21 = load i32, ptr %r1
    %r22 = add i32 0,47
    %r23 = icmp eq i32 %r21,%r22
    br i1 %r23, label %L5, label %L7
}
define i32 @is_num(i32 %r0)
{
L0:
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r2 = load i32, ptr %r1
    %r3 = add i32 0,48
    %r4 = icmp sge i32 %r2,%r3
    br i1 %r4, label %L4, label %L2
L1:
    %r15 = add i32 0,1
    ret i32 %r15
L2:
    %r16 = add i32 0,0
    ret i32 %r16
L4:
    %r7 = load i32, ptr %r1
    %r8 = add i32 0,57
    %r9 = icmp sle i32 %r7,%r8
    br i1 %r9, label %L1, label %L2
}
define i32 @next_token()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @last_char
    %r1 = call i32 @is_space(i32 %r0)
    %r2 = icmp ne i32 %r1,0
    br i1 %r2, label %L2, label %L3
L2:
    %r3 = call i32 @next_char()
    br label %L1
L3:
    %r4 = load i32, ptr @last_char
    %r5 = call i32 @is_num(i32 %r4)
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L4, label %L5
L4:
    %r7 = load i32, ptr @last_char
    %r8 = add i32 0,48
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr @num
    br label %L7
L5:
    %r21 = load i32, ptr @last_char
    store i32 %r21, ptr @other
    %r22 = call i32 @next_char()
    %r23 = load i32, ptr @TOKEN_OTHER
    store i32 %r23, ptr @cur_token
    br label %L6
L6:
    %r24 = load i32, ptr @cur_token
    ret i32 %r24
L7:
    %r10 = call i32 @next_char()
    %r11 = call i32 @is_num(i32 %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L8, label %L9
L8:
    %r13 = load i32, ptr @num
    %r14 = add i32 0,10
    %r15 = mul i32 %r13,%r14
    %r16 = load i32, ptr @last_char
    %r17 = add i32 %r15,%r16
    %r18 = add i32 0,48
    %r19 = sub i32 %r17,%r18
    store i32 %r19, ptr @num
    br label %L7
L9:
    %r20 = load i32, ptr @TOKEN_NUM
    store i32 %r20, ptr @cur_token
    br label %L6
}
define void @stack_push(ptr %r0,i32 %r1)
{
L0:
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    %r3 = add i32 0,0
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    %r6 = add i32 0,1
    %r7 = add i32 %r5,%r6
    %r8 = add i32 0,0
    %r9 = getelementptr i32, ptr %r0, i32 %r8
    store i32 %r7, ptr %r9
    %r10 = load i32, ptr %r2
    %r11 = add i32 0,0
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = getelementptr i32, ptr %r0, i32 %r13
    store i32 %r10, ptr %r14
    ret void
}
define i32 @stack_pop(ptr %r0)
{
L0:
    %r1 = alloca i32
    %r2 = add i32 0,0
    %r3 = getelementptr i32, ptr %r0, i32 %r2
    %r4 = load i32, ptr %r3
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    store i32 %r6, ptr %r1
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = add i32 0,1
    %r11 = sub i32 %r9,%r10
    %r12 = add i32 0,0
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    store i32 %r11, ptr %r13
    %r14 = load i32, ptr %r1
    ret i32 %r14
}
define i32 @stack_peek(ptr %r0)
{
L0:
    %r1 = add i32 0,0
    %r2 = getelementptr i32, ptr %r0, i32 %r1
    %r3 = load i32, ptr %r2
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    ret i32 %r5
}
define i32 @stack_size(ptr %r0)
{
L0:
    %r1 = add i32 0,0
    %r2 = getelementptr i32, ptr %r0, i32 %r1
    %r3 = load i32, ptr %r2
    ret i32 %r3
}
define i32 @eval_op(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    %r3 = alloca i32
    store i32 %r0, ptr %r3
    %r4 = alloca i32
    store i32 %r1, ptr %r4
    %r5 = alloca i32
    store i32 %r2, ptr %r5
    %r6 = load i32, ptr %r3
    %r7 = add i32 0,43
    %r8 = icmp eq i32 %r6,%r7
    br i1 %r8, label %L1, label %L2
L1:
    %r11 = load i32, ptr %r4
    %r12 = load i32, ptr %r5
    %r13 = add i32 %r11,%r12
    ret i32 %r13
L2:
    %r14 = load i32, ptr %r3
    %r15 = add i32 0,45
    %r16 = icmp eq i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r5
    %r21 = sub i32 %r19,%r20
    ret i32 %r21
L4:
    %r22 = load i32, ptr %r3
    %r23 = add i32 0,42
    %r24 = icmp eq i32 %r22,%r23
    br i1 %r24, label %L5, label %L6
L5:
    %r27 = load i32, ptr %r4
    %r28 = load i32, ptr %r5
    %r29 = mul i32 %r27,%r28
    ret i32 %r29
L6:
    %r30 = load i32, ptr %r3
    %r31 = add i32 0,47
    %r32 = icmp eq i32 %r30,%r31
    br i1 %r32, label %L7, label %L8
L7:
    %r35 = load i32, ptr %r4
    %r36 = load i32, ptr %r5
    %r37 = sdiv i32 %r35,%r36
    ret i32 %r37
L8:
    %r38 = load i32, ptr %r3
    %r39 = add i32 0,37
    %r40 = icmp eq i32 %r38,%r39
    br i1 %r40, label %L9, label %L10
L9:
    %r43 = load i32, ptr %r4
    %r44 = load i32, ptr %r5
    %r45 = srem i32 %r43,%r44
    ret i32 %r45
L10:
    %r46 = add i32 0,0
    ret i32 %r46
}
define i32 @eval()
{
L0:
    %r73 = alloca i32
    %r70 = alloca i32
    %r67 = alloca i32
    %r44 = alloca i32
    %r41 = alloca i32
    %r38 = alloca i32
    %r16 = alloca i32
    %r1 = alloca [256 x i32]
    %r0 = alloca [256 x i32]
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 1024,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 1024,i1 0)
    %r2 = load i32, ptr @cur_token
    %r3 = load i32, ptr @TOKEN_NUM
    %r4 = icmp ne i32 %r2,%r3
    br i1 %r4, label %L1, label %L2
L1:
    %r7 = call i32 @panic()
    ret i32 %r7
L2:
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r9 = load i32, ptr @num
    call void @stack_push(ptr %r8,i32 %r9)
    %r10 = call i32 @next_token()
    br label %L3
L3:
    %r11 = load i32, ptr @cur_token
    %r12 = load i32, ptr @TOKEN_OTHER
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L4, label %L5
L4:
    %r17 = load i32, ptr @other
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = call i32 @get_op_prec(i32 %r18)
    %r20 = icmp eq i32 %r19,0
    br i1 %r20, label %L6, label %L7
L5:
    %r63 = call i32 @next_token()
    br label %L16
L6:
    br label %L5
L7:
    %r23 = call i32 @next_token()
    br label %L9
L9:
    %r24 = getelementptr i32, ptr %r1, i32 0
    %r25 = call i32 @stack_size(ptr %r24)
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L12, label %L11
L10:
    %r39 = getelementptr i32, ptr %r1, i32 0
    %r40 = call i32 @stack_pop(ptr %r39)
    store i32 %r40, ptr %r38
    %r42 = getelementptr i32, ptr %r0, i32 0
    %r43 = call i32 @stack_pop(ptr %r42)
    store i32 %r43, ptr %r41
    %r45 = getelementptr i32, ptr %r0, i32 0
    %r46 = call i32 @stack_pop(ptr %r45)
    store i32 %r46, ptr %r44
    %r47 = getelementptr i32, ptr %r0, i32 0
    %r48 = load i32, ptr %r38
    %r49 = load i32, ptr %r44
    %r50 = load i32, ptr %r41
    %r51 = call i32 @eval_op(i32 %r48,i32 %r49,i32 %r50)
    call void @stack_push(ptr %r47,i32 %r51)
    br label %L9
L11:
    %r52 = getelementptr i32, ptr %r1, i32 0
    %r53 = load i32, ptr %r16
    call void @stack_push(ptr %r52,i32 %r53)
    %r54 = load i32, ptr @cur_token
    %r55 = load i32, ptr @TOKEN_NUM
    %r56 = icmp ne i32 %r54,%r55
    br i1 %r56, label %L14, label %L15
L12:
    %r27 = getelementptr i32, ptr %r1, i32 0
    %r28 = call i32 @stack_peek(ptr %r27)
    %r29 = call i32 @get_op_prec(i32 %r28)
    %r30 = load i32, ptr %r16
    %r31 = call i32 @get_op_prec(i32 %r30)
    %r32 = icmp sge i32 %r29,%r31
    br i1 %r32, label %L10, label %L11
L14:
    %r59 = call i32 @panic()
    ret i32 %r59
L15:
    %r60 = getelementptr i32, ptr %r0, i32 0
    %r61 = load i32, ptr @num
    call void @stack_push(ptr %r60,i32 %r61)
    %r62 = call i32 @next_token()
    br label %L3
L16:
    %r64 = getelementptr i32, ptr %r1, i32 0
    %r65 = call i32 @stack_size(ptr %r64)
    %r66 = icmp ne i32 %r65,0
    br i1 %r66, label %L17, label %L18
L17:
    %r68 = getelementptr i32, ptr %r1, i32 0
    %r69 = call i32 @stack_pop(ptr %r68)
    store i32 %r69, ptr %r67
    %r71 = getelementptr i32, ptr %r0, i32 0
    %r72 = call i32 @stack_pop(ptr %r71)
    store i32 %r72, ptr %r70
    %r74 = getelementptr i32, ptr %r0, i32 0
    %r75 = call i32 @stack_pop(ptr %r74)
    store i32 %r75, ptr %r73
    %r76 = getelementptr i32, ptr %r0, i32 0
    %r77 = load i32, ptr %r67
    %r78 = load i32, ptr %r73
    %r79 = load i32, ptr %r70
    %r80 = call i32 @eval_op(i32 %r77,i32 %r78,i32 %r79)
    call void @stack_push(ptr %r76,i32 %r80)
    br label %L16
L18:
    %r81 = getelementptr i32, ptr %r0, i32 0
    %r82 = call i32 @stack_peek(ptr %r81)
    ret i32 %r82
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r2 = call i32 @getch()
    %r3 = call i32 @next_token()
    br label %L1
L1:
    %r4 = load i32, ptr %r0
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L2, label %L3
L2:
    %r6 = call i32 @eval()
    call void @putint(i32 %r6)
    %r7 = add i32 0,10
    call void @putch(i32 %r7)
    %r8 = load i32, ptr %r0
    %r9 = add i32 0,1
    %r10 = sub i32 %r8,%r9
    store i32 %r10, ptr %r0
    br label %L1
L3:
    %r11 = add i32 0,0
    ret i32 %r11
}
