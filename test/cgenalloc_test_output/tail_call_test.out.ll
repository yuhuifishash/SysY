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
define i32 @gcd(i32 r0,i32 r1)
{
L0:
    br label %L4
L1:
    r6 = icmp eq i32 r8,0
    br i1 r6, label %L2, label %L3
L2:
    ret i32 r7
L3:
    r6 = call i32 @__modsi3(i32 r8,i32 r7)
    mov r8,r7;pseudo IR code
    mov r7,r6;pseudo IR code
    br label %L1
L4:
    mov r8,r0;pseudo IR code
    mov r7,r1;pseudo IR code
    br label %L1
}
define i32 @main()
{
L0:
    br label %L1
L1:
    r8 = call i32 @gcd(i32 4,i32 64)
    ret i32 r8
}
