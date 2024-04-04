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
    %r94 = alloca i32
    %r92 = alloca i32
    %r51 = alloca [20 x i32]
    %r10 = alloca [20 x i32]
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    call void @llvm.memset.p0.i32(ptr %r10,i8 0,i32 80,i1 0)
    %r11 = add i32 1,0
    %r12 = getelementptr [20 x i32], ptr %r10, i32 0, i32 0
    store i32 %r11, ptr %r12
    %r13 = add i32 2,0
    %r14 = getelementptr [20 x i32], ptr %r10, i32 0, i32 1
    store i32 %r13, ptr %r14
    %r15 = add i32 3,0
    %r16 = getelementptr [20 x i32], ptr %r10, i32 0, i32 2
    store i32 %r15, ptr %r16
    %r17 = add i32 4,0
    %r18 = getelementptr [20 x i32], ptr %r10, i32 0, i32 3
    store i32 %r17, ptr %r18
    %r19 = add i32 5,0
    %r20 = getelementptr [20 x i32], ptr %r10, i32 0, i32 4
    store i32 %r19, ptr %r20
    %r21 = add i32 6,0
    %r22 = getelementptr [20 x i32], ptr %r10, i32 0, i32 5
    store i32 %r21, ptr %r22
    %r23 = add i32 7,0
    %r24 = getelementptr [20 x i32], ptr %r10, i32 0, i32 6
    store i32 %r23, ptr %r24
    %r25 = add i32 8,0
    %r26 = getelementptr [20 x i32], ptr %r10, i32 0, i32 7
    store i32 %r25, ptr %r26
    %r27 = add i32 9,0
    %r28 = getelementptr [20 x i32], ptr %r10, i32 0, i32 8
    store i32 %r27, ptr %r28
    %r29 = add i32 0,0
    %r30 = getelementptr [20 x i32], ptr %r10, i32 0, i32 9
    store i32 %r29, ptr %r30
    %r31 = add i32 1,0
    %r32 = getelementptr [20 x i32], ptr %r10, i32 0, i32 10
    store i32 %r31, ptr %r32
    %r33 = add i32 2,0
    %r34 = getelementptr [20 x i32], ptr %r10, i32 0, i32 11
    store i32 %r33, ptr %r34
    %r35 = add i32 3,0
    %r36 = getelementptr [20 x i32], ptr %r10, i32 0, i32 12
    store i32 %r35, ptr %r36
    %r37 = add i32 4,0
    %r38 = getelementptr [20 x i32], ptr %r10, i32 0, i32 13
    store i32 %r37, ptr %r38
    %r39 = add i32 5,0
    %r40 = getelementptr [20 x i32], ptr %r10, i32 0, i32 14
    store i32 %r39, ptr %r40
    %r41 = add i32 6,0
    %r42 = getelementptr [20 x i32], ptr %r10, i32 0, i32 15
    store i32 %r41, ptr %r42
    %r43 = add i32 7,0
    %r44 = getelementptr [20 x i32], ptr %r10, i32 0, i32 16
    store i32 %r43, ptr %r44
    %r45 = add i32 8,0
    %r46 = getelementptr [20 x i32], ptr %r10, i32 0, i32 17
    store i32 %r45, ptr %r46
    %r47 = add i32 9,0
    %r48 = getelementptr [20 x i32], ptr %r10, i32 0, i32 18
    store i32 %r47, ptr %r48
    %r49 = add i32 0,0
    %r50 = getelementptr [20 x i32], ptr %r10, i32 0, i32 19
    store i32 %r49, ptr %r50
    call void @llvm.memset.p0.i32(ptr %r51,i8 0,i32 80,i1 0)
    %r52 = add i32 2,0
    %r53 = getelementptr [20 x i32], ptr %r51, i32 0, i32 0
    store i32 %r52, ptr %r53
    %r54 = add i32 3,0
    %r55 = getelementptr [20 x i32], ptr %r51, i32 0, i32 1
    store i32 %r54, ptr %r55
    %r56 = add i32 4,0
    %r57 = getelementptr [20 x i32], ptr %r51, i32 0, i32 2
    store i32 %r56, ptr %r57
    %r58 = add i32 2,0
    %r59 = getelementptr [20 x i32], ptr %r51, i32 0, i32 3
    store i32 %r58, ptr %r59
    %r60 = add i32 5,0
    %r61 = getelementptr [20 x i32], ptr %r51, i32 0, i32 4
    store i32 %r60, ptr %r61
    %r62 = add i32 7,0
    %r63 = getelementptr [20 x i32], ptr %r51, i32 0, i32 5
    store i32 %r62, ptr %r63
    %r64 = add i32 9,0
    %r65 = getelementptr [20 x i32], ptr %r51, i32 0, i32 6
    store i32 %r64, ptr %r65
    %r66 = add i32 9,0
    %r67 = getelementptr [20 x i32], ptr %r51, i32 0, i32 7
    store i32 %r66, ptr %r67
    %r68 = add i32 0,0
    %r69 = getelementptr [20 x i32], ptr %r51, i32 0, i32 8
    store i32 %r68, ptr %r69
    %r70 = add i32 1,0
    %r71 = getelementptr [20 x i32], ptr %r51, i32 0, i32 9
    store i32 %r70, ptr %r71
    %r72 = add i32 9,0
    %r73 = getelementptr [20 x i32], ptr %r51, i32 0, i32 10
    store i32 %r72, ptr %r73
    %r74 = add i32 8,0
    %r75 = getelementptr [20 x i32], ptr %r51, i32 0, i32 11
    store i32 %r74, ptr %r75
    %r76 = add i32 7,0
    %r77 = getelementptr [20 x i32], ptr %r51, i32 0, i32 12
    store i32 %r76, ptr %r77
    %r78 = add i32 6,0
    %r79 = getelementptr [20 x i32], ptr %r51, i32 0, i32 13
    store i32 %r78, ptr %r79
    %r80 = add i32 4,0
    %r81 = getelementptr [20 x i32], ptr %r51, i32 0, i32 14
    store i32 %r80, ptr %r81
    %r82 = add i32 3,0
    %r83 = getelementptr [20 x i32], ptr %r51, i32 0, i32 15
    store i32 %r82, ptr %r83
    %r84 = add i32 2,0
    %r85 = getelementptr [20 x i32], ptr %r51, i32 0, i32 16
    store i32 %r84, ptr %r85
    %r86 = add i32 1,0
    %r87 = getelementptr [20 x i32], ptr %r51, i32 0, i32 17
    store i32 %r86, ptr %r87
    %r88 = add i32 2,0
    %r89 = getelementptr [20 x i32], ptr %r51, i32 0, i32 18
    store i32 %r88, ptr %r89
    %r90 = add i32 2,0
    %r91 = getelementptr [20 x i32], ptr %r51, i32 0, i32 19
    store i32 %r90, ptr %r91
    %r93 = add i32 0,20
    store i32 %r93, ptr %r92
    %r95 = add i32 0,20
    store i32 %r95, ptr %r94
    call void @llvm.memset.p0.i32(ptr %r98,i8 0,i32 160,i1 0)
    %r99 = add i32 0,0
    store i32 %r99, ptr %r0
    br label %L2
