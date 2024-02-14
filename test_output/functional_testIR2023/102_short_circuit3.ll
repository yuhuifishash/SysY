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
@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
@d = global i32 zeroinitializer
define i32 @set_a(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    store i32 %r0, ptr @a
    %r3 = load i32, ptr @a
    ret i32 %r3
}
define i32 @set_b(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    store i32 %r0, ptr @b
    %r3 = load i32, ptr @b
    ret i32 %r3
}
define i32 @set_d(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    store i32 %r0, ptr @d
    %r3 = load i32, ptr @d
    ret i32 %r3
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 2, ptr @a
    store i32 3, ptr @b
    %r3 = call i32 @set_a(i32 0)
    %r4 = icmp ne i32 %r3,0
    br i1 %r4, label %L4, label %L3
L2:  ;
    br label %L3
L3:  ;
    %r8 = load i32, ptr @a
    call void @putint(i32 %r8)
    call void @putch(i32 32)
    %r10 = load i32, ptr @b
    call void @putint(i32 %r10)
    call void @putch(i32 32)
    store i32 2, ptr @a
    store i32 3, ptr @b
    %r15 = call i32 @set_a(i32 0)
    %r16 = icmp ne i32 %r15,0
    br i1 %r16, label %L7, label %L6
L4:  ;
    %r6 = call i32 @set_b(i32 1)
    %r7 = icmp ne i32 %r6,0
    br i1 %r7, label %L2, label %L3
L5:  ;
    br label %L6
L6:  ;
    %r20 = load i32, ptr @a
    call void @putint(i32 %r20)
    call void @putch(i32 32)
    %r22 = load i32, ptr @b
    call void @putint(i32 %r22)
    call void @putch(i32 10)
    store i32 2, ptr @d
    br label %L10
L7:  ;
    %r18 = call i32 @set_b(i32 1)
    %r19 = icmp ne i32 %r18,0
    br i1 %r19, label %L5, label %L6
L8:  ;
    br label %L9
L9:  ;
    %r33 = load i32, ptr @d
    call void @putint(i32 %r33)
    call void @putch(i32 32)
    br label %L11
L10:  ;
    %r31 = call i32 @set_d(i32 3)
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L8, label %L9
L11:  ;
    br label %L12
L12:  ;
    %r41 = load i32, ptr @d
    call void @putint(i32 %r41)
    call void @putch(i32 10)
    br label %L14
L14:  ;
    call void @putch(i32 65)
    br label %L15
L15:  ;
    br label %L17
L17:  ;
    br label %L19
L19:  ;
    br label %L20
L20:  ;
    call void @putch(i32 68)
    br label %L21
L21:  ;
    br label %L23
L23:  ;
    br label %L24
L24:  ;
    call void @putch(i32 70)
    br label %L25
L25:  ;
    call void @putch(i32 10)
    br label %L26
L26:  ;
    br label %L28
L28:  ;
    br label %L32
L30:  ;
    call void @putch(i32 67)
    br label %L31
L31:  ;
    br label %L35
L32:  ;
    br label %L30
L34:  ;
    br label %L38
L35:  ;
    br label %L34
L36:  ;
    call void @putch(i32 73)
    br label %L37
L37:  ;
    br label %L42
L38:  ;
    br label %L36
L39:  ;
    call void @putch(i32 74)
    br label %L40
L40:  ;
    br label %L43
L41:  ;
    br label %L39
L42:  ;
    br label %L41
L43:  ;
    call void @putch(i32 75)
    br label %L44
L44:  ;
    call void @putch(i32 10)
    ret i32 0
}
