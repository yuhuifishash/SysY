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
@a = global [4096x i32] zeroinitializer
define i32 @f1(ptr %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = add i32 5,0
    %r2 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r1
    %r3 = add i32 4000,0
    store i32 %r3, ptr %r2
    %r4 = add i32 4000,0
    %r5 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r4
    %r6 = add i32 3,0
    store i32 %r6, ptr %r5
    %r7 = add i32 4095,0
    %r8 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r7
    %r9 = add i32 7,0
    store i32 %r9, ptr %r8
    %r10 = add i32 4095,0
    %r11 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r14 = add i32 2216,0
    %r15 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = add i32 9,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r13
    %r19 = add i32 5,0
    %r20 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r19
    %r21 = load i32, ptr %r20
    %r22 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    ret i32 %r23
}
define i32 @main()
{
L0:  ;
    %r13 = alloca [1024 x [4 x i32]]
    %r0 = alloca [4 x [1024 x i32]]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16384,i1 0)
    %r1 = add i32 1,0
    %r2 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 %r1, ptr %r2
    %r3 = add i32 2,0
    %r4 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 %r3, ptr %r4
    %r5 = add i32 3,0
    %r6 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 %r5, ptr %r6
    %r7 = add i32 4,0
    %r8 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 %r7, ptr %r8
    %r9 = add i32 5,0
    %r10 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 %r9, ptr %r10
    %r11 = add i32 6,0
    %r12 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 %r11, ptr %r12
    call void @llvm.memset.p0.i32(ptr %r13,i8 0,i32 16384,i1 0)
    %r14 = add i32 1,0
    %r15 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 0, i32 0
    store i32 %r14, ptr %r15
    %r16 = add i32 2,0
    %r17 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 0, i32 1
    store i32 %r16, ptr %r17
    %r18 = add i32 3,0
    %r19 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 1, i32 0
    store i32 %r18, ptr %r19
    %r20 = add i32 4,0
    %r21 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 1, i32 1
    store i32 %r20, ptr %r21
    %r22 = add i32 0,0
    %r23 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 %r22
    %r24 = call i32 @f1(ptr %r23)
    call void @putint(i32 %r24)
    %r25 = add i32 10,0
    call void @putch(i32 %r25)
    %r26 = add i32 2,0
    %r27 = add i32 0,0
    %r28 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 %r26, i32 %r27
    %r29 = load i32, ptr %r28
    ret i32 %r29
}
