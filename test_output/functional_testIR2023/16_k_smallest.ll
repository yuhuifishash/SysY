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
@maxN = global i32 1000
@space = global i32 32
@array = global [1000x i32] zeroinitializer
define void @swap(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r0
    %r7 = load i32, ptr %r6
    %r9 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r0
    %r11 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    %r12 = load i32, ptr %r11
    store i32 %r12, ptr %r9
    %r14 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    store i32 %r7, ptr %r14
    ret void
}
define void @findSmallest(i32 %r0,i32 %r1,i32 %r2,i32 %r3)
{
L0:
    br label %L1
L1:
    %r10 = icmp eq i32 %r0,%r1
    br i1 %r10, label %L2, label %L3
L2:
    ret void
L3:
    %r14 = call i32 @findPivot(i32 %r0,i32 %r1)
    %r17 = icmp eq i32 %r2,%r14
    br i1 %r17, label %L5, label %L6
L4:
    ret void
L5:
    br label %L8
L6:
    %r32 = icmp slt i32 %r2,%r14
    br i1 %r32, label %L11, label %L12
L7:
    br label %L4
L8:
    %r46 = phi i32 [0,%L5],[%r29,%L9]
    %r22 = icmp slt i32 %r46,%r14
    br i1 %r22, label %L9, label %L10
L9:
    %r24 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r46
    %r25 = load i32, ptr %r24
    call void @putint(i32 %r25)
    call void @putch(i32 32)
    %r29 = add i32 %r46,1
    br label %L8
L10:
    br label %L7
L11:
    %r36 = sub i32 %r14,1
    call void @findSmallest(i32 %r0,i32 %r36,i32 %r2,i32 %r3)
    br label %L13
L12:
    %r41 = add i32 %r14,1
    call void @findSmallest(i32 %r41,i32 %r1,i32 %r2,i32 %r3)
    br label %L13
L13:
    br label %L7
}
define i32 @findPivot(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r6 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r1
    %r7 = load i32, ptr %r6
    br label %L2
L2:
    %r33 = phi i32 [%r0,%L1],[%r32,%L6]
    %r31 = phi i32 [%r0,%L1],[%r27,%L6]
    %r14 = icmp slt i32 %r31,%r1
    br i1 %r14, label %L3, label %L4
L3:
    %r16 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r31
    %r17 = load i32, ptr %r16
    %r19 = icmp sle i32 %r17,%r7
    br i1 %r19, label %L5, label %L6
L4:
    call void @swap(i32 %r33,i32 %r1)
    ret i32 %r33
L5:
    call void @swap(i32 %r31,i32 %r33)
    %r24 = add i32 %r33,1
    br label %L6
L6:
    %r32 = phi i32 [%r33,%L3],[%r24,%L5]
    %r27 = add i32 %r31,1
    br label %L2
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L2
L2:
    %r26 = phi i32 [0,%L1],[%r14,%L3]
    %r8 = icmp slt i32 %r26,%r1
    br i1 %r8, label %L3, label %L4
L3:
    %r10 = getelementptr [1000 x i32], ptr @array, i32 0, i32 %r26
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r14 = add i32 %r26,1
    br label %L2
L4:
    %r20 = sub i32 %r1,1
    call void @findSmallest(i32 0,i32 %r20,i32 %r3,i32 %r1)
    ret i32 0
}
