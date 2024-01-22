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
define i32 @FourWhile()
{
L0:
    br label %L1
L1:
    br label %L19
L3:
    %r98 = phi i32 [%r19,%L4],[5,%L19]
    %r96 = phi i32 [6,%L19],[%r67,%L4]
    %r86 = phi i32 [10,%L19],[%r85,%L4]
    %r19 = add i32 %r98,3
    %r22 = icmp slt i32 %r96,10
    br i1 %r22, label %L18, label %L9
L4:
    %r70 = icmp slt i32 %r19,20
    br i1 %r70, label %L3, label %L5
L5:
    %r76 = add i32 %r67,%r85
    %r77 = add i32 %r19,%r76
    %r79 = add i32 %r77,7
    ret i32 %r79
L7:
    %r94 = phi i32 [%r27,%L8],[%r96,%L18]
    %r84 = phi i32 [%r51,%L8],[%r86,%L18]
    %r27 = add i32 %r94,1
    br label %L11
L8:
    %r62 = icmp slt i32 %r27,10
    br i1 %r62, label %L7, label %L9
L9:
    %r95 = phi i32 [%r96,%L3],[%r27,%L8]
    %r85 = phi i32 [%r86,%L3],[%r51,%L8]
    %r67 = sub i32 %r95,2
    br label %L4
L11:
    %r38 = icmp slt i32 %r84,20
    br i1 %r38, label %L20, label %L17
L12:
    br label %L13
L13:
    br label %L8
L15:
    %r80 = phi i32 [%r43,%L16],[%r84,%L20]
    %r43 = add i32 %r80,3
    br label %L16
L16:
    %r46 = icmp slt i32 %r43,20
    br i1 %r46, label %L15, label %L17
L17:
    %r81 = phi i32 [%r84,%L11],[%r43,%L16]
    %r51 = sub i32 %r81,1
    br label %L12
L18:
    br label %L7
L19:
    br label %L3
L20:
    br label %L15
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @FourWhile()
    ret i32 %r0
}
