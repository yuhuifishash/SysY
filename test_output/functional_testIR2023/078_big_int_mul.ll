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
L0:  ;
    %r98 = alloca [40 x i32]
    %r97 = alloca [25 x i32]
    %r96 = alloca [25 x i32]
    %r51 = alloca [20 x i32]
    %r10 = alloca [20 x i32]
    br label %L1
L1:  ;
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
    br label %L2
L2:  ;
    %r231 = phi i32 [0,%L1],[%r110,%L3]
    %r102 = icmp slt i32 %r231,20
    br i1 %r102, label %L3, label %L4
L3:  ;
    %r104 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r231
    %r106 = getelementptr [20 x i32], ptr %r10, i32 0, i32 %r231
    %r107 = load i32, ptr %r106
    store i32 %r107, ptr %r104
    %r110 = add i32 %r231,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r232 = phi i32 [0,%L4],[%r122,%L6]
    %r114 = icmp slt i32 %r232,20
    br i1 %r114, label %L6, label %L7
L6:  ;
    %r116 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r232
    %r118 = getelementptr [20 x i32], ptr %r51, i32 0, i32 %r232
    %r119 = load i32, ptr %r118
    store i32 %r119, ptr %r116
    %r122 = add i32 %r232,1
    br label %L5
L7:  ;
    br label %L8
L8:  ;
    %r233 = phi i32 [0,%L7],[%r137,%L9]
    %r131 = icmp sle i32 %r233,39
    br i1 %r131, label %L9, label %L10
L9:  ;
    %r133 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r233
    store i32 0, ptr %r133
    %r137 = add i32 %r233,1
    br label %L8
L10:  ;
    br label %L11
L11:  ;
    %r234 = phi i32 [19,%L10],[%r200,%L16]
    %r229 = phi i32 [0,%L10],[%r230,%L16]
    %r228 = phi i32 [0,%L10],[%r148,%L16]
    %r226 = phi i32 [39,%L10],[%r197,%L16]
    %r225 = phi i32 [0,%L10],[%r224,%L16]
    %r145 = icmp sgt i32 %r234,-1
    br i1 %r145, label %L12, label %L13
L12:  ;
    %r147 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r234
    %r148 = load i32, ptr %r147
    br label %L14
L13:  ;
    %r202 = getelementptr [40 x i32], ptr %r98, i32 0, i32 0
    %r203 = load i32, ptr %r202
    %r205 = icmp ne i32 %r203,0
    br i1 %r205, label %L20, label %L21
L14:  ;
    %r230 = phi i32 [19,%L12],[%r189,%L19]
    %r227 = phi i32 [%r226,%L12],[%r192,%L19]
    %r224 = phi i32 [%r225,%L12],[%r164,%L19]
    %r155 = icmp sgt i32 %r230,-1
    br i1 %r155, label %L15, label %L16
L15:  ;
    %r157 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r227
    %r158 = load i32, ptr %r157
    %r161 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r230
    %r162 = load i32, ptr %r161
    %r163 = mul i32 %r148,%r162
    %r164 = add i32 %r158,%r163
    %r167 = icmp sge i32 %r164,10
    br i1 %r167, label %L17, label %L18
L16:  ;
    %r195 = add i32 %r227,20
    %r197 = sub i32 %r195,1
    %r200 = sub i32 %r234,1
    br label %L11
L17:  ;
    %r169 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r227
    store i32 %r164, ptr %r169
    %r173 = sub i32 %r227,1
    %r174 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r173
    %r177 = sub i32 %r227,1
    %r178 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r177
    %r179 = load i32, ptr %r178
    %r182 = sdiv i32 %r164,10
    %r183 = add i32 %r179,%r182
    store i32 %r183, ptr %r174
    br label %L19
L18:  ;
    %r185 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r227
    store i32 %r164, ptr %r185
    br label %L19
L19:  ;
    %r189 = sub i32 %r230,1
    %r192 = sub i32 %r227,1
    br label %L14
L20:  ;
    %r207 = getelementptr [40 x i32], ptr %r98, i32 0, i32 0
    %r208 = load i32, ptr %r207
    call void @putint(i32 %r208)
    br label %L21
L21:  ;
    br label %L22
L22:  ;
    %r235 = phi i32 [1,%L21],[%r222,%L23]
    %r216 = icmp sle i32 %r235,39
    br i1 %r216, label %L23, label %L24
L23:  ;
    %r218 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r235
    %r219 = load i32, ptr %r218
    call void @putint(i32 %r219)
    %r222 = add i32 %r235,1
    br label %L22
L24:  ;
    ret i32 0
}
