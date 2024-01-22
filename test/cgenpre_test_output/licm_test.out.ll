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
@A = global [30x [30x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L11
L3:
    br label %L10
L4:
    %r44 = icmp slt i32 %r41,30
    br i1 %r44, label %L12, label %L5
L5:
    ret i32 0
L7:
    mov %r57,%r50;pseudo IR code
    add %r20,%r54,%r57,leftshift #2,is_a_shift:0;pseudo IR code
    %r21 = load i32, ptr %r20
    %r27 = add i32 %r21,%r26
    store i32 %r27, ptr %r20
    %r33 = add i32 %r50,1
    br label %L8
L8:
    %r36 = icmp slt i32 %r33,30
    br i1 %r36, label %L13, label %L9
L9:
    %r41 = add i32 %r52,1
    br label %L4
L10:
    ldr %r60,=30;pseudo IR code
    %r60 = mul i32 %r52,%r60
    mov %r59,%r60;pseudo IR code
    ldr %r61,=@A
    add %r54,%r61,%r59,leftshift #2,is_a_shift:0;pseudo IR code
    mov %r50,0;pseudo IR code
    br label %L7
L11:
    %r24 = mul i32 %r1,%r3
    %r26 = mul i32 %r24,%r3
    mov %r52,0;pseudo IR code
    br label %L3
L12:
    mov %r52,%r41;pseudo IR code
    br label %L3
L13:
    mov %r50,%r33;pseudo IR code
    br label %L7
}
