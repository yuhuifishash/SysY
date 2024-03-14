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
define i32 @ifElseIf()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L5
L3:  ;
    br label %L9
L4:  ;
    br label %L14
L5:  ;
    br label %L3
L7:  ;
    br label %L13
L8:  ;
    br label %L4
L9:  ;
    br label %L7
L11:  ;
    br label %L12
L12:  ;
    br label %L8
L13:  ;
    br label %L11
L14:  ;
    ret i32 -5
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @ifElseIf()
    call void @putint(i32 %r0)
    ret i32 0
}
