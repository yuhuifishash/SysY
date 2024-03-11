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
L0:  ;
    br label %L1
L1:  ;
    %r5 = icmp eq i32 %r1,0
    br i1 %r5, label %L2, label %L3
L2:  ;
    ret i32 0
L3:  ;  preheader0
    %r11 = sub i32 %r1,1
    br label %L4
L4:  ;  exiting0  header0
    %r59 = phi i32 [%r11,%L3],[%r23,%L5]
    %r15 = icmp sgt i32 %r59,-1
    br i1 %r15, label %L7, label %L6
L5:  ;  latch0
    %r23 = sub i32 %r59,1
    br label %L4
L6:  ;
    %r27 = icmp eq i32 %r59,-1
    br i1 %r27, label %L8, label %L9
L7:  ;  exiting0
    %r17 = getelementptr i32, ptr %r0, i32 %r59
    %r18 = load i32, ptr %r17
    %r20 = icmp eq i32 %r18,0
    br i1 %r20, label %L5, label %L6
L8:  ;
    ret i32 0
L9:  ;  preheader1
    br label %L10
L10:  ;  exiting1  header1
    %r58 = phi i32 [%r59,%L9],[%r54,%L14]
    %r35 = icmp sgt i32 %r58,-1
    br i1 %r35, label %L11, label %L12
L11:  ;  exiting1
    %r37 = getelementptr i32, ptr %r0, i32 %r58
    %r38 = load i32, ptr %r37
    %r40 = icmp eq i32 %r38,0
    br i1 %r40, label %L13, label %L14
L12:  ;
    %r57 = sub i32 %r59,%r58
    ret i32 %r57
L13:  ;
    %r43 = sub i32 %r1,%r58
    %r45 = sub i32 %r43,1
    %r50 = sub i32 %r11,%r59
    %r51 = sub i32 %r45,%r50
    ret i32 %r51
L14:  ;  latch1
    %r54 = sub i32 %r58,1
    br label %L10
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 -4, ptr %r4
    %r8 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r8
    %r11 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 -2, ptr %r14
    %r18 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r18
    %r21 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r21
    %r24 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 -6, ptr %r24
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r31
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r34
    %r37 = getelementptr [10 x i32], ptr %r2, i32 0
    %r39 = call i32 @lengthOfLastWord(ptr %r37,i32 10)
    ret i32 %r39
}
