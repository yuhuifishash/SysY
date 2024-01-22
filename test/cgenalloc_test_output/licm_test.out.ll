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
    r8 = call i32 @getint()
    r7 = call i32 @getint()
    br label %L11
L3:
    br label %L10
L4:
    r2 = icmp slt i32 r3,30
    br i1 r2, label %L12, label %L5
L5:
    ret i32 0
L7:
    mov r5,r6;pseudo IR code
    add r3,r4,r5,leftshift #2,is_a_shift:0;pseudo IR code
    r5 = load i32, ptr r3
    r2 = add i32 r5,r8
    store i32 r2, ptr r3
    r5 = add i32 r6,1
    br label %L8
L8:
    r3 = icmp slt i32 r5,30
    br i1 r3, label %L13, label %L9
L9:
    r3 = add i32 r7,1
    br label %L4
L10:
    ldr r6,=30;pseudo IR code
    r6 = mul i32 r7,r6
    mov r5,r6;pseudo IR code
    ldr r6,=@A
    add r4,r6,r5,leftshift #2,is_a_shift:0;pseudo IR code
    mov r6,0;pseudo IR code
    br label %L7
L11:
    r6 = mul i32 r8,r7
    r8 = mul i32 r6,r7
    mov r7,0;pseudo IR code
    br label %L3
L12:
    mov r7,r3;pseudo IR code
    br label %L3
L13:
    mov r6,r5;pseudo IR code
    br label %L7
}
