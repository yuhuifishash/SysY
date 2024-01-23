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
@g = global i32 zeroinitializer
@h = global i32 zeroinitializer
@f = global i32 zeroinitializer
@e = global i32 zeroinitializer
define i32 @EightWhile()
{
L0:
    br label %L1
L1:
    br label %L36
L3:
    %r170 = phi i32 [%r179,%L4],[5,%L36]
    %r168 = phi i32 [%r131,%L4],[6,%L36]
    %r158 = phi i32 [%r157,%L4],[10,%L36]
    %r19 = add i32 %r170,3
    %r22 = icmp slt i32 %r168,10
    br i1 %r22, label %L34, label %L9
L4:
    %r134 = icmp slt i32 %r179,20
    br i1 %r134, label %L3, label %L5
L5:
    %r140 = add i32 %r131,%r157
    %r141 = add i32 %r179,%r140
    %r143 = add i32 %r141,7
    %r144 = load i32, ptr @e
    %r146 = add i32 %r144,%r157
    %r147 = load i32, ptr @g
    %r148 = sub i32 %r146,%r147
    %r149 = load i32, ptr @h
    %r150 = add i32 %r148,%r149
    %r151 = sub i32 %r143,%r150
    ret i32 %r151
L7:
    %r178 = phi i32 [%r19,%L34],[%r175,%L8]
    %r166 = phi i32 [%r27,%L8],[%r168,%L34]
    %r156 = phi i32 [%r158,%L34],[%r115,%L8]
    %r27 = add i32 %r166,1
    br label %L11
L8:
    %r126 = icmp slt i32 %r27,10
    br i1 %r126, label %L7, label %L9
L9:
    %r179 = phi i32 [%r19,%L3],[%r175,%L8]
    %r167 = phi i32 [%r168,%L3],[%r27,%L8]
    %r157 = phi i32 [%r158,%L3],[%r115,%L8]
    %r131 = sub i32 %r167,2
    br label %L4
L11:
    %r38 = icmp slt i32 %r156,20
    br i1 %r38, label %L35, label %L17
L12:
    br label %L13
L13:
    br label %L8
L15:
    %r174 = phi i32 [%r173,%L16],[%r178,%L35]
    %r152 = phi i32 [%r43,%L16],[%r156,%L35]
    %r43 = add i32 %r152,3
    %r44 = load i32, ptr @e
    %r46 = icmp sgt i32 %r44,1
    br i1 %r46, label %L38, label %L21
L16:
    %r110 = icmp slt i32 %r43,20
    br i1 %r110, label %L15, label %L17
L17:
    %r175 = phi i32 [%r178,%L11],[%r173,%L16]
    %r153 = phi i32 [%r156,%L11],[%r43,%L16]
    %r115 = sub i32 %r153,1
    br label %L12
L19:
    %r172 = phi i32 [%r181,%L20],[%r174,%L38]
    %r49 = load i32, ptr @e
    %r51 = sub i32 %r49,1
    store i32 %r51, ptr @e
    %r52 = load i32, ptr @f
    %r54 = icmp sgt i32 %r52,2
    br i1 %r54, label %L39, label %L25
L20:
    %r100 = load i32, ptr @e
    %r102 = icmp sgt i32 %r100,1
    br i1 %r102, label %L19, label %L21
L21:
    %r173 = phi i32 [%r174,%L15],[%r181,%L20]
    %r105 = load i32, ptr @e
    %r107 = add i32 %r105,1
    store i32 %r107, ptr @e
    br label %L16
L23:
    %r180 = phi i32 [%r183,%L24],[%r172,%L39]
    %r57 = load i32, ptr @f
    %r59 = sub i32 %r57,2
    store i32 %r59, ptr @f
    %r60 = load i32, ptr @g
    %r62 = icmp slt i32 %r60,3
    br i1 %r62, label %L40, label %L29
L24:
    %r92 = load i32, ptr @f
    %r94 = icmp sgt i32 %r92,2
    br i1 %r94, label %L23, label %L25
L25:
    %r181 = phi i32 [%r172,%L19],[%r183,%L24]
    %r97 = load i32, ptr @f
    %r99 = add i32 %r97,1
    store i32 %r99, ptr @f
    br label %L20
L27:
    %r182 = phi i32 [%r180,%L40],[%r185,%L28]
    %r65 = load i32, ptr @g
    %r67 = add i32 %r65,10
    store i32 %r67, ptr @g
    %r68 = load i32, ptr @h
    %r70 = icmp slt i32 %r68,10
    br i1 %r70, label %L37, label %L33
L28:
    %r84 = load i32, ptr @g
    %r86 = icmp slt i32 %r84,3
    br i1 %r86, label %L27, label %L29
L29:
    %r183 = phi i32 [%r180,%L23],[%r185,%L28]
    %r89 = load i32, ptr @g
    %r91 = sub i32 %r89,8
    store i32 %r91, ptr @g
    br label %L24
L31:
    %r184 = phi i32 [%r184,%L32],[%r182,%L37]
    %r73 = load i32, ptr @h
    %r75 = add i32 %r73,8
    store i32 %r75, ptr @h
    br label %L32
L32:
    %r76 = load i32, ptr @h
    %r78 = icmp slt i32 %r76,10
    br i1 %r78, label %L31, label %L33
L33:
    %r185 = phi i32 [%r182,%L27],[%r184,%L32]
    %r81 = load i32, ptr @h
    %r83 = sub i32 %r81,1
    store i32 %r83, ptr @h
    br label %L28
L34:
    br label %L7
L35:
    br label %L15
L36:
    br label %L3
L37:
    br label %L31
L38:
    br label %L19
L39:
    br label %L23
L40:
    br label %L27
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 1, ptr @g
    store i32 2, ptr @h
    store i32 4, ptr @e
    store i32 6, ptr @f
    %r4 = call i32 @EightWhile()
    ret i32 %r4
}