L2:  ;
    %r100 = load i32, ptr %r0
    %r101 = load i32, ptr %r92
    %r102 = icmp slt i32 %r100,%r101
    br i1 %r102, label %L3, label %L4
L3:  ;
    %r103 = load i32, ptr %r0
    %r104 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r103
    %r105 = load i32, ptr %r0
    %r106 = getelementptr [20 x i32], ptr %r10, i32 0, i32 %r105
    %r107 = load i32, ptr %r106
    store i32 %r107, ptr %r104
    %r108 = load i32, ptr %r0
    %r109 = add i32 1,0
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r0
    br label %L2
L4:  ;
    %r111 = add i32 0,0
    store i32 %r111, ptr %r0
    br label %L5
L5:  ;
    %r112 = load i32, ptr %r0
    %r113 = load i32, ptr %r94
    %r114 = icmp slt i32 %r112,%r113
    br i1 %r114, label %L6, label %L7
L6:  ;
    %r115 = load i32, ptr %r0
    %r116 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r115
    %r117 = load i32, ptr %r0
    %r118 = getelementptr [20 x i32], ptr %r51, i32 0, i32 %r117
    %r119 = load i32, ptr %r118
    store i32 %r119, ptr %r116
    %r120 = load i32, ptr %r0
    %r121 = add i32 1,0
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r0
    br label %L5
L7:  ;
    %r123 = load i32, ptr %r92
    %r124 = load i32, ptr %r94
    %r125 = add i32 %r123,%r124
    %r126 = add i32 1,0
    %r127 = sub i32 %r125,%r126
    store i32 %r127, ptr %r6
    %r128 = add i32 0,0
    store i32 %r128, ptr %r0
    br label %L8
L8:  ;
    %r129 = load i32, ptr %r0
    %r130 = load i32, ptr %r6
    %r131 = icmp sle i32 %r129,%r130
    br i1 %r131, label %L9, label %L10
L9:  ;
    %r132 = load i32, ptr %r0
    %r133 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r132
    %r134 = add i32 0,0
    store i32 %r134, ptr %r133
    %r135 = load i32, ptr %r0
    %r136 = add i32 1,0
    %r137 = add i32 %r135,%r136
    store i32 %r137, ptr %r0
    br label %L8
L10:  ;
    %r138 = add i32 0,0
    store i32 %r138, ptr %r8
    %r139 = load i32, ptr %r94
    %r140 = add i32 1,0
    %r141 = sub i32 %r139,%r140
    store i32 %r141, ptr %r0
    br label %L11
