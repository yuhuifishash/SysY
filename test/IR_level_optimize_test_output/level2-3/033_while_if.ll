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
define i32 @get_one(i32 %r0)
{
L0:
    br label %L1
L1:
    ret i32 1
}
define i32 @deepWhileBr(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r8 = add i32 %r0,%r1
    %r11 = icmp slt i32 %r8,75
    br i1 %r11, label %L15, label %L5
L3:
    %r57 = phi i32 [%r8,%L15],[%r56,%L4]
    %r19 = icmp slt i32 %r57,100
    br i1 %r19, label %L6, label %L7
L4:
    %r46 = icmp slt i32 %r56,75
    br i1 %r46, label %L3, label %L5
L5:
    %r58 = phi i32 [%r8,%L1],[%r56,%L4]
    ret i32 %r58
L6:
    %r24 = add i32 %r57,42
    %r27 = icmp sgt i32 %r24,99
    br i1 %r27, label %L8, label %L9
L7:
    %r56 = phi i32 [%r57,%L3],[%r60,%L9]
    br label %L4
L8:
    br label %L12
L9:
    %r60 = phi i32 [%r24,%L6],[168,%L11]
    br label %L7
L10:
    br label %L11
L11:
    br label %L9
L12:
    br label %L14
L13:
    br label %L10
L14:
    br label %L13
L15:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r5 = call i32 @deepWhileBr(i32 2,i32 2)
    call void @putint(i32 %r5)
    ret i32 0
}
