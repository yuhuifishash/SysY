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
@len = global i32 20
define i32 @main()
{
L0:
    %r98 = alloca [40 x i32]
    %r97 = alloca [25 x i32]
    %r96 = alloca [25 x i32]
    %r51 = alloca [20 x i32]
    %r10 = alloca [20 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r10,i8 0,i32 80,i1 0)
    %r12 = getelementptr [20 x i32], ptr %r10, i32 0, i32 0
    store i32 1, ptr %r12
    %r14 = getelementptr [20 x i32], ptr %r10, i32 0, i32 1
    store i32 2, ptr %r14
    %r16 = getelementptr [20 x i32], ptr %r10, i32 0, i32 2
    store i32 3, ptr %r16
    %r18 = getelementptr [20 x i32], ptr %r10, i32 0, i32 3
    store i32 4, ptr %r18
    %r20 = getelementptr [20 x i32], ptr %r10, i32 0, i32 4
    store i32 5, ptr %r20
    %r22 = getelementptr [20 x i32], ptr %r10, i32 0, i32 5
    store i32 6, ptr %r22
    %r24 = getelementptr [20 x i32], ptr %r10, i32 0, i32 6
    store i32 7, ptr %r24
    %r26 = getelementptr [20 x i32], ptr %r10, i32 0, i32 7
    store i32 8, ptr %r26
    %r28 = getelementptr [20 x i32], ptr %r10, i32 0, i32 8
    store i32 9, ptr %r28
    %r30 = getelementptr [20 x i32], ptr %r10, i32 0, i32 9
    store i32 0, ptr %r30
    %r32 = getelementptr [20 x i32], ptr %r10, i32 0, i32 10
    store i32 1, ptr %r32
    %r34 = getelementptr [20 x i32], ptr %r10, i32 0, i32 11
    store i32 2, ptr %r34
    %r36 = getelementptr [20 x i32], ptr %r10, i32 0, i32 12
    store i32 3, ptr %r36
    %r38 = getelementptr [20 x i32], ptr %r10, i32 0, i32 13
    store i32 4, ptr %r38
    %r40 = getelementptr [20 x i32], ptr %r10, i32 0, i32 14
    store i32 5, ptr %r40
    %r42 = getelementptr [20 x i32], ptr %r10, i32 0, i32 15
    store i32 6, ptr %r42
    %r44 = getelementptr [20 x i32], ptr %r10, i32 0, i32 16
    store i32 7, ptr %r44
    %r46 = getelementptr [20 x i32], ptr %r10, i32 0, i32 17
    store i32 8, ptr %r46
    %r48 = getelementptr [20 x i32], ptr %r10, i32 0, i32 18
    store i32 9, ptr %r48
    %r50 = getelementptr [20 x i32], ptr %r10, i32 0, i32 19
    store i32 0, ptr %r50
    call void @llvm.memset.p0.i32(ptr %r51,i8 0,i32 80,i1 0)
    %r53 = getelementptr [20 x i32], ptr %r51, i32 0, i32 0
    store i32 2, ptr %r53
    %r55 = getelementptr [20 x i32], ptr %r51, i32 0, i32 1
    store i32 3, ptr %r55
    %r57 = getelementptr [20 x i32], ptr %r51, i32 0, i32 2
    store i32 4, ptr %r57
    %r59 = getelementptr [20 x i32], ptr %r51, i32 0, i32 3
    store i32 2, ptr %r59
    %r61 = getelementptr [20 x i32], ptr %r51, i32 0, i32 4
    store i32 5, ptr %r61
    %r63 = getelementptr [20 x i32], ptr %r51, i32 0, i32 5
    store i32 7, ptr %r63
    %r65 = getelementptr [20 x i32], ptr %r51, i32 0, i32 6
    store i32 9, ptr %r65
    %r67 = getelementptr [20 x i32], ptr %r51, i32 0, i32 7
    store i32 9, ptr %r67
    %r69 = getelementptr [20 x i32], ptr %r51, i32 0, i32 8
    store i32 0, ptr %r69
    %r71 = getelementptr [20 x i32], ptr %r51, i32 0, i32 9
    store i32 1, ptr %r71
    %r73 = getelementptr [20 x i32], ptr %r51, i32 0, i32 10
    store i32 9, ptr %r73
    %r75 = getelementptr [20 x i32], ptr %r51, i32 0, i32 11
    store i32 8, ptr %r75
    %r77 = getelementptr [20 x i32], ptr %r51, i32 0, i32 12
    store i32 7, ptr %r77
    %r79 = getelementptr [20 x i32], ptr %r51, i32 0, i32 13
    store i32 6, ptr %r79
    %r81 = getelementptr [20 x i32], ptr %r51, i32 0, i32 14
    store i32 4, ptr %r81
    %r83 = getelementptr [20 x i32], ptr %r51, i32 0, i32 15
    store i32 3, ptr %r83
    %r85 = getelementptr [20 x i32], ptr %r51, i32 0, i32 16
    store i32 2, ptr %r85
    %r87 = getelementptr [20 x i32], ptr %r51, i32 0, i32 17
    store i32 1, ptr %r87
    %r89 = getelementptr [20 x i32], ptr %r51, i32 0, i32 18
    store i32 2, ptr %r89
    %r91 = getelementptr [20 x i32], ptr %r51, i32 0, i32 19
    store i32 2, ptr %r91
    call void @llvm.memset.p0.i32(ptr %r98,i8 0,i32 160,i1 0)
    br label %L31
L3:
    %r290 = phi i32 [%r112,%L4],[0,%L31]
    %r106 = getelementptr [20 x i32], ptr %r10, i32 0, i32 %r290
    %r107 = load i32, ptr %r106
    %r109 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r290
    store i32 %r107, ptr %r109
    %r112 = add i32 %r290,1
    br label %L4
L4:
    %r115 = icmp slt i32 %r112,20
    br i1 %r115, label %L3, label %L5
L5:
    br label %L32
L7:
    %r292 = phi i32 [%r131,%L8],[0,%L32]
    %r125 = getelementptr [20 x i32], ptr %r51, i32 0, i32 %r292
    %r126 = load i32, ptr %r125
    %r128 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r292
    store i32 %r126, ptr %r128
    %r131 = add i32 %r292,1
    br label %L8
L8:
    %r134 = icmp slt i32 %r131,20
    br i1 %r134, label %L7, label %L9
L9:
    br label %L33
L11:
    %r294 = phi i32 [%r153,%L12],[0,%L33]
    %r150 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r294
    store i32 0, ptr %r150
    %r153 = add i32 %r294,1
    br label %L12
L12:
    %r156 = icmp sle i32 %r153,39
    br i1 %r156, label %L11, label %L13
L13:
    br label %L34
L15:
    %r296 = phi i32 [%r233,%L16],[19,%L34]
    %r280 = phi i32 [%r230,%L16],[39,%L34]
    %r170 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r296
    %r171 = load i32, ptr %r170
    br label %L35
L16:
    %r237 = icmp sgt i32 %r233,-1
    br i1 %r237, label %L15, label %L17
L17:
    %r241 = getelementptr [40 x i32], ptr %r98, i32 0, i32 0
    %r242 = load i32, ptr %r241
    %r244 = icmp ne i32 %r242,0
    br i1 %r244, label %L25, label %L26
L19:
    %r288 = phi i32 [%r216,%L20],[19,%L35]
    %r282 = phi i32 [%r219,%L20],[%r280,%L35]
    %r182 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r282
    %r183 = load i32, ptr %r182
    %r186 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r288
    %r187 = load i32, ptr %r186
    %r188 = mul i32 %r171,%r187
    %r189 = add i32 %r183,%r188
    %r192 = icmp sge i32 %r189,10
    br i1 %r192, label %L22, label %L23
L20:
    %r223 = icmp sgt i32 %r216,-1
    br i1 %r223, label %L19, label %L21
L21:
    %r228 = add i32 %r219,20
    %r230 = sub i32 %r228,1
    %r233 = sub i32 %r296,1
    br label %L16
L22:
    %r197 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r282
    store i32 %r189, ptr %r197
    %r200 = sub i32 %r282,1
    %r201 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r200
    %r202 = load i32, ptr %r201
    %r205 = sdiv i32 %r189,10
    %r206 = add i32 %r202,%r205
    store i32 %r206, ptr %r201
    br label %L24
L23:
    %r213 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r282
    store i32 %r189, ptr %r213
    br label %L24
L24:
    %r216 = sub i32 %r288,1
    %r219 = sub i32 %r282,1
    br label %L20
L25:
    %r248 = getelementptr [40 x i32], ptr %r98, i32 0, i32 0
    %r249 = load i32, ptr %r248
    call void @putint(i32 %r249)
    br label %L26
L26:
    br label %L36
L28:
    %r298 = phi i32 [%r265,%L29],[1,%L36]
    %r261 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r298
    %r262 = load i32, ptr %r261
    call void @putint(i32 %r262)
    %r265 = add i32 %r298,1
    br label %L29
L29:
    %r272 = icmp sle i32 %r265,39
    br i1 %r272, label %L28, label %L30
L30:
    ret i32 0
L31:
    br label %L3
L32:
    br label %L7
L33:
    br label %L11
L34:
    br label %L15
L35:
    br label %L19
L36:
    br label %L28
}
