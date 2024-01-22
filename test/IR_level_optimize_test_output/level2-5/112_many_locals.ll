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
define i32 @main()
{
L0:
    br label %L1
L1:
    %r65 = call i32 @foo()
    %r66 = add i32 30,%r65
    %r84 = call i32 @foo()
    %r85 = add i32 41,%r84
    %r113 = add i32 %r66,%r85
    %r115 = add i32 %r113,35
    call void @putint(i32 %r115)
    call void @putch(i32 10)
    ret i32 0
}
define i32 @foo()
{
L0:
    %r0 = alloca [16 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 64,i1 0)
    %r2 = getelementptr [16 x i32], ptr %r0, i32 0, i32 0
    store i32 0, ptr %r2
    %r4 = getelementptr [16 x i32], ptr %r0, i32 0, i32 1
    store i32 1, ptr %r4
    %r6 = getelementptr [16 x i32], ptr %r0, i32 0, i32 2
    store i32 2, ptr %r6
    %r8 = getelementptr [16 x i32], ptr %r0, i32 0, i32 3
    store i32 3, ptr %r8
    %r10 = getelementptr [16 x i32], ptr %r0, i32 0, i32 4
    store i32 0, ptr %r10
    %r12 = getelementptr [16 x i32], ptr %r0, i32 0, i32 5
    store i32 1, ptr %r12
    %r14 = getelementptr [16 x i32], ptr %r0, i32 0, i32 6
    store i32 2, ptr %r14
    %r16 = getelementptr [16 x i32], ptr %r0, i32 0, i32 7
    store i32 3, ptr %r16
    %r18 = getelementptr [16 x i32], ptr %r0, i32 0, i32 8
    store i32 0, ptr %r18
    %r20 = getelementptr [16 x i32], ptr %r0, i32 0, i32 9
    store i32 1, ptr %r20
    %r22 = getelementptr [16 x i32], ptr %r0, i32 0, i32 10
    store i32 2, ptr %r22
    %r24 = getelementptr [16 x i32], ptr %r0, i32 0, i32 11
    store i32 3, ptr %r24
    %r26 = getelementptr [16 x i32], ptr %r0, i32 0, i32 12
    store i32 0, ptr %r26
    %r28 = getelementptr [16 x i32], ptr %r0, i32 0, i32 13
    store i32 1, ptr %r28
    %r30 = getelementptr [16 x i32], ptr %r0, i32 0, i32 14
    store i32 2, ptr %r30
    %r32 = getelementptr [16 x i32], ptr %r0, i32 0, i32 15
    store i32 3, ptr %r32
    %r102 = load i32, ptr %r8
    %r103 = add i32 71,%r102
    ret i32 %r103
}
