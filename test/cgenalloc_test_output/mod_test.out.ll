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
    r8 = call i32 @getint()
    r7 = call i32 @getint()
    ldr r6,=288737297;pseudo IR code
    r6 = smmul i32 r8,r6
    r5 = ashr i32 r8,31
    rsbs r6,r5,r6,leftshift #-26,is_a_shift:1;pseudo IR code
    ldr r5,=998244353;pseudo IR code
    r6 = mul i32 r6,r5
    r5 = sub i32 r8,r6
    r8 = sub i32 0,r7
    r6 = and i32 r7,31
    r8 = and i32 r8,31
    r6 = sub i32 0,r8
    r8 = add i32 r5,r6
    ret i32 r8
}
