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
define void @reverse(i32 %r0)
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = icmp sle i32 %r0,1
    br i1 %r6, label %L2, label %L3
L2:  ;
    %r7 = call i32 @getint()
    call void @putint(i32 %r7)
    br label %L4
L3:  ;
    %r9 = call i32 @getint()
    %r12 = sub i32 %r0,1
    call void @reverse(i32 %r12)
    call void @putint(i32 %r9)
    br label %L4
L4:  ;
    ret void
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    call void @reverse(i32 200)
    ret i32 0
}
