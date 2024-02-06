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
L0:
    %r100 = alloca i32
    %r93 = alloca i32
    %r86 = alloca i32
    %r79 = alloca i32
    %r72 = alloca i32
    %r65 = alloca i32
    %r58 = alloca i32
    %r51 = alloca i32
    %r44 = alloca i32
    %r37 = alloca i32
    %r30 = alloca i32
    %r23 = alloca i32
    %r16 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,3
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,4
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L7, label %L9
L4:
    %r227 = load i32, ptr %r2
    %r228 = add i32 0,3
    %r229 = icmp slt i32 %r227,%r228
    br i1 %r229, label %L3, label %L5
L5:
    %r232 = load i32, ptr %r0
    ret i32 %r232
L7:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,5
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L11, label %L13
L8:
    %r219 = load i32, ptr %r9
    %r220 = add i32 0,4
    %r221 = icmp slt i32 %r219,%r220
    br i1 %r221, label %L7, label %L9
L9:
    %r224 = load i32, ptr %r2
    %r225 = add i32 0,1
    %r226 = add i32 %r224,%r225
    store i32 %r226, ptr %r2
    br label %L4
L11:
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    %r25 = load i32, ptr %r23
    %r26 = add i32 0,3
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L15, label %L17
L12:
    %r211 = load i32, ptr %r16
    %r212 = add i32 0,5
    %r213 = icmp slt i32 %r211,%r212
    br i1 %r213, label %L11, label %L13
L13:
    %r216 = load i32, ptr %r9
    %r217 = add i32 0,1
    %r218 = add i32 %r216,%r217
    store i32 %r218, ptr %r9
    br label %L8
L15:
    %r31 = add i32 0,0
    store i32 %r31, ptr %r30
    %r32 = load i32, ptr %r30
    %r33 = add i32 0,5
    %r34 = icmp slt i32 %r32,%r33
    br i1 %r34, label %L19, label %L21
L16:
    %r203 = load i32, ptr %r23
    %r204 = add i32 0,3
    %r205 = icmp slt i32 %r203,%r204
    br i1 %r205, label %L15, label %L17
L17:
    %r208 = load i32, ptr %r16
    %r209 = add i32 0,1
    %r210 = add i32 %r208,%r209
    store i32 %r210, ptr %r16
    br label %L12
L19:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r37
    %r39 = load i32, ptr %r37
    %r40 = add i32 0,4
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L23, label %L25
L20:
    %r195 = load i32, ptr %r30
    %r196 = add i32 0,5
    %r197 = icmp slt i32 %r195,%r196
    br i1 %r197, label %L19, label %L21
L21:
    %r200 = load i32, ptr %r23
    %r201 = add i32 0,1
    %r202 = add i32 %r200,%r201
    store i32 %r202, ptr %r23
    br label %L16
L23:
    %r45 = add i32 0,0
    store i32 %r45, ptr %r44
    %r46 = load i32, ptr %r44
    %r47 = add i32 0,6
    %r48 = icmp slt i32 %r46,%r47
    br i1 %r48, label %L27, label %L29
L24:
    %r187 = load i32, ptr %r37
    %r188 = add i32 0,4
    %r189 = icmp slt i32 %r187,%r188
    br i1 %r189, label %L23, label %L25
L25:
    %r192 = load i32, ptr %r30
    %r193 = add i32 0,1
    %r194 = add i32 %r192,%r193
    store i32 %r194, ptr %r30
    br label %L20
L27:
    %r52 = add i32 0,0
    store i32 %r52, ptr %r51
    %r53 = load i32, ptr %r51
    %r54 = add i32 0,5
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L31, label %L33
L28:
    %r179 = load i32, ptr %r44
    %r180 = add i32 0,6
    %r181 = icmp slt i32 %r179,%r180
    br i1 %r181, label %L27, label %L29
L29:
    %r184 = load i32, ptr %r37
    %r185 = add i32 0,1
    %r186 = add i32 %r184,%r185
    store i32 %r186, ptr %r37
    br label %L24
L31:
    %r59 = add i32 0,0
    store i32 %r59, ptr %r58
    %r60 = load i32, ptr %r58
    %r61 = add i32 0,5
    %r62 = icmp slt i32 %r60,%r61
    br i1 %r62, label %L35, label %L37
L32:
    %r171 = load i32, ptr %r51
    %r172 = add i32 0,5
    %r173 = icmp slt i32 %r171,%r172
    br i1 %r173, label %L31, label %L33
L33:
    %r176 = load i32, ptr %r44
    %r177 = add i32 0,1
    %r178 = add i32 %r176,%r177
    store i32 %r178, ptr %r44
    br label %L28
