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
define i32 @whileIf()
{
L0:
    br label %L1
L1:
    br label %L12
L3:
    %r39 = phi i32 [%r28,%L4],[0,%L12]
    %r13 = icmp eq i32 %r39,5
    br i1 %r13, label %L6, label %L7
L4:
    %r31 = icmp slt i32 %r28,100
    br i1 %r31, label %L3, label %L5
L5:
    ret i32 %r35
L6:
    br label %L8
L7:
    %r19 = icmp eq i32 %r39,10
    br i1 %r19, label %L9, label %L10
L8:
    %r35 = phi i32 [25,%L6],[%r38,%L11]
    %r28 = add i32 %r39,1
    br label %L4
L9:
    br label %L11
L10:
    %r25 = mul i32 %r39,2
    br label %L11
L11:
    %r38 = phi i32 [42,%L9],[%r25,%L10]
    br label %L8
L12:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @whileIf()
    ret i32 %r0
}
