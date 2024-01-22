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
define i32 @func(i32 %r0)
{
L0:
    br label %L1
L1:
    %r4 = icmp sle i32 %r0,50
    br i1 %r4, label %L2, label %L3
L2:
    call void @putint(i32 %r0)
    ret i32 1
L3:
    call void @putint(i32 %r0)
    ret i32 0
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L16
L2:
    br label %L4
L4:
    br label %L21
L9:
    br label %L11
L11:
    ret i32 0
L14:
    br label %L41
L16:
    br label %L18
L17:
    br label %L2
L18:
    br label %L19
L19:
    call void @putint(i32 0)
    br label %L17
L21:
    br label %L23
L22:
    br label %L14
L23:
    br label %L24
L24:
    call void @putint(i32 50)
    br label %L22
L41:
    br label %L43
L42:
    br label %L9
L43:
    br label %L44
L44:
    call void @putint(i32 40)
    br label %L42
}
