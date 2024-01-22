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
@maxn = global i32 18
@mod = global i32 1000000007
@dp = global [18x [18x [18x [18x [18x [7x i32]]]]]] zeroinitializer
@list = global [200x i32] zeroinitializer
@cns = global [20x i32] zeroinitializer
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5)
{
L0:
    br label %L1
L1:
    %r18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5
    %r19 = load i32, ptr %r18
    %r22 = icmp ne i32 %r19,-1
    br i1 %r22, label %L2, label %L3
L2:
    %r31 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5
    %r32 = load i32, ptr %r31
    ret i32 %r32
L3:
    %r35 = add i32 %r0,%r1
    %r37 = add i32 %r35,%r2
    %r39 = add i32 %r37,%r3
    %r41 = add i32 %r39,%r4
    %r43 = icmp eq i32 %r41,0
    br i1 %r43, label %L4, label %L5
L4:
    ret i32 1
L5:
    %r50 = icmp ne i32 %r0,0
    br i1 %r50, label %L6, label %L7
L6:
    br label %L16
L7:
    %r176 = phi i32 [0,%L5],[%r69,%L17]
    %r71 = icmp ne i32 %r1,0
    br i1 %r71, label %L8, label %L9
L8:
    br label %L21
L9:
    %r177 = phi i32 [%r176,%L7],[%r92,%L22]
    %r94 = icmp ne i32 %r2,0
    br i1 %r94, label %L10, label %L11
L10:
    br label %L26
L11:
    %r178 = phi i32 [%r177,%L9],[%r115,%L27]
    %r117 = icmp ne i32 %r3,0
    br i1 %r117, label %L12, label %L13
L12:
    br label %L31
L13:
    %r179 = phi i32 [%r178,%L11],[%r138,%L32]
    %r140 = icmp ne i32 %r4,0
    br i1 %r140, label %L14, label %L15
L14:
    %r148 = add i32 %r3,1
    %r151 = sub i32 %r4,1
    %r153 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r148,i32 %r151,i32 5)
    %r154 = mul i32 %r4,%r153
    %r155 = add i32 %r179,%r154
    %r157 = srem i32 %r155,1000000007
    br label %L15
L15:
    %r180 = phi i32 [%r179,%L13],[%r157,%L14]
    %r160 = srem i32 %r180,1000000007
    %r167 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5
    store i32 %r160, ptr %r167
    %r175 = load i32, ptr %r167
    ret i32 %r175
L16:
    br label %L18
L17:
    %r55 = phi i32 [0,%L20],[1,%L19]
    %r56 = sub i32 %r0,%r55
    %r59 = sub i32 %r0,1
    %r65 = call i32 @dfs(i32 %r59,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 1)
    %r66 = mul i32 %r56,%r65
    %r67 = add i32 0,%r66
    %r69 = srem i32 %r67,1000000007
    br label %L7
L18:
    %r181 = icmp eq i32 %r5,2
    br i1 %r181, label %L19, label %L20
L19:
    br label %L17
L20:
    br label %L17
L21:
    br label %L23
L22:
    %r76 = phi i32 [1,%L24],[0,%L25]
    %r77 = sub i32 %r1,%r76
    %r80 = add i32 %r0,1
    %r83 = sub i32 %r1,1
    %r88 = call i32 @dfs(i32 %r80,i32 %r83,i32 %r2,i32 %r3,i32 %r4,i32 2)
    %r89 = mul i32 %r77,%r88
    %r90 = add i32 %r176,%r89
    %r92 = srem i32 %r90,1000000007
    br label %L9
L23:
    %r182 = icmp eq i32 %r5,3
    br i1 %r182, label %L24, label %L25
L24:
    br label %L22
L25:
    br label %L22
L26:
    br label %L28
L27:
    %r99 = phi i32 [1,%L29],[0,%L30]
    %r100 = sub i32 %r2,%r99
    %r104 = add i32 %r1,1
    %r107 = sub i32 %r2,1
    %r111 = call i32 @dfs(i32 %r0,i32 %r104,i32 %r107,i32 %r3,i32 %r4,i32 3)
    %r112 = mul i32 %r100,%r111
    %r113 = add i32 %r177,%r112
    %r115 = srem i32 %r113,1000000007
    br label %L11
L28:
    %r183 = icmp eq i32 %r5,4
    br i1 %r183, label %L29, label %L30
L29:
    br label %L27
L30:
    br label %L27
L31:
    br label %L33
