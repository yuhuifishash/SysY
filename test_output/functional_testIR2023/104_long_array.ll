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
    br label %L2
L2:
    %r170 = phi i32 [0,%L1],[%r19,%L3]
    %r9 = icmp slt i32 %r170,10000
    br i1 %r9, label %L3, label %L4
L3:
    %r11 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r170
    %r14 = mul i32 %r170,%r170
    %r16 = srem i32 %r14,10
    store i32 %r16, ptr %r11
    %r19 = add i32 %r170,1
    br label %L2
L4:
    br label %L5
L5:
    %r171 = phi i32 [0,%L4],[%r37,%L6]
    %r23 = icmp slt i32 %r171,10000
    br i1 %r23, label %L6, label %L7
L6:
    %r25 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r171
    %r27 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r171
    %r28 = load i32, ptr %r27
    %r30 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r171
    %r31 = load i32, ptr %r30
    %r32 = mul i32 %r28,%r31
    %r34 = srem i32 %r32,10
    store i32 %r34, ptr %r25
    %r37 = add i32 %r171,1
    br label %L5
L7:
    br label %L8
L8:
    %r172 = phi i32 [0,%L7],[%r59,%L9]
    %r41 = icmp slt i32 %r172,10000
    br i1 %r41, label %L9, label %L10
L9:
    %r43 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r172
    %r45 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r172
    %r46 = load i32, ptr %r45
    %r48 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r172
    %r49 = load i32, ptr %r48
    %r50 = mul i32 %r46,%r49
    %r52 = srem i32 %r50,100
    %r54 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r172
    %r55 = load i32, ptr %r54
    %r56 = add i32 %r52,%r55
    store i32 %r56, ptr %r43
    %r59 = add i32 %r172,1
    br label %L8
L10:
    br label %L11
L11:
    %r173 = phi i32 [0,%L10],[%r151,%L16]
    %r164 = phi i32 [0,%L10],[%r163,%L16]
    %r65 = icmp slt i32 %r173,10000
    br i1 %r65, label %L12, label %L13
L12:
    %r68 = icmp slt i32 %r173,10
    br i1 %r68, label %L14, label %L15
L13:
    ret i32 %r164
L14:
    %r71 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r173
    %r72 = load i32, ptr %r71
    %r73 = add i32 %r164,%r72
    %r75 = srem i32 %r73,1333
    call void @putint(i32 %r75)
    br label %L16
L15:
    %r79 = icmp slt i32 %r173,20
    br i1 %r79, label %L17, label %L18
L16:
    %r163 = phi i32 [%r75,%L14],[%r166,%L19]
    %r151 = add i32 %r173,1
    br label %L11
L17:
    br label %L20
L18:
    %r102 = icmp slt i32 %r173,30
    br i1 %r102, label %L23, label %L24
L19:
    %r166 = phi i32 [%r165,%L22],[%r167,%L25]
    br label %L16
L20:
    %r165 = phi i32 [%r164,%L17],[%r95,%L21]
    %r162 = phi i32 [5000,%L17],[%r98,%L21]
    %r86 = icmp slt i32 %r162,10000
    br i1 %r86, label %L21, label %L22
L21:
    %r89 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r173
    %r90 = load i32, ptr %r89
    %r91 = add i32 %r165,%r90
    %r93 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r162
    %r94 = load i32, ptr %r93
    %r95 = sub i32 %r91,%r94
    %r98 = add i32 %r162,1
    br label %L20
L22:
    call void @putint(i32 %r165)
    br label %L19
L23:
    br label %L26
L24:
    %r142 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r173
    %r143 = load i32, ptr %r142
    %r145 = mul i32 %r143,%r0
    %r146 = add i32 %r164,%r145
    %r148 = srem i32 %r146,99988
    br label %L25
L25:
    %r167 = phi i32 [%r148,%L24],[%r169,%L28]
    br label %L19
L26:
    %r169 = phi i32 [%r164,%L23],[%r168,%L31]
    %r158 = phi i32 [5000,%L23],[%r157,%L31]
    %r109 = icmp slt i32 %r158,10000
    br i1 %r109, label %L27, label %L28
L27:
    %r112 = icmp sgt i32 %r158,2233
    br i1 %r112, label %L29, label %L30
L28:
    call void @putint(i32 %r169)
    br label %L25
L29:
    %r115 = getelementptr [10000 x i32], ptr %r3, i32 0, i32 %r173
    %r116 = load i32, ptr %r115
    %r117 = add i32 %r169,%r116
    %r119 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r158
    %r120 = load i32, ptr %r119
    %r121 = sub i32 %r117,%r120
    %r124 = add i32 %r158,1
    br label %L31
L30:
    %r127 = getelementptr [10000 x i32], ptr %r2, i32 0, i32 %r173
    %r128 = load i32, ptr %r127
    %r129 = add i32 %r169,%r128
    %r131 = getelementptr [10000 x i32], ptr %r4, i32 0, i32 %r158
    %r132 = load i32, ptr %r131
    %r133 = add i32 %r129,%r132
    %r135 = srem i32 %r133,13333
    %r138 = add i32 %r158,2
    br label %L31
L31:
    %r168 = phi i32 [%r121,%L29],[%r135,%L30]
    %r157 = phi i32 [%r124,%L29],[%r138,%L30]
    br label %L26
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @long_array(i32 9)
    ret i32 %r1
}
