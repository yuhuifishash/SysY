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
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    ldr %r11,=288737297;pseudo IR code
    %r11 = smmul i32 %r1,%r11
    %r12 = ashr i32 %r1,31
    rsbs %r11,%r12,%r11,leftshift #-26,is_a_shift:1;pseudo IR code
    ldr %r12,=998244353;pseudo IR code
    %r11 = mul i32 %r11,%r12
    %r6 = sub i32 %r1,%r11
    %r13 = sub i32 0,%r3
    %r9 = and i32 %r3,31
    %r13 = and i32 %r13,31
    %r9 = sub i32 0,%r13
    %r10 = add i32 %r6,%r9
    ret i32 %r10
}
