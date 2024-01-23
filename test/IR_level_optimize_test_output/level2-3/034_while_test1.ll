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
define i32 @doubleWhile()
{
L0:
    br label %L1
L1:
    br label %L10
L3:
    %r40 = phi i32 [%r13,%L4],[5,%L10]
    %r38 = phi i32 [7,%L10],[%r29,%L4]
    %r13 = add i32 %r40,30
    %r16 = icmp slt i32 %r38,100
    br i1 %r16, label %L11, label %L9
L4:
    %r32 = icmp slt i32 %r13,100
    br i1 %r32, label %L3, label %L5
L5:
    ret i32 %r29
L7:
    %r36 = phi i32 [%r21,%L8],[%r38,%L11]
    %r21 = add i32 %r36,6
    br label %L8
L8:
    %r24 = icmp slt i32 %r21,100
    br i1 %r24, label %L7, label %L9
L9:
    %r37 = phi i32 [%r38,%L3],[%r21,%L8]
    %r29 = sub i32 %r37,100
    br label %L4
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
    %r0 = call i32 @doubleWhile()
    ret i32 %r0
}
