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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r262 = phi i32 [0,%L1],[%r261,%L7]
    %r247 = phi i32 [0,%L1],[%r126,%L7]
    %r6 = icmp slt i32 %r247,3
    br i1 %r6, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    ret i32 %r262
L5:  ;
    %r261 = phi i32 [%r262,%L3],[%r260,%L10]
    %r246 = phi i32 [0,%L3],[%r123,%L10]
    %r11 = icmp slt i32 %r246,4
    br i1 %r11, label %L6, label %L7
L6:  ;
    br label %L8
L7:  ;
    %r126 = add i32 %r247,1
    br label %L2
L8:  ;
    %r260 = phi i32 [%r261,%L6],[%r259,%L13]
    %r244 = phi i32 [0,%L6],[%r120,%L13]
    %r16 = icmp slt i32 %r244,5
    br i1 %r16, label %L9, label %L10
L9:  ;
    br label %L11
L10:  ;
    %r123 = add i32 %r246,1
    br label %L5
L11:  ;
    %r259 = phi i32 [%r260,%L9],[%r258,%L16]
    %r241 = phi i32 [0,%L9],[%r117,%L16]
    %r21 = icmp slt i32 %r241,3
    br i1 %r21, label %L12, label %L13
L12:  ;
    br label %L14
L13:  ;
    %r120 = add i32 %r244,1
    br label %L8
L14:  ;
    %r258 = phi i32 [%r259,%L12],[%r257,%L19]
    %r237 = phi i32 [0,%L12],[%r114,%L19]
    %r26 = icmp slt i32 %r237,5
    br i1 %r26, label %L15, label %L16
L15:  ;
    br label %L17
L16:  ;
    %r117 = add i32 %r241,1
    br label %L11
L17:  ;
    %r257 = phi i32 [%r258,%L15],[%r256,%L22]
    %r232 = phi i32 [0,%L15],[%r111,%L22]
    %r31 = icmp slt i32 %r232,4
    br i1 %r31, label %L18, label %L19
L18:  ;
    br label %L20
L19:  ;
    %r114 = add i32 %r237,1
    br label %L14
L20:  ;
    %r256 = phi i32 [%r257,%L18],[%r255,%L25]
    %r226 = phi i32 [0,%L18],[%r108,%L25]
    %r36 = icmp slt i32 %r226,6
    br i1 %r36, label %L21, label %L22
L21:  ;
    br label %L23
L22:  ;
    %r111 = add i32 %r232,1
    br label %L17
L23:  ;
    %r255 = phi i32 [%r256,%L21],[%r254,%L28]
    %r219 = phi i32 [0,%L21],[%r105,%L28]
    %r41 = icmp slt i32 %r219,5
    br i1 %r41, label %L24, label %L25
L24:  ;
    br label %L26
L25:  ;
    %r108 = add i32 %r226,1
    br label %L20
L26:  ;
    %r254 = phi i32 [%r255,%L24],[%r253,%L31]
    %r211 = phi i32 [0,%L24],[%r102,%L31]
    %r46 = icmp slt i32 %r211,5
    br i1 %r46, label %L27, label %L28
L27:  ;
    br label %L29
L28:  ;
    %r105 = add i32 %r219,1
    br label %L23
L29:  ;
    %r253 = phi i32 [%r254,%L27],[%r252,%L34]
    %r202 = phi i32 [0,%L27],[%r99,%L34]
    %r51 = icmp slt i32 %r202,3
    br i1 %r51, label %L30, label %L31
L30:  ;
    br label %L32
L31:  ;
    %r102 = add i32 %r211,1
    br label %L26
L32:  ;
    %r252 = phi i32 [%r253,%L30],[%r251,%L37]
    %r192 = phi i32 [0,%L30],[%r96,%L37]
    %r56 = icmp slt i32 %r192,6
    br i1 %r56, label %L33, label %L34
L33:  ;
    br label %L35
L34:  ;
    %r99 = add i32 %r202,1
    br label %L29
L35:  ;
    %r251 = phi i32 [%r252,%L33],[%r250,%L40]
    %r181 = phi i32 [0,%L33],[%r93,%L40]
    %r61 = icmp slt i32 %r181,7
    br i1 %r61, label %L36, label %L37
L36:  ;
    br label %L38
L37:  ;
    %r96 = add i32 %r192,2
    br label %L32
L38:  ;
    %r250 = phi i32 [%r251,%L36],[%r249,%L43]
    %r169 = phi i32 [0,%L36],[%r90,%L43]
    %r66 = icmp slt i32 %r169,5
    br i1 %r66, label %L39, label %L40
L39:  ;
    br label %L41
L40:  ;
    %r93 = add i32 %r181,2
    br label %L35
L41:  ;
    %r249 = phi i32 [%r250,%L39],[%r248,%L46]
    %r156 = phi i32 [0,%L39],[%r87,%L46]
    %r71 = icmp slt i32 %r156,3
    br i1 %r71, label %L42, label %L43
L42:  ;
    br label %L44
L43:  ;
    %r90 = add i32 %r169,2
    br label %L38
L44:  ;
    %r248 = phi i32 [%r249,%L42],[%r81,%L45]
    %r142 = phi i32 [0,%L42],[%r84,%L45]
    %r76 = icmp slt i32 %r142,6
    br i1 %r76, label %L45, label %L46
L45:  ;
    %r79 = add i32 %r248,3
    %r81 = srem i32 %r79,999
    %r84 = add i32 %r142,3
    br label %L44
L46:  ;
    %r87 = add i32 %r156,1
    br label %L41
}
