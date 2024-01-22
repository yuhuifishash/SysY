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
@N = global i32 10000
define i32 @long_array(i32 %r0)
{
L0:
    %r4 = alloca [10000 x i32]
    %r3 = alloca [10000 x i32]
    %r2 = alloca [10000 x i32]
    br label %L1
L1:
    br label %L38
L3:
    %r227 = phi i32 [%r21,%L4],[0,%L38]
    %r14 = mul i32 %r227,%r227
    %r16 = srem i32 %r14,10
    %r18 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r227
    store i32 %r16, ptr %r18
    %r21 = add i32 %r227,1
    br label %L4
L4:
    %r24 = icmp slt i32 %r21,10000
    br i1 %r24, label %L3, label %L5
L5:
    br label %L39
L7:
    %r229 = phi i32 [%r46,%L8],[0,%L39]
    %r34 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r229
    %r35 = load i32, ptr %r34
    %r39 = mul i32 %r35,%r35
    %r41 = srem i32 %r39,10
    %r43 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r229
    store i32 %r41, ptr %r43
    %r46 = add i32 %r229,1
    br label %L8
L8:
    %r49 = icmp slt i32 %r46,10000
    br i1 %r49, label %L7, label %L9
L9:
    br label %L40
L11:
    %r231 = phi i32 [0,%L40],[%r75,%L12]
    %r59 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r231
    %r60 = load i32, ptr %r59
    %r64 = mul i32 %r60,%r60
    %r66 = srem i32 %r64,100
    %r68 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r231
    %r69 = load i32, ptr %r68
    %r70 = add i32 %r66,%r69
    %r72 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r231
    store i32 %r70, ptr %r72
    %r75 = add i32 %r231,1
    br label %L12
L12:
    %r78 = icmp slt i32 %r75,10000
    br i1 %r78, label %L11, label %L13
L13:
    br label %L41
L15:
    %r233 = phi i32 [%r196,%L16],[0,%L41]
    %r218 = phi i32 [0,%L41],[%r217,%L16]
    %r91 = icmp slt i32 %r233,10
    br i1 %r91, label %L18, label %L19
L16:
    %r199 = icmp slt i32 %r196,10000
    br i1 %r199, label %L15, label %L17
L17:
    ret i32 %r217
L18:
    %r96 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r233
    %r97 = load i32, ptr %r96
    %r98 = add i32 %r218,%r97
    %r100 = srem i32 %r98,1333
    call void @putint(i32 %r100)
    br label %L20
L19:
    %r104 = icmp slt i32 %r233,20
    br i1 %r104, label %L21, label %L22
L20:
    %r217 = phi i32 [%r100,%L18],[%r222,%L23]
    %r196 = add i32 %r233,1
    br label %L16
L21:
    br label %L42
L22:
    %r136 = icmp slt i32 %r233,30
    br i1 %r136, label %L28, label %L29
L23:
    %r222 = phi i32 [%r124,%L27],[%r223,%L30]
    br label %L20
L25:
    %r220 = phi i32 [%r124,%L26],[%r218,%L42]
    %r215 = phi i32 [%r127,%L26],[5000,%L42]
    %r119 = load i32, ptr %r118
    %r120 = add i32 %r220,%r119
    %r122 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r215
    %r123 = load i32, ptr %r122
    %r124 = sub i32 %r120,%r123
    %r127 = add i32 %r215,1
    br label %L26
L26:
    %r130 = icmp slt i32 %r127,10000
    br i1 %r130, label %L25, label %L27
L27:
    call void @putint(i32 %r124)
    br label %L23
L28:
    br label %L43
L29:
    %r187 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r233
    %r188 = load i32, ptr %r187
    %r190 = mul i32 %r188,%r0
    %r191 = add i32 %r218,%r190
    %r193 = srem i32 %r191,99988
    br label %L30
L30:
    %r223 = phi i32 [%r193,%L29],[%r224,%L34]
    br label %L23
L32:
    %r225 = phi i32 [%r224,%L33],[%r218,%L43]
    %r209 = phi i32 [%r208,%L33],[5000,%L43]
    %r150 = icmp sgt i32 %r209,2233
    br i1 %r150, label %L35, label %L36
L33:
    %r181 = icmp slt i32 %r208,10000
    br i1 %r181, label %L32, label %L34
L34:
    call void @putint(i32 %r224)
    br label %L30
L35:
    %r155 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r233
    %r156 = load i32, ptr %r155
    %r157 = add i32 %r225,%r156
    %r159 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r209
    %r160 = load i32, ptr %r159
    %r161 = sub i32 %r157,%r160
    %r164 = add i32 %r209,1
    br label %L37
L36:
    %r167 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r233
    %r168 = load i32, ptr %r167
    %r169 = add i32 %r225,%r168
    %r171 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r209
    %r172 = load i32, ptr %r171
    %r173 = add i32 %r169,%r172
    %r175 = srem i32 %r173,13333
    %r178 = add i32 %r209,2
    br label %L37
L37:
    %r224 = phi i32 [%r161,%L35],[%r175,%L36]
    %r208 = phi i32 [%r164,%L35],[%r178,%L36]
    br label %L33
L38:
    br label %L3
L39:
    br label %L7
L40:
    br label %L11
L41:
    br label %L15
L42:
    %r118 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r233
    br label %L25
L43:
    br label %L32
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @long_array(i32 9)
    ret i32 %r1
}
