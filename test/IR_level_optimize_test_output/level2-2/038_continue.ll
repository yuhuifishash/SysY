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
    br label %L1
L1:
    br label %L9
L3:
    %r35 = phi i32 [%r34,%L4],[0,%L9]
    %r32 = phi i32 [%r31,%L4],[0,%L9]
    %r13 = icmp eq i32 %r35,50
    br i1 %r13, label %L6, label %L7
L4:
    %r34 = phi i32 [%r18,%L6],[%r24,%L7]
    %r31 = phi i32 [%r32,%L6],[%r21,%L7]
    %r27 = icmp slt i32 %r34,100
    br i1 %r27, label %L3, label %L5
L5:
    ret i32 %r31
L6:
    %r18 = add i32 %r35,1
    br label %L4
L7:
    %r21 = add i32 %r32,%r35
    %r24 = add i32 %r35,1
    br label %L4
L9:
    br label %L3
}