L11:  ;
    %r142 = load i32, ptr %r0
    %r143 = add i32 1,0
    %r144 = sub i32 0,%r143
    %r145 = icmp sgt i32 %r142,%r144
    br i1 %r145, label %L12, label %L13
L12:  ;
    %r146 = load i32, ptr %r0
    %r147 = getelementptr [25 x i32], ptr %r97, i32 0, i32 %r146
    %r148 = load i32, ptr %r147
    store i32 %r148, ptr %r4
    %r149 = load i32, ptr %r92
    %r150 = add i32 1,0
    %r151 = sub i32 %r149,%r150
    store i32 %r151, ptr %r2
    br label %L14
L13:  ;
    %r201 = add i32 0,0
    %r202 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r201
    %r203 = load i32, ptr %r202
    %r204 = add i32 0,0
    %r205 = icmp ne i32 %r203,%r204
    br i1 %r205, label %L20, label %L21
L14:  ;
    %r152 = load i32, ptr %r2
    %r153 = add i32 1,0
    %r154 = sub i32 0,%r153
    %r155 = icmp sgt i32 %r152,%r154
    br i1 %r155, label %L15, label %L16
L15:  ;
    %r156 = load i32, ptr %r6
    %r157 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r156
    %r158 = load i32, ptr %r157
    %r159 = load i32, ptr %r4
    %r160 = load i32, ptr %r2
    %r161 = getelementptr [25 x i32], ptr %r96, i32 0, i32 %r160
    %r162 = load i32, ptr %r161
    %r163 = mul i32 %r159,%r162
    %r164 = add i32 %r158,%r163
    store i32 %r164, ptr %r8
    %r165 = load i32, ptr %r8
    %r166 = add i32 10,0
    %r167 = icmp sge i32 %r165,%r166
    br i1 %r167, label %L17, label %L18
L16:  ;
    %r193 = load i32, ptr %r6
    %r194 = load i32, ptr %r92
    %r195 = add i32 %r193,%r194
    %r196 = add i32 1,0
    %r197 = sub i32 %r195,%r196
    store i32 %r197, ptr %r6
    %r198 = load i32, ptr %r0
    %r199 = add i32 1,0
    %r200 = sub i32 %r198,%r199
    store i32 %r200, ptr %r0
    br label %L11
L17:  ;
    %r168 = load i32, ptr %r6
    %r169 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r168
    %r170 = load i32, ptr %r8
    store i32 %r170, ptr %r169
    %r171 = load i32, ptr %r6
    %r172 = add i32 1,0
    %r173 = sub i32 %r171,%r172
    %r174 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r173
    %r175 = load i32, ptr %r6
    %r176 = add i32 1,0
    %r177 = sub i32 %r175,%r176
    %r178 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r177
    %r179 = load i32, ptr %r178
    %r180 = load i32, ptr %r8
    %r181 = add i32 10,0
    %r182 = sdiv i32 %r180,%r181
    %r183 = add i32 %r179,%r182
    store i32 %r183, ptr %r174
    br label %L19
L18:  ;
    %r184 = load i32, ptr %r6
    %r185 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r184
    %r186 = load i32, ptr %r8
    store i32 %r186, ptr %r185
    br label %L19
L19:  ;
    %r187 = load i32, ptr %r2
    %r188 = add i32 1,0
    %r189 = sub i32 %r187,%r188
    store i32 %r189, ptr %r2
    %r190 = load i32, ptr %r6
    %r191 = add i32 1,0
    %r192 = sub i32 %r190,%r191
    store i32 %r192, ptr %r6
    br label %L14
L20:  ;
    %r206 = add i32 0,0
    %r207 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r206
    %r208 = load i32, ptr %r207
    call void @putint(i32 %r208)
    br label %L21
L21:  ;
    %r209 = add i32 1,0
    store i32 %r209, ptr %r0
    br label %L22
L22:  ;
    %r210 = load i32, ptr %r0
    %r211 = load i32, ptr %r92
    %r212 = load i32, ptr %r94
    %r213 = add i32 %r211,%r212
    %r214 = add i32 1,0
    %r215 = sub i32 %r213,%r214
    %r216 = icmp sle i32 %r210,%r215
    br i1 %r216, label %L23, label %L24
L23:  ;
    %r217 = load i32, ptr %r0
    %r218 = getelementptr [40 x i32], ptr %r98, i32 0, i32 %r217
    %r219 = load i32, ptr %r218
    call void @putint(i32 %r219)
    %r220 = load i32, ptr %r0
    %r221 = add i32 1,0
    %r222 = add i32 %r220,%r221
    store i32 %r222, ptr %r0
    br label %L22
L24:  ;
    %r223 = add i32 0,0
    ret i32 %r223
}
