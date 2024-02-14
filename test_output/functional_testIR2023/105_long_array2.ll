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
L0:
    br label %L1
L1:
    %r2 = getelementptr [4096 x i32], ptr @a, i32 0, i32 5
    store i32 4000, ptr %r2
    %r5 = getelementptr [4096 x i32], ptr @a, i32 0, i32 4000
    store i32 3, ptr %r5
    %r8 = getelementptr [4096 x i32], ptr @a, i32 0, i32 4095
    store i32 7, ptr %r8
    %r11 = getelementptr [4096 x i32], ptr @a, i32 0, i32 4095
    %r12 = load i32, ptr %r11
    %r13 = getelementptr i32, ptr %r0, i32 %r12
    %r15 = getelementptr [4096 x i32], ptr @a, i32 0, i32 2216
    %r16 = load i32, ptr %r15
    %r18 = add i32 %r16,9
    store i32 %r18, ptr %r13
    %r20 = getelementptr [4096 x i32], ptr @a, i32 0, i32 5
    %r21 = load i32, ptr %r20
    %r22 = getelementptr [4096 x i32], ptr @a, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    ret i32 %r23
}
define i32 @main()
{
L0:
    %r13 = alloca [1024 x [4 x i32]]
    %r0 = alloca [4 x [1024 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16384,i1 0)
    %r2 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 1, i32 0
    store i32 1, ptr %r2
    %r4 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 2, i32 0
    store i32 2, ptr %r4
    %r6 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 2, i32 1
    store i32 3, ptr %r6
    %r8 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 0
    store i32 4, ptr %r8
    %r10 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 1
    store i32 5, ptr %r10
    %r12 = getelementptr [4 x [1024 x i32]], ptr %r0, i32 0, i32 3, i32 2
    store i32 6, ptr %r12
    call void @llvm.memset.p0.i32(ptr %r13,i8 0,i32 16384,i1 0)
    %r15 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 0, i32 0
    store i32 1, ptr %r15
    %r17 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 0, i32 1
    store i32 2, ptr %r17
    %r19 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 1, i32 0
    store i32 3, ptr %r19
    %r21 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 1, i32 1
    store i32 4, ptr %r21
    %r23 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 0
    %r24 = call i32 @f1(ptr %r23)
    call void @putint(i32 %r24)
    call void @putch(i32 10)
    %r28 = getelementptr [1024 x [4 x i32]], ptr %r13, i32 0, i32 2, i32 0
    %r29 = load i32, ptr %r28
    ret i32 %r29
}
