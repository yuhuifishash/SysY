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
L0:  ;
    %r42 = alloca i32
    %r16 = alloca i32
    %r15 = alloca [10 x i32]
    %r2 = alloca i32
    store i32 %r1, ptr %r2
    br label %L1
L1:  ;
    %r3 = load i32, ptr %r2
    %r4 = add i32 1,0
    %r5 = icmp eq i32 %r3,%r4
    br i1 %r5, label %L2, label %L3
L2:  ;
    %r6 = add i32 1,0
    ret i32 %r6
L3:  ;
    %r7 = add i32 0,0
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = load i32, ptr %r2
    %r11 = add i32 2,0
    %r12 = sub i32 %r10,%r11
    %r13 = icmp sgt i32 %r9,%r12
    br i1 %r13, label %L4, label %L5
L4:  ;
    %r14 = add i32 1,0
    ret i32 %r14
L5:  ;
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r16
    br label %L6
L6:  ;
    %r19 = load i32, ptr %r16
    %r20 = load i32, ptr %r2
    %r21 = add i32 1,0
    %r22 = sub i32 %r20,%r21
    %r23 = icmp slt i32 %r19,%r22
    br i1 %r23, label %L7, label %L8
L7:  ;
    %r24 = load i32, ptr %r16
    %r25 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r24
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r16
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r16
    br label %L6
L8:  ;
    %r30 = load i32, ptr %r2
    %r31 = add i32 1,0
    %r32 = sub i32 %r30,%r31
    %r33 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r32
    %r34 = add i32 1,0
    store i32 %r34, ptr %r33
    %r35 = load i32, ptr %r2
    %r36 = add i32 2,0
    %r37 = sub i32 %r35,%r36
    store i32 %r37, ptr %r16
    br label %L9
L9:  ;
    %r38 = load i32, ptr %r16
    %r39 = add i32 1,0
    %r40 = sub i32 0,%r39
    %r41 = icmp sgt i32 %r38,%r40
    br i1 %r41, label %L10, label %L11
L10:  ;
    %r43 = add i32 0,0
    store i32 %r43, ptr %r42
    %r44 = load i32, ptr %r16
    %r45 = getelementptr i32, ptr %r0, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = load i32, ptr %r2
    %r48 = add i32 1,0
    %r49 = sub i32 %r47,%r48
    %r50 = load i32, ptr %r16
    %r51 = sub i32 %r49,%r50
    %r52 = icmp slt i32 %r46,%r51
    br i1 %r52, label %L12, label %L13
L11:  ;
    %r81 = add i32 0,0
    %r82 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    ret i32 %r83
L12:  ;
    %r53 = load i32, ptr %r16
    %r54 = getelementptr i32, ptr %r0, i32 %r53
    %r55 = load i32, ptr %r54
    store i32 %r55, ptr %r42
    br label %L14
L13:  ;
    %r56 = load i32, ptr %r2
    %r57 = add i32 1,0
    %r58 = sub i32 %r56,%r57
    %r59 = load i32, ptr %r16
    %r60 = sub i32 %r58,%r59
    store i32 %r60, ptr %r42
    br label %L14
L14:  ;
    br label %L15
L15:  ;
    %r61 = load i32, ptr %r42
    %r62 = add i32 1,0
    %r63 = sub i32 0,%r62
    %r64 = icmp sgt i32 %r61,%r63
    br i1 %r64, label %L16, label %L17
L16:  ;
    %r65 = load i32, ptr %r16
    %r66 = load i32, ptr %r42
    %r67 = add i32 %r65,%r66
    %r68 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = add i32 0,0
    %r71 = icmp ne i32 %r69,%r70
    br i1 %r71, label %L18, label %L19
L17:  ;
    %r78 = load i32, ptr %r16
    %r79 = add i32 1,0
    %r80 = sub i32 %r78,%r79
    store i32 %r80, ptr %r16
    br label %L9
L18:  ;
    %r72 = load i32, ptr %r16
    %r73 = getelementptr [10 x i32], ptr %r15, i32 0, i32 %r72
    %r74 = add i32 1,0
    store i32 %r74, ptr %r73
    br label %L19
L19:  ;
    %r75 = load i32, ptr %r42
    %r76 = add i32 1,0
    %r77 = sub i32 %r75,%r76
    store i32 %r77, ptr %r42
    br label %L15
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r3
    %r5 = add i32 3,0
    store i32 %r5, ptr %r4
    %r6 = add i32 1,0
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r6
    %r8 = add i32 3,0
    store i32 %r8, ptr %r7
    %r9 = add i32 2,0
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r9
    %r11 = add i32 9,0
    store i32 %r11, ptr %r10
    %r12 = add i32 3,0
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = add i32 4,0
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r15
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 5,0
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r18
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    %r21 = add i32 6,0
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r22
    %r24 = add i32 7,0
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r24
    %r26 = add i32 5,0
    store i32 %r26, ptr %r25
    %r27 = add i32 8,0
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = add i32 7,0
    store i32 %r29, ptr %r28
    %r30 = add i32 9,0
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r30
    %r32 = add i32 8,0
    store i32 %r32, ptr %r31
    %r33 = add i32 10,0
    store i32 %r33, ptr %r0
    %r34 = getelementptr [10 x i32], ptr %r2, i32 0
    %r35 = load i32, ptr %r0
    %r36 = call i32 @canJump(ptr %r34,i32 %r35)
    store i32 %r36, ptr %r0
    %r37 = load i32, ptr %r0
    ret i32 %r37
}
