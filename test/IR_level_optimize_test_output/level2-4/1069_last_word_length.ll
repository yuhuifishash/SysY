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
define i32 @lengthOfLastWord(ptr %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:
    ret i32 0
L3:
    %r13 = sub i32 %r1,1
    %r17 = icmp sgt i32 %r13,-1
    br i1 %r17, label %L8, label %L7
L5:
    %r97 = phi i32 [%r32,%L10],[%r13,%L20]
    %r32 = sub i32 %r97,1
    br label %L6
L6:
    %r36 = icmp sgt i32 %r32,-1
    br i1 %r36, label %L10, label %L7
L7:
    %r98 = phi i32 [%r13,%L3],[%r13,%L8],[%r32,%L6],[%r32,%L10]
    %r52 = icmp eq i32 %r98,-1
    br i1 %r52, label %L12, label %L13
L8:
    %r21 = getelementptr i32, ptr %r0, i32 %r13
    %r22 = load i32, ptr %r21
    %r24 = icmp eq i32 %r22,0
    br i1 %r24, label %L20, label %L7
L10:
    %r40 = getelementptr i32, ptr %r0, i32 %r32
    %r41 = load i32, ptr %r40
    %r43 = icmp eq i32 %r41,0
    br i1 %r43, label %L5, label %L7
L12:
    ret i32 0
L13:
    %r62 = icmp sgt i32 %r98,-1
    br i1 %r62, label %L21, label %L17
L15:
    %r95 = phi i32 [%r85,%L16],[%r98,%L21]
    %r66 = getelementptr i32, ptr %r0, i32 %r95
    %r67 = load i32, ptr %r66
    %r69 = icmp eq i32 %r67,0
    br i1 %r69, label %L18, label %L19
L16:
    %r89 = icmp sgt i32 %r85,-1
    br i1 %r89, label %L15, label %L17
L17:
    %r96 = phi i32 [%r98,%L13],[%r85,%L16]
    %r94 = sub i32 %r98,%r96
    ret i32 %r94
L18:
    %r74 = sub i32 %r1,%r95
    %r76 = sub i32 %r74,1
    %r79 = sub i32 %r1,1
    %r81 = sub i32 %r79,%r98
    %r82 = sub i32 %r76,%r81
    ret i32 %r82
L19:
    %r85 = sub i32 %r95,1
    br label %L16
L20:
    br label %L5
L21:
    br label %L15
}
define i32 @main()
{
L0:
    %r2 = alloca [10 x i32]
    br label %L1
L1:
    %r6 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 -4, ptr %r6
    %r9 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r9
    %r12 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r12
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 -2, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r22
    %r26 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 -6, ptr %r26
    %r29 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r29
    %r32 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r32
    %r35 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r35
    %r37 = getelementptr i32, ptr %r2, i32 0
    %r39 = call i32 @lengthOfLastWord(ptr %r37,i32 10)
    ret i32 %r39
}
