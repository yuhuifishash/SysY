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
L0:  ;
    br label %L1
L1:  ;
    br label %L3
L3:  ;
    br label %L8
L4:  ;
    %r29 = phi i32 [%r30,%L10]
    ret i32 %r29
L8:  ;
    %r31 = phi i32 [0,%L3],[%r26,%L9]
    %r30 = phi i32 [3,%L3],[%r23,%L9]
    %r20 = icmp slt i32 %r31,5
    br i1 %r20, label %L9, label %L10
L9:  ;latch
    %r23 = mul i32 %r30,2
    %r26 = add i32 %r31,1
    br label %L8
L10:  ;
    br label %L4
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @ifWhile()
    ret i32 %r0
}
