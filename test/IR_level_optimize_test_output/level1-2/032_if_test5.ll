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
define i32 @if_if_Else()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L5
L4:
    ret i32 25
L5:
    br label %L6
L6:
    br label %L4
}
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    br label %L4
L3:
    ret i32 25
L4:
    br label %L5
L5:
    br label %L7
L6:
    br label %L3
L7:
    br label %L8
L8:
    br label %L6
}
