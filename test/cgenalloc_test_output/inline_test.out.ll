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
    ldr r8,=@d
    r7 = load i32, ptr r8
    r8 = icmp ne i32 r7,0
    br i1 r8, label %L2, label %L3
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
    ret i32 r8
L4:
    ldr r8,=@d
    r7 = load i32, ptr r8
    r8 = icmp ne i32 r7,0
    br i1 r8, label %L5, label %L6
L5:
    mov r8,3;pseudo IR code
    br label %L3
L6:
    mov r8,15;pseudo IR code
    br label %L3
}
