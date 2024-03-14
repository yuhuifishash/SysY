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
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp sgt i32 %r2,10
    br i1 %r8, label %L2, label %L3
L2:  ;
    br label %L30
L3:  ;  preheader2
    br label %L4
L4:  ;  exiting2  header2
    %r137 = phi i32 [1073741824,%L3],[%r138,%L31]
    %r134 = phi i32 [0,%L3],[%r139,%L31]
    %r16 = icmp slt i32 %r134,4
    br i1 %r16, label %L5, label %L6
L5:  ;  preheader0
    br label %L7
L6:  ;
    %r118 = icmp sgt i32 %r137,10
    br i1 %r118, label %L28, label %L29
L7:  ;  exiting0  header0
    %r132 = phi i32 [0,%L5],[%r49,%L11]
    %r129 = phi i32 [%r0,%L5],[%r40,%L11]
    %r126 = phi i32 [%r1,%L5],[%r46,%L11]
    %r25 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r129, i32 %r126
    %r26 = load i32, ptr %r25
    %r28 = icmp ne i32 %r26,1
    br i1 %r28, label %L8, label %L32
L8:  ;
    %r30 = load i32, ptr @x_1
    %r31 = icmp eq i32 %r129,%r30
    br i1 %r31, label %L12, label %L11
L9:  ;
    %r51 = load i32, ptr @x_1
    %r52 = icmp eq i32 %r129,%r51
    br i1 %r52, label %L16, label %L15
L10:  ;
    br label %L9
L11:  ;  latch0
    %r38 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r134, i32 0
    %r39 = load i32, ptr %r38
    %r40 = add i32 %r129,%r39
    %r44 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r134, i32 1
    %r45 = load i32, ptr %r44
    %r46 = add i32 %r126,%r45
    %r49 = add i32 %r132,1
    br label %L7
L12:  ;  exiting0
    %r33 = load i32, ptr @y_1
    %r34 = icmp eq i32 %r126,%r33
    br i1 %r34, label %L10, label %L11
L14:  ;
    br label %L30
L15:  ;
    %r59 = icmp sle i32 %r132,1
    br i1 %r59, label %L17, label %L18
L16:  ;  exiting2
    %r54 = load i32, ptr @y_1
    %r55 = icmp eq i32 %r126,%r54
    br i1 %r55, label %L14, label %L15
L17:  ;
    %r62 = add i32 %r134,1
    br label %L31
L18:  ;
    %r65 = icmp eq i32 %r129,0
    br i1 %r65, label %L20, label %L24
L20:  ;
    %r81 = add i32 %r134,1
    br label %L31
L21:  ;
    store i32 0, ptr %r25
    %r90 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r134, i32 0
    %r91 = load i32, ptr %r90
    %r92 = sub i32 %r129,%r91
    %r96 = getelementptr [4 x [2 x i32]], ptr @step, i32 0, i32 %r134, i32 1
    %r97 = load i32, ptr %r96
    %r98 = sub i32 %r126,%r97
    %r101 = add i32 %r2,1
    %r102 = call i32 @search(i32 %r92,i32 %r98,i32 %r101)
    %r104 = add i32 %r102,1
    %r107 = icmp slt i32 %r104,%r137
    br i1 %r107, label %L26, label %L27
L22:  ;
    %r75 = load i32, ptr @w
    %r77 = add i32 %r75,1
    %r78 = icmp eq i32 %r126,%r77
    br i1 %r78, label %L20, label %L21
L23:  ;
    %r73 = icmp eq i32 %r126,0
    br i1 %r73, label %L20, label %L22
L24:  ;
    %r67 = load i32, ptr @h
    %r69 = add i32 %r67,1
    %r70 = icmp eq i32 %r129,%r69
    br i1 %r70, label %L20, label %L23
L26:  ;
    br label %L27
L27:  ;
    %r136 = phi i32 [%r137,%L21],[%r104,%L26]
    store i32 1, ptr %r25
    %r115 = add i32 %r134,1
    br label %L31
