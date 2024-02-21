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
@ascii_0 = global i32 48
define i32 @my_getint()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = add i32 1,0
    %r5 = icmp ne i32 %r4,0
    br i1 %r5, label %L3, label %L4
L3:  ;
    %r6 = call i32 @getch()
    %r7 = load i32, ptr @ascii_0
    %r8 = sub i32 %r6,%r7
    store i32 %r8, ptr %r2
    %r9 = load i32, ptr %r2
    %r10 = add i32 0,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L5, label %L8
L4:  ;
    %r15 = load i32, ptr %r2
    store i32 %r15, ptr %r0
    br label %L11
L5:  ;
    br label %L2
L6:  ;
    br label %L4
L8:  ;
    %r12 = load i32, ptr %r2
    %r13 = add i32 9,0
    %r14 = icmp sgt i32 %r12,%r13
    br i1 %r14, label %L5, label %L6
L11:  ;
    %r16 = add i32 1,0
    %r17 = icmp ne i32 %r16,0
    br i1 %r17, label %L12, label %L13
L12:  ;
    %r18 = call i32 @getch()
    %r19 = load i32, ptr @ascii_0
    %r20 = sub i32 %r18,%r19
    store i32 %r20, ptr %r2
    %r21 = load i32, ptr %r2
    %r22 = add i32 0,0
    %r23 = icmp sge i32 %r21,%r22
    br i1 %r23, label %L17, label %L15
L13:  ;
    %r32 = load i32, ptr %r0
    ret i32 %r32
L14:  ;
    %r27 = load i32, ptr %r0
    %r28 = add i32 10,0
    %r29 = mul i32 %r27,%r28
    %r30 = load i32, ptr %r2
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r0
    br label %L16
L15:  ;
    br label %L13
L16:  ;
    br label %L11
L17:  ;
    %r24 = load i32, ptr %r2
    %r25 = add i32 9,0
    %r26 = icmp sle i32 %r24,%r25
    br i1 %r26, label %L14, label %L15
}
define void @my_putint(i32 %r0)
{
L0:  ;
    %r3 = alloca i32
    %r2 = alloca [16 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r1
    %r6 = add i32 0,0
    %r7 = icmp sgt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r3
    %r9 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r8
    %r10 = load i32, ptr %r1
    %r11 = add i32 10,0
    %r12 = srem i32 %r10,%r11
    %r13 = load i32, ptr @ascii_0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r9
    %r15 = load i32, ptr %r1
    %r16 = add i32 10,0
    %r17 = sdiv i32 %r15,%r16
    store i32 %r17, ptr %r1
    %r18 = load i32, ptr %r3
    %r19 = add i32 1,0
    %r20 = add i32 %r18,%r19
    store i32 %r20, ptr %r3
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r21 = load i32, ptr %r3
    %r22 = add i32 0,0
    %r23 = icmp sgt i32 %r21,%r22
    br i1 %r23, label %L6, label %L7
L6:  ;
    %r24 = load i32, ptr %r3
    %r25 = add i32 1,0
    %r26 = sub i32 %r24,%r25
    store i32 %r26, ptr %r3
    %r27 = load i32, ptr %r3
    %r28 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    call void @putch(i32 %r29)
    br label %L5
L7:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    %r5 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @my_getint()
    store i32 %r1, ptr %r0
    br label %L2
L2:  ;
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r6 = call i32 @my_getint()
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r5
    call void @my_putint(i32 %r7)
    %r8 = add i32 10,0
    call void @putch(i32 %r8)
    %r9 = load i32, ptr %r0
    %r10 = add i32 1,0
    %r11 = sub i32 %r9,%r10
    store i32 %r11, ptr %r0
    br label %L2
L4:  ;
    %r12 = add i32 0,0
    ret i32 %r12
}
