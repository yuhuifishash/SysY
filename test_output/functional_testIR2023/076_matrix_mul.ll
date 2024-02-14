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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @mul(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:  ;
    br label %L1
L1:  ;
    %r13 = getelementptr i32, ptr %r6, i32 0
    %r15 = getelementptr i32, ptr %r0, i32 0
    %r16 = load i32, ptr %r15
    %r18 = getelementptr i32, ptr %r3, i32 0
    %r19 = load i32, ptr %r18
    %r20 = mul i32 %r16,%r19
    %r22 = getelementptr i32, ptr %r0, i32 1
    %r23 = load i32, ptr %r22
    %r25 = getelementptr i32, ptr %r4, i32 0
    %r26 = load i32, ptr %r25
    %r27 = mul i32 %r23,%r26
    %r28 = add i32 %r20,%r27
    %r30 = getelementptr i32, ptr %r0, i32 2
    %r31 = load i32, ptr %r30
    %r33 = getelementptr i32, ptr %r5, i32 0
    %r34 = load i32, ptr %r33
    %r35 = mul i32 %r31,%r34
    %r36 = add i32 %r28,%r35
    store i32 %r36, ptr %r13
    %r38 = getelementptr i32, ptr %r6, i32 1
    %r40 = getelementptr i32, ptr %r0, i32 0
    %r41 = load i32, ptr %r40
    %r43 = getelementptr i32, ptr %r3, i32 1
    %r44 = load i32, ptr %r43
    %r45 = mul i32 %r41,%r44
    %r47 = getelementptr i32, ptr %r0, i32 1
    %r48 = load i32, ptr %r47
    %r50 = getelementptr i32, ptr %r4, i32 1
    %r51 = load i32, ptr %r50
    %r52 = mul i32 %r48,%r51
    %r53 = add i32 %r45,%r52
    %r55 = getelementptr i32, ptr %r0, i32 2
    %r56 = load i32, ptr %r55
    %r58 = getelementptr i32, ptr %r5, i32 1
    %r59 = load i32, ptr %r58
    %r60 = mul i32 %r56,%r59
    %r61 = add i32 %r53,%r60
    store i32 %r61, ptr %r38
    %r63 = getelementptr i32, ptr %r6, i32 2
    %r65 = getelementptr i32, ptr %r0, i32 0
    %r66 = load i32, ptr %r65
    %r68 = getelementptr i32, ptr %r3, i32 2
    %r69 = load i32, ptr %r68
    %r70 = mul i32 %r66,%r69
    %r72 = getelementptr i32, ptr %r0, i32 1
    %r73 = load i32, ptr %r72
    %r75 = getelementptr i32, ptr %r4, i32 2
    %r76 = load i32, ptr %r75
    %r77 = mul i32 %r73,%r76
    %r78 = add i32 %r70,%r77
    %r80 = getelementptr i32, ptr %r0, i32 2
    %r81 = load i32, ptr %r80
    %r83 = getelementptr i32, ptr %r5, i32 2
    %r84 = load i32, ptr %r83
    %r85 = mul i32 %r81,%r84
    %r86 = add i32 %r78,%r85
    store i32 %r86, ptr %r63
    %r88 = getelementptr i32, ptr %r7, i32 0
    %r90 = getelementptr i32, ptr %r1, i32 0
    %r91 = load i32, ptr %r90
    %r93 = getelementptr i32, ptr %r3, i32 0
    %r94 = load i32, ptr %r93
    %r95 = mul i32 %r91,%r94
    %r97 = getelementptr i32, ptr %r1, i32 1
    %r98 = load i32, ptr %r97
    %r100 = getelementptr i32, ptr %r4, i32 0
    %r101 = load i32, ptr %r100
    %r102 = mul i32 %r98,%r101
    %r103 = add i32 %r95,%r102
    %r105 = getelementptr i32, ptr %r1, i32 2
    %r106 = load i32, ptr %r105
    %r108 = getelementptr i32, ptr %r5, i32 0
    %r109 = load i32, ptr %r108
    %r110 = mul i32 %r106,%r109
    %r111 = add i32 %r103,%r110
    store i32 %r111, ptr %r88
    %r113 = getelementptr i32, ptr %r7, i32 1
    %r115 = getelementptr i32, ptr %r1, i32 0
    %r116 = load i32, ptr %r115
    %r118 = getelementptr i32, ptr %r3, i32 1
    %r119 = load i32, ptr %r118
    %r120 = mul i32 %r116,%r119
    %r122 = getelementptr i32, ptr %r1, i32 1
    %r123 = load i32, ptr %r122
    %r125 = getelementptr i32, ptr %r4, i32 1
    %r126 = load i32, ptr %r125
    %r127 = mul i32 %r123,%r126
    %r128 = add i32 %r120,%r127
    %r130 = getelementptr i32, ptr %r1, i32 2
    %r131 = load i32, ptr %r130
    %r133 = getelementptr i32, ptr %r5, i32 1
    %r134 = load i32, ptr %r133
    %r135 = mul i32 %r131,%r134
    %r136 = add i32 %r128,%r135
    store i32 %r136, ptr %r113
    %r138 = getelementptr i32, ptr %r7, i32 2
    %r140 = getelementptr i32, ptr %r1, i32 0
    %r141 = load i32, ptr %r140
    %r143 = getelementptr i32, ptr %r3, i32 2
    %r144 = load i32, ptr %r143
    %r145 = mul i32 %r141,%r144
    %r147 = getelementptr i32, ptr %r1, i32 1
    %r148 = load i32, ptr %r147
    %r150 = getelementptr i32, ptr %r4, i32 2
    %r151 = load i32, ptr %r150
    %r152 = mul i32 %r148,%r151
    %r153 = add i32 %r145,%r152
    %r155 = getelementptr i32, ptr %r1, i32 2
    %r156 = load i32, ptr %r155
    %r158 = getelementptr i32, ptr %r5, i32 2
    %r159 = load i32, ptr %r158
    %r160 = mul i32 %r156,%r159
    %r161 = add i32 %r153,%r160
    store i32 %r161, ptr %r138
    %r163 = getelementptr i32, ptr %r8, i32 0
    %r165 = getelementptr i32, ptr %r2, i32 0
    %r166 = load i32, ptr %r165
    %r168 = getelementptr i32, ptr %r3, i32 0
    %r169 = load i32, ptr %r168
    %r170 = mul i32 %r166,%r169
    %r172 = getelementptr i32, ptr %r2, i32 1
    %r173 = load i32, ptr %r172
    %r175 = getelementptr i32, ptr %r4, i32 0
    %r176 = load i32, ptr %r175
    %r177 = mul i32 %r173,%r176
    %r178 = add i32 %r170,%r177
    %r180 = getelementptr i32, ptr %r2, i32 2
    %r181 = load i32, ptr %r180
    %r183 = getelementptr i32, ptr %r5, i32 0
    %r184 = load i32, ptr %r183
    %r185 = mul i32 %r181,%r184
    %r186 = add i32 %r178,%r185
    store i32 %r186, ptr %r163
    %r188 = getelementptr i32, ptr %r8, i32 1
    %r190 = getelementptr i32, ptr %r2, i32 0
    %r191 = load i32, ptr %r190
    %r193 = getelementptr i32, ptr %r3, i32 1
    %r194 = load i32, ptr %r193
    %r195 = mul i32 %r191,%r194
    %r197 = getelementptr i32, ptr %r2, i32 1
    %r198 = load i32, ptr %r197
    %r200 = getelementptr i32, ptr %r4, i32 1
    %r201 = load i32, ptr %r200
    %r202 = mul i32 %r198,%r201
    %r203 = add i32 %r195,%r202
    %r205 = getelementptr i32, ptr %r2, i32 2
    %r206 = load i32, ptr %r205
    %r208 = getelementptr i32, ptr %r5, i32 1
    %r209 = load i32, ptr %r208
    %r210 = mul i32 %r206,%r209
    %r211 = add i32 %r203,%r210
    store i32 %r211, ptr %r188
    %r213 = getelementptr i32, ptr %r8, i32 2
    %r215 = getelementptr i32, ptr %r2, i32 0
    %r216 = load i32, ptr %r215
    %r218 = getelementptr i32, ptr %r3, i32 2
    %r219 = load i32, ptr %r218
    %r220 = mul i32 %r216,%r219
    %r222 = getelementptr i32, ptr %r2, i32 1
    %r223 = load i32, ptr %r222
    %r225 = getelementptr i32, ptr %r4, i32 2
    %r226 = load i32, ptr %r225
    %r227 = mul i32 %r223,%r226
    %r228 = add i32 %r220,%r227
    %r230 = getelementptr i32, ptr %r2, i32 2
    %r231 = load i32, ptr %r230
    %r233 = getelementptr i32, ptr %r5, i32 2
    %r234 = load i32, ptr %r233
    %r235 = mul i32 %r231,%r234
    %r236 = add i32 %r228,%r235
    store i32 %r236, ptr %r213
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:  ;
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L2
L2:  ;
    %r93 = phi i32 [0,%L1],[%r38,%L3]
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r93,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r19 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r93
    store i32 %r93, ptr %r19
    %r22 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r93
    store i32 %r93, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r93
    store i32 %r93, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r93
    store i32 %r93, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r93
    store i32 %r93, ptr %r31
    %r34 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r93
    store i32 %r93, ptr %r34
    %r38 = add i32 %r93,1
    br label %L2
L4:  ;
    %r39 = getelementptr [3 x i32], ptr %r3, i32 0
    %r40 = getelementptr [3 x i32], ptr %r4, i32 0
    %r41 = getelementptr [3 x i32], ptr %r5, i32 0
    %r42 = getelementptr [3 x i32], ptr %r6, i32 0
    %r43 = getelementptr [3 x i32], ptr %r7, i32 0
    %r44 = getelementptr [3 x i32], ptr %r8, i32 0
    %r45 = getelementptr [6 x i32], ptr %r9, i32 0
    %r46 = getelementptr [3 x i32], ptr %r10, i32 0
    %r47 = getelementptr [3 x i32], ptr %r11, i32 0
    %r48 = call i32 @mul(ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47)
    br label %L5
L5:  ;
    %r94 = phi i32 [%r48,%L4],[%r60,%L6]
    %r90 = phi i32 [0,%L4],[%r56,%L6]
    %r52 = load i32, ptr @N
    %r53 = icmp slt i32 %r94,%r52
    br i1 %r53, label %L6, label %L7
L6:  ;
    %r55 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r94
    %r56 = load i32, ptr %r55
    call void @putint(i32 %r56)
    %r60 = add i32 %r94,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    br label %L8
L8:  ;
    %r95 = phi i32 [0,%L7],[%r73,%L9]
    %r91 = phi i32 [10,%L7],[%r69,%L9]
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r95,%r65
    br i1 %r66, label %L9, label %L10
L9:  ;
    %r68 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r95
    %r69 = load i32, ptr %r68
    call void @putint(i32 %r69)
    %r73 = add i32 %r95,1
    br label %L8
L10:  ;
    call void @putch(i32 10)
    br label %L11
L11:  ;
    %r96 = phi i32 [0,%L10],[%r86,%L12]
    %r92 = phi i32 [10,%L10],[%r82,%L12]
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r96,%r78
    br i1 %r79, label %L12, label %L13
L12:  ;
    %r81 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r96
    %r82 = load i32, ptr %r81
    call void @putint(i32 %r82)
    %r86 = add i32 %r96,1
    br label %L11
L13:  ;
    call void @putch(i32 10)
    ret i32 0
}
