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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    br label %L3
L3:  ;
    %r6 = call i32 @getch()
    %r8 = sub i32 %r6,48
    %r11 = icmp slt i32 %r8,0
    br i1 %r11, label %L5, label %L8
L4:  ;
    %r34 = phi i32 [%r8,%L6]
    br label %L11
L5:  ;latch
    br label %L2
L6:  ;
    br label %L4
L8:  ;
    %r14 = icmp sgt i32 %r8,9
    br i1 %r14, label %L5, label %L6
L11:  ;
    %r37 = phi i32 [%r34,%L4],[%r31,%L16]
    br label %L12
L12:  ;
    %r18 = call i32 @getch()
    %r20 = sub i32 %r18,48
    %r23 = icmp sge i32 %r20,0
    br i1 %r23, label %L17, label %L15
L13:  ;
    ret i32 %r37
L14:  ;
    %r29 = mul i32 %r37,10
    %r31 = add i32 %r29,%r20
    br label %L16
L15:  ;
    br label %L13
L16:  ;latch
    br label %L11
L17:  ;
    %r26 = icmp sle i32 %r20,9
    br i1 %r26, label %L14, label %L15
}
define void @my_putint(i32 %r0)
{
L0:  ;
    %r2 = alloca [16 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r32 = phi i32 [%r0,%L1],[%r17,%L3]
    %r30 = phi i32 [0,%L1],[%r20,%L3]
    %r7 = icmp sgt i32 %r32,0
    br i1 %r7, label %L3, label %L4
L3:  ;latch
    %r9 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r30
    %r12 = srem i32 %r32,10
    %r14 = add i32 %r12,48
    store i32 %r14, ptr %r9
    %r17 = sdiv i32 %r32,10
    %r20 = add i32 %r30,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r31 = phi i32 [%r30,%L4],[%r26,%L6]
    %r23 = icmp sgt i32 %r31,0
    br i1 %r23, label %L6, label %L7
L6:  ;latch
    %r26 = sub i32 %r31,1
    %r28 = getelementptr [16 x i32], ptr %r2, i32 0, i32 %r26
    %r29 = load i32, ptr %r28
    call void @putch(i32 %r29)
    br label %L5
L7:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r1 = call i32 @my_getint()
    br label %L2
L2:  ;
    %r13 = phi i32 [%r1,%L1],[%r11,%L3]
    %r4 = icmp sgt i32 %r13,0
    br i1 %r4, label %L3, label %L4
L3:  ;latch
    %r6 = call i32 @my_getint()
    call void @my_putint(i32 %r6)
    call void @putch(i32 10)
    %r11 = sub i32 %r13,1
    br label %L2
L4:  ;
    ret i32 0
}
