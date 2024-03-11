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
@sum = global i32 0
@array = global [20x i32] zeroinitializer
define i32 @f(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = load i32, ptr @sum
    %r6 = add i32 %r4,1
    store i32 %r6, ptr @sum
    %r9 = icmp sge i32 %r0,%r1
    br i1 %r9, label %L2, label %L4
L2:  ;
    ret i32 0
L3:  ;
    %r15 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    store i32 1, ptr %r15
    %r19 = icmp eq i32 %r0,0
    br i1 %r19, label %L5, label %L6
L4:  ;
    %r12 = icmp sge i32 %r0,20
    br i1 %r12, label %L2, label %L3
L5:  ;
    %r21 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r22 = load i32, ptr %r21
    ret i32 %r22
L6:  ;
    %r25 = sub i32 %r0,1
    %r26 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @g(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r4 = load i32, ptr @sum
    %r6 = add i32 %r4,2
    store i32 %r6, ptr @sum
    %r9 = icmp sge i32 %r0,%r1
    br i1 %r9, label %L2, label %L4
L2:  ;
    ret i32 1
L3:  ;
    %r15 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    store i32 0, ptr %r15
    %r19 = icmp eq i32 %r0,0
    br i1 %r19, label %L5, label %L6
L4:  ;
    %r12 = icmp sge i32 %r0,20
    br i1 %r12, label %L2, label %L3
L5:  ;
    %r21 = getelementptr [20 x i32], ptr @array, i32 0, i32 0
    %r22 = load i32, ptr %r21
    ret i32 %r22
L6:  ;
    %r25 = sub i32 %r0,1
    %r26 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    ret i32 %r27
}
define i32 @h(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r2 = load i32, ptr @sum
    %r4 = add i32 %r2,3
    store i32 %r4, ptr @sum
    %r7 = icmp slt i32 %r0,0
    br i1 %r7, label %L2, label %L4
L2:  ;
    ret i32 0
L3:  ;
    %r13 = getelementptr [20 x i32], ptr @array, i32 0, i32 %r0
    %r14 = load i32, ptr %r13
    ret i32 %r14
L4:  ;
    %r10 = icmp sge i32 %r0,20
    br i1 %r10, label %L2, label %L3
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r287 = phi i32 [0,%L1],[%r87,%L6]
    %r4 = icmp slt i32 %r287,20
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r7 = call i32 @f(i32 0,i32 %r287)
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L25, label %L6
L4:  ;  preheader1
    br label %L26
L5:  ;
    br label %L6
L6:  ;  latch0
    %r87 = add i32 %r287,1
    br label %L2
L7:  ;
    %r83 = call i32 @f(i32 19,i32 %r287)
    %r84 = icmp ne i32 %r83,0
    br i1 %r84, label %L5, label %L6
L8:  ;
    %r79 = call i32 @f(i32 18,i32 %r287)
    %r80 = icmp ne i32 %r79,0
    br i1 %r80, label %L7, label %L6
L9:  ;
    %r75 = call i32 @f(i32 17,i32 %r287)
    %r76 = icmp ne i32 %r75,0
    br i1 %r76, label %L8, label %L6
L10:  ;
    %r71 = call i32 @f(i32 16,i32 %r287)
    %r72 = icmp ne i32 %r71,0
    br i1 %r72, label %L9, label %L6
L11:  ;
    %r67 = call i32 @f(i32 15,i32 %r287)
    %r68 = icmp ne i32 %r67,0
    br i1 %r68, label %L10, label %L6
L12:  ;
    %r63 = call i32 @f(i32 14,i32 %r287)
    %r64 = icmp ne i32 %r63,0
    br i1 %r64, label %L11, label %L6
L13:  ;
    %r59 = call i32 @f(i32 13,i32 %r287)
    %r60 = icmp ne i32 %r59,0
    br i1 %r60, label %L12, label %L6
L14:  ;
    %r55 = call i32 @f(i32 12,i32 %r287)
    %r56 = icmp ne i32 %r55,0
    br i1 %r56, label %L13, label %L6
L15:  ;
    %r51 = call i32 @f(i32 11,i32 %r287)
    %r52 = icmp ne i32 %r51,0
    br i1 %r52, label %L14, label %L6
L16:  ;
    %r47 = call i32 @f(i32 10,i32 %r287)
    %r48 = icmp ne i32 %r47,0
    br i1 %r48, label %L15, label %L6
L17:  ;
    %r43 = call i32 @f(i32 9,i32 %r287)
    %r44 = icmp ne i32 %r43,0
    br i1 %r44, label %L16, label %L6
L18:  ;
    %r39 = call i32 @f(i32 8,i32 %r287)
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L17, label %L6
L19:  ;
    %r35 = call i32 @f(i32 7,i32 %r287)
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L18, label %L6
L20:  ;
    %r31 = call i32 @f(i32 6,i32 %r287)
    %r32 = icmp ne i32 %r31,0
    br i1 %r32, label %L19, label %L6
L21:  ;
    %r27 = call i32 @f(i32 5,i32 %r287)
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L20, label %L6
L22:  ;
    %r23 = call i32 @f(i32 4,i32 %r287)
    %r24 = icmp ne i32 %r23,0
    br i1 %r24, label %L21, label %L6
L23:  ;
    %r19 = call i32 @f(i32 3,i32 %r287)
    %r20 = icmp ne i32 %r19,0
    br i1 %r20, label %L22, label %L6
L24:  ;
    %r15 = call i32 @f(i32 2,i32 %r287)
    %r16 = icmp ne i32 %r15,0
    br i1 %r16, label %L23, label %L6
L25:  ;
    %r11 = call i32 @f(i32 1,i32 %r287)
    %r12 = icmp ne i32 %r11,0
    br i1 %r12, label %L24, label %L6
L26:  ;  exiting1  header1
    %r288 = phi i32 [0,%L4],[%r174,%L30]
    %r91 = icmp slt i32 %r288,20
    br i1 %r91, label %L27, label %L28
L27:  ;
    %r94 = call i32 @g(i32 0,i32 %r288)
    %r95 = icmp ne i32 %r94,0
    br i1 %r95, label %L29, label %L49
L28:  ;  preheader2
    br label %L50
L29:  ;
    br label %L30
L30:  ;  latch1
    %r174 = add i32 %r288,1
    br label %L26
L31:  ;
    %r170 = call i32 @g(i32 19,i32 %r288)
    %r171 = icmp ne i32 %r170,0
    br i1 %r171, label %L29, label %L30
L32:  ;
    %r166 = call i32 @g(i32 18,i32 %r288)
    %r167 = icmp ne i32 %r166,0
    br i1 %r167, label %L29, label %L31
L33:  ;
    %r162 = call i32 @g(i32 17,i32 %r288)
    %r163 = icmp ne i32 %r162,0
    br i1 %r163, label %L29, label %L32
L34:  ;
    %r158 = call i32 @g(i32 16,i32 %r288)
    %r159 = icmp ne i32 %r158,0
    br i1 %r159, label %L29, label %L33
L35:  ;
    %r154 = call i32 @g(i32 15,i32 %r288)
    %r155 = icmp ne i32 %r154,0
    br i1 %r155, label %L29, label %L34
L36:  ;
    %r150 = call i32 @g(i32 14,i32 %r288)
    %r151 = icmp ne i32 %r150,0
    br i1 %r151, label %L29, label %L35
L37:  ;
    %r146 = call i32 @g(i32 13,i32 %r288)
    %r147 = icmp ne i32 %r146,0
    br i1 %r147, label %L29, label %L36
L38:  ;
    %r142 = call i32 @g(i32 12,i32 %r288)
    %r143 = icmp ne i32 %r142,0
    br i1 %r143, label %L29, label %L37
L39:  ;
    %r138 = call i32 @g(i32 11,i32 %r288)
    %r139 = icmp ne i32 %r138,0
    br i1 %r139, label %L29, label %L38
L40:  ;
    %r134 = call i32 @g(i32 10,i32 %r288)
    %r135 = icmp ne i32 %r134,0
    br i1 %r135, label %L29, label %L39
L41:  ;
    %r130 = call i32 @g(i32 9,i32 %r288)
    %r131 = icmp ne i32 %r130,0
    br i1 %r131, label %L29, label %L40
L42:  ;
    %r126 = call i32 @g(i32 8,i32 %r288)
    %r127 = icmp ne i32 %r126,0
    br i1 %r127, label %L29, label %L41
L43:  ;
    %r122 = call i32 @g(i32 7,i32 %r288)
    %r123 = icmp ne i32 %r122,0
    br i1 %r123, label %L29, label %L42
L44:  ;
    %r118 = call i32 @g(i32 6,i32 %r288)
    %r119 = icmp ne i32 %r118,0
    br i1 %r119, label %L29, label %L43
L45:  ;
    %r114 = call i32 @g(i32 5,i32 %r288)
    %r115 = icmp ne i32 %r114,0
    br i1 %r115, label %L29, label %L44
L46:  ;
    %r110 = call i32 @g(i32 4,i32 %r288)
    %r111 = icmp ne i32 %r110,0
    br i1 %r111, label %L29, label %L45
L47:  ;
    %r106 = call i32 @g(i32 3,i32 %r288)
    %r107 = icmp ne i32 %r106,0
    br i1 %r107, label %L29, label %L46
L48:  ;
    %r102 = call i32 @g(i32 2,i32 %r288)
    %r103 = icmp ne i32 %r102,0
    br i1 %r103, label %L29, label %L47
L49:  ;
    %r98 = call i32 @g(i32 1,i32 %r288)
    %r99 = icmp ne i32 %r98,0
    br i1 %r99, label %L29, label %L48
L50:  ;  exiting2  header2
    %r289 = phi i32 [1,%L28],[%r187,%L51]
    %r178 = icmp slt i32 %r289,20
    br i1 %r178, label %L53, label %L52
L51:  ;  latch2
    %r187 = add i32 %r289,1
    br label %L50
L52:  ;
    %r192 = call i32 @h(i32 0)
    %r193 = icmp ne i32 %r192,0
    br i1 %r193, label %L58, label %L57
L53:  ;  exiting2
    %r181 = sub i32 %r289,1
    %r183 = call i32 @f(i32 %r181,i32 %r289)
    %r184 = icmp ne i32 %r183,0
    br i1 %r184, label %L51, label %L52
L54:  ;
    br label %L55
L55:  ;
    %r209 = call i32 @h(i32 4)
    %r210 = icmp eq i32 %r209,0
    br i1 %r210, label %L59, label %L62
L56:  ;
    %r201 = call i32 @h(i32 3)
    %r202 = icmp ne i32 %r201,0
    br i1 %r202, label %L54, label %L55
L57:  ;
    %r198 = call i32 @h(i32 2)
    %r199 = icmp eq i32 %r198,0
    br i1 %r199, label %L54, label %L56
L58:  ;
    %r195 = call i32 @h(i32 1)
    %r196 = icmp ne i32 %r195,0
    br i1 %r196, label %L54, label %L57
L59:  ;
    br label %L60
L60:  ;
    %r229 = call i32 @h(i32 9)
    %r230 = icmp ne i32 %r229,0
    br i1 %r230, label %L71, label %L70
L61:  ;
    %r221 = call i32 @h(i32 8)
    %r222 = icmp eq i32 %r221,0
    br i1 %r222, label %L59, label %L60
L62:  ;
    %r212 = call i32 @h(i32 5)
    %r213 = icmp ne i32 %r212,0
    br i1 %r213, label %L64, label %L61
L63:  ;
    %r218 = call i32 @h(i32 7)
    %r219 = icmp ne i32 %r218,0
    br i1 %r219, label %L59, label %L61
L64:  ;
    %r215 = call i32 @h(i32 6)
    %r216 = icmp eq i32 %r215,0
    br i1 %r216, label %L63, label %L61
L65:  ;
    br label %L66
L66:  ;
    %r255 = call i32 @h(i32 0)
    %r256 = icmp ne i32 %r255,0
    br i1 %r256, label %L80, label %L77
L67:  ;
    %r244 = call i32 @h(i32 14)
    %r245 = icmp ne i32 %r244,0
    br i1 %r245, label %L72, label %L66
L68:  ;
    %r241 = call i32 @h(i32 13)
    %r242 = icmp eq i32 %r241,0
    br i1 %r242, label %L65, label %L67
L69:  ;
    %r238 = call i32 @h(i32 12)
    %r239 = icmp eq i32 %r238,0
    br i1 %r239, label %L65, label %L68
L70:  ;
    %r235 = call i32 @h(i32 11)
    %r236 = icmp eq i32 %r235,0
    br i1 %r236, label %L65, label %L69
L71:  ;
    %r232 = call i32 @h(i32 10)
    %r233 = icmp eq i32 %r232,0
    br i1 %r233, label %L65, label %L70
L72:  ;
    %r247 = call i32 @h(i32 15)
    %r248 = icmp ne i32 %r247,0
    br i1 %r248, label %L65, label %L66
L73:  ;
    br label %L74
L74:  ;
    %r286 = phi i32 [1,%L73],[0,%L75]
    %r279 = load i32, ptr @sum
    %r281 = add i32 %r279,%r286
    call void @putint(i32 %r281)
    ret i32 0
L75:  ;
    %r276 = call i32 @h(i32 8)
    %r277 = icmp ne i32 %r276,0
    br i1 %r277, label %L73, label %L74
L76:  ;
    %r270 = call i32 @h(i32 6)
    %r271 = icmp ne i32 %r270,0
    br i1 %r271, label %L81, label %L75
L77:  ;
    %r267 = call i32 @h(i32 5)
    %r268 = icmp ne i32 %r267,0
    br i1 %r268, label %L73, label %L76
L78:  ;
    %r264 = call i32 @h(i32 4)
    %r265 = icmp eq i32 %r264,0
    br i1 %r265, label %L73, label %L77
L79:  ;
    %r261 = call i32 @h(i32 3)
    %r262 = icmp eq i32 %r261,0
    br i1 %r262, label %L78, label %L77
L80:  ;
    %r258 = call i32 @h(i32 2)
    %r259 = icmp ne i32 %r258,0
    br i1 %r259, label %L79, label %L77
L81:  ;
    %r273 = call i32 @h(i32 7)
    %r274 = icmp eq i32 %r273,0
    br i1 %r274, label %L73, label %L75
}
