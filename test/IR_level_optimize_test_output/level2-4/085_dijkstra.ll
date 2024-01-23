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
@INF = global i32 65535
@e = global [16x [16x i32]] zeroinitializer
@book = global [16x i32] zeroinitializer
@dis = global [16x i32] zeroinitializer
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@v1 = global i32 zeroinitializer
@v2 = global i32 zeroinitializer
@w = global i32 zeroinitializer
define void @Dijkstra()
{
L0:
    br label %L1
L1:
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 1,%r6
    br i1 %r7, label %L26, label %L5
L3:
    %r156 = phi i32 [%r21,%L4],[1,%L26]
    %r12 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 1, i32 %r156
    %r13 = load i32, ptr %r12
    %r15 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r156
    store i32 %r13, ptr %r15
    %r18 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r156
    store i32 0, ptr %r18
    %r21 = add i32 %r156,1
    br label %L4
L4:
    %r24 = icmp sle i32 %r21,%r23
    br i1 %r24, label %L3, label %L5
L5:
    %r29 = getelementptr [16 x i32], ptr @book, i32 0, i32 1
    store i32 1, ptr %r29
    %r32 = load i32, ptr @n
    %r34 = sub i32 %r32,1
    %r35 = icmp sle i32 1,%r34
    br i1 %r35, label %L27, label %L9
L7:
    %r158 = phi i32 [%r130,%L8],[1,%L27]
    %r46 = icmp sle i32 1,%r45
    br i1 %r46, label %L28, label %L13
L8:
    %r135 = icmp sle i32 %r130,%r134
    br i1 %r135, label %L7, label %L9
L9:
    ret void
L11:
    %r154 = phi i32 [%r153,%L12],[65535,%L28]
    %r149 = phi i32 [%r148,%L12],[0,%L28]
    %r144 = phi i32 [%r72,%L12],[1,%L28]
    %r51 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r144
    %r52 = load i32, ptr %r51
    %r53 = icmp sgt i32 %r154,%r52
    br i1 %r53, label %L16, label %L15
L12:
    %r75 = icmp sle i32 %r72,%r74
    br i1 %r75, label %L11, label %L13
L13:
    %r150 = phi i32 [0,%L7],[%r148,%L12]
    %r80 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r150
    store i32 1, ptr %r80
    %r85 = icmp sle i32 1,%r45
    br i1 %r85, label %L29, label %L21
L14:
    %r67 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r144
    %r68 = load i32, ptr %r67
    br label %L15
L15:
    %r153 = phi i32 [%r154,%L11],[%r154,%L16],[%r68,%L14]
    %r148 = phi i32 [%r149,%L11],[%r149,%L16],[%r144,%L14]
    %r72 = add i32 %r144,1
    br label %L12
L16:
    %r57 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r144
    %r58 = load i32, ptr %r57
    %r60 = icmp eq i32 %r58,0
    br i1 %r60, label %L14, label %L15
L19:
    %r140 = phi i32 [%r122,%L20],[1,%L29]
    %r90 = getelementptr i32, ptr %r160, i32 %r140
    %r91 = load i32, ptr %r90
    %r93 = icmp slt i32 %r91,65535
    br i1 %r93, label %L22, label %L23
L20:
    %r125 = icmp sle i32 %r122,%r124
    br i1 %r125, label %L19, label %L21
L21:
    %r130 = add i32 %r158,1
    br label %L8
L22:
    %r97 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r140
    %r98 = load i32, ptr %r97
    %r100 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r150
    %r101 = load i32, ptr %r100
    %r104 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r150, i32 %r140
    %r105 = load i32, ptr %r104
    %r106 = add i32 %r101,%r105
    %r107 = icmp sgt i32 %r98,%r106
    br i1 %r107, label %L24, label %L25
L23:
    %r122 = add i32 %r140,1
    br label %L20
L24:
    %r111 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r150
    %r112 = load i32, ptr %r111
    %r115 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r150, i32 %r140
    %r116 = load i32, ptr %r115
    %r117 = add i32 %r112,%r116
    %r119 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r140
    store i32 %r117, ptr %r119
    br label %L25
L25:
    br label %L23
L26:
    %r23 = load i32, ptr @n
    br label %L3
L27:
    %r45 = load i32, ptr @n
    %r134 = sub i32 %r45,1
    br label %L7
L28:
    %r74 = load i32, ptr @n
    br label %L11
L29:
    %r160 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r150
    %r124 = load i32, ptr @n
    br label %L19
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r2 = call i32 @getint()
    store i32 %r2, ptr @n
    %r3 = call i32 @getint()
    store i32 %r3, ptr @m
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 1,%r6
    br i1 %r7, label %L21, label %L5
L3:
    %r92 = phi i32 [1,%L21],[%r40,%L4]
    %r14 = icmp sle i32 1,%r13
    br i1 %r14, label %L22, label %L9
L4:
    %r43 = icmp sle i32 %r40,%r13
    br i1 %r43, label %L3, label %L5
L5:
    %r48 = load i32, ptr @m
    %r49 = icmp sle i32 1,%r48
    br i1 %r49, label %L23, label %L16
L7:
    %r90 = phi i32 [1,%L22],[%r32,%L8]
    %r19 = icmp eq i32 %r92,%r90
    br i1 %r19, label %L10, label %L11
L8:
    %r35 = icmp sle i32 %r32,%r34
    br i1 %r35, label %L7, label %L9
L9:
    %r40 = add i32 %r92,1
    br label %L4
L10:
    %r25 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r92, i32 %r90
    store i32 0, ptr %r25
    br label %L12
L11:
    %r29 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r92, i32 %r90
    store i32 65535, ptr %r29
    br label %L12
L12:
    %r32 = add i32 %r90,1
    br label %L8
L14:
    %r94 = phi i32 [%r62,%L15],[1,%L23]
    %r53 = call i32 @getint()
    %r55 = call i32 @getint()
    %r56 = call i32 @getint()
    %r59 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r53, i32 %r55
    store i32 %r56, ptr %r59
    %r62 = add i32 %r94,1
    br label %L15
L15:
    %r64 = load i32, ptr @m
    %r65 = icmp sle i32 %r62,%r64
    br i1 %r65, label %L14, label %L16
L16:
    call void @Dijkstra()
    %r70 = load i32, ptr @n
    %r71 = icmp sle i32 1,%r70
    br i1 %r71, label %L24, label %L20
L18:
    %r96 = phi i32 [1,%L24],[%r80,%L19]
    %r75 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r96
    %r76 = load i32, ptr %r75
    call void @putint(i32 %r76)
    call void @putch(i32 32)
    %r80 = add i32 %r96,1
    br label %L19
L19:
    %r82 = load i32, ptr @n
    %r83 = icmp sle i32 %r80,%r82
    br i1 %r83, label %L18, label %L20
L20:
    call void @putch(i32 10)
    ret i32 0
L21:
    %r13 = load i32, ptr @n
    br label %L3
L22:
    %r34 = load i32, ptr @n
    br label %L7
L23:
    br label %L14
L24:
    br label %L18
}
