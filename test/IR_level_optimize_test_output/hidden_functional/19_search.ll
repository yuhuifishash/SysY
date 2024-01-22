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
@INF = global i32 1073741824
@a = global [30x [30x i32]] zeroinitializer
@step = global [4 x [2 x i32]] [[2 x i32] [i32 1,i32 0],[2 x i32] [i32 -1,i32 0],[2 x i32] [i32 0,i32 1],[2 x i32] [i32 0,i32 -1]]
@w = global i32 zeroinitializer
@h = global i32 zeroinitializer
@x_0 = global i32 zeroinitializer
@y_0 = global i32 zeroinitializer
@x_1 = global i32 zeroinitializer
@y_1 = global i32 zeroinitializer
define i32 @search(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = icmp sgt i32 %r2,10
    br i1 %r8, label %L2, label %L3
L2:
    ret i32 1073741824
L3:
    br label %L37
L5:
    %r194 = phi i32 [%r193,%L6],[1073741824,%L37]
    %r190 = phi i32 [%r189,%L6],[0,%L37]
    %r30 = load i32, ptr %r29
    %r32 = icmp ne i32 %r30,1
    br i1 %r32, label %L38, label %L11
L6:
    %r193 = phi i32 [%r194,%L21],[%r194,%L24],[%r192,%L34]
    %r189 = phi i32 [%r92,%L21],[%r128,%L24],[%r164,%L34]
    %r167 = icmp slt i32 %r189,4
    br i1 %r167, label %L5, label %L7
L7:
    %r172 = icmp sgt i32 %r193,10
    br i1 %r172, label %L35, label %L36
L9:
    %r187 = phi i32 [%r62,%L10],[0,%L38]
    %r183 = phi i32 [%r53,%L10],[%r0,%L38]
    %r179 = phi i32 [%r59,%L10],[%r1,%L38]
    %r37 = icmp eq i32 %r183,%r36
    br i1 %r37, label %L14, label %L13
L10:
    %r65 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r53, i32 %r59
    %r66 = load i32, ptr %r65
    %r68 = icmp ne i32 %r66,1
    br i1 %r68, label %L9, label %L11
L11:
    %r188 = phi i32 [0,%L5],[%r62,%L10],[%r187,%L12]
    %r184 = phi i32 [%r0,%L5],[%r53,%L10],[%r183,%L12]
    %r180 = phi i32 [%r1,%L5],[%r59,%L10],[%r179,%L12]
    %r72 = load i32, ptr @x_1
    %r73 = icmp eq i32 %r184,%r72
    br i1 %r73, label %L19, label %L18
L12:
    br label %L11
L13:
    %r198 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r190
    %r51 = getelementptr i32, ptr %r198, i32 0
    %r52 = load i32, ptr %r51
    %r53 = add i32 %r183,%r52
    %r57 = getelementptr i32, ptr %r198, i32 1
    %r58 = load i32, ptr %r57
    %r59 = add i32 %r179,%r58
    %r62 = add i32 %r187,1
    br label %L10
L14:
    %r41 = load i32, ptr @y_1
    %r42 = icmp eq i32 %r179,%r41
    br i1 %r42, label %L12, label %L13
L17:
    ret i32 1
L18:
    %r87 = icmp sle i32 %r188,1
    br i1 %r87, label %L21, label %L22
L19:
    %r77 = load i32, ptr @y_1
    %r78 = icmp eq i32 %r180,%r77
    br i1 %r78, label %L17, label %L18
L21:
    %r92 = add i32 %r190,1
    br label %L6
L22:
    %r95 = icmp eq i32 %r184,0
    br i1 %r95, label %L24, label %L30
L24:
    %r128 = add i32 %r190,1
    br label %L6
L25:
    %r132 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r184, i32 %r180
    store i32 0, ptr %r132
    %r201 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r190
    %r137 = getelementptr i32, ptr %r201, i32 0
    %r138 = load i32, ptr %r137
    %r139 = sub i32 %r184,%r138
    %r143 = getelementptr i32, ptr %r201, i32 1
    %r144 = load i32, ptr %r143
    %r145 = sub i32 %r180,%r144
    %r148 = add i32 %r2,1
    %r149 = call i32 @search(i32 %r139,i32 %r145,i32 %r148)
    %r151 = add i32 %r149,1
    %r154 = icmp slt i32 %r151,%r194
    br i1 %r154, label %L33, label %L34
L26:
    %r117 = load i32, ptr @w
    %r119 = add i32 %r117,1
    %r120 = icmp eq i32 %r180,%r119
    br i1 %r120, label %L24, label %L25
L28:
    %r110 = icmp eq i32 %r180,0
    br i1 %r110, label %L24, label %L26
L30:
    %r99 = load i32, ptr @h
    %r101 = add i32 %r99,1
    %r102 = icmp eq i32 %r184,%r101
    br i1 %r102, label %L24, label %L28
L33:
    br label %L34
L34:
    %r192 = phi i32 [%r194,%L25],[%r151,%L33]
    %r161 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r184, i32 %r180
    store i32 1, ptr %r161
    %r164 = add i32 %r190,1
    br label %L6
L35:
    ret i32 1073741824
L36:
    ret i32 %r193
L37:
    %r29 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r0, i32 %r1
    br label %L5
L38:
    %r36 = load i32, ptr @x_1
    br label %L9
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @getint()
    store i32 %r0, ptr @w
    %r1 = call i32 @getint()
    store i32 %r1, ptr @h
    %r2 = load i32, ptr @w
    %r4 = icmp ne i32 %r2,0
    br i1 %r4, label %L30, label %L5
L3:
    br label %L31
L4:
    %r112 = load i32, ptr @w
    %r114 = icmp ne i32 %r112,0
    br i1 %r114, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r130 = phi i32 [0,%L31],[%r37,%L8]
    br label %L32
L8:
    %r40 = icmp slt i32 %r37,30
    br i1 %r40, label %L7, label %L9
L9:
    %r45 = load i32, ptr @h
    %r46 = icmp sle i32 1,%r45
    br i1 %r46, label %L33, label %L17
L11:
    %r122 = phi i32 [0,%L32],[%r29,%L12]
    %r26 = getelementptr i32, ptr %r134, i32 %r122
    store i32 1, ptr %r26
    %r29 = add i32 %r122,1
    br label %L12
L12:
    %r32 = icmp slt i32 %r29,30
    br i1 %r32, label %L11, label %L13
L13:
    %r37 = add i32 %r130,1
    br label %L8
L15:
    %r132 = phi i32 [1,%L33],[%r89,%L16]
    %r51 = load i32, ptr @w
    %r52 = icmp sle i32 1,%r51
    br i1 %r52, label %L34, label %L21
L16:
    %r91 = load i32, ptr @h
    %r92 = icmp sle i32 %r89,%r91
    br i1 %r92, label %L15, label %L17
L17:
    %r96 = load i32, ptr @x_0
    %r97 = load i32, ptr @y_0
    %r99 = call i32 @search(i32 %r96,i32 %r97,i32 1)
    %r102 = icmp sle i32 %r99,10
    br i1 %r102, label %L27, label %L28
L19:
    %r126 = phi i32 [%r81,%L20],[1,%L34]
    %r55 = call i32 @getint()
    %r58 = getelementptr i32, ptr %r135, i32 %r126
    store i32 %r55, ptr %r58
    %r62 = load i32, ptr %r58
    %r64 = icmp eq i32 %r62,2
    br i1 %r64, label %L22, label %L23
L20:
    %r83 = load i32, ptr @w
    %r84 = icmp sle i32 %r81,%r83
    br i1 %r84, label %L19, label %L21
L21:
    %r89 = add i32 %r132,1
    br label %L16
L22:
    store i32 %r132, ptr @x_0
    store i32 %r126, ptr @y_0
    br label %L24
L23:
    %r71 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r132, i32 %r126
    %r72 = load i32, ptr %r71
    %r74 = icmp eq i32 %r72,3
    br i1 %r74, label %L25, label %L26
L24:
    %r81 = add i32 %r126,1
    br label %L20
L25:
    store i32 %r132, ptr @x_1
    store i32 %r126, ptr @y_1
    br label %L26
L26:
    br label %L24
L27:
    call void @putint(i32 %r99)
    call void @putch(i32 10)
    br label %L29
L28:
    call void @putint(i32 -1)
    call void @putch(i32 10)
    br label %L29
L29:
    %r110 = call i32 @getint()
    store i32 %r110, ptr @w
    %r111 = call i32 @getint()
    store i32 %r111, ptr @h
    br label %L4
L30:
    br label %L3
L31:
    br label %L7
L32:
    %r134 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r130
    br label %L11
L33:
    br label %L15
L34:
    %r135 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r132
    br label %L19
}
