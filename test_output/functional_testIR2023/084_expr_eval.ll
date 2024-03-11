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
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @getch()
    store i32 %r0, ptr @last_char
    %r1 = load i32, ptr @last_char
    ret i32 %r1
}
define i32 @is_num(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp sge i32 %r0,48
    br i1 %r4, label %L5, label %L3
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
L5:  ;
    %r7 = icmp sle i32 %r0,57
    br i1 %r7, label %L2, label %L3
}
define i32 @is_space(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp eq i32 %r0,32
    br i1 %r4, label %L2, label %L5
L2:  ;
    ret i32 1
L3:  ;
    ret i32 0
L5:  ;
    %r7 = icmp eq i32 %r0,10
    br i1 %r7, label %L2, label %L3
}
define i32 @next_token()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r0 = load i32, ptr @last_char
    %r1 = call i32 @is_space(i32 %r0)
    %r2 = icmp ne i32 %r1,0
    br i1 %r2, label %L3, label %L4
L3:  ;  latch0
    %r3 = call i32 @next_char()
    br label %L2
L4:  ;
    %r4 = load i32, ptr @last_char
    %r5 = call i32 @is_num(i32 %r4)
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L5, label %L6
L5:  ;  preheader1
    %r7 = load i32, ptr @last_char
    %r9 = sub i32 %r7,48
    store i32 %r9, ptr @num
    br label %L8
L6:  ;
    %r21 = load i32, ptr @last_char
    store i32 %r21, ptr @other
    %r22 = call i32 @next_char()
    store i32 1, ptr @cur_token
    br label %L7
L7:  ;
    %r24 = load i32, ptr @cur_token
    ret i32 %r24
L8:  ;  exiting1  header1
    %r10 = call i32 @next_char()
    %r11 = call i32 @is_num(i32 %r10)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L9, label %L10
L9:  ;  latch1
    %r13 = load i32, ptr @num
    %r15 = mul i32 %r13,10
    %r16 = load i32, ptr @last_char
    %r17 = add i32 %r15,%r16
    %r19 = sub i32 %r17,48
    store i32 %r19, ptr @num
    br label %L8
