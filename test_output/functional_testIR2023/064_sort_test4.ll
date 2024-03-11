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
@n = global i32 zeroinitializer
define i32 @select_sort(ptr %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;  preheader1
    br label %L2
L2:  ;  exiting1  header1
    %r58 = phi i32 [0,%L1],[%r18,%L11]
    %r13 = sub i32 %r1,1
    %r14 = icmp slt i32 %r58,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;  preheader0
    %r18 = add i32 %r58,1
    br label %L5
L4:  ;
    ret i32 0
L5:  ;  exiting0  header0
    %r57 = phi i32 [%r18,%L3],[%r32,%L9]
    %r55 = phi i32 [%r58,%L3],[%r54,%L9]
    %r21 = icmp slt i32 %r57,%r1
    br i1 %r21, label %L6, label %L7
L6:  ;
    %r23 = getelementptr i32, ptr %r0, i32 %r55
    %r24 = load i32, ptr %r23
    %r26 = getelementptr i32, ptr %r0, i32 %r57
    %r27 = load i32, ptr %r26
    %r28 = icmp sgt i32 %r24,%r27
    br i1 %r28, label %L8, label %L9
L7:  ;
    %r35 = icmp ne i32 %r55,%r58
    br i1 %r35, label %L10, label %L11
L8:  ;
    br label %L9
L9:  ;  latch0
    %r54 = phi i32 [%r55,%L6],[%r57,%L8]
    %r32 = add i32 %r57,1
    br label %L5
L10:  ;
    %r39 = getelementptr i32, ptr %r0, i32 %r55
    %r40 = load i32, ptr %r39
    %r44 = getelementptr i32, ptr %r0, i32 %r58
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r39
    store i32 %r40, ptr %r44
    br label %L11
L11:  ;  latch1
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r1 = alloca [10 x i32]
    br label %L1
L1:  ;  preheader0
    store i32 10, ptr @n
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r3
    %r6 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r6
    %r9 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r9
    %r12 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r12
    %r15 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r15
    %r18 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r18
    %r21 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r21
    %r24 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r24
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r27
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r30
    %r35 = getelementptr [10 x i32], ptr %r1, i32 0
    %r36 = load i32, ptr @n
    %r37 = call i32 @select_sort(ptr %r35,i32 %r36)
    br label %L2
L2:  ;  exiting0  header0
    %r53 = phi i32 [%r37,%L1],[%r51,%L3]
    %r39 = load i32, ptr @n
    %r40 = icmp slt i32 %r53,%r39
    br i1 %r40, label %L3, label %L4
L3:  ;  latch0
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r53
    %r45 = load i32, ptr %r44
    call void @putint(i32 %r45)
    call void @putch(i32 10)
    %r51 = add i32 %r53,1
    br label %L2
L4:  ;
    ret i32 0
}
