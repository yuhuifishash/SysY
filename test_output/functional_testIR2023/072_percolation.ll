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
@array = global [110x i32] zeroinitializer
@n = global i32 zeroinitializer
define void @init(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r18 = phi i32 [1,%L1],[%r17,%L3]
    %r7 = mul i32 %r0,%r0
    %r9 = add i32 %r7,1
    %r10 = icmp sle i32 %r18,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r12 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r18
    store i32 -1, ptr %r12
    %r17 = add i32 %r18,1
    br label %L2
L4:  ;
    ret void
}
define i32 @findfa(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;
    %r9 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r0
    %r12 = load i32, ptr %r9
    %r13 = call i32 @findfa(i32 %r12)
    store i32 %r13, ptr %r9
    %r16 = load i32, ptr %r9
    ret i32 %r16
}
define void @mmerge(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call i32 @findfa(i32 %r0)
    %r9 = call i32 @findfa(i32 %r1)
    %r12 = icmp ne i32 %r6,%r9
    br i1 %r12, label %L2, label %L3
L2:  ;
    %r14 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r6
    store i32 %r9, ptr %r14
    br label %L3
L3:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r165 = phi i32 [1,%L1],[%r13,%L31]
    %r163 = phi i32 [0,%L1],[%r162,%L31]
    %r161 = phi i32 [0,%L1],[%r160,%L31]
    %r10 = icmp ne i32 %r165,0
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r13 = sub i32 %r165,1
    store i32 4, ptr @n
    %r20 = load i32, ptr @n
    call void @init(i32 %r20)
    %r24 = mul i32 %r20,%r20
    %r26 = add i32 %r24,1
    br label %L5
L4:  ;
    ret i32 0
L5:  ;
    %r162 = phi i32 [%r163,%L3],[%r30,%L9]
    %r160 = phi i32 [%r161,%L3],[%r31,%L9]
    %r159 = phi i32 [0,%L3],[%r147,%L9]
    %r157 = phi i32 [0,%L3],[%r156,%L9]
    %r29 = icmp slt i32 %r159,10
    br i1 %r29, label %L6, label %L7
L6:  ;
    %r30 = call i32 @getint()
    %r31 = call i32 @getint()
    %r33 = icmp eq i32 %r157,0
    br i1 %r33, label %L8, label %L9
L7:  ;
    %r149 = icmp eq i32 %r157,0
    br i1 %r149, label %L30, label %L31
L8:  ;
    %r35 = load i32, ptr @n
    %r38 = sub i32 %r30,1
    %r39 = mul i32 %r35,%r38
    %r41 = add i32 %r39,%r31
    %r43 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r41
    store i32 %r41, ptr %r43
    %r47 = icmp eq i32 %r30,1
    br i1 %r47, label %L10, label %L11
L9:  ;
    %r156 = phi i32 [%r157,%L6],[%r155,%L27]
    %r147 = add i32 %r159,1
    br label %L5
L10:  ;
    %r49 = getelementptr [110 x i32], ptr @array, i32 0, i32 0
    store i32 0, ptr %r49
    call void @mmerge(i32 %r41,i32 0)
    br label %L11
L11:  ;
    %r54 = load i32, ptr @n
    %r55 = icmp eq i32 %r30,%r54
    br i1 %r55, label %L12, label %L13
L12:  ;
    %r57 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r26
    store i32 %r26, ptr %r57
    call void @mmerge(i32 %r41,i32 %r26)
    br label %L13
L13:  ;
    %r62 = load i32, ptr @n
    %r63 = icmp slt i32 %r31,%r62
    br i1 %r63, label %L16, label %L15
L14:  ;
    %r75 = add i32 %r41,1
    call void @mmerge(i32 %r41,i32 %r75)
    br label %L15
L15:  ;
    %r78 = icmp sgt i32 %r31,1
    br i1 %r78, label %L19, label %L18
L16:  ;
    %r66 = add i32 %r41,1
    %r67 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r71 = icmp ne i32 %r68,-1
    br i1 %r71, label %L14, label %L15
L17:  ;
    %r90 = sub i32 %r41,1
    call void @mmerge(i32 %r41,i32 %r90)
    br label %L18
L18:  ;
    %r92 = load i32, ptr @n
    %r93 = icmp slt i32 %r30,%r92
    br i1 %r93, label %L22, label %L21
L19:  ;
    %r81 = sub i32 %r41,1
    %r82 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r86 = icmp ne i32 %r83,-1
    br i1 %r86, label %L17, label %L18
L20:  ;
    %r104 = load i32, ptr @n
    %r105 = add i32 %r41,%r104
    call void @mmerge(i32 %r41,i32 %r105)
    br label %L21
L21:  ;
    %r108 = icmp sgt i32 %r30,1
    br i1 %r108, label %L25, label %L24
L22:  ;
    %r95 = load i32, ptr @n
    %r96 = add i32 %r41,%r95
    %r97 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r96
    %r98 = load i32, ptr %r97
    %r101 = icmp ne i32 %r98,-1
    br i1 %r101, label %L20, label %L21
L23:  ;
    %r119 = load i32, ptr @n
    %r120 = sub i32 %r41,%r119
    call void @mmerge(i32 %r41,i32 %r120)
    br label %L24
L24:  ;
    %r122 = getelementptr [110 x i32], ptr @array, i32 0, i32 0
    %r123 = load i32, ptr %r122
    %r126 = icmp ne i32 %r123,-1
    br i1 %r126, label %L29, label %L27
L25:  ;
    %r110 = load i32, ptr @n
    %r111 = sub i32 %r41,%r110
    %r112 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r111
    %r113 = load i32, ptr %r112
    %r116 = icmp ne i32 %r113,-1
    br i1 %r116, label %L23, label %L24
L26:  ;
    %r142 = add i32 %r159,1
    call void @putint(i32 %r142)
    call void @putch(i32 10)
    br label %L27
L27:  ;
    %r155 = phi i32 [%r157,%L24],[%r157,%L29],[%r157,%L28],[1,%L26]
    br label %L9
L28:  ;
    %r134 = call i32 @findfa(i32 0)
    %r136 = call i32 @findfa(i32 %r26)
    %r137 = icmp eq i32 %r134,%r136
    br i1 %r137, label %L26, label %L27
L29:  ;
    %r128 = getelementptr [110 x i32], ptr @array, i32 0, i32 %r26
    %r129 = load i32, ptr %r128
    %r132 = icmp ne i32 %r129,-1
    br i1 %r132, label %L28, label %L27
L30:  ;
    call void @putint(i32 -1)
    call void @putch(i32 10)
    br label %L31
L31:  ;
    br label %L2
}
