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
    %r93 = alloca [40 x i32]
    %r92 = alloca [25 x i32]
    %r91 = alloca [25 x i32]
    %r89 = alloca i32
    %r87 = alloca i32
    %r46 = alloca [20 x i32]
    %r5 = alloca [20 x i32]
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    call void @llvm.memset.p0.i32(ptr %r5,i8 0,i32 80,i1 0)
    %r6 = add i32 1,0
    %r7 = getelementptr [20 x i32], ptr %r5, i32 0, i32 0
    store i32 %r6, ptr %r7
    %r8 = add i32 2,0
    %r9 = getelementptr [20 x i32], ptr %r5, i32 0, i32 1
    store i32 %r8, ptr %r9
    %r10 = add i32 3,0
    %r11 = getelementptr [20 x i32], ptr %r5, i32 0, i32 2
    store i32 %r10, ptr %r11
    %r12 = add i32 4,0
    %r13 = getelementptr [20 x i32], ptr %r5, i32 0, i32 3
    store i32 %r12, ptr %r13
    %r14 = add i32 5,0
    %r15 = getelementptr [20 x i32], ptr %r5, i32 0, i32 4
    store i32 %r14, ptr %r15
    %r16 = add i32 6,0
    %r17 = getelementptr [20 x i32], ptr %r5, i32 0, i32 5
    store i32 %r16, ptr %r17
    %r18 = add i32 7,0
    %r19 = getelementptr [20 x i32], ptr %r5, i32 0, i32 6
    store i32 %r18, ptr %r19
    %r20 = add i32 8,0
    %r21 = getelementptr [20 x i32], ptr %r5, i32 0, i32 7
    store i32 %r20, ptr %r21
    %r22 = add i32 9,0
    %r23 = getelementptr [20 x i32], ptr %r5, i32 0, i32 8
    store i32 %r22, ptr %r23
    %r24 = add i32 0,0
    %r25 = getelementptr [20 x i32], ptr %r5, i32 0, i32 9
    store i32 %r24, ptr %r25
    %r26 = add i32 1,0
    %r27 = getelementptr [20 x i32], ptr %r5, i32 0, i32 10
    store i32 %r26, ptr %r27
    %r28 = add i32 2,0
    %r29 = getelementptr [20 x i32], ptr %r5, i32 0, i32 11
    store i32 %r28, ptr %r29
    %r30 = add i32 3,0
    %r31 = getelementptr [20 x i32], ptr %r5, i32 0, i32 12
    store i32 %r30, ptr %r31
    %r32 = add i32 4,0
    %r33 = getelementptr [20 x i32], ptr %r5, i32 0, i32 13
    store i32 %r32, ptr %r33
    %r34 = add i32 5,0
    %r35 = getelementptr [20 x i32], ptr %r5, i32 0, i32 14
    store i32 %r34, ptr %r35
    %r36 = add i32 6,0
    %r37 = getelementptr [20 x i32], ptr %r5, i32 0, i32 15
    store i32 %r36, ptr %r37
    %r38 = add i32 7,0
    %r39 = getelementptr [20 x i32], ptr %r5, i32 0, i32 16
    store i32 %r38, ptr %r39
    %r40 = add i32 8,0
    %r41 = getelementptr [20 x i32], ptr %r5, i32 0, i32 17
    store i32 %r40, ptr %r41
    %r42 = add i32 9,0
    %r43 = getelementptr [20 x i32], ptr %r5, i32 0, i32 18
    store i32 %r42, ptr %r43
    %r44 = add i32 0,0
    %r45 = getelementptr [20 x i32], ptr %r5, i32 0, i32 19
    store i32 %r44, ptr %r45
    call void @llvm.memset.p0.i32(ptr %r46,i8 0,i32 80,i1 0)
    %r47 = add i32 2,0
    %r48 = getelementptr [20 x i32], ptr %r46, i32 0, i32 0
    store i32 %r47, ptr %r48
    %r49 = add i32 3,0
    %r50 = getelementptr [20 x i32], ptr %r46, i32 0, i32 1
    store i32 %r49, ptr %r50
    %r51 = add i32 4,0
    %r52 = getelementptr [20 x i32], ptr %r46, i32 0, i32 2
    store i32 %r51, ptr %r52
    %r53 = add i32 2,0
    %r54 = getelementptr [20 x i32], ptr %r46, i32 0, i32 3
    store i32 %r53, ptr %r54
    %r55 = add i32 5,0
    %r56 = getelementptr [20 x i32], ptr %r46, i32 0, i32 4
    store i32 %r55, ptr %r56
    %r57 = add i32 7,0
    %r58 = getelementptr [20 x i32], ptr %r46, i32 0, i32 5
    store i32 %r57, ptr %r58
    %r59 = add i32 9,0
    %r60 = getelementptr [20 x i32], ptr %r46, i32 0, i32 6
    store i32 %r59, ptr %r60
    %r61 = add i32 9,0
    %r62 = getelementptr [20 x i32], ptr %r46, i32 0, i32 7
    store i32 %r61, ptr %r62
    %r63 = add i32 0,0
    %r64 = getelementptr [20 x i32], ptr %r46, i32 0, i32 8
    store i32 %r63, ptr %r64
    %r65 = add i32 1,0
    %r66 = getelementptr [20 x i32], ptr %r46, i32 0, i32 9
    store i32 %r65, ptr %r66
    %r67 = add i32 9,0
    %r68 = getelementptr [20 x i32], ptr %r46, i32 0, i32 10
    store i32 %r67, ptr %r68
    %r69 = add i32 8,0
    %r70 = getelementptr [20 x i32], ptr %r46, i32 0, i32 11
    store i32 %r69, ptr %r70
    %r71 = add i32 7,0
    %r72 = getelementptr [20 x i32], ptr %r46, i32 0, i32 12
    store i32 %r71, ptr %r72
    %r73 = add i32 6,0
    %r74 = getelementptr [20 x i32], ptr %r46, i32 0, i32 13
    store i32 %r73, ptr %r74
    %r75 = add i32 4,0
    %r76 = getelementptr [20 x i32], ptr %r46, i32 0, i32 14
    store i32 %r75, ptr %r76
    %r77 = add i32 3,0
    %r78 = getelementptr [20 x i32], ptr %r46, i32 0, i32 15
    store i32 %r77, ptr %r78
    %r79 = add i32 2,0
    %r80 = getelementptr [20 x i32], ptr %r46, i32 0, i32 16
    store i32 %r79, ptr %r80
    %r81 = add i32 1,0
    %r82 = getelementptr [20 x i32], ptr %r46, i32 0, i32 17
    store i32 %r81, ptr %r82
    %r83 = add i32 2,0
    %r84 = getelementptr [20 x i32], ptr %r46, i32 0, i32 18
    store i32 %r83, ptr %r84
    %r85 = add i32 2,0
    %r86 = getelementptr [20 x i32], ptr %r46, i32 0, i32 19
    store i32 %r85, ptr %r86
    %r88 = load i32, ptr @len
    store i32 %r88, ptr %r87
    %r90 = load i32, ptr @len
    store i32 %r90, ptr %r89
    call void @llvm.memset.p0.i32(ptr %r93,i8 0,i32 160,i1 0)
    %r94 = add i32 0,0
    store i32 %r94, ptr %r0
    br label %L2
