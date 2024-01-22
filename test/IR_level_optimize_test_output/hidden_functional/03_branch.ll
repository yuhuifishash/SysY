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
    br label %L5
L2:
    br label %L7
L5:
    br label %L2
L7:
    br label %L13
L13:
    br label %L18
L18:
    br label %L22
L22:
    br label %L28
L26:
    br label %L30
L28:
    br label %L26
L30:
    br label %L33
L33:
    br label %L37
L37:
    ret i32 10
}
