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
L0:  ;
    br label %L1
L1:  ;
    %r5 = load i32, ptr @N
    %r7 = sub i32 %r5,1
    br label %L2
L2:  ;
    %r25 = phi i32 [%r0,%L1],[%r19,%L3]
    %r24 = phi i32 [%r7,%L1],[%r22,%L3]
    %r11 = icmp ne i32 %r24,-1
    br i1 %r11, label %L3, label %L4
L3:  ;
    %r13 = getelementptr i32, ptr %r1, i32 %r24
    %r16 = srem i32 %r25,10
    store i32 %r16, ptr %r13
    %r19 = sdiv i32 %r25,10
    %r22 = sub i32 %r24,1
    br label %L2
L4:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r6 = alloca [4 x i32]
    br label %L1
L1:  ;
    store i32 4, ptr @N
    store i32 10, ptr @newline
    %r9 = getelementptr [4 x i32], ptr %r6, i32 0
    %r10 = call i32 @split(i32 1478,ptr %r9)
    br label %L2
L2:  ;
    %r27 = phi i32 [0,%L1],[%r24,%L3]
    %r26 = phi i32 [0,%L1],[%r19,%L3]
    %r16 = icmp slt i32 %r27,4
    br i1 %r16, label %L3, label %L4
L3:  ;
    %r18 = getelementptr [4 x i32], ptr %r6, i32 0, i32 %r27
    %r19 = load i32, ptr %r18
    call void @putint(i32 %r19)
    %r21 = load i32, ptr @newline
    call void @putch(i32 %r21)
    %r24 = add i32 %r27,1
    br label %L2
L4:  ;
    ret i32 0
}
