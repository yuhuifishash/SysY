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
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r13 = icmp slt i32 0,%r1
    br i1 %r13, label %L21, label %L5
L3:
    %r80 = phi i32 [%r21,%L4],[0,%L21]
    %r18 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r80
    store i32 %r80, ptr %r18
    %r21 = add i32 %r80,1
    br label %L4
L4:
    %r24 = icmp slt i32 %r21,%r1
    br i1 %r24, label %L3, label %L5
L5:
    %r30 = icmp slt i32 0,%r3
    br i1 %r30, label %L22, label %L9
L7:
    %r82 = phi i32 [%r39,%L8],[0,%L22]
    %r33 = call i32 @getint()
    %r34 = call i32 @getint()
    br label %L16
L8:
    %r42 = icmp slt i32 %r39,%r3
    br i1 %r42, label %L7, label %L9
L9:
    %r50 = icmp slt i32 0,%r1
    br i1 %r50, label %L23, label %L13
L11:
    %r84 = phi i32 [%r65,%L12],[0,%L23]
    %r74 = phi i32 [%r73,%L12],[0,%L23]
    %r54 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r84
    %r55 = load i32, ptr %r54
    %r57 = icmp eq i32 %r55,%r84
    br i1 %r57, label %L14, label %L15
L12:
    %r68 = icmp slt i32 %r65,%r1
    br i1 %r68, label %L11, label %L13
L13:
    %r75 = phi i32 [0,%L9],[%r73,%L12]
    call void @putint(i32 %r75)
    ret i32 0
L14:
    %r62 = add i32 %r74,1
    br label %L15
L15:
    %r73 = phi i32 [%r74,%L11],[%r62,%L14]
    %r65 = add i32 %r84,1
    br label %L12
L16:
    br label %L18
L17:
    %r39 = add i32 %r82,1
    br label %L8
L18:
    %r86 = call i32 @find(i32 %r33)
    %r87 = call i32 @find(i32 %r34)
    %r88 = icmp ne i32 %r86,%r87
    br i1 %r88, label %L19, label %L20
L19:
    %r89 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r87
    store i32 %r86, ptr %r89
    br label %L20
L20:
    br label %L17
L21:
    br label %L3
L22:
    br label %L7
L23:
    br label %L11
}
define i32 @find(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r11 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r0
    %r12 = load i32, ptr %r11
    %r13 = call i32 @find(i32 %r12)
    store i32 %r13, ptr %r11
    %r18 = load i32, ptr %r11
    ret i32 %r18
}
define void @merge(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r9 = call i32 @find(i32 %r0)
    %r11 = call i32 @find(i32 %r1)
    %r14 = icmp ne i32 %r9,%r11
    br i1 %r14, label %L2, label %L3
L2:
    %r19 = getelementptr [1005 x i32], ptr @parent, i32 0, i32 %r11
    store i32 %r9, ptr %r19
    br label %L3
L3:
    ret void
}
