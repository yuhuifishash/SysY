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
define i32 @ifWhile()
{
L0:
    br label %L1
L1:
    br label %L3
L3:
    br label %L13
L4:
    ret i32 %r34
L10:
    %r49 = phi i32 [0,%L13],[%r37,%L11]
    %r47 = phi i32 [3,%L13],[%r34,%L11]
    %r34 = mul i32 %r47,2
    %r37 = add i32 %r49,1
    br label %L11
L11:
    %r40 = icmp slt i32 %r37,5
    br i1 %r40, label %L10, label %L12
L12:
    br label %L4
L13:
    br label %L10
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @ifWhile()
    ret i32 %r0
}
