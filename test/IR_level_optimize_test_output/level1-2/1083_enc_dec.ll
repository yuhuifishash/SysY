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
define i32 @enc(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sgt i32 %r0,25
    br i1 %r4, label %L2, label %L3
L2:
    %r9 = add i32 %r0,60
    br label %L4
L3:
    %r12 = sub i32 %r0,15
    br label %L4
L4:
    %r14 = phi i32 [%r9,%L2],[%r12,%L3]
    ret i32 %r14
}
define i32 @dec(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sgt i32 %r0,85
    br i1 %r4, label %L2, label %L3
L2:
    %r9 = sub i32 %r0,59
    br label %L4
L3:
    %r12 = add i32 %r0,14
    br label %L4
L4:
    %r14 = phi i32 [%r9,%L2],[%r12,%L3]
    ret i32 %r14
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    br label %L8
L4:
    br label %L5
L5:
    br label %L7
L7:
    br label %L3
L8:
    br label %L10
L9:
    call void @putint(i32 401)
    call void @putch(i32 10)
    ret i32 0
L10:
    br label %L11
L11:
    br label %L13
L13:
    br label %L9
}
