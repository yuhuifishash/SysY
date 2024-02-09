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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:
    %r157 = alloca i32
    %r126 = alloca i32
    %r30 = alloca i32
    %r29 = alloca i32
    %r28 = alloca i32
    %r27 = alloca i32
    %r26 = alloca i32
    %r25 = alloca i32
    %r24 = alloca i32
    %r23 = alloca i32
    %r22 = alloca i32
    %r21 = alloca i32
    %r20 = alloca i32
    %r19 = alloca i32
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    %r15 = alloca i32
    %r14 = alloca i32
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca i32
    %r10 = alloca i32
    %r9 = alloca i32
    %r8 = alloca i32
    %r7 = alloca i32
    %r6 = alloca i32
    %r5 = alloca i32
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
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    store i32 0, ptr %r7
    store i32 0, ptr %r8
    store i32 0, ptr %r9
    store i32 0, ptr %r10
    store i32 0, ptr %r11
    store i32 0, ptr %r12
    store i32 0, ptr %r13
    store i32 0, ptr %r14
    store i32 0, ptr %r15
    store i32 0, ptr %r16
    store i32 0, ptr %r17
    store i32 0, ptr %r18
    store i32 0, ptr %r19
    store i32 0, ptr %r20
    store i32 0, ptr %r21
    store i32 0, ptr %r22
    store i32 0, ptr %r23
    store i32 0, ptr %r24
    store i32 0, ptr %r25
    store i32 0, ptr %r26
    store i32 0, ptr %r27
    store i32 0, ptr %r28
    store i32 0, ptr %r29
    store i32 0, ptr %r30
    %r31 = call i32 @getint()
    store i32 %r31, ptr %r30
    br label %L2
L2:
    %r32 = load i32, ptr %r30
    %r33 = add i32 5,0
    %r34 = icmp eq i32 %r32,%r33
    br i1 %r34, label %L3, label %L4
L3:
    %r35 = load i32, ptr %r30
    %r36 = add i32 1,0
    %r37 = add i32 %r35,%r36
    store i32 %r37, ptr %r30
    br label %L2
