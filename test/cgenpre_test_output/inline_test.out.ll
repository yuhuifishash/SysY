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
@d = global i32 0
define i32 @f()
{
L0:
    br label %L1
L1:
    ldr %r4,=@d
    %r0 = load i32, ptr %r4
    %r1 = icmp ne i32 %r0,0
    br i1 %r1, label %L2, label %L3
L2:
    ret i32 3
L3:
    ret i32 15
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
    ret i32 %r0
L4:
    ldr %r3,=@d
    %r1 = load i32, ptr %r3
    %r2 = icmp ne i32 %r1,0
    br i1 %r2, label %L5, label %L6
L5:
    mov %r0,3;pseudo IR code
    br label %L3
L6:
    mov %r0,15;pseudo IR code
    br label %L3
}