L35:
    %r66 = add i32 0,0
    store i32 %r66, ptr %r65
    %r67 = load i32, ptr %r65
    %r68 = add i32 0,3
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L39, label %L41
L36:
    %r163 = load i32, ptr %r58
    %r164 = add i32 0,5
    %r165 = icmp slt i32 %r163,%r164
    br i1 %r165, label %L35, label %L37
L37:
    %r168 = load i32, ptr %r51
    %r169 = add i32 0,1
    %r170 = add i32 %r168,%r169
    store i32 %r170, ptr %r51
    br label %L32
L39:
    %r73 = add i32 0,0
    store i32 %r73, ptr %r72
    %r74 = load i32, ptr %r72
    %r75 = add i32 0,6
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L43, label %L45
L40:
    %r155 = load i32, ptr %r65
    %r156 = add i32 0,3
    %r157 = icmp slt i32 %r155,%r156
    br i1 %r157, label %L39, label %L41
L41:
    %r160 = load i32, ptr %r58
    %r161 = add i32 0,1
    %r162 = add i32 %r160,%r161
    store i32 %r162, ptr %r58
    br label %L36
L43:
    %r80 = add i32 0,0
    store i32 %r80, ptr %r79
    %r81 = load i32, ptr %r79
    %r82 = add i32 0,7
    %r83 = icmp slt i32 %r81,%r82
    br i1 %r83, label %L47, label %L49
L44:
    %r147 = load i32, ptr %r72
    %r148 = add i32 0,6
    %r149 = icmp slt i32 %r147,%r148
    br i1 %r149, label %L43, label %L45
L45:
    %r152 = load i32, ptr %r65
    %r153 = add i32 0,1
    %r154 = add i32 %r152,%r153
    store i32 %r154, ptr %r65
    br label %L40
L47:
    %r87 = add i32 0,0
    store i32 %r87, ptr %r86
    %r88 = load i32, ptr %r86
    %r89 = add i32 0,5
    %r90 = icmp slt i32 %r88,%r89
    br i1 %r90, label %L51, label %L53
L48:
    %r139 = load i32, ptr %r79
    %r140 = add i32 0,7
    %r141 = icmp slt i32 %r139,%r140
    br i1 %r141, label %L47, label %L49
L49:
    %r144 = load i32, ptr %r72
    %r145 = add i32 0,2
    %r146 = add i32 %r144,%r145
    store i32 %r146, ptr %r72
    br label %L44
L51:
    %r94 = add i32 0,0
    store i32 %r94, ptr %r93
    %r95 = load i32, ptr %r93
    %r96 = add i32 0,3
    %r97 = icmp slt i32 %r95,%r96
    br i1 %r97, label %L55, label %L57
L52:
    %r131 = load i32, ptr %r86
    %r132 = add i32 0,5
    %r133 = icmp slt i32 %r131,%r132
    br i1 %r133, label %L51, label %L53
L53:
    %r136 = load i32, ptr %r79
    %r137 = add i32 0,2
    %r138 = add i32 %r136,%r137
    store i32 %r138, ptr %r79
    br label %L48
L55:
    %r101 = add i32 0,0
    store i32 %r101, ptr %r100
    %r102 = load i32, ptr %r100
    %r103 = add i32 0,6
    %r104 = icmp slt i32 %r102,%r103
    br i1 %r104, label %L59, label %L61
L56:
    %r123 = load i32, ptr %r93
    %r124 = add i32 0,3
    %r125 = icmp slt i32 %r123,%r124
    br i1 %r125, label %L55, label %L57
L57:
    %r128 = load i32, ptr %r86
    %r129 = add i32 0,2
    %r130 = add i32 %r128,%r129
    store i32 %r130, ptr %r86
    br label %L52
L59:
    %r107 = load i32, ptr %r0
    %r108 = add i32 0,3
    %r109 = add i32 %r107,%r108
    %r110 = add i32 0,999
    %r111 = srem i32 %r109,%r110
    store i32 %r111, ptr %r0
    %r112 = load i32, ptr %r100
    %r113 = add i32 0,3
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r100
    br label %L60
L60:
    %r115 = load i32, ptr %r100
    %r116 = add i32 0,6
    %r117 = icmp slt i32 %r115,%r116
    br i1 %r117, label %L59, label %L61
L61:
    %r120 = load i32, ptr %r93
    %r121 = add i32 0,1
    %r122 = add i32 %r120,%r121
    store i32 %r122, ptr %r93
    br label %L56
}
