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
@k = global i32 zeroinitializer
@n = global i32 10
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 1, ptr @k
    br label %L6
L3:
    %r28 = phi i32 [%r12,%L4],[0,%L6]
    %r12 = add i32 %r28,1
    %r13 = load i32, ptr @k
    %r18 = add i32 %r13,%r13
    store i32 %r18, ptr @k
    br label %L4
L4:
    %r23 = icmp sle i32 %r12,9
    br i1 %r23, label %L3, label %L5
L5:
    %r26 = load i32, ptr @k
    call void @putint(i32 %r26)
    ret i32 %r26
L6:
    br label %L3
}
