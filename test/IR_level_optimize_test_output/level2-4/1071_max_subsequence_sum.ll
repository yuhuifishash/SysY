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
define i32 @maxSubArray(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:
    ret i32 0
L3:
    %r11 = icmp eq i32 %r1,1
    br i1 %r11, label %L4, label %L5
L4:
    %r15 = getelementptr i32, ptr %r0, i32 0
    %r16 = load i32, ptr %r15
    ret i32 %r16
L5:
    %r20 = getelementptr i32, ptr %r0, i32 0
    %r21 = load i32, ptr %r20
    %r30 = icmp slt i32 1,%r1
    br i1 %r30, label %L14, label %L9
L7:
    %r65 = phi i32 [%r43,%L8],[%r21,%L14]
    %r62 = phi i32 [%r61,%L8],[%r21,%L14]
    %r59 = phi i32 [%r52,%L8],[1,%L14]
    %r35 = icmp slt i32 %r65,0
    br i1 %r35, label %L10, label %L11
L8:
    %r55 = icmp slt i32 %r52,%r1
    br i1 %r55, label %L7, label %L9
L9:
    %r63 = phi i32 [%r21,%L5],[%r61,%L8]
    ret i32 %r63
L10:
    br label %L11
L11:
    %r64 = phi i32 [%r65,%L7],[0,%L10]
    %r41 = getelementptr i32, ptr %r0, i32 %r59
    %r42 = load i32, ptr %r41
    %r43 = add i32 %r64,%r42
    %r46 = icmp slt i32 %r62,%r43
    br i1 %r46, label %L12, label %L13
L12:
    br label %L13
L13:
    %r61 = phi i32 [%r62,%L11],[%r43,%L12]
    %r52 = add i32 %r59,1
    br label %L8
L14:
    br label %L7
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    br label %L1
L1:
    %r6 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 -4, ptr %r6
    %r9 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r9
    %r12 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r12
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 -2, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r22
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 -6, ptr %r26
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r29
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r32
    %r35 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r35
    %r37 = getelementptr i32, ptr %r2, i32 0
    %r39 = call i32 @maxSubArray(ptr %r37,i32 10)
    ret i32 %r39
}
