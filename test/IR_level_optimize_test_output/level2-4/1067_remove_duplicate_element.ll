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
    %r37 = getelementptr i32, ptr %r2, i32 0
    %r40 = call i32 @removeElement(ptr %r37,i32 10,i32 3)
    ret i32 %r40
}
define i32 @removeElement(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r10 = icmp slt i32 0,%r1
    br i1 %r10, label %L9, label %L5
L3:
    %r43 = phi i32 [%r42,%L4],[%r1,%L9]
    %r40 = phi i32 [0,%L9],[%r39,%L4]
    %r14 = getelementptr i32, ptr %r0, i32 %r40
    %r15 = load i32, ptr %r14
    %r17 = icmp eq i32 %r15,%r2
    br i1 %r17, label %L6, label %L7
L4:
    %r35 = icmp slt i32 %r39,%r42
    br i1 %r35, label %L3, label %L5
L5:
    %r44 = phi i32 [%r1,%L1],[%r42,%L4]
    ret i32 %r44
L6:
    %r22 = sub i32 %r43,1
    %r23 = getelementptr i32, ptr %r0, i32 %r22
    %r24 = load i32, ptr %r23
    %r26 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r24, ptr %r26
    br label %L8
L7:
    %r32 = add i32 %r40,1
    br label %L8
L8:
    %r42 = phi i32 [%r22,%L6],[%r43,%L7]
    %r39 = phi i32 [%r40,%L6],[%r32,%L7]
    br label %L4
L9:
    br label %L3
}