L4:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r0
    %r39 = load i32, ptr %r0
    %r40 = add i32 1,0
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r1
    %r42 = load i32, ptr %r1
    %r43 = add i32 1,0
    %r44 = add i32 %r42,%r43
    store i32 %r44, ptr %r2
    %r45 = load i32, ptr %r2
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r3
    %r48 = load i32, ptr %r3
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    store i32 %r50, ptr %r4
    %r51 = load i32, ptr %r4
    %r52 = add i32 1,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr %r5
    %r54 = load i32, ptr %r5
    %r55 = add i32 1,0
    %r56 = add i32 %r54,%r55
    store i32 %r56, ptr %r6
    %r57 = load i32, ptr %r6
    %r58 = add i32 1,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr %r7
    %r60 = load i32, ptr %r7
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r8
    %r63 = load i32, ptr %r8
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r9
    %r66 = load i32, ptr %r9
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r10
    %r69 = load i32, ptr %r10
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r11
    %r72 = load i32, ptr %r11
    %r73 = add i32 1,0
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r12
    %r75 = load i32, ptr %r12
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r13
    %r78 = load i32, ptr %r13
    %r79 = add i32 1,0
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r14
    %r81 = load i32, ptr %r14
    %r82 = add i32 1,0
    %r83 = add i32 %r81,%r82
    store i32 %r83, ptr %r15
    %r84 = load i32, ptr %r15
    %r85 = add i32 1,0
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r16
    %r87 = load i32, ptr %r16
    %r88 = add i32 1,0
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r17
    %r90 = load i32, ptr %r17
    %r91 = add i32 1,0
    %r92 = add i32 %r90,%r91
    store i32 %r92, ptr %r18
    %r93 = load i32, ptr %r18
    %r94 = add i32 1,0
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r19
    %r96 = load i32, ptr %r19
    %r97 = add i32 1,0
    %r98 = add i32 %r96,%r97
    store i32 %r98, ptr %r20
    %r99 = load i32, ptr %r20
    %r100 = add i32 1,0
    %r101 = add i32 %r99,%r100
    store i32 %r101, ptr %r21
    %r102 = load i32, ptr %r21
    %r103 = add i32 1,0
    %r104 = add i32 %r102,%r103
    store i32 %r104, ptr %r22
    %r105 = load i32, ptr %r22
    %r106 = add i32 1,0
    %r107 = add i32 %r105,%r106
    store i32 %r107, ptr %r23
    %r108 = load i32, ptr %r23
    %r109 = add i32 1,0
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r24
    %r111 = load i32, ptr %r24
    %r112 = add i32 1,0
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r25
    %r114 = load i32, ptr %r25
    %r115 = add i32 1,0
    %r116 = add i32 %r114,%r115
    store i32 %r116, ptr %r26
    %r117 = load i32, ptr %r26
    %r118 = add i32 1,0
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r27
    %r120 = load i32, ptr %r27
    %r121 = add i32 1,0
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r28
    %r123 = load i32, ptr %r28
    %r124 = add i32 1,0
    %r125 = add i32 %r123,%r124
    store i32 %r125, ptr %r29
    store i32 0, ptr %r126
    %r127 = load i32, ptr %r0
    call void @putint(i32 %r127)
    %r128 = load i32, ptr %r1
    call void @putint(i32 %r128)
    %r129 = load i32, ptr %r2
    call void @putint(i32 %r129)
    %r130 = load i32, ptr %r3
    call void @putint(i32 %r130)
    %r131 = load i32, ptr %r4
    call void @putint(i32 %r131)
    %r132 = load i32, ptr %r5
    call void @putint(i32 %r132)
    %r133 = load i32, ptr %r6
    call void @putint(i32 %r133)
    %r134 = load i32, ptr %r7
    call void @putint(i32 %r134)
    %r135 = load i32, ptr %r8
    call void @putint(i32 %r135)
    %r136 = load i32, ptr %r9
    call void @putint(i32 %r136)
    %r137 = load i32, ptr %r10
    call void @putint(i32 %r137)
    %r138 = load i32, ptr %r11
    call void @putint(i32 %r138)
    %r139 = load i32, ptr %r12
    call void @putint(i32 %r139)
    %r140 = load i32, ptr %r13
    call void @putint(i32 %r140)
    %r141 = load i32, ptr %r14
    call void @putint(i32 %r141)
    %r142 = load i32, ptr %r15
    call void @putint(i32 %r142)
    %r143 = load i32, ptr %r16
    call void @putint(i32 %r143)
    %r144 = load i32, ptr %r17
    call void @putint(i32 %r144)
    %r145 = load i32, ptr %r18
    call void @putint(i32 %r145)
    %r146 = load i32, ptr %r19
    call void @putint(i32 %r146)
    %r147 = load i32, ptr %r20
    call void @putint(i32 %r147)
    %r148 = load i32, ptr %r21
    call void @putint(i32 %r148)
    %r149 = load i32, ptr %r22
    call void @putint(i32 %r149)
    %r150 = load i32, ptr %r23
    call void @putint(i32 %r150)
    %r151 = load i32, ptr %r24
    call void @putint(i32 %r151)
    %r152 = load i32, ptr %r25
    call void @putint(i32 %r152)
    %r153 = load i32, ptr %r26
    call void @putint(i32 %r153)
    %r154 = load i32, ptr %r27
    call void @putint(i32 %r154)
    %r155 = load i32, ptr %r28
    call void @putint(i32 %r155)
    %r156 = load i32, ptr %r29
    call void @putint(i32 %r156)
    store i32 0, ptr %r157
    %r158 = add i32 10,0
    store i32 %r158, ptr %r157
    %r159 = load i32, ptr %r157
    call void @putch(i32 %r159)
    %r160 = load i32, ptr %r30
    call void @putint(i32 %r160)
    %r161 = load i32, ptr %r157
    call void @putch(i32 %r161)
    %r162 = load i32, ptr %r25
    ret i32 %r162
}
