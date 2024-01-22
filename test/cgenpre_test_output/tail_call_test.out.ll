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
define i32 @gcd(i32 %r0,i32 %r1)
{
L0:
    br label %L4
L1:
    %r6 = icmp eq i32 %r15,0
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r16
L3:
    %r13 = call i32 @__modsi3(i32 %r15,i32 %r16)
    mov %r15,%r16;pseudo IR code
    mov %r16,%r13;pseudo IR code
    br label %L1
L4:
    mov %r15,%r0;pseudo IR code
    mov %r16,%r1;pseudo IR code
    br label %L1
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r2 = call i32 @gcd(i32 4,i32 64)
    ret i32 %r2
}
