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
L0:
    %r4 = alloca [10 x i32]
    br label %L1
L1:
    br label %L2
L2:
    %r76 = phi i32 [0,%L1],[%r17,%L3]
    %r9 = icmp slt i32 %r76,10
    br i1 %r9, label %L3, label %L4
L3:
    %r11 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r76
    %r14 = add i32 %r76,1
    store i32 %r14, ptr %r11
    %r17 = add i32 %r76,1
    br label %L2
L4:
    %r29 = call i32 @getint()
    br label %L5
L5:
    %r77 = phi i32 [0,%L4],[%r61,%L10]
    %r74 = phi i32 [0,%L4],[%r73,%L10]
    %r72 = phi i32 [0,%L4],[%r71,%L10]
    %r48 = icmp slt i32 %r77,10
    br i1 %r48, label %L8, label %L7
L6:
    %r53 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r77
    %r54 = load i32, ptr %r53
    %r56 = icmp eq i32 %r54,%r29
    br i1 %r56, label %L9, label %L10
L7:
    %r64 = icmp eq i32 %r74,1
    br i1 %r64, label %L11, label %L12
L8:
    %r51 = icmp eq i32 %r74,0
    br i1 %r51, label %L6, label %L7
L9:
    br label %L10
L10:
    %r73 = phi i32 [%r74,%L6],[1,%L9]
    %r71 = phi i32 [%r72,%L6],[%r77,%L9]
    %r61 = add i32 %r77,1
    br label %L5
L11:
    call void @putint(i32 %r72)
    br label %L13
L12:
    call void @putint(i32 0)
    br label %L13
L13:
    %r75 = phi i32 [%r29,%L11],[0,%L12]
    call void @putch(i32 10)
    ret i32 0
}
