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
@ascii_0 = global i32 48
define i32 @my_getint()
{
L0:
    br label %L1
L1:
    br label %L23
L3:
    %r6 = call i32 @getch()
    %r8 = sub i32 %r6,48
    %r11 = icmp slt i32 %r8,0
    br i1 %r11, label %L6, label %L9
L4:
    br label %L3
L5:
    br label %L24
L6:
    br label %L4
L7:
    br label %L5
L9:
    %r16 = icmp sgt i32 %r8,9
    br i1 %r16, label %L6, label %L7
L14:
    %r55 = phi i32 [%r47,%L15],[%r8,%L24]
    %r27 = call i32 @getch()
    %r29 = sub i32 %r27,48
    %r32 = icmp sge i32 %r29,0
    br i1 %r32, label %L20, label %L18
L15:
    br label %L14
L16:
    ret i32 %r55
L17:
    %r45 = mul i32 %r55,10
    %r47 = add i32 %r45,%r29
    br label %L19
L18:
    br label %L16
L19:
    br label %L15
L20:
    %r37 = icmp sle i32 %r29,9
    br i1 %r37, label %L17, label %L18
L23:
    br label %L3
L24:
    br label %L14
}
define void @my_putint(i32 %r0)
{
L0:
    %r2 = alloca [16 x i32]
    br label %L1
L1:
    %r7 = icmp sgt i32 %r0,0
    br i1 %r7, label %L10, label %L5
L3:
    %r48 = phi i32 [%r19,%L4],[%r0,%L10]
    %r44 = phi i32 [%r22,%L4],[0,%L10]
    %r12 = srem i32 %r48,10
    %r14 = add i32 %r12,48
    %r16 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r44
    store i32 %r14, ptr %r16
    %r19 = sdiv i32 %r48,10
    %r22 = add i32 %r44,1
    br label %L4
L4:
    %r25 = icmp sgt i32 %r19,0
    br i1 %r25, label %L3, label %L5
L5:
    %r45 = phi i32 [0,%L1],[%r22,%L4]
    %r30 = icmp sgt i32 %r45,0
    br i1 %r30, label %L11, label %L9
L7:
    %r46 = phi i32 [%r35,%L8],[%r45,%L11]
    %r35 = sub i32 %r46,1
    %r37 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r35
    %r38 = load i32, ptr %r37
    call void @putch(i32 %r38)
    br label %L8
L8:
    %r41 = icmp sgt i32 %r35,0
    br i1 %r41, label %L7, label %L9
L9:
    ret void
L10:
    br label %L3
L11:
    br label %L7
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @my_getint()
    %r4 = icmp sgt i32 %r1,0
    br i1 %r4, label %L6, label %L5
L3:
    %r20 = phi i32 [%r13,%L4],[%r1,%L6]
    %r8 = call i32 @my_getint()
    call void @my_putint(i32 %r8)
    call void @putch(i32 10)
    %r13 = sub i32 %r20,1
    br label %L4
L4:
    %r16 = icmp sgt i32 %r13,0
    br i1 %r16, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