L32:
    %r122 = phi i32 [1,%L34],[0,%L35]
    %r123 = sub i32 %r3,%r122
    %r128 = add i32 %r2,1
    %r131 = sub i32 %r3,1
    %r134 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r128,i32 %r131,i32 %r4,i32 4)
    %r135 = mul i32 %r123,%r134
    %r136 = add i32 %r178,%r135
    %r138 = srem i32 %r136,1000000007
    br label %L13
L33:
    %r184 = icmp eq i32 %r5,5
    br i1 %r184, label %L34, label %L35
L34:
    br label %L32
L35:
    br label %L32
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    br label %L30
L3:
    %r189 = phi i32 [%r95,%L4],[0,%L30]
    br label %L31
L4:
    %r98 = icmp slt i32 %r95,18
    br i1 %r98, label %L3, label %L5
L5:
    %r104 = icmp slt i32 0,%r1
    br i1 %r104, label %L36, label %L29
L7:
    %r187 = phi i32 [%r87,%L8],[0,%L31]
    br label %L32
L8:
    %r90 = icmp slt i32 %r87,18
    br i1 %r90, label %L7, label %L9
L9:
    %r95 = add i32 %r189,1
    br label %L4
L11:
    %r183 = phi i32 [%r79,%L12],[0,%L32]
    br label %L33
L12:
    %r82 = icmp slt i32 %r79,18
    br i1 %r82, label %L11, label %L13
L13:
    %r87 = add i32 %r187,1
    br label %L8
L15:
    %r177 = phi i32 [0,%L33],[%r71,%L16]
    br label %L34
L16:
    %r74 = icmp slt i32 %r71,18
    br i1 %r74, label %L15, label %L17
L17:
    %r79 = add i32 %r183,1
    br label %L12
L19:
    %r169 = phi i32 [%r63,%L20],[0,%L34]
    br label %L35
L20:
    %r66 = icmp slt i32 %r63,18
    br i1 %r66, label %L19, label %L21
L21:
    %r71 = add i32 %r177,1
    br label %L16
L23:
    %r159 = phi i32 [%r55,%L24],[0,%L35]
    %r52 = getelementptr i32, ptr %r197, i32 %r159
    store i32 -1, ptr %r52
    %r55 = add i32 %r159,1
    br label %L24
L24:
    %r58 = icmp slt i32 %r55,7
    br i1 %r58, label %L23, label %L25
L25:
    %r63 = add i32 %r169,1
    br label %L20
L27:
    %r191 = phi i32 [%r123,%L28],[0,%L36]
    %r107 = call i32 @getint()
    %r109 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r191
    store i32 %r107, ptr %r109
    %r112 = load i32, ptr %r109
    %r113 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r112
    %r114 = load i32, ptr %r113
    %r116 = add i32 %r114,1
    store i32 %r116, ptr %r113
    %r123 = add i32 %r191,1
    br label %L28
L28:
    %r126 = icmp slt i32 %r123,%r1
    br i1 %r126, label %L27, label %L29
L29:
    %r131 = getelementptr [20 x i32], ptr @cns, i32 0, i32 1
    %r132 = load i32, ptr %r131
    %r134 = getelementptr [20 x i32], ptr @cns, i32 0, i32 2
    %r135 = load i32, ptr %r134
    %r137 = getelementptr [20 x i32], ptr @cns, i32 0, i32 3
    %r138 = load i32, ptr %r137
    %r140 = getelementptr [20 x i32], ptr @cns, i32 0, i32 4
    %r141 = load i32, ptr %r140
    %r143 = getelementptr [20 x i32], ptr @cns, i32 0, i32 5
    %r144 = load i32, ptr %r143
    %r146 = call i32 @dfs(i32 %r132,i32 %r135,i32 %r138,i32 %r141,i32 %r144,i32 0)
    call void @putint(i32 %r146)
    ret i32 %r146
L30:
    br label %L3
L31:
    %r193 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r189
    br label %L7
L32:
    %r194 = getelementptr [18 x [18 x [18 x [7 x i32]]]], ptr %r193, i32 %r187
    br label %L11
L33:
    %r195 = getelementptr [18 x [18 x [7 x i32]]], ptr %r194, i32 %r183
    br label %L15
L34:
    %r196 = getelementptr [18 x [7 x i32]], ptr %r195, i32 %r177
    br label %L19
L35:
    %r197 = getelementptr [7 x i32], ptr %r196, i32 %r169
    br label %L23
L36:
    br label %L27
}
define i32 @equal(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = icmp eq i32 %r0,%r1
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
}
