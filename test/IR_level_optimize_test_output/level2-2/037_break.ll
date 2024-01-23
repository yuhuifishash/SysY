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
    %r30 = phi i32 [0,%L9],[%r21,%L4]
    %r28 = phi i32 [%r18,%L4],[0,%L9]
    %r13 = icmp eq i32 %r30,50
    br i1 %r13, label %L6, label %L7
L4:
    %r24 = icmp slt i32 %r21,100
    br i1 %r24, label %L3, label %L5
L5:
    %r29 = phi i32 [%r28,%L6],[%r18,%L4]
    ret i32 %r29
L6:
    br label %L5
L7:
    %r18 = add i32 %r28,%r30
    %r21 = add i32 %r30,1
    br label %L4
L9:
    br label %L3
}
