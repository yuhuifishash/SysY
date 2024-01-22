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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@a = global i32 1
@b = global i32 0
@c = global i32 1
@d = global i32 2
@e = global i32 4
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = load i32, ptr @a
    %r3 = load i32, ptr @b
    %r4 = mul i32 %r2,%r3
    %r5 = load i32, ptr @c
    %r6 = sdiv i32 %r4,%r5
    %r7 = load i32, ptr @e
    %r8 = load i32, ptr @d
    %r9 = add i32 %r7,%r8
    %r10 = icmp eq i32 %r6,%r9
    br i1 %r10, label %L5, label %L3
L1:
    %r45 = add i32 0,1
    store i32 %r45, ptr %r0
    br label %L2
L2:
    %r46 = load i32, ptr %r0
    call void @putint(i32 %r46)
    %r47 = load i32, ptr %r0
    ret i32 %r47
L3:
    %r29 = load i32, ptr @a
    %r30 = load i32, ptr @b
    %r31 = load i32, ptr @c
    %r32 = mul i32 %r30,%r31
    %r33 = sub i32 %r29,%r32
    %r34 = load i32, ptr @d
    %r35 = load i32, ptr @a
    %r36 = load i32, ptr @c
    %r37 = sdiv i32 %r35,%r36
    %r38 = sub i32 %r34,%r37
    %r39 = icmp eq i32 %r33,%r38
    br i1 %r39, label %L1, label %L2
L5:
    %r13 = load i32, ptr @a
    %r14 = load i32, ptr @a
    %r15 = load i32, ptr @b
    %r16 = add i32 %r14,%r15
    %r17 = mul i32 %r13,%r16
    %r18 = load i32, ptr @c
    %r19 = add i32 %r17,%r18
    %r20 = load i32, ptr @d
    %r21 = load i32, ptr @e
    %r22 = add i32 %r20,%r21
    %r23 = icmp sle i32 %r19,%r22
    br i1 %r23, label %L1, label %L3
}
