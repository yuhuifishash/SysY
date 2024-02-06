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
@d = global i32 5
@A = global [100x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,2
    store i32 %r1, ptr %r0
    %r3 = add i32 0,3
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr %r2
    %r6 = getelementptr [100 x [100 x i32]], ptr @A, i32 0, i32 %r4, i32 %r5
    %r7 = load i32, ptr %r6
    %r8 = load i32, ptr %r0
    %r9 = load i32, ptr %r2
    %r10 = getelementptr [100 x [100 x i32]], ptr @A, i32 0, i32 %r8, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 %r7,%r11
    %r13 = add i32 0,2
    %r14 = sub i32 %r12,%r13
    %r15 = load i32, ptr %r0
    %r16 = load i32, ptr %r2
    %r17 = getelementptr [100 x [100 x i32]], ptr @A, i32 0, i32 %r15, i32 %r16
    store i32 %r14, ptr %r17
    %r18 = add i32 0,0
    ret i32 %r18
}
