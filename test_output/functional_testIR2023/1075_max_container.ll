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
define i32 @maxArea(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r10 = sub i32 %r1,1
    br label %L2
L2:  ;
    %r66 = phi i32 [0,%L1],[%r65,%L12]
    %r64 = phi i32 [%r10,%L1],[%r63,%L12]
    %r62 = phi i32 [-1,%L1],[%r61,%L12]
    %r17 = icmp slt i32 %r66,%r64
    br i1 %r17, label %L3, label %L4
L3:  ;
    %r21 = getelementptr i32, ptr %r0, i32 %r66
    %r22 = load i32, ptr %r21
    %r24 = getelementptr i32, ptr %r0, i32 %r64
    %r25 = load i32, ptr %r24
    %r26 = icmp slt i32 %r22,%r25
    br i1 %r26, label %L5, label %L6
L4:  ;
    ret i32 %r62
L5:  ;
    %r29 = sub i32 %r64,%r66
    %r32 = load i32, ptr %r21
    %r33 = mul i32 %r29,%r32
    br label %L7
L6:  ;
    %r36 = sub i32 %r64,%r66
    %r39 = load i32, ptr %r24
    %r40 = mul i32 %r36,%r39
    br label %L7
L7:  ;
    %r60 = phi i32 [%r33,%L5],[%r40,%L6]
    %r43 = icmp sgt i32 %r60,%r62
    br i1 %r43, label %L8, label %L9
L8:  ;
    br label %L9
L9:  ;
    %r61 = phi i32 [%r62,%L7],[%r60,%L8]
    %r47 = load i32, ptr %r21
    %r50 = load i32, ptr %r24
    %r51 = icmp sgt i32 %r47,%r50
    br i1 %r51, label %L10, label %L11
L10:  ;
    %r54 = sub i32 %r64,1
    br label %L12
L11:  ;
    %r57 = add i32 %r66,1
    br label %L12
L12:  ;
    %r65 = phi i32 [%r66,%L10],[%r57,%L11]
    %r63 = phi i32 [%r54,%L10],[%r64,%L11]
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 3, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 0, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 1, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r31
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0
    %r36 = call i32 @maxArea(ptr %r34,i32 10)
    ret i32 %r36
}
