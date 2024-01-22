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
@A = global [30x [30x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L11
L3:
    %r52 = phi i32 [0,%L11],[%r41,%L4]
    br label %L10
L4:
    %r44 = icmp slt i32 %r41,30
    br i1 %r44, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r50 = phi i32 [%r33,%L8],[0,%L10]
    %r20 = getelementptr i32, ptr %r54, i32 %r50
    %r21 = load i32, ptr %r20
    %r27 = add i32 %r21,%r26
    store i32 %r27, ptr %r20
    %r33 = add i32 %r50,1
    br label %L8
L8:
    %r36 = icmp slt i32 %r33,30
    br i1 %r36, label %L7, label %L9
L9:
    %r41 = add i32 %r52,1
    br label %L4
L10:
    %r54 = getelementptr [30 x [30 x i32]], ptr @A, i32 0, i32 %r52
    br label %L7
L11:
    %r24 = mul i32 %r1,%r3
    %r26 = mul i32 %r24,%r3
    br label %L3
}
