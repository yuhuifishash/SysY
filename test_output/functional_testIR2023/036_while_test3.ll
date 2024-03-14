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
@g = global i32 zeroinitializer
@h = global i32 zeroinitializer
@f = global i32 zeroinitializer
@e = global i32 zeroinitializer
define i32 @EightWhile()
{
L0:  ;
    br label %L1
L1:  ;  preheader0
    br label %L2
L2:  ;  exiting0  header0
    %r105 = phi i32 [5,%L1],[%r109,%L7]
    %r104 = phi i32 [6,%L1],[%r80,%L7]
    %r102 = phi i32 [7,%L1],[%r101,%L7]
    %r99 = phi i32 [10,%L1],[%r98,%L7]
    %r14 = icmp slt i32 %r105,20
    br i1 %r14, label %L3, label %L4
L3:  ;  preheader1
    %r17 = add i32 %r105,3
    br label %L5
L4:  ;
    %r84 = add i32 %r104,%r99
    %r85 = add i32 %r105,%r84
    %r87 = add i32 %r85,%r102
    %r88 = load i32, ptr @e
    %r90 = add i32 %r88,%r99
    %r91 = load i32, ptr @g
    %r92 = sub i32 %r90,%r91
    %r93 = load i32, ptr @h
    %r94 = add i32 %r92,%r93
    %r95 = sub i32 %r87,%r94
    ret i32 %r95
L5:  ;  exiting1  header1
    %r109 = phi i32 [%r17,%L3],[%r108,%L10]
    %r103 = phi i32 [%r104,%L3],[%r23,%L10]
    %r101 = phi i32 [%r102,%L3],[%r77,%L10]
    %r98 = phi i32 [%r99,%L3],[%r97,%L10]
    %r20 = icmp slt i32 %r103,10
    br i1 %r20, label %L6, label %L7
L6:  ;  preheader2
    %r23 = add i32 %r103,1
    br label %L8
L7:  ;  latch0
    %r80 = sub i32 %r103,2
    br label %L2
L8:  ;  exiting2  header2
    %r108 = phi i32 [%r109,%L6],[%r107,%L13]
    %r100 = phi i32 [%r101,%L6],[%r29,%L13]
    %r97 = phi i32 [%r98,%L6],[%r74,%L13]
    %r26 = icmp eq i32 %r100,7
    br i1 %r26, label %L9, label %L10
L9:  ;  preheader3
    %r29 = sub i32 %r100,1
    br label %L11
L10:  ;  latch1
    %r77 = add i32 %r100,1
    br label %L5
L11:  ;  exiting3  header3
    %r107 = phi i32 [%r108,%L9],[%r106,%L16]
    %r96 = phi i32 [%r97,%L9],[%r35,%L16]
    %r32 = icmp slt i32 %r96,20
    br i1 %r32, label %L12, label %L13
L12:  ;  preheader4
    %r35 = add i32 %r96,3
    br label %L14
L13:  ;  latch2
    %r74 = sub i32 %r96,1
    br label %L8
L14:  ;  exiting4  header4
    %r106 = phi i32 [%r107,%L12],[%r110,%L19]
    %r36 = load i32, ptr @e
    %r38 = icmp sgt i32 %r36,1
    br i1 %r38, label %L15, label %L16
L15:  ;  preheader5
    %r39 = load i32, ptr @e
    %r41 = sub i32 %r39,1
    store i32 %r41, ptr @e
    br label %L17
L16:  ;  latch3
    %r69 = load i32, ptr @e
    %r71 = add i32 %r69,1
    store i32 %r71, ptr @e
    br label %L11
L17:  ;  exiting5  header5
    %r110 = phi i32 [%r106,%L15],[%r111,%L22]
    %r42 = load i32, ptr @f
    %r44 = icmp sgt i32 %r42,2
    br i1 %r44, label %L18, label %L19
L18:  ;  preheader7
    %r45 = load i32, ptr @f
    %r47 = sub i32 %r45,2
    store i32 %r47, ptr @f
    br label %L20
L19:  ;  latch4
    %r66 = load i32, ptr @f
    %r68 = add i32 %r66,1
    store i32 %r68, ptr @f
    br label %L14
L20:  ;  exiting7  header7
    %r111 = phi i32 [%r110,%L18],[%r112,%L25]
    %r48 = load i32, ptr @g
    %r50 = icmp slt i32 %r48,3
    br i1 %r50, label %L21, label %L22
L21:  ;  preheader6
    %r51 = load i32, ptr @g
    %r53 = add i32 %r51,10
    store i32 %r53, ptr @g
    br label %L23
L22:  ;  latch5
    %r63 = load i32, ptr @g
    %r65 = sub i32 %r63,8
    store i32 %r65, ptr @g
    br label %L17
L23:  ;  exiting6  header6
    %r112 = phi i32 [%r111,%L21],[%r112,%L24]
    %r54 = load i32, ptr @h
    %r56 = icmp slt i32 %r54,10
    br i1 %r56, label %L24, label %L25
L24:  ;  latch6
    %r57 = load i32, ptr @h
    %r59 = add i32 %r57,8
    store i32 %r59, ptr @h
    br label %L23
L25:  ;  latch7
    %r60 = load i32, ptr @h
    %r62 = sub i32 %r60,1
    store i32 %r62, ptr @h
    br label %L20
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    store i32 1, ptr @g
    store i32 2, ptr @h
    store i32 4, ptr @e
    store i32 6, ptr @f
    %r4 = call i32 @EightWhile()
    ret i32 %r4
}
