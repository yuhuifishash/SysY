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
@t = global [1005x [2x i32]] zeroinitializer
@dp = global [1005x [35x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r148 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
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
    %r10 = call i32 @getint()
    store i32 %r10, ptr %r0
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r2
    %r12 = add i32 0,1
    store i32 %r12, ptr %r6
    %r13 = load i32, ptr %r6
    %r14 = load i32, ptr %r0
    %r15 = icmp sle i32 %r13,%r14
    br i1 %r15, label %L3, label %L5
L3:
    %r18 = call i32 @getint()
    store i32 %r18, ptr %r4
    %r19 = add i32 0,1
    %r20 = load i32, ptr %r6
    %r21 = load i32, ptr %r4
    %r22 = add i32 0,2
    %r23 = srem i32 %r21,%r22
    %r24 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r20, i32 %r23
    store i32 %r19, ptr %r24
    %r25 = load i32, ptr %r6
    %r26 = add i32 0,1
    %r27 = sub i32 %r25,%r26
    %r28 = add i32 0,0
    %r29 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r6
    %r32 = add i32 0,1
    %r33 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r31, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r30,%r34
    %r36 = load i32, ptr %r6
    %r37 = add i32 0,0
    %r38 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r36, i32 %r37
    store i32 %r35, ptr %r38
    %r39 = load i32, ptr %r6
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r6
    br label %L4
L4:
    %r42 = load i32, ptr %r6
    %r43 = load i32, ptr %r0
    %r44 = icmp sle i32 %r42,%r43
    br i1 %r44, label %L3, label %L5
L5:
    %r47 = add i32 0,1
    store i32 %r47, ptr %r6
    %r48 = load i32, ptr %r6
    %r49 = load i32, ptr %r0
    %r50 = icmp sle i32 %r48,%r49
    br i1 %r50, label %L7, label %L9
L7:
    %r53 = add i32 0,1
    store i32 %r53, ptr %r8
    %r54 = load i32, ptr %r8
    %r55 = load i32, ptr %r2
    %r56 = icmp sle i32 %r54,%r55
    br i1 %r56, label %L11, label %L13
L8:
    %r143 = load i32, ptr %r6
    %r144 = load i32, ptr %r0
    %r145 = icmp sle i32 %r143,%r144
    br i1 %r145, label %L7, label %L9
L9:
    %r149 = add i32 0,0
    store i32 %r149, ptr %r148
    %r150 = add i32 0,0
    store i32 %r150, ptr %r8
    %r151 = load i32, ptr %r8
    %r152 = load i32, ptr %r2
    %r153 = icmp sle i32 %r151,%r152
    br i1 %r153, label %L18, label %L20
L11:
    %r59 = load i32, ptr %r6
    %r60 = add i32 0,1
    %r61 = sub i32 %r59,%r60
    %r62 = load i32, ptr %r8
    %r63 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r61, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = load i32, ptr %r6
    %r66 = load i32, ptr %r8
    %r67 = add i32 0,1
    %r68 = add i32 %r66,%r67
    %r69 = add i32 0,2
    %r70 = srem i32 %r68,%r69
    %r71 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r65, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 %r64,%r72
    %r74 = load i32, ptr %r6
    %r75 = add i32 0,1
    %r76 = sub i32 %r74,%r75
    %r77 = load i32, ptr %r8
    %r78 = add i32 0,1
    %r79 = sub i32 %r77,%r78
    %r80 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r76, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = load i32, ptr %r6
    %r83 = load i32, ptr %r8
    %r84 = add i32 0,1
    %r85 = add i32 %r83,%r84
    %r86 = add i32 0,2
    %r87 = srem i32 %r85,%r86
    %r88 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r82, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = add i32 %r81,%r89
    %r91 = icmp sgt i32 %r73,%r90
    br i1 %r91, label %L14, label %L15
L12:
    %r135 = load i32, ptr %r8
    %r136 = load i32, ptr %r2
    %r137 = icmp sle i32 %r135,%r136
    br i1 %r137, label %L11, label %L13
L13:
    %r140 = load i32, ptr %r6
    %r141 = add i32 0,1
    %r142 = add i32 %r140,%r141
    store i32 %r142, ptr %r6
    br label %L8
L14:
    %r94 = load i32, ptr %r6
    %r95 = add i32 0,1
    %r96 = sub i32 %r94,%r95
    %r97 = load i32, ptr %r8
    %r98 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r96, i32 %r97
    %r99 = load i32, ptr %r98
    %r100 = load i32, ptr %r6
    %r101 = load i32, ptr %r8
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    %r104 = add i32 0,2
    %r105 = srem i32 %r103,%r104
    %r106 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r100, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = add i32 %r99,%r107
    %r109 = load i32, ptr %r6
    %r110 = load i32, ptr %r8
    %r111 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r109, i32 %r110
    store i32 %r108, ptr %r111
    br label %L16
L15:
    %r112 = load i32, ptr %r6
    %r113 = add i32 0,1
    %r114 = sub i32 %r112,%r113
    %r115 = load i32, ptr %r8
    %r116 = add i32 0,1
    %r117 = sub i32 %r115,%r116
    %r118 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r114, i32 %r117
    %r119 = load i32, ptr %r118
    %r120 = load i32, ptr %r6
    %r121 = load i32, ptr %r8
    %r122 = add i32 0,1
    %r123 = add i32 %r121,%r122
    %r124 = add i32 0,2
    %r125 = srem i32 %r123,%r124
    %r126 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r120, i32 %r125
    %r127 = load i32, ptr %r126
    %r128 = add i32 %r119,%r127
    %r129 = load i32, ptr %r6
    %r130 = load i32, ptr %r8
    %r131 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r129, i32 %r130
    store i32 %r128, ptr %r131
    br label %L16
L16:
    %r132 = load i32, ptr %r8
    %r133 = add i32 0,1
    %r134 = add i32 %r132,%r133
    store i32 %r134, ptr %r8
    br label %L12
L18:
    %r156 = load i32, ptr %r148
    %r157 = load i32, ptr %r0
    %r158 = load i32, ptr %r8
    %r159 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r157, i32 %r158
    %r160 = load i32, ptr %r159
    %r161 = icmp slt i32 %r156,%r160
    br i1 %r161, label %L21, label %L22
L19:
    %r171 = load i32, ptr %r8
    %r172 = load i32, ptr %r2
    %r173 = icmp sle i32 %r171,%r172
    br i1 %r173, label %L18, label %L20
L20:
    %r176 = load i32, ptr %r148
    ret i32 %r176
L21:
    %r164 = load i32, ptr %r0
    %r165 = load i32, ptr %r8
    %r166 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r164, i32 %r165
    %r167 = load i32, ptr %r166
    store i32 %r167, ptr %r148
    br label %L22
L22:
    %r168 = load i32, ptr %r8
    %r169 = add i32 0,1
    %r170 = add i32 %r168,%r169
    store i32 %r170, ptr %r8
    br label %L19
}
