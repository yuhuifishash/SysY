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
L0:  ;
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r4 = alloca [10 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r2
    %r6 = add i32 0,0
    store i32 %r6, ptr %r0
    br label %L2
L2:  ;
<<<<<<< HEAD
    %r7 = load i32, ptr %r0
    %r8 = add i32 10,0
    %r9 = icmp slt i32 %r7,%r8
=======
    %r80 = phi i32 [0,%L1],[%r14,%L3]
    %r9 = icmp slt i32 %r80,10
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r9, label %L3, label %L4
L3:  ;
    %r10 = load i32, ptr %r0
    %r11 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r10
    %r12 = load i32, ptr %r0
    %r13 = add i32 1,0
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r11
<<<<<<< HEAD
    %r15 = load i32, ptr %r0
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r0
=======
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L2
L4:  ;
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r28 = add i32 10,0
    store i32 %r28, ptr %r26
    %r29 = call i32 @getint()
    store i32 %r29, ptr %r18
    %r30 = load i32, ptr %r26
    %r31 = add i32 1,0
    %r32 = sub i32 %r30,%r31
    store i32 %r32, ptr %r20
    %r33 = add i32 0,0
    store i32 %r33, ptr %r22
    %r34 = load i32, ptr %r20
    %r35 = load i32, ptr %r22
    %r36 = add i32 %r34,%r35
    %r37 = add i32 2,0
    %r38 = sdiv i32 %r36,%r37
    store i32 %r38, ptr %r24
    br label %L5
L5:  ;
    %r39 = load i32, ptr %r24
    %r40 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = load i32, ptr %r18
    %r43 = icmp ne i32 %r41,%r42
    br i1 %r43, label %L8, label %L7
L6:  ;
    %r47 = load i32, ptr %r20
    %r48 = load i32, ptr %r22
    %r49 = add i32 %r47,%r48
    %r50 = add i32 2,0
    %r51 = sdiv i32 %r49,%r50
    store i32 %r51, ptr %r24
    %r52 = load i32, ptr %r18
    %r53 = load i32, ptr %r24
    %r54 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r53
    %r55 = load i32, ptr %r54
    %r56 = icmp slt i32 %r52,%r55
    br i1 %r56, label %L9, label %L10
L7:  ;
<<<<<<< HEAD
    %r63 = load i32, ptr %r18
    %r64 = load i32, ptr %r24
    %r65 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = icmp eq i32 %r63,%r66
=======
    %r66 = load i32, ptr %r40
    %r67 = icmp eq i32 %r29,%r66
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r67, label %L12, label %L13
L8:  ;
    %r44 = load i32, ptr %r22
    %r45 = load i32, ptr %r20
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L6, label %L7
L9:  ;
    %r57 = load i32, ptr %r24
    %r58 = add i32 1,0
    %r59 = sub i32 %r57,%r58
    store i32 %r59, ptr %r20
    br label %L11
L10:  ;
    %r60 = load i32, ptr %r24
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r22
    br label %L11
L11:  ;
    br label %L5
L12:  ;
    %r68 = load i32, ptr %r18
    call void @putint(i32 %r68)
    br label %L14
L13:  ;
    %r69 = add i32 0,0
    store i32 %r69, ptr %r18
    %r70 = load i32, ptr %r18
    call void @putint(i32 %r70)
    br label %L14
L14:  ;
    %r71 = add i32 10,0
    store i32 %r71, ptr %r18
    %r72 = load i32, ptr %r18
    call void @putch(i32 %r72)
    %r73 = add i32 0,0
    ret i32 %r73
}