L2:
    %r95 = load i32, ptr %r0
    %r96 = load i32, ptr %r87
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L3, label %L4
L3:
    %r98 = load i32, ptr %r0
    %r99 = getelementptr [25 x i32], ptr %r91, i32 0, i32 %r98
    %r100 = load i32, ptr %r0
    %r101 = getelementptr [20 x i32], ptr %r5, i32 0, i32 %r100
    %r102 = load i32, ptr %r101
    store i32 %r102, ptr %r99
    %r103 = load i32, ptr %r0
    %r104 = add i32 1,0
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r0
    br label %L2
L4:
    %r106 = add i32 0,0
    store i32 %r106, ptr %r0
    br label %L5
L5:
    %r107 = load i32, ptr %r0
    %r108 = load i32, ptr %r89
    %r109 = icmp slt i32 %r107,%r108
    br i1 %r109, label %L6, label %L7
L6:
    %r110 = load i32, ptr %r0
    %r111 = getelementptr [25 x i32], ptr %r92, i32 0, i32 %r110
    %r112 = load i32, ptr %r0
    %r113 = getelementptr [20 x i32], ptr %r46, i32 0, i32 %r112
    %r114 = load i32, ptr %r113
    store i32 %r114, ptr %r111
    %r115 = load i32, ptr %r0
    %r116 = add i32 1,0
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r0
    br label %L5
L7:
    %r118 = load i32, ptr %r87
    %r119 = load i32, ptr %r89
    %r120 = add i32 %r118,%r119
    %r121 = add i32 1,0
    %r122 = sub i32 %r120,%r121
    store i32 %r122, ptr %r3
    %r123 = add i32 0,0
    store i32 %r123, ptr %r0
    br label %L8
L8:
    %r124 = load i32, ptr %r0
    %r125 = load i32, ptr %r3
    %r126 = icmp sle i32 %r124,%r125
    br i1 %r126, label %L9, label %L10
L9:
    %r127 = load i32, ptr %r0
    %r128 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r127
    %r129 = add i32 0,0
    store i32 %r129, ptr %r128
    %r130 = load i32, ptr %r0
    %r131 = add i32 1,0
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r0
    br label %L8