L10:  ;
    store i32 0, ptr @cur_token
    br label %L7
}
define i32 @panic()
{
L0:  ;
    br label %L1
L1:  ;
    call void @putch(i32 112)
    call void @putch(i32 97)
    call void @putch(i32 110)
    call void @putch(i32 105)
    call void @putch(i32 99)
    call void @putch(i32 33)
    call void @putch(i32 10)
    ret i32 -1
}
define i32 @get_op_prec(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = icmp eq i32 %r0,43
    br i1 %r4, label %L2, label %L4
L2:  ;
    ret i32 10
L3:  ;
    %r11 = icmp eq i32 %r0,42
    br i1 %r11, label %L5, label %L8
L4:  ;
    %r7 = icmp eq i32 %r0,45
    br i1 %r7, label %L2, label %L3
L5:  ;
    ret i32 20
L6:  ;
    ret i32 0
L7:  ;
    %r17 = icmp eq i32 %r0,37
    br i1 %r17, label %L5, label %L6
L8:  ;
    %r14 = icmp eq i32 %r0,47
    br i1 %r14, label %L5, label %L7
}
define void @stack_push(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = getelementptr i32, ptr %r0, i32 0
    %r7 = load i32, ptr %r4
    %r9 = add i32 %r7,1
    store i32 %r9, ptr %r4
    %r12 = load i32, ptr %r4
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    store i32 %r1, ptr %r13
    ret void
}
define i32 @stack_pop(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr i32, ptr %r0, i32 0
    %r4 = load i32, ptr %r3
    %r5 = getelementptr i32, ptr %r0, i32 %r4
    %r6 = load i32, ptr %r5
    %r13 = sub i32 %r4,1
    store i32 %r13, ptr %r3
    ret i32 %r6
}
define i32 @stack_peek(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = load i32, ptr %r2
    %r4 = getelementptr i32, ptr %r0, i32 %r3
    %r5 = load i32, ptr %r4
    ret i32 %r5
}
define i32 @stack_size(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = getelementptr i32, ptr %r0, i32 0
    %r3 = load i32, ptr %r2
    ret i32 %r3
}
define i32 @eval_op(i32 %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp eq i32 %r0,43
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r11 = add i32 %r1,%r2
    ret i32 %r11
L3:  ;
    %r14 = icmp eq i32 %r0,45
    br i1 %r14, label %L4, label %L5
L4:  ;
    %r17 = sub i32 %r1,%r2
    ret i32 %r17
L5:  ;
    %r20 = icmp eq i32 %r0,42
    br i1 %r20, label %L6, label %L7
L6:  ;
    %r23 = mul i32 %r1,%r2
    ret i32 %r23
L7:  ;
    %r26 = icmp eq i32 %r0,47
    br i1 %r26, label %L8, label %L9
L8:  ;
    %r29 = sdiv i32 %r1,%r2
    ret i32 %r29
L9:  ;
    %r32 = icmp eq i32 %r0,37
    br i1 %r32, label %L10, label %L11
L10:  ;
    %r35 = srem i32 %r1,%r2
    ret i32 %r35
L11:  ;
    ret i32 0
}
define i32 @eval()
{
L0:  ;
    %r1 = alloca [256 x i32]
    %r0 = alloca [256 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 1024,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 1024,i1 0)
    %r2 = load i32, ptr @cur_token
    %r4 = icmp ne i32 %r2,0
    br i1 %r4, label %L2, label %L3
L2:  ;
    %r5 = call i32 @panic()
    ret i32 %r5
L3:  ;  preheader1
    %r6 = getelementptr [256 x i32], ptr %r0, i32 0
    %r7 = load i32, ptr @num
    call void @stack_push(ptr %r6,i32 %r7)
    %r8 = call i32 @next_token()
    br label %L4
L4:  ;  exiting1  header1
    %r9 = load i32, ptr @cur_token
    %r11 = icmp eq i32 %r9,1
    br i1 %r11, label %L5, label %L6
L5:  ;  exiting1
    %r13 = load i32, ptr @other
    %r15 = call i32 @get_op_prec(i32 %r13)
    %r16 = icmp eq i32 %r15,0
    br i1 %r16, label %L7, label %L8
L6:  ;  preheader2
    %r50 = call i32 @next_token()
    br label %L16
L7:  ;
    br label %L6
L8:  ;  preheader0
    %r17 = call i32 @next_token()
    br label %L10
L10:  ;  exiting0  header0
    %r18 = getelementptr [256 x i32], ptr %r1, i32 0
    %r19 = call i32 @stack_size(ptr %r18)
    %r20 = icmp ne i32 %r19,0
    br i1 %r20, label %L13, label %L12
L11:  ;  latch0
    %r29 = call i32 @stack_pop(ptr %r18)
    %r32 = call i32 @stack_pop(ptr %r6)
    %r35 = call i32 @stack_pop(ptr %r6)
    %r40 = call i32 @eval_op(i32 %r29,i32 %r35,i32 %r32)
    call void @stack_push(ptr %r6,i32 %r40)
    br label %L10
L12:  ;  exiting1
    call void @stack_push(ptr %r18,i32 %r13)
    %r43 = load i32, ptr @cur_token
    %r45 = icmp ne i32 %r43,0
    br i1 %r45, label %L14, label %L15
L13:  ;  exiting0
    %r22 = call i32 @stack_peek(ptr %r18)
    %r23 = call i32 @get_op_prec(i32 %r22)
    %r26 = icmp sge i32 %r23,%r15
    br i1 %r26, label %L11, label %L12
L14:  ;
    %r46 = call i32 @panic()
    ret i32 %r46
L15:  ;  latch1
    %r48 = load i32, ptr @num
    call void @stack_push(ptr %r6,i32 %r48)
    %r49 = call i32 @next_token()
    br label %L4
L16:  ;  exiting2  header2
    %r51 = getelementptr [256 x i32], ptr %r1, i32 0
    %r52 = call i32 @stack_size(ptr %r51)
    %r53 = icmp ne i32 %r52,0
    br i1 %r53, label %L17, label %L18
L17:  ;  latch2
    %r56 = call i32 @stack_pop(ptr %r51)
    %r59 = call i32 @stack_pop(ptr %r6)
    %r62 = call i32 @stack_pop(ptr %r6)
    %r67 = call i32 @eval_op(i32 %r56,i32 %r62,i32 %r59)
    call void @stack_push(ptr %r6,i32 %r67)
    br label %L16
L18:  ;
    %r69 = call i32 @stack_peek(ptr %r6)
    ret i32 %r69
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r1 = call i32 @getint()
    %r2 = call i32 @getch()
    %r3 = call i32 @next_token()
    br label %L2
L2:  ;  exiting0  header0
    %r12 = phi i32 [%r1,%L1],[%r10,%L3]
    %r5 = icmp ne i32 %r12,0
    br i1 %r5, label %L3, label %L4
L3:  ;  latch0
    %r6 = call i32 @eval()
    call void @putint(i32 %r6)
    call void @putch(i32 10)
    %r10 = sub i32 %r12,1
    br label %L2
L4:  ;
    ret i32 0
}
