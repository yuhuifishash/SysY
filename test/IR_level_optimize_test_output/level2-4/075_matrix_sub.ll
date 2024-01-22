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
@N = global i32 zeroinitializer
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
define i32 @sub(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:
    br label %L1
L1:
    br label %L6
L3:
    %r53 = phi i32 [%r46,%L4],[0,%L6]
    %r18 = getelementptr i32, ptr %r0, i32 %r53
    %r19 = load i32, ptr %r18
    %r21 = getelementptr i32, ptr %r3, i32 %r53
    %r22 = load i32, ptr %r21
    %r23 = sub i32 %r19,%r22
    %r25 = getelementptr i32, ptr %r6, i32 %r53
    store i32 %r23, ptr %r25
    %r27 = getelementptr i32, ptr %r1, i32 %r53
    %r28 = load i32, ptr %r27
    %r30 = getelementptr i32, ptr %r4, i32 %r53
    %r31 = load i32, ptr %r30
    %r32 = sub i32 %r28,%r31
    %r34 = getelementptr i32, ptr %r7, i32 %r53
    store i32 %r32, ptr %r34
    %r36 = getelementptr i32, ptr %r2, i32 %r53
    %r37 = load i32, ptr %r36
    %r39 = getelementptr i32, ptr %r5, i32 %r53
    %r40 = load i32, ptr %r39
    %r41 = sub i32 %r37,%r40
    %r43 = getelementptr i32, ptr %r8, i32 %r53
    store i32 %r41, ptr %r43
    %r46 = add i32 %r53,1
    br label %L4
L4:
    %r49 = icmp slt i32 %r46,3
    br i1 %r49, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
define i32 @main()
{
L0:
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L18
L3:
    %r124 = phi i32 [0,%L18],[%r40,%L4]
    %r22 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r124
    store i32 %r124, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r124
    store i32 %r124, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r124
    store i32 %r124, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r124
    store i32 %r124, ptr %r31
    %r34 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r124
    store i32 %r124, ptr %r34
    %r37 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r124
    store i32 %r124, ptr %r37
    %r40 = add i32 %r124,1
    br label %L4
L4:
    %r43 = icmp slt i32 %r40,3
    br i1 %r43, label %L3, label %L5
L5:
    %r46 = getelementptr i32, ptr %r3, i32 0
    %r47 = getelementptr i32, ptr %r4, i32 0
    %r48 = getelementptr i32, ptr %r5, i32 0
    %r49 = getelementptr i32, ptr %r6, i32 0
    %r50 = getelementptr i32, ptr %r7, i32 0
    %r51 = getelementptr i32, ptr %r8, i32 0
    %r52 = getelementptr i32, ptr %r9, i32 0
    %r53 = getelementptr i32, ptr %r10, i32 0
    %r54 = getelementptr i32, ptr %r11, i32 0
    %r55 = call i32 @sub(ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54)
    %r60 = icmp slt i32 %r55,3
    br i1 %r60, label %L19, label %L9
L7:
    %r126 = phi i32 [%r55,%L19],[%r69,%L8]
    %r64 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r126
    %r65 = load i32, ptr %r64
    call void @putint(i32 %r65)
    %r69 = add i32 %r126,1
    br label %L8
L8:
    %r72 = icmp slt i32 %r69,3
    br i1 %r72, label %L7, label %L9
L9:
    call void @putch(i32 10)
    br label %L20
L11:
    %r128 = phi i32 [0,%L20],[%r89,%L12]
    %r84 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r128
    %r85 = load i32, ptr %r84
    call void @putint(i32 %r85)
    %r89 = add i32 %r128,1
    br label %L12
L12:
    %r92 = icmp slt i32 %r89,3
    br i1 %r92, label %L11, label %L13
L13:
    call void @putch(i32 10)
    br label %L21
L15:
    %r130 = phi i32 [0,%L21],[%r109,%L16]
    %r104 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r130
    %r105 = load i32, ptr %r104
    call void @putint(i32 %r105)
    %r109 = add i32 %r130,1
    br label %L16
L16:
    %r112 = icmp slt i32 %r109,3
    br i1 %r112, label %L15, label %L17
L17:
    call void @putch(i32 10)
    ret i32 0
L18:
    br label %L3
L19:
    br label %L7
L20:
    br label %L11
L21:
    br label %L15
}
