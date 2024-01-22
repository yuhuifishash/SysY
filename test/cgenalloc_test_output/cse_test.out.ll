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
@d = global i32 5
@A = global [100x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    mov r8,203;pseudo IR code
    ldr r7,=@A
    add r6,r7,r8,leftshift #2,is_a_shift:0;pseudo IR code
    r8 = load i32, ptr r6
    r7 = add i32 r8,r8
    r8 = sub i32 r7,2
    store i32 r8, ptr r6
    ret i32 0
}
