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
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r107 = phi i32 [1,%L1],[%r19,%L3]
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r107,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;  latch0
    %r9 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r107
    %r12 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 1, i32 %r107
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r9
    %r15 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r107
    store i32 0, ptr %r15
    %r19 = add i32 %r107,1
    br label %L2
L4:  ;  preheader2
    %r21 = getelementptr [16 x i32], ptr @book, i32 0, i32 1
    store i32 1, ptr %r21
    br label %L5
L5:  ;  exiting2  header2
    %r108 = phi i32 [1,%L4],[%r96,%L16]
    %r25 = load i32, ptr @n
    %r27 = sub i32 %r25,1
    %r28 = icmp sle i32 %r108,%r27
    br i1 %r28, label %L6, label %L7
L6:  ;  preheader1
    br label %L8
L7:  ;
    ret void
L8:  ;  exiting1  header1
    %r106 = phi i32 [65535,%L6],[%r105,%L12]
    %r103 = phi i32 [0,%L6],[%r102,%L12]
    %r100 = phi i32 [1,%L6],[%r54,%L12]
    %r36 = load i32, ptr @n
    %r37 = icmp sle i32 %r100,%r36
    br i1 %r37, label %L9, label %L10
L9:  ;
    %r40 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r100
    %r41 = load i32, ptr %r40
    %r42 = icmp sgt i32 %r106,%r41
    br i1 %r42, label %L13, label %L12
L10:  ;  preheader3
    %r56 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r103
    store i32 1, ptr %r56
    br label %L14
L11:  ;
    %r50 = load i32, ptr %r40
    br label %L12
L12:  ;  latch1
    %r105 = phi i32 [%r106,%L9],[%r106,%L13],[%r50,%L11]
    %r102 = phi i32 [%r103,%L9],[%r103,%L13],[%r100,%L11]
    %r54 = add i32 %r100,1
    br label %L8
L13:  ;
    %r44 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r100
    %r45 = load i32, ptr %r44
    %r47 = icmp eq i32 %r45,0
    br i1 %r47, label %L11, label %L12
L14:  ;  exiting3  header3
    %r98 = phi i32 [1,%L10],[%r93,%L18]
    %r61 = load i32, ptr @n
    %r62 = icmp sle i32 %r98,%r61
    br i1 %r62, label %L15, label %L16
L15:  ;
    %r65 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r103, i32 %r98
    %r66 = load i32, ptr %r65
    %r68 = icmp slt i32 %r66,65535
    br i1 %r68, label %L17, label %L18
L16:  ;  latch2
    %r96 = add i32 %r108,1
    br label %L5
L17:  ;
    %r70 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r98
    %r71 = load i32, ptr %r70
    %r73 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r103
    %r74 = load i32, ptr %r73
    %r78 = load i32, ptr %r65
    %r79 = add i32 %r74,%r78
    %r80 = icmp sgt i32 %r71,%r79
    br i1 %r80, label %L19, label %L20
L18:  ;  latch3
    %r93 = add i32 %r98,1
    br label %L14
L19:  ;
    %r85 = load i32, ptr %r73
    %r89 = load i32, ptr %r65
    %r90 = add i32 %r85,%r89
    store i32 %r90, ptr %r70
    br label %L20
L20:  ;
    br label %L18
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    %r2 = call i32 @getint()
    store i32 %r2, ptr @n
    %r3 = call i32 @getint()
    store i32 %r3, ptr @m
    br label %L2
L2:  ;  exiting0  header0
    %r60 = phi i32 [1,%L1],[%r29,%L7]
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r60,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;  preheader1
    br label %L5
L4:  ;  preheader2
    br label %L11
L5:  ;  exiting1  header1
    %r59 = phi i32 [1,%L3],[%r26,%L10]
    %r11 = load i32, ptr @n
    %r12 = icmp sle i32 %r59,%r11
    br i1 %r12, label %L6, label %L7
L6:  ;
    %r15 = icmp eq i32 %r60,%r59
    br i1 %r15, label %L8, label %L9
L7:  ;  latch0
    %r29 = add i32 %r60,1
    br label %L2
L8:  ;
    %r18 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r60, i32 %r59
    store i32 0, ptr %r18
    br label %L10
L9:  ;
    %r22 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r60, i32 %r59
    store i32 65535, ptr %r22
    br label %L10
L10:  ;  latch1
    %r26 = add i32 %r59,1
    br label %L5
L11:  ;  exiting2  header2
    %r61 = phi i32 [1,%L4],[%r44,%L12]
    %r32 = load i32, ptr @m
    %r33 = icmp sle i32 %r61,%r32
    br i1 %r33, label %L12, label %L13
L12:  ;  latch2
    %r35 = call i32 @getint()
    %r37 = call i32 @getint()
    %r40 = getelementptr [16 x [16 x i32]], ptr @e, i32 0, i32 %r35, i32 %r37
    %r41 = call i32 @getint()
    store i32 %r41, ptr %r40
    %r44 = add i32 %r61,1
    br label %L11
L13:  ;  preheader3
    call void @Dijkstra()
    br label %L14
L14:  ;  exiting3  header3
    %r62 = phi i32 [1,%L13],[%r55,%L15]
    %r47 = load i32, ptr @n
    %r48 = icmp sle i32 %r62,%r47
    br i1 %r48, label %L15, label %L16
L15:  ;  latch3
    %r50 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r62
    %r51 = load i32, ptr %r50
    call void @putint(i32 %r51)
    call void @putch(i32 32)
    %r55 = add i32 %r62,1
    br label %L14
L16:  ;
    call void @putch(i32 10)
    ret i32 0
}