L10:
    %r133 = add i32 0,0
    store i32 %r133, ptr %r4
    %r134 = load i32, ptr %r89
    %r135 = add i32 1,0
    %r136 = sub i32 %r134,%r135
    store i32 %r136, ptr %r0
    br label %L11
L11:
    %r137 = load i32, ptr %r0
    %r138 = add i32 1,0
    %r139 = sub i32 0,%r138
    %r140 = icmp sgt i32 %r137,%r139
    br i1 %r140, label %L12, label %L13
L12:
    %r141 = load i32, ptr %r0
    %r142 = getelementptr [25 x i32], ptr %r92, i32 0, i32 %r141
    %r143 = load i32, ptr %r142
    store i32 %r143, ptr %r2
    %r144 = load i32, ptr %r87
    %r145 = add i32 1,0
    %r146 = sub i32 %r144,%r145
    store i32 %r146, ptr %r1
    br label %L14
L13:
    %r196 = add i32 0,0
    %r197 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r196
    %r198 = load i32, ptr %r197
    %r199 = add i32 0,0
    %r200 = icmp ne i32 %r198,%r199
    br i1 %r200, label %L20, label %L21
L14:
    %r147 = load i32, ptr %r1
    %r148 = add i32 1,0
    %r149 = sub i32 0,%r148
    %r150 = icmp sgt i32 %r147,%r149
    br i1 %r150, label %L15, label %L16
L15:
    %r151 = load i32, ptr %r3
    %r152 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r151
    %r153 = load i32, ptr %r152
    %r154 = load i32, ptr %r2
    %r155 = load i32, ptr %r1
    %r156 = getelementptr [25 x i32], ptr %r91, i32 0, i32 %r155
    %r157 = load i32, ptr %r156
    %r158 = mul i32 %r154,%r157
    %r159 = add i32 %r153,%r158
    store i32 %r159, ptr %r4
    %r160 = load i32, ptr %r4
    %r161 = add i32 10,0
    %r162 = icmp sge i32 %r160,%r161
    br i1 %r162, label %L17, label %L18
L16:
    %r188 = load i32, ptr %r3
    %r189 = load i32, ptr %r87
    %r190 = add i32 %r188,%r189
    %r191 = add i32 1,0
    %r192 = sub i32 %r190,%r191
    store i32 %r192, ptr %r3
    %r193 = load i32, ptr %r0
    %r194 = add i32 1,0
    %r195 = sub i32 %r193,%r194
    store i32 %r195, ptr %r0
    br label %L11
L17:
    %r163 = load i32, ptr %r3
    %r164 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r163
    %r165 = load i32, ptr %r4
    store i32 %r165, ptr %r164
    %r166 = load i32, ptr %r3
    %r167 = add i32 1,0
    %r168 = sub i32 %r166,%r167
    %r169 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r168
    %r170 = load i32, ptr %r3
    %r171 = add i32 1,0
    %r172 = sub i32 %r170,%r171
    %r173 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r172
    %r174 = load i32, ptr %r173
    %r175 = load i32, ptr %r4
    %r176 = add i32 10,0
    %r177 = sdiv i32 %r175,%r176
    %r178 = add i32 %r174,%r177
    store i32 %r178, ptr %r169
    br label %L19
L18:
    %r179 = load i32, ptr %r3
    %r180 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r179
    %r181 = load i32, ptr %r4
    store i32 %r181, ptr %r180
    br label %L19
L19:
    %r182 = load i32, ptr %r1
    %r183 = add i32 1,0
    %r184 = sub i32 %r182,%r183
    store i32 %r184, ptr %r1
    %r185 = load i32, ptr %r3
    %r186 = add i32 1,0
    %r187 = sub i32 %r185,%r186
    store i32 %r187, ptr %r3
    br label %L14
L20:
    %r201 = add i32 0,0
    %r202 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r201
    %r203 = load i32, ptr %r202
    call void @putint(i32 %r203)
    br label %L21
L21:
    %r204 = add i32 1,0
    store i32 %r204, ptr %r0
    br label %L22
L22:
    %r205 = load i32, ptr %r0
    %r206 = load i32, ptr %r87
    %r207 = load i32, ptr %r89
    %r208 = add i32 %r206,%r207
    %r209 = add i32 1,0
    %r210 = sub i32 %r208,%r209
    %r211 = icmp sle i32 %r205,%r210
    br i1 %r211, label %L23, label %L24
L23:
    %r212 = load i32, ptr %r0
    %r213 = getelementptr [40 x i32], ptr %r93, i32 0, i32 %r212
    %r214 = load i32, ptr %r213
    call void @putint(i32 %r214)
    %r215 = load i32, ptr %r0
    %r216 = add i32 1,0
    %r217 = add i32 %r215,%r216
    store i32 %r217, ptr %r0
    br label %L22
L24:
    %r218 = add i32 0,0
    ret i32 %r218
}
