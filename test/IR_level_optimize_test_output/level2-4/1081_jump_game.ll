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
define i32 @canJump(ptr %r0,i32 %r1)
{
L0:
    %r19 = alloca [10 x i32]
    br label %L1
L1:
    %r5 = icmp eq i32 %r1,1
    br i1 %r5, label %L2, label %L3
L2:
    ret i32 1
L3:
    %r10 = getelementptr i32, ptr %r0, i32 0
    %r11 = load i32, ptr %r10
    %r14 = sub i32 %r1,2
    %r15 = icmp sgt i32 %r11,%r14
    br i1 %r15, label %L4, label %L5
L4:
    ret i32 1
L5:
    %r26 = sub i32 %r1,1
    %r27 = icmp slt i32 0,%r26
    br i1 %r27, label %L23, label %L9
L7:
    %r122 = phi i32 [%r35,%L8],[0,%L23]
    %r32 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r122
    store i32 0, ptr %r32
    %r35 = add i32 %r122,1
    br label %L8
L8:
    %r40 = icmp slt i32 %r35,%r39
    br i1 %r40, label %L7, label %L9
L9:
    %r46 = sub i32 %r1,1
    %r47 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r46
    store i32 1, ptr %r47
    %r50 = sub i32 %r1,2
    %r54 = icmp sgt i32 %r50,-1
    br i1 %r54, label %L24, label %L13
L11:
    %r124 = phi i32 [%r107,%L12],[%r50,%L24]
    %r60 = getelementptr i32, ptr %r0, i32 %r124
    %r61 = load i32, ptr %r60
    %r66 = sub i32 %r64,%r124
    %r67 = icmp slt i32 %r61,%r66
    br i1 %r67, label %L14, label %L15
L12:
    %r111 = icmp sgt i32 %r107,-1
    br i1 %r111, label %L11, label %L13
L13:
    %r115 = getelementptr [10 x i32], ptr %r19, i32 0, i32 0
    %r116 = load i32, ptr %r115
    ret i32 %r116
L14:
    %r71 = getelementptr i32, ptr %r0, i32 %r124
    %r72 = load i32, ptr %r71
    br label %L16
L15:
    %r75 = sub i32 %r1,1
    %r77 = sub i32 %r75,%r124
    br label %L16
L16:
    %r119 = phi i32 [%r72,%L14],[%r77,%L15]
    %r81 = icmp sgt i32 %r119,-1
    br i1 %r81, label %L25, label %L20
L18:
    %r120 = phi i32 [%r98,%L19],[%r119,%L25]
    %r86 = add i32 %r124,%r120
    %r87 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r86
    %r88 = load i32, ptr %r87
    %r90 = icmp ne i32 %r88,0
    br i1 %r90, label %L21, label %L22
L19:
    %r102 = icmp sgt i32 %r98,-1
    br i1 %r102, label %L18, label %L20
L20:
    %r107 = sub i32 %r124,1
    br label %L12
L21:
    %r95 = getelementptr [10 x i32], ptr %r19, i32 0, i32 %r124
    store i32 1, ptr %r95
    br label %L22
L22:
    %r98 = sub i32 %r120,1
    br label %L19
L23:
    %r39 = sub i32 %r1,1
    br label %L7
L24:
    %r64 = sub i32 %r1,1
    br label %L11
L25:
    br label %L18
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    br label %L1
L1:
    %r5 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 3, ptr %r5
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r8
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 0, ptr %r14
    %r17 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r17
    %r20 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r20
    %r23 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 1, ptr %r23
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r26
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r29
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r32
    %r34 = getelementptr i32, ptr %r2, i32 0
    %r36 = call i32 @canJump(ptr %r34,i32 10)
    ret i32 %r36
}
