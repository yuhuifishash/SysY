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
@N = global i32 zeroinitializer
@newline = global i32 zeroinitializer
define i32 @split(i32 %r0,ptr %r1)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @N
    %r7 = sub i32 %r5,1
    %r11 = icmp ne i32 %r7,-1
    br i1 %r11, label %L6, label %L5
L3:
    %r34 = phi i32 [%r21,%L4],[%r0,%L6]
    %r32 = phi i32 [%r24,%L4],[%r7,%L6]
    %r16 = srem i32 %r34,10
    %r18 = getelementptr i32, ptr %r1, i32 %r32
    store i32 %r16, ptr %r18
    %r21 = sdiv i32 %r34,10
    %r24 = sub i32 %r32,1
    br label %L4
L4:
    %r28 = icmp ne i32 %r24,-1
    br i1 %r28, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
define i32 @main()
{
L0:
    %r6 = alloca [4 x i32]
    br label %L1
L1:
    store i32 4, ptr @N
    store i32 10, ptr @newline
    %r9 = getelementptr i32, ptr %r6, i32 0
    %r10 = call i32 @split(i32 1478,ptr %r9)
    br label %L6
L3:
    %r35 = phi i32 [%r26,%L4],[0,%L6]
    %r20 = getelementptr [4 x i32], ptr %r6, i32 0, i32 %r35
    %r21 = load i32, ptr %r20
    call void @putint(i32 %r21)
    %r23 = load i32, ptr @newline
    call void @putch(i32 %r23)
    %r26 = add i32 %r35,1
    br label %L4
L4:
    %r29 = icmp slt i32 %r26,4
    br i1 %r29, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
