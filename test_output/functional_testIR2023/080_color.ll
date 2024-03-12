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
define i32 @equal(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r0,%r1
    br i1 %r6, label %L2, label %L3
L2:  ;
    br label %L4
L3:  ;
    br label %L4
L4:  ;
    %r11 = phi i32 [1,%L2],[0,%L3]
    ret i32 %r11
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5)
{
L0:  ;
    br label %L1
L1:  ;
    %r18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4, i32 %r5
    %r19 = load i32, ptr %r18
    %r22 = icmp ne i32 %r19,-1
    br i1 %r22, label %L2, label %L3
L2:  ;
    %r30 = load i32, ptr %r18
    br label %L16
L3:  ;
    %r33 = add i32 %r0,%r1
    %r35 = add i32 %r33,%r2
    %r37 = add i32 %r35,%r3
    %r39 = add i32 %r37,%r4
    %r41 = icmp eq i32 %r39,0
    br i1 %r41, label %L4, label %L5
L4:  ;
    br label %L16
L5:  ;
    %r46 = icmp ne i32 %r0,0
    br i1 %r46, label %L6, label %L7
L6:  ;
    %r51 = call i32 @equal(i32 %r5,i32 2)
    %r52 = sub i32 %r0,%r51
    %r55 = sub i32 %r0,1
    %r61 = call i32 @dfs(i32 %r55,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 1)
    %r62 = mul i32 %r52,%r61
    %r63 = add i32 %r62,0
    %r65 = srem i32 %r63,1000000007
    br label %L7
L7:  ;
    %r176 = phi i32 [0,%L5],[%r65,%L6]
    %r67 = icmp ne i32 %r1,0
    br i1 %r67, label %L8, label %L9
L8:  ;
    %r72 = call i32 @equal(i32 %r5,i32 3)
    %r73 = sub i32 %r1,%r72
    %r76 = add i32 %r0,1
    %r79 = sub i32 %r1,1
    %r84 = call i32 @dfs(i32 %r76,i32 %r79,i32 %r2,i32 %r3,i32 %r4,i32 2)
    %r85 = mul i32 %r73,%r84
    %r86 = add i32 %r176,%r85
    %r88 = srem i32 %r86,1000000007
    br label %L9
L9:  ;
    %r177 = phi i32 [%r176,%L7],[%r88,%L8]
    %r90 = icmp ne i32 %r2,0
    br i1 %r90, label %L10, label %L11
L10:  ;
    %r95 = call i32 @equal(i32 %r5,i32 4)
    %r96 = sub i32 %r2,%r95
    %r100 = add i32 %r1,1
    %r103 = sub i32 %r2,1
    %r107 = call i32 @dfs(i32 %r0,i32 %r100,i32 %r103,i32 %r3,i32 %r4,i32 3)
    %r108 = mul i32 %r96,%r107
    %r109 = add i32 %r177,%r108
    %r111 = srem i32 %r109,1000000007
    br label %L11
L11:  ;
    %r178 = phi i32 [%r177,%L9],[%r111,%L10]
    %r113 = icmp ne i32 %r3,0
    br i1 %r113, label %L12, label %L13
L12:  ;
    %r118 = call i32 @equal(i32 %r5,i32 5)
    %r119 = sub i32 %r3,%r118
    %r124 = add i32 %r2,1
    %r127 = sub i32 %r3,1
    %r130 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r124,i32 %r127,i32 %r4,i32 4)
    %r131 = mul i32 %r119,%r130
    %r132 = add i32 %r178,%r131
    %r134 = srem i32 %r132,1000000007
    br label %L13
L13:  ;
    %r179 = phi i32 [%r178,%L11],[%r134,%L12]
    %r136 = icmp ne i32 %r4,0
    br i1 %r136, label %L14, label %L15
L14:  ;
    %r144 = add i32 %r3,1
    %r147 = sub i32 %r4,1
    %r149 = call i32 @dfs(i32 %r0,i32 %r1,i32 %r2,i32 %r144,i32 %r147,i32 5)
    %r150 = mul i32 %r4,%r149
    %r151 = add i32 %r179,%r150
    %r153 = srem i32 %r151,1000000007
    br label %L15
