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
    %r0 = alloca [100 x i32]
    br label %L1
L1:
    %r5 = call i32 @getint()
    %r6 = icmp ne i32 %r5,0
    br i1 %r6, label %L10, label %L5
L3:
    %r32 = phi i32 [%r12,%L4],[0,%L10]
    %r7 = call i32 @getint()
    %r9 = getelementptr [100 x i32], ptr %r0, i32 0, i32 %r32
    store i32 %r7, ptr %r9
    %r12 = add i32 %r32,1
    br label %L4
L4:
    %r13 = call i32 @getint()
    %r14 = icmp ne i32 %r13,0
    br i1 %r14, label %L3, label %L5
L5:
    %r33 = phi i32 [0,%L1],[%r12,%L4]
    %r16 = icmp ne i32 %r33,0
    br i1 %r16, label %L11, label %L9
L7:
    %r34 = phi i32 [%r19,%L8],[%r33,%L11]
    %r30 = phi i32 [%r24,%L8],[0,%L11]
    %r19 = sub i32 %r34,1
    %r22 = getelementptr [100 x i32], ptr %r0, i32 0, i32 %r19
    %r23 = load i32, ptr %r22
    %r24 = add i32 %r30,%r23
    br label %L8
L8:
    %r26 = icmp ne i32 %r19,0
    br i1 %r26, label %L7, label %L9
L9:
    %r31 = phi i32 [0,%L5],[%r24,%L8]
    %r29 = srem i32 %r31,79
    ret i32 %r29
L10:
    br label %L3
L11:
    br label %L7
}
