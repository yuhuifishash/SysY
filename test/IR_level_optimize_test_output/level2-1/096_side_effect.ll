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
@a = global i32 -1
@b = global i32 1
define i32 @inc_a()
{
L0:
    br label %L1
L1:
    %r1 = load i32, ptr @a
    %r4 = add i32 %r1,1
    store i32 %r4, ptr @a
    %r6 = load i32, ptr @a
    ret i32 %r6
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L43
L3:
    %r62 = phi i32 [%r50,%L4],[5,%L43]
    br label %L19
L4:
    %r53 = icmp sge i32 %r50,0
    br i1 %r53, label %L3, label %L5
L5:
    %r56 = load i32, ptr @a
    call void @putint(i32 %r56)
    call void @putch(i32 32)
    %r58 = load i32, ptr @b
    call void @putint(i32 %r58)
    call void @putch(i32 10)
    ret i32 %r56
L6:
    %r19 = load i32, ptr @a
    call void @putint(i32 %r19)
    call void @putch(i32 32)
    %r21 = load i32, ptr @b
    call void @putint(i32 %r21)
    call void @putch(i32 10)
    br label %L7
L7:
    br label %L22
L8:
    br label %L25
L10:
    br label %L28
L12:
    %r42 = load i32, ptr @a
    call void @putint(i32 %r42)
    call void @putch(i32 10)
    %r44 = load i32, ptr @b
    %r46 = mul i32 %r44,2
    store i32 %r46, ptr @b
    br label %L14
L13:
    br label %L31
L14:
    %r61 = phi i32 [%r62,%L12],[%r62,%L32]
    %r50 = sub i32 %r61,1
    br label %L4
L15:
    br label %L34
L17:
    br label %L37
L19:
    br label %L21
L20:
    %r8 = icmp ne i32 %r66,0
    br i1 %r8, label %L10, label %L7
L21:
    %r64 = load i32, ptr @a
    %r65 = add i32 %r64,1
    store i32 %r65, ptr @a
    %r66 = load i32, ptr @a
    br label %L20
L22:
    br label %L24
L23:
    %r25 = icmp slt i32 %r69,14
    br i1 %r25, label %L12, label %L15
L24:
    %r67 = load i32, ptr @a
    %r68 = add i32 %r67,1
    store i32 %r68, ptr @a
    %r69 = load i32, ptr @a
    br label %L23
L25:
    br label %L27
L26:
    %r15 = icmp ne i32 %r72,0
    br i1 %r15, label %L6, label %L7
L27:
    %r70 = load i32, ptr @a
    %r71 = add i32 %r70,1
    store i32 %r71, ptr @a
    %r72 = load i32, ptr @a
    br label %L26
L28:
    br label %L30
L29:
    %r10 = icmp ne i32 %r75,0
    br i1 %r10, label %L8, label %L7
L30:
    %r73 = load i32, ptr @a
    %r74 = add i32 %r73,1
    store i32 %r74, ptr @a
    %r75 = load i32, ptr @a
    br label %L29
L31:
    br label %L33
L32:
    br label %L14
L33:
    %r76 = load i32, ptr @a
    %r77 = add i32 %r76,1
    store i32 %r77, ptr @a
    br label %L32
L34:
    br label %L36
L35:
    %r29 = icmp ne i32 %r81,0
    br i1 %r29, label %L17, label %L13
L36:
    %r79 = load i32, ptr @a
    %r80 = add i32 %r79,1
    store i32 %r80, ptr @a
    %r81 = load i32, ptr @a
    br label %L35
L37:
    br label %L39
L38:
    br label %L40
L39:
    %r82 = load i32, ptr @a
    %r83 = add i32 %r82,1
    store i32 %r83, ptr @a
    %r84 = load i32, ptr @a
    br label %L38
L40:
    br label %L42
L41:
    %r32 = sub i32 %r84,%r87
    %r34 = add i32 %r32,1
    %r35 = icmp ne i32 %r34,0
    br i1 %r35, label %L12, label %L13
L42:
    %r85 = load i32, ptr @a
    %r86 = add i32 %r85,1
    store i32 %r86, ptr @a
    %r87 = load i32, ptr @a
    br label %L41
L43:
    br label %L3
}
