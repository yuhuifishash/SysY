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
define i32 @uniquePaths(i32 %r0,i32 %r1)
{
L0:  ;
    %r11 = alloca [9 x i32]
    br label %L1
L1:  ;
    %r6 = icmp eq i32 %r0,1
    br i1 %r6, label %L2, label %L4
L2:  ;
    ret i32 1
L3:  ;  preheader0
    br label %L5
L4:  ;
    %r9 = icmp eq i32 %r1,1
    br i1 %r9, label %L2, label %L3
L5:  ;  exiting0  header0
    %r98 = phi i32 [0,%L3],[%r31,%L6]
    %r19 = icmp slt i32 %r98,%r0
    br i1 %r19, label %L6, label %L7
L6:  ;  latch0
    %r22 = mul i32 %r98,3
    %r24 = add i32 %r22,%r1
    %r26 = sub i32 %r24,1
    %r27 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r26
    store i32 1, ptr %r27
    %r31 = add i32 %r98,1
    br label %L5
L7:  ;  preheader1
    br label %L8
L8:  ;  exiting1  header1
    %r99 = phi i32 [0,%L7],[%r47,%L9]
    %r35 = icmp slt i32 %r99,%r1
    br i1 %r35, label %L9, label %L10
L9:  ;  latch1
    %r38 = sub i32 %r0,1
    %r40 = mul i32 %r38,3
    %r42 = add i32 %r40,%r99
    %r43 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r42
    store i32 1, ptr %r43
    %r47 = add i32 %r99,1
    br label %L8
L10:  ;  preheader3
    %r50 = sub i32 %r0,2
    br label %L11
L11:  ;  exiting3  header3
    %r100 = phi i32 [%r50,%L10],[%r92,%L16]
    %r54 = icmp sgt i32 %r100,-1
    br i1 %r54, label %L12, label %L13
L12:  ;  preheader2
    %r57 = sub i32 %r1,2
    br label %L14
L13:  ;
    %r94 = getelementptr [9 x i32], ptr %r11, i32 0, i32 0
    %r95 = load i32, ptr %r94
    ret i32 %r95
L14:  ;  exiting2  header2
    %r97 = phi i32 [%r57,%L12],[%r89,%L15]
    %r61 = icmp sgt i32 %r97,-1
    br i1 %r61, label %L15, label %L16
L15:  ;  latch2
    %r64 = mul i32 %r100,3
    %r66 = add i32 %r64,%r97
    %r67 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r66
    %r70 = add i32 %r100,1
    %r72 = mul i32 %r70,3
    %r74 = add i32 %r72,%r97
    %r75 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
    %r83 = add i32 %r66,1
    %r84 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = add i32 %r76,%r85
    store i32 %r86, ptr %r67
    %r89 = sub i32 %r97,1
    br label %L14
L16:  ;  latch3
    %r92 = sub i32 %r100,1
    br label %L11
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r7 = call i32 @uniquePaths(i32 3,i32 3)
    ret i32 %r7
}
