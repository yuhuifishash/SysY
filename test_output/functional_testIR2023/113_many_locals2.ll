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
@n = global i32 zeroinitializer
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r62 = call i32 @getint()
    br label %L2
L2:  ;
    %r196 = phi i32 [%r62,%L1],[%r68,%L3]
    %r65 = icmp eq i32 %r196,5
    br i1 %r65, label %L3, label %L4
L3:  ;latch
    %r68 = add i32 %r196,1
    br label %L2
L4:  ;
    call void @putint(i32 0)
    call void @putint(i32 1)
    call void @putint(i32 2)
    call void @putint(i32 3)
    call void @putint(i32 4)
    call void @putint(i32 5)
    call void @putint(i32 6)
    call void @putint(i32 7)
    call void @putint(i32 8)
    call void @putint(i32 9)
    call void @putint(i32 10)
    call void @putint(i32 11)
    call void @putint(i32 12)
    call void @putint(i32 13)
    call void @putint(i32 14)
    call void @putint(i32 15)
    call void @putint(i32 16)
    call void @putint(i32 17)
    call void @putint(i32 18)
    call void @putint(i32 19)
    call void @putint(i32 20)
    call void @putint(i32 21)
    call void @putint(i32 22)
    call void @putint(i32 23)
    call void @putint(i32 24)
    call void @putint(i32 25)
    call void @putint(i32 26)
    call void @putint(i32 27)
    call void @putint(i32 28)
    call void @putint(i32 29)
    call void @putch(i32 10)
    call void @putint(i32 %r196)
    call void @putch(i32 10)
    ret i32 25
}
