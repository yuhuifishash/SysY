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
L0:
    br label %L1
L1:
    store i32 %r0, ptr @a
    %r3 = load i32, ptr @a
    ret i32 %r3
}
define i32 @set_b(i32 %r0)
{
L0:
    br label %L1
L1:
    store i32 %r0, ptr @b
    %r3 = load i32, ptr @b
    ret i32 %r3
}
define i32 @set_d(i32 %r0)
{
L0:
    br label %L1
L1:
    store i32 %r0, ptr @d
    %r3 = load i32, ptr @d
    ret i32 %r3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 2, ptr @a
    store i32 3, ptr @b
    br label %L62
L2:
    br label %L3
L3:
    %r11 = load i32, ptr @a
    call void @putint(i32 %r11)
    call void @putch(i32 32)
    %r13 = load i32, ptr @b
    call void @putint(i32 %r13)
    call void @putch(i32 32)
    store i32 2, ptr @a
    store i32 3, ptr @b
    br label %L65
L4:
    br label %L68
L6:
    br label %L7
L7:
    %r26 = load i32, ptr @a
    call void @putint(i32 %r26)
    call void @putch(i32 32)
    %r28 = load i32, ptr @b
    call void @putint(i32 %r28)
    call void @putch(i32 10)
    store i32 2, ptr @d
    br label %L12
L8:
    br label %L71
L10:
    br label %L11
L11:
    %r44 = load i32, ptr @d
    call void @putint(i32 %r44)
    call void @putch(i32 32)
    br label %L14
L12:
    br label %L74
L14:
    br label %L15
L15:
    %r57 = load i32, ptr @d
    call void @putint(i32 %r57)
    call void @putch(i32 10)
    br label %L18
L18:
    call void @putch(i32 65)
    br label %L19
L19:
    br label %L21
L21:
    br label %L23
L23:
    br label %L24
L24:
    call void @putch(i32 68)
    br label %L25
L25:
    br label %L27
L27:
    br label %L28
L28:
    call void @putch(i32 70)
    br label %L29
L29:
    call void @putch(i32 10)
    br label %L33
L33:
    br label %L40
L38:
    call void @putch(i32 67)
    br label %L39
L39:
    br label %L44
L40:
    br label %L38
L43:
    br label %L48
L44:
    br label %L43
L46:
    call void @putch(i32 73)
    br label %L47
L47:
    br label %L54
L48:
    br label %L46
L50:
    call void @putch(i32 74)
    br label %L51
L51:
    br label %L56
L52:
    br label %L50
L54:
    br label %L52
L56:
    call void @putch(i32 75)
    br label %L57
L57:
    call void @putch(i32 10)
    ret i32 0
L62:
    br label %L64
L63:
    %r4 = icmp ne i32 %r233,0
    br i1 %r4, label %L4, label %L3
L64:
    store i32 0, ptr @a
    %r233 = load i32, ptr @a
    br label %L63
L65:
    br label %L67
L66:
    %r19 = icmp ne i32 %r234,0
    br i1 %r19, label %L8, label %L7
L67:
    store i32 0, ptr @a
    %r234 = load i32, ptr @a
    br label %L66
L68:
    br label %L70
L69:
    %r7 = icmp ne i32 %r235,0
    br i1 %r7, label %L2, label %L3
L70:
    store i32 1, ptr @b
    %r235 = load i32, ptr @b
    br label %L69
L71:
    br label %L73
L72:
    %r22 = icmp ne i32 %r236,0
    br i1 %r22, label %L6, label %L7
L73:
    store i32 1, ptr @b
    %r236 = load i32, ptr @b
    br label %L72
L74:
    br label %L76
L75:
    %r40 = icmp ne i32 %r237,0
    br i1 %r40, label %L10, label %L11
L76:
    store i32 3, ptr @d
    %r237 = load i32, ptr @d
    br label %L75
}
