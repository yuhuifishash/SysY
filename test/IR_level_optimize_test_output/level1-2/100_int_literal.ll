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
@s = global i32 0
define i32 @get_ans_se(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r1,%r2
    br i1 %r10, label %L2, label %L3
L2:
    br label %L3
L3:
    %r24 = phi i32 [0,%L1],[1,%L2]
    %r16 = mul i32 %r0,2
    %r19 = add i32 %r16,%r24
    %r20 = load i32, ptr @s
    %r22 = add i32 %r20,%r19
    store i32 %r22, ptr @s
    ret i32 %r19
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    br label %L7
L4:
    br label %L5
L5:
    br label %L6
L6:
    br label %L3
L7:
    br label %L9
L8:
    br label %L12
L9:
    br label %L10
L10:
    br label %L11
L11:
    br label %L8
L12:
    br label %L14
L13:
    br label %L17
L14:
    br label %L15
L15:
    br label %L16
L16:
    br label %L13
L17:
    br label %L19
L18:
    br label %L22
L19:
    br label %L21
L21:
    br label %L18
L22:
    br label %L24
L23:
    br label %L27
L24:
    br label %L26
L26:
    br label %L23
L27:
    br label %L29
L28:
    br label %L32
L29:
    br label %L30
L30:
    br label %L31
L31:
    br label %L28
L32:
    br label %L34
L33:
    br label %L37
L34:
    br label %L36
L36:
    br label %L33
L37:
    br label %L39
L38:
    br label %L42
L39:
    br label %L41
L41:
    br label %L38
L42:
    br label %L44
L43:
    br label %L47
L44:
    br label %L46
L46:
    br label %L43
L47:
    br label %L49
L48:
    br label %L52
L49:
    br label %L51
L51:
    br label %L48
L52:
    br label %L54
L53:
    br label %L57
L54:
    br label %L55
L55:
    br label %L56
L56:
    br label %L53
L57:
    br label %L59
L58:
    br label %L62
L59:
    br label %L60
L60:
    br label %L61
L61:
    %r206 = load i32, ptr @s
    %r207 = add i32 %r206,1
    store i32 %r207, ptr @s
    br label %L58
L62:
    br label %L64
L63:
    br label %L67
L64:
    br label %L65
L65:
    br label %L66
L66:
    %r212 = load i32, ptr @s
    %r213 = add i32 %r212,3
    store i32 %r213, ptr @s
    br label %L63
L67:
    br label %L69
L68:
    br label %L72
L69:
    br label %L70
L70:
    br label %L71
L71:
    %r218 = load i32, ptr @s
    %r219 = add i32 %r218,7
    store i32 %r219, ptr @s
    br label %L68
L72:
    br label %L74
L73:
    br label %L77
L74:
    br label %L76
L76:
    %r224 = load i32, ptr @s
    %r225 = add i32 %r224,14
    store i32 %r225, ptr @s
    br label %L73
L77:
    br label %L79
L78:
    br label %L82
L79:
    br label %L81
L81:
    %r230 = load i32, ptr @s
    %r231 = add i32 %r230,28
    store i32 %r231, ptr @s
    br label %L78
L82:
    br label %L84
L83:
    br label %L87
L84:
    br label %L85
L85:
    br label %L86
L86:
    %r236 = load i32, ptr @s
    %r237 = add i32 %r236,57
    store i32 %r237, ptr @s
    br label %L83
L87:
    br label %L89
L88:
    br label %L92
L89:
    br label %L91
L91:
    %r242 = load i32, ptr @s
    %r243 = add i32 %r242,114
    store i32 %r243, ptr @s
    br label %L88
L92:
    br label %L94
L93:
    br label %L97
L94:
    br label %L96
L96:
    %r248 = load i32, ptr @s
    %r249 = add i32 %r248,0
    store i32 %r249, ptr @s
    br label %L93
L97:
    br label %L99
L98:
    br label %L102
L99:
    br label %L101
L101:
    %r254 = load i32, ptr @s
    %r255 = add i32 %r254,0
    store i32 %r255, ptr @s
    br label %L98
L102:
    br label %L104
L103:
    br label %L107
L104:
    br label %L106
L106:
    %r260 = load i32, ptr @s
    %r261 = add i32 %r260,0
    store i32 %r261, ptr @s
    br label %L103
L107:
    br label %L109
L108:
    ret i32 230
L109:
    br label %L110
L110:
    br label %L111
L111:
    %r266 = load i32, ptr @s
    %r267 = add i32 %r266,1
    store i32 %r267, ptr @s
    br label %L108
}
define i32 @get_ans(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r1,%r2
    br i1 %r10, label %L2, label %L3
L2:
    br label %L3
L3:
    %r21 = phi i32 [0,%L1],[1,%L2]
    %r16 = mul i32 %r0,2
    %r19 = add i32 %r16,%r21
    ret i32 %r19
}
