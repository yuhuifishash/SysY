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
    br label %L63
L3:
    %r501 = phi i32 [%r111,%L4],[0,%L63]
    %r471 = phi i32 [%r226,%L4],[0,%L63]
    br label %L62
L4:
    %r229 = icmp slt i32 %r226,3
    br i1 %r229, label %L3, label %L5
L5:
    ret i32 %r111
L7:
    %r499 = phi i32 [%r111,%L8],[%r501,%L62]
    %r469 = phi i32 [%r218,%L8],[0,%L62]
    br label %L72
L8:
    %r221 = icmp slt i32 %r218,4
    br i1 %r221, label %L7, label %L9
L9:
    %r226 = add i32 %r471,1
    br label %L4
L11:
    %r497 = phi i32 [%r499,%L72],[%r111,%L12]
    %r465 = phi i32 [0,%L72],[%r210,%L12]
    br label %L73
L12:
    %r213 = icmp slt i32 %r210,5
    br i1 %r213, label %L11, label %L13
L13:
    %r218 = add i32 %r469,1
    br label %L8
L15:
    %r495 = phi i32 [%r497,%L73],[%r111,%L16]
    %r459 = phi i32 [0,%L73],[%r202,%L16]
    br label %L74
L16:
    %r205 = icmp slt i32 %r202,3
    br i1 %r205, label %L15, label %L17
L17:
    %r210 = add i32 %r465,1
    br label %L12
L19:
    %r493 = phi i32 [%r495,%L74],[%r111,%L20]
    %r451 = phi i32 [%r194,%L20],[0,%L74]
    br label %L71
L20:
    %r197 = icmp slt i32 %r194,5
    br i1 %r197, label %L19, label %L21
L21:
    %r202 = add i32 %r459,1
    br label %L16
L23:
    %r491 = phi i32 [%r493,%L71],[%r111,%L24]
    %r441 = phi i32 [0,%L71],[%r186,%L24]
    br label %L64
L24:
    %r189 = icmp slt i32 %r186,4
    br i1 %r189, label %L23, label %L25
L25:
    %r194 = add i32 %r451,1
    br label %L20
L27:
    %r489 = phi i32 [%r111,%L28],[%r491,%L64]
    %r429 = phi i32 [%r178,%L28],[0,%L64]
    br label %L65
L28:
    %r181 = icmp slt i32 %r178,6
    br i1 %r181, label %L27, label %L29
L29:
    %r186 = add i32 %r441,1
    br label %L24
L31:
    %r487 = phi i32 [%r111,%L32],[%r489,%L65]
    %r415 = phi i32 [%r170,%L32],[0,%L65]
    br label %L75
L32:
    %r173 = icmp slt i32 %r170,5
    br i1 %r173, label %L31, label %L33
L33:
    %r178 = add i32 %r429,1
    br label %L28
L35:
    %r485 = phi i32 [%r487,%L75],[%r111,%L36]
    %r399 = phi i32 [0,%L75],[%r162,%L36]
    br label %L69
L36:
    %r165 = icmp slt i32 %r162,5
    br i1 %r165, label %L35, label %L37
L37:
    %r170 = add i32 %r415,1
    br label %L32
L39:
    %r483 = phi i32 [%r111,%L40],[%r485,%L69]
    %r381 = phi i32 [%r154,%L40],[0,%L69]
    br label %L70
L40:
    %r157 = icmp slt i32 %r154,3
    br i1 %r157, label %L39, label %L41
L41:
    %r162 = add i32 %r399,1
    br label %L36
L43:
    %r481 = phi i32 [%r483,%L70],[%r111,%L44]
    %r361 = phi i32 [0,%L70],[%r146,%L44]
    br label %L66
L44:
    %r149 = icmp slt i32 %r146,6
    br i1 %r149, label %L43, label %L45
L45:
    %r154 = add i32 %r381,1
    br label %L40
L47:
    %r479 = phi i32 [%r111,%L48],[%r481,%L66]
    %r339 = phi i32 [%r138,%L48],[0,%L66]
    br label %L67
L48:
    %r141 = icmp slt i32 %r138,7
    br i1 %r141, label %L47, label %L49
L49:
    %r146 = add i32 %r361,2
    br label %L44
L51:
    %r477 = phi i32 [%r111,%L52],[%r479,%L67]
    %r315 = phi i32 [%r130,%L52],[0,%L67]
    br label %L68
L52:
    %r133 = icmp slt i32 %r130,5
    br i1 %r133, label %L51, label %L53
L53:
    %r138 = add i32 %r339,2
    br label %L48
L55:
    %r475 = phi i32 [%r111,%L56],[%r477,%L68]
    %r289 = phi i32 [%r122,%L56],[0,%L68]
    br label %L76
L56:
    %r125 = icmp slt i32 %r122,3
    br i1 %r125, label %L55, label %L57
L57:
    %r130 = add i32 %r315,2
    br label %L52
L59:
    %r473 = phi i32 [%r475,%L76],[%r111,%L60]
    %r261 = phi i32 [0,%L76],[%r114,%L60]
    %r109 = add i32 %r473,3
    %r111 = srem i32 %r109,999
    %r114 = add i32 %r261,3
    br label %L60
L60:
    %r117 = icmp slt i32 %r114,6
    br i1 %r117, label %L59, label %L61
L61:
    %r122 = add i32 %r289,1
    br label %L56
L62:
    br label %L7
L63:
    br label %L3
L64:
    br label %L27
L65:
    br label %L31
L66:
    br label %L47
L67:
    br label %L51
L68:
    br label %L55
L69:
    br label %L39
L70:
    br label %L43
L71:
    br label %L23
L72:
    br label %L11
L73:
    br label %L15
L74:
    br label %L19
L75:
    br label %L35
L76:
    br label %L59
}