L15:  ;
    %r180 = phi i32 [%r179,%L13],[%r153,%L14]
    %r163 = srem i32 %r180,1000000007
    store i32 %r163, ptr %r18
    %r171 = load i32, ptr %r18
    br label %L16
L16:  ;
    %r174 = phi i32 [%r30,%L2],[1,%L4],[%r171,%L15]
    ret i32 %r174
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r1 = call i32 @getint()
    br label %L2
L2:  ;  exiting0  header0
    %r120 = phi i32 [0,%L1],[%r58,%L7]
    %r6 = icmp slt i32 %r120,18
    br i1 %r6, label %L3, label %L4
L3:  ;  preheader1
    br label %L5
L4:  ;  preheader6
    br label %L20
L5:  ;  exiting1  header1
    %r119 = phi i32 [0,%L3],[%r55,%L10]
    %r11 = icmp slt i32 %r119,18
    br i1 %r11, label %L6, label %L7
L6:  ;  preheader2
    br label %L8
L7:  ;  latch0
    %r58 = add i32 %r120,1
    br label %L2
L8:  ;  exiting2  header2
    %r117 = phi i32 [0,%L6],[%r52,%L13]
    %r16 = icmp slt i32 %r117,18
    br i1 %r16, label %L9, label %L10
L9:  ;  preheader3
    br label %L11
L10:  ;  latch1
    %r55 = add i32 %r119,1
    br label %L5
L11:  ;  exiting3  header3
    %r114 = phi i32 [0,%L9],[%r49,%L16]
    %r21 = icmp slt i32 %r114,18
    br i1 %r21, label %L12, label %L13
L12:  ;  preheader5
    br label %L14
L13:  ;  latch2
    %r52 = add i32 %r117,1
    br label %L8
L14:  ;  exiting5  header5
    %r110 = phi i32 [0,%L12],[%r46,%L19]
    %r26 = icmp slt i32 %r110,18
    br i1 %r26, label %L15, label %L16
L15:  ;  preheader4
    br label %L17
L16:  ;  latch3
    %r49 = add i32 %r114,1
    br label %L11
L17:  ;  exiting4  header4
    %r105 = phi i32 [0,%L15],[%r43,%L18]
    %r31 = icmp slt i32 %r105,7
    br i1 %r31, label %L18, label %L19
L18:  ;  latch4
    %r38 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], ptr @dp, i32 0, i32 %r120, i32 %r119, i32 %r117, i32 %r114, i32 %r110, i32 %r105
    store i32 -1, ptr %r38
    %r43 = add i32 %r105,1
    br label %L17
L19:  ;  latch5
    %r46 = add i32 %r110,1
    br label %L14
L20:  ;  exiting6  header6
    %r121 = phi i32 [0,%L4],[%r79,%L21]
    %r62 = icmp slt i32 %r121,%r1
    br i1 %r62, label %L21, label %L22
L21:  ;  latch6
    %r64 = getelementptr [200 x i32], ptr @list, i32 0, i32 %r121
    %r65 = call i32 @getint()
    store i32 %r65, ptr %r64
    %r68 = load i32, ptr %r64
    %r69 = getelementptr [20 x i32], ptr @cns, i32 0, i32 %r68
    %r74 = load i32, ptr %r69
    %r76 = add i32 %r74,1
    store i32 %r76, ptr %r69
    %r79 = add i32 %r121,1
    br label %L20
L22:  ;
    %r82 = getelementptr [20 x i32], ptr @cns, i32 0, i32 1
    %r83 = load i32, ptr %r82
    %r85 = getelementptr [20 x i32], ptr @cns, i32 0, i32 2
    %r86 = load i32, ptr %r85
    %r88 = getelementptr [20 x i32], ptr @cns, i32 0, i32 3
    %r89 = load i32, ptr %r88
    %r91 = getelementptr [20 x i32], ptr @cns, i32 0, i32 4
    %r92 = load i32, ptr %r91
    %r94 = getelementptr [20 x i32], ptr @cns, i32 0, i32 5
    %r95 = load i32, ptr %r94
    %r97 = call i32 @dfs(i32 %r83,i32 %r86,i32 %r89,i32 %r92,i32 %r95,i32 0)
    call void @putint(i32 %r97)
    ret i32 %r97
}