L28:  ;
    br label %L30
L29:  ;
    br label %L30
L30:  ;
    %r123 = phi i32 [1073741824,%L2],[1,%L14],[1073741824,%L28],[%r137,%L29]
    ret i32 %r123
L31:  ;latch2
    %r138 = phi i32 [%r137,%L17],[%r137,%L20],[%r136,%L27]
    %r139 = phi i32 [%r62,%L17],[%r81,%L20],[%r115,%L27]
    br label %L4
L32:  ;
    br label %L9
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader4
    %r0 = call i32 @getint()
    store i32 %r0, ptr @w
    %r1 = call i32 @getint()
    store i32 %r1, ptr @h
    br label %L2
L2:  ;  exiting4  header4
    %r2 = load i32, ptr @w
    %r4 = icmp ne i32 %r2,0
    br i1 %r4, label %L3, label %L4
L3:  ;  preheader1
    br label %L5
L4:  ;
    ret i32 0
L5:  ;  exiting1  header1
    %r83 = phi i32 [0,%L3],[%r26,%L10]
    %r12 = icmp slt i32 %r83,30
    br i1 %r12, label %L6, label %L7
L6:  ;  preheader0
    br label %L8
L7:  ;  preheader2
    br label %L11
L8:  ;  exiting0  header0
    %r79 = phi i32 [0,%L6],[%r23,%L9]
    %r16 = icmp slt i32 %r79,30
    br i1 %r16, label %L9, label %L10
L9:  ;  latch0
    %r19 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r83, i32 %r79
    store i32 1, ptr %r19
    %r23 = add i32 %r79,1
    br label %L8
L10:  ;  latch1
    %r26 = add i32 %r83,1
    br label %L5
L11:  ;  exiting2  header2
    %r84 = phi i32 [1,%L7],[%r60,%L16]
    %r29 = load i32, ptr @h
    %r30 = icmp sle i32 %r84,%r29
    br i1 %r30, label %L12, label %L13
L12:  ;  preheader3
    br label %L14
L13:  ;
    %r62 = load i32, ptr @x_0
    %r63 = load i32, ptr @y_0
    %r65 = call i32 @search(i32 %r62,i32 %r63,i32 1)
    %r68 = icmp sle i32 %r65,10
    br i1 %r68, label %L22, label %L23
L14:  ;  exiting3  header3
    %r81 = phi i32 [1,%L12],[%r57,%L19]
    %r33 = load i32, ptr @w
    %r34 = icmp sle i32 %r81,%r33
    br i1 %r34, label %L15, label %L16
L15:  ;
    %r37 = getelementptr [30 x [30 x i32]], ptr @a, i32 0, i32 %r84, i32 %r81
    %r38 = call i32 @getint()
    store i32 %r38, ptr %r37
    %r42 = load i32, ptr %r37
    %r44 = icmp eq i32 %r42,2
    br i1 %r44, label %L17, label %L18
L16:  ;  latch2
    %r60 = add i32 %r84,1
    br label %L11
L17:  ;
    store i32 %r84, ptr @x_0
    store i32 %r81, ptr @y_0
    br label %L19
L18:  ;
    %r50 = load i32, ptr %r37
    %r52 = icmp eq i32 %r50,3
    br i1 %r52, label %L20, label %L21
L19:  ;  latch3
    %r57 = add i32 %r81,1
    br label %L14
L20:  ;
    store i32 %r84, ptr @x_1
    store i32 %r81, ptr @y_1
    br label %L21
L21:  ;
    br label %L19
L22:  ;
    call void @putint(i32 %r65)
    call void @putch(i32 10)
    br label %L24
L23:  ;
    call void @putint(i32 -1)
    call void @putch(i32 10)
    br label %L24
L24:  ;  latch4
    %r74 = call i32 @getint()
    store i32 %r74, ptr @w
    %r75 = call i32 @getint()
    store i32 %r75, ptr @h
    br label %L2
}
