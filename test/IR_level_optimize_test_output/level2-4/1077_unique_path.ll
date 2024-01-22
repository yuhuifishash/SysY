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
    br label %L1
L1:
    %r7 = call i32 @uniquePaths(i32 3,i32 3)
    ret i32 %r7
}
define i32 @uniquePaths(i32 %r0,i32 %r1)
{
L0:
    %r18 = alloca [9 x i32]
    br label %L1
L1:
    %r6 = icmp eq i32 %r0,1
    br i1 %r6, label %L2, label %L4
L2:
    ret i32 1
L3:
    %r26 = icmp slt i32 0,%r0
    br i1 %r26, label %L22, label %L9
L4:
    %r11 = icmp eq i32 %r1,1
    br i1 %r11, label %L2, label %L3
L7:
    %r137 = phi i32 [%r40,%L8],[0,%L22]
    %r32 = mul i32 %r137,3
    %r34 = add i32 %r32,%r1
    %r36 = sub i32 %r34,1
    %r37 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r36
    store i32 1, ptr %r37
    %r40 = add i32 %r137,1
    br label %L8
L8:
    %r43 = icmp slt i32 %r40,%r0
    br i1 %r43, label %L7, label %L9
L9:
    %r49 = icmp slt i32 0,%r1
    br i1 %r49, label %L23, label %L13
L11:
    %r139 = phi i32 [0,%L23],[%r63,%L12]
    %r59 = add i32 %r57,%r139
    %r60 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r59
    store i32 1, ptr %r60
    %r63 = add i32 %r139,1
    br label %L12
L12:
    %r66 = icmp slt i32 %r63,%r1
    br i1 %r66, label %L11, label %L13
L13:
    %r71 = sub i32 %r0,2
    %r75 = icmp sgt i32 %r71,-1
    br i1 %r75, label %L24, label %L17
L15:
    %r141 = phi i32 [%r123,%L16],[%r71,%L24]
    %r84 = icmp sgt i32 %r80,-1
    br i1 %r84, label %L25, label %L21
L16:
    %r127 = icmp sgt i32 %r123,-1
    br i1 %r127, label %L15, label %L17
L17:
    %r131 = getelementptr [9 x i32], ptr %r18, i32 0, i32 0
    %r132 = load i32, ptr %r131
    ret i32 %r132
L19:
    %r135 = phi i32 [%r114,%L20],[%r80,%L25]
    %r93 = add i32 %r91,%r135
    %r94 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r93
    %r95 = load i32, ptr %r94
    %r100 = add i32 %r98,%r135
    %r102 = add i32 %r100,1
    %r103 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r102
    %r104 = load i32, ptr %r103
    %r105 = add i32 %r95,%r104
    %r111 = getelementptr [9 x i32], ptr %r18, i32 0, i32 %r100
    store i32 %r105, ptr %r111
    %r114 = sub i32 %r135,1
    br label %L20
L20:
    %r118 = icmp sgt i32 %r114,-1
    br i1 %r118, label %L19, label %L21
L21:
    %r123 = sub i32 %r141,1
    br label %L16
L22:
    br label %L7
L23:
    %r55 = sub i32 %r0,1
    %r57 = mul i32 %r55,3
    br label %L11
L24:
    %r80 = sub i32 %r1,2
    br label %L15
L25:
    %r89 = add i32 %r141,1
    %r91 = mul i32 %r89,3
    %r98 = mul i32 %r141,3
    br label %L19
}
