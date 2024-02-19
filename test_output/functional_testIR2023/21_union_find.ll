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
@maxN = global i32 1005
@parent = global [1005x i32] zeroinitializer
define i32 @find(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r3 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:  ;
    ret i32 %r0
L3:  ;
    %r9 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r0
    %r12 = load i32, ptr %r9
    %r13 = call i32 @find(i32 %r12)
    store i32 %r13, ptr %r9
    %r16 = load i32, ptr %r9
    ret i32 %r16
}
define void @merge(i32 %r0,i32 %r1)
{
L0:  ;
    br label %L1
L1:  ;
    %r9 = call i32 @find(i32 %r0)
    %r11 = call i32 @find(i32 %r1)
    %r14 = icmp ne i32 %r9,%r11
    br i1 %r14, label %L2, label %L3
L2:  ;
    %r16 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r11
    store i32 %r9, ptr %r16
    br label %L3
L3:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    br label %L2
L2:  ;
    %r54 = phi i32 [0,%L1],[%r19,%L3]
    %r13 = icmp slt i32 %r54,%r1
    br i1 %r13, label %L3, label %L4
L3:  ;
    %r15 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r54
    store i32 %r54, ptr %r15
    %r19 = add i32 %r54,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r55 = phi i32 [0,%L4],[%r30,%L6]
    %r23 = icmp slt i32 %r55,%r3
    br i1 %r23, label %L6, label %L7
L6:  ;
    %r24 = call i32 @getint()
    %r25 = call i32 @getint()
    call void @merge(i32 %r24,i32 %r25)
    %r30 = add i32 %r55,1
    br label %L5
L7:  ;
    br label %L8
L8:  ;
    %r56 = phi i32 [0,%L7],[%r47,%L12]
    %r51 = phi i32 [0,%L7],[%r50,%L12]
    %r36 = icmp slt i32 %r56,%r1
    br i1 %r36, label %L9, label %L10
L9:  ;
    %r38 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r56
    %r39 = load i32, ptr %r38
    %r41 = icmp eq i32 %r39,%r56
    br i1 %r41, label %L11, label %L12
L10:  ;
    call void @putint(i32 %r51)
    ret i32 0
L11:  ;
    %r44 = add i32 %r51,1
    br label %L12
L12:  ;
    %r50 = phi i32 [%r51,%L9],[%r44,%L11]
    %r47 = add i32 %r56,1
    br label %L8
}
